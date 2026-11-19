class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks

  validates :title, presence: true, uniqueness: true

  validates :overview, presence: true, uniqueness: true
end





























def destroy
  @movie = Movie.find(params[:id])
  if @movie.destroy
    redirect_to movies_path, status: :see_other
  else
    redirect_to movies_path, alert: @movie.errors.full_messages.to_sentence, status: :see_other
  end
end
