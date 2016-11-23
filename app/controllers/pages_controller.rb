class PagesController < ApplicationController
  prepend_view_path 'app/views/'

  
  def index
    @pages = Page.all
  end

  def show 
    @page = Page.where('(parent = ?) AND (name = ?)', params[:pages].split('/')[0..-2].join('/'), params[:pages].split('/')[-1]).first
    if(@page.nil?)
      raise ActionController::RoutingError.new('Not Found')
    end
  end

  def edit
    pages = params[:pages].split('/')
    name = pages[-1]
    parent = (pages[0..-2].length < 1) ? '' : pages[0..-2].join('/')
    @page = Page.where({:parent => parent, :name => name}).first
    if request.method == 'POST'
      if @page.update_attributes(params[:page])
        redirect_to show_page_path({ pages: (parent.length < 1) ? @page.name : [parent, @page.name].join('/') })
      end
    end
  end
  
  def create
    if request.method == 'GET'
      @page = Page.new
    elsif request.method == 'POST'
      if params[:pages].nil?
        parent = ''
      else
        parent_page = Page.find_by_name(params[:pages].split('/')[-1])
        parent = (parent_page.parent.length < 1) ? parent_page.name : [parent_page.parent, parent_page.name].join('/')
      end
      @page = Page.new(
        params[:page].merge({:parent => parent })
      )
      if @page.save
        redirect_to show_page_path({ pages: (parent.length < 1) ? @page.name : [parent, @page.name].join('/') })
      end
    end
  end

  def destroy
    page = Page.where('(parent = ?) AND (name = ?)', params[:pages].split('/')[0..-2].join('/'), params[:pages].split('/')[-1])
    #Remove childrens
    childrens = Page.where('parent LIKE ?', "#{params[:pages]}%")
    childrens.each { |child| child.destroy }
    if page.first().destroy
      redirect_to root_path
    end
  end

end
