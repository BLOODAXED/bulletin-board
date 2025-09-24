class BoardsController < ApplicationController
  def index
    render({ :template => "board_templates/index" })
  end

  def show
    render({ :template => "board_templates/show" })
  end

  def create
    if params.fetch("name_param").empty?
      redirect_to("/boards/")
    else
      @new_board = Board.new
      @new_board.name = params.fetch("name_param")
      @new_board.save
      #render({ :template => "board_templates/create_confirm" })
      redirect_to("boards/#{@new_board.id}")
    end
  end

  def create_listing
    if params.fetch("title").empty? or params.fetch("body").empty? or params.fetch("exp").empty?
      redirect_to("/boards/#{params.fetch("board")}")
    else
      @new_listing = Listing.new
      @new_listing.board_id = params.fetch("board")
      @new_listing.title = params.fetch("title")
      @new_listing.body = params.fetch("body")
      @new_listing.expires_on = params.fetch("exp")
      @new_listing.save
      #render({ :template => "board_templates/create_confirm" })
      redirect_to("/boards/#{params.fetch("board")}")
    end
  end
end
