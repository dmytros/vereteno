namespace :zones do
  desc "Delete zones"
  task :update => :environment do
    Spree::Zone.delete_all
    Spree::ZoneMember.delete_all
  end
end