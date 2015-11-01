class GameController < ApplicationController
  def ping
	logger.info '++++++++ test ping +++++++++++++++'
	redirect_to game_pong_path, notice: 'ping-pong'
  end

  def pong
	logger.info '++++++++ test pong ++++++++++++++'
  end
end
