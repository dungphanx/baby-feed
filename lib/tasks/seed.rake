require 'seed/dune_seeds'

namespace :seed do
  desc 'Seed the database'
  task dune: :environment do
    DuneSeeds.run!
  end
end