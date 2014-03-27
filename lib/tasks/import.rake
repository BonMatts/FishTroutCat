# This is a set of rake tasks used to import data into the production server.
 # Run `rake import:all` on the command line to import all available datasets,
 # and `rake import:teks` to only import TEKS data.
 
 require 'csv'
 
 namespace :import do
 
   task all: [:catfish_trout] # add future tasks in here (CCRS, ELPS, etc.)
 
   task catfish_trout: :environment do
     standard = Standard.create title: 'catfish_trout'
     count = 0
 
     CSV.read('lib/assets/catfish_trout.csv', encoding: 'windows-1251:utf-8').to_a[1..-1].each do |line|
       LineItem.create standard_id: standard, grade: line[0], subject: line[1],
                       course: line[2], key: line[3], text: line[4], keywords: line[5]
       count += 1
     end
     puts "Added #{count} line-items for catfish_trout"
   end
 
 end

 # +require 'csv'
 # +
 # +namespace :import do
 # +
 # +  task all: [:teks] # add future tasks in here (CCRS, ELPS, etc.)
 # +
 # +  task teks: :environment do
 # +    standard = Standard.create title: 'TEKS'
 # +    count = 0
 # +
 # +    CSV.read('lib/assets/TEKS.csv', encoding: 'windows-1251:utf-8').to_a[1..-1].each do |line|
 # +      LineItem.create standard_id: standard, grade: line[0], subject: line[1],
 # +                      course: line[2], key: line[3], text: line[4], keywords: line[5]
 # +      count += 1
 # +    end
 # +    puts "Added #{count} line-items for TEKS"
 # +  end
 # +
 # +end