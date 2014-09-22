class DiscoverController < ApplicationController
  def index
    @profitable = Product.profitable.
      ordered_by_trend.
      limit(4)

    @greenlit = Product.greenlit.
      ordered_by_trend.
      limit(20)

    @teambuilding = Product.teambuilding.includes(:user).
      ordered_by_trend.
      limit(20)
  end

  def profitable
    @products = Product.profitable.
      ordered_by_trend.
      page(params[:page])
  end

  def greenlit
    @products = Product.greenlit.
      ordered_by_trend.
      page(params[:page])
  end

  def teambuilding
    @products = Product.teambuilding.
      ordered_by_trend.
      page(params[:page])
  end

  def bounties
    if params[:filter].blank?
      cookies[:discover_bounties_filter] ||= 'all'
      redirect_to discover_path(:bounties, filter: cookies[:discover_bounties_filter])
    end

    filter = cookies[:discover_bounties_filter] = params[:filter]
    params[:filter_text] = params[:filter] == 'all' ? '' : params[:filter]

    @filters = [{
      slug: 'all',
      label: 'All',
    },{
      tagged: 'design',
      label: 'Design',
    }, {
      tagged: 'frontend',
      label: 'Front-End Development',
    }, {
      tagged: 'backend',
      label: 'Back-End Development',
    }, {
      tagged: 'marketing',
      label: 'Marketing',
    }]

    @filters.each do |f|
      if tag = f[:tagged]
        f[:count] = BountyPosting.tagged(f[:tagged]).count
        f[:slug] = tag
      else
        f[:count] = BountyPosting.count
      end
    end

    @postings = BountyPosting.joins(bounty: :product).order(created_at: :desc)
    if filter != 'all'
      @postings = @postings.tagged(filter)
    end

    if slug = params[:product]
      @postings = @postings.where('products.slug = ?', slug)
    end
  end

  def updates
    @posts = Post.joins(:product).
      where(products: { flagged_at: nil }).
      where(flagged_at: nil).
      order(created_at: :desc)

    @page = @posts.page(params[:page])
  end
end
