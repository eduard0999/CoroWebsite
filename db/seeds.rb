# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Service.create(name: "Drain Cleaning", description: "Fast, thorough clearing of clogged drains and pipes.", category: "plumbing", icon: "wrench")
Service.create(name: "Pipe Repair", description: "Repairing leaks, cracks, and burst pipes before they cause damage.", category: "plumbing", icon: "pipe")
Service.create(name: "Water Heater Installation", description: "Installation and replacement of gas and electric water heaters.", category: "plumbing", icon: "water-heater")
Service.create(name: "Leak Detection", description: "Locating hidden leaks before they turn into costly repairs.", category: "plumbing", icon: "search")
