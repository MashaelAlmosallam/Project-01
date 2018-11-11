class AdminsController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]
  def index
  end

  def show
  end

  def new
  end

  def edit
  end
end
