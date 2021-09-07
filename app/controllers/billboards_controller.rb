class BillboardsController < ApplicationController
  def index
  @billboards = Billboard.all
  render component: 'Billboards', props:{
    billboards: @billboards}
  end

  def show
    @billlboard = Billboard.find(params[:id])
    render component: 'Billboard', props: {
      billboard: @billboard }
  end

  def new
    @billboard = Billboard.new
    render component: BillboardNew', props: { 
      billboard: @billboard }
  end

  def create
    @billboard = Billboard.new(billboard_params)
      if @billboard.save
        do something or do somewhere
        else
          render component:'BillboardNew', 
        props: { billboard: @billboard }
          end
  end

  def edit
  end

  def update
  end
end
