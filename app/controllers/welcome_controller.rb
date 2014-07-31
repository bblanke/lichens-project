class WelcomeController < ApplicationController
  def index
    @trees = Tree.all
  end
end
