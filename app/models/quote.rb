class Quote < ActiveRecord::Base
  include PgSearch
  pg_search_scope :search, :against => :message, :using => [:tsearch, :trigram, :dmetaphone]
end
