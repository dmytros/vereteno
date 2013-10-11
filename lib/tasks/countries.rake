namespace :countries do
  desc "Delete countries except Ukraine"
  task :update => :environment do
    Spree::Country.delete_all("iso != 'UA'")
  end
end