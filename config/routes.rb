Rails.application.routes.draw do
  match 'filter' => 'poop_filter#filter', via: %w[get post]
  root to: 'poop_filter#landing_page'
end
