Zammad::Application.routes.draw do
  api_path = Rails.configuration.api_path

  # tickets
  match api_path + '/tickets/search',                                to: 'tickets#search',            via: [:get, :post]
  match api_path + '/tickets',                                       to: 'tickets#index',             via: :get
  match api_path + '/tickets/:id',                                   to: 'tickets#show',              via: :get
  match api_path + '/tickets',                                       to: 'tickets#create',            via: :post
  match api_path + '/tickets/:id',                                   to: 'tickets#update',            via: :put
  match api_path + '/ticket_create',                                 to: 'tickets#ticket_create',     via: :get
  match api_path + '/ticket_full/:id',                               to: 'tickets#ticket_full',       via: :get
  match api_path + '/ticket_history/:id',                            to: 'tickets#ticket_history',    via: :get
  match api_path + '/ticket_customer',                               to: 'tickets#ticket_customer',   via: :get
  match api_path + '/ticket_related/:ticket_id',                     to: 'tickets#ticket_related',    via: :get
  match api_path + '/ticket_merge/:slave_ticket_id/:master_ticket_number', to: 'tickets#ticket_merge', via: :get
  match api_path + '/ticket_stats',                                  to: 'tickets#stats',             via: :get

  # ticket overviews
  match api_path + '/ticket_overviews',                              to: 'ticket_overviews#show',     via: :get

  # ticket priority
  match api_path + '/ticket_priorities',                             to: 'ticket_priorities#index',   via: :get
  match api_path + '/ticket_priorities/:id',                         to: 'ticket_priorities#show',    via: :get
  match api_path + '/ticket_priorities',                             to: 'ticket_priorities#create',  via: :post
  match api_path + '/ticket_priorities/:id',                         to: 'ticket_priorities#update',  via: :put

  # ticket state
  match api_path + '/ticket_states',                                 to: 'ticket_states#index',       via: :get
  match api_path + '/ticket_states/:id',                             to: 'ticket_states#show',        via: :get
  match api_path + '/ticket_states',                                 to: 'ticket_states#create',      via: :post
  match api_path + '/ticket_states/:id',                             to: 'ticket_states#update',      via: :put

  # ticket articles
  match api_path + '/ticket_articles',                               to: 'ticket_articles#index',     via: :get
  match api_path + '/ticket_articles/:id',                           to: 'ticket_articles#show',      via: :get
  match api_path + '/ticket_articles',                               to: 'ticket_articles#create',    via: :post
  match api_path + '/ticket_articles/:id',                           to: 'ticket_articles#update',    via: :put
  match api_path + '/ticket_attachment/:ticket_id/:article_id/:id',  to: 'ticket_articles#attachment', via: :get
  match api_path + '/ticket_attachment_upload',                      to: 'ticket_articles#ticket_attachment_upload_add', via: :post
  match api_path + '/ticket_attachment_upload',                      to: 'ticket_articles#ticket_attachment_upload_delete', via: :delete
  match api_path + '/ticket_article_plain/:id',                      to: 'ticket_articles#article_plain',  via: :get

end
