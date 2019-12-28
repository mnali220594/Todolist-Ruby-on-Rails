class HomeController < ApplicationController
  def trash_em
    @trash_em = List.where(:completed => true).destroy_all
    redirect_to lists_url, notice: 'Completed todos have been deleted.'
  end

  def trash_em_all
    @trahs_em_all = List.all.destroy_all
    redirect_to lists_url, notice: 'All todos have been deleted.'
  end
end