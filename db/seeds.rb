# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: "Administrateur", last_name: "Winnovation", email: "contact@winnovation.net", password: "USoffice600!", title: "admin", description:"Je gère le site internet et j'ai été créé par Diane Bunod.", address:"600 California St, 11th floor 94108 San Francisco, CA USA")

User.create(first_name: "Franck", last_name: "Moine", email: "franck@winnovation.net", password: "USoffice600!", title: "CEO", description:"Franck spent 17 years working on developing new businesses for Bouygues Telecom. He then took the role of Head of M2M Business Unit. His expertise in M2M and IoT brought him to Objenious as Deputy CEO, a Bouygues Telecom subsidiary developing IoT solutions and LoRa network. He is now the CEO of Winnovation, with a strong expertise in Telco and Smart cities solutions.", address:"600 California St, 11th floor 94108 San Francisco, CA USA")
User.create(first_name: "Clément", last_name: "Anthonioz-Blanc", email: "clement@winnovation.net", password: "USoffice600!", title: "VP Telco Media", description:"Clément worked as a consultant at Wavestone for 3 years and worked on a one-year mission for a mobile carrier. He then joined Bouygues Telecom as a Marketing specialist and launched the new set-up box 'Bbox Miami'. 3 years later, in 2016, he joined the Winnovation team. He is a specialist of B2C markets in telecommunications and media industries.", address:"600 California St, 11th floor 94108 San Francisco, CA USA")
User.create(first_name: "Hedi", last_name: "Calabrese", email: "hedi@winnovation.net", password: "USoffice600!", title: "VP Construction", description:"After 2 years of experience as an Energy consultant for building, Hedi joined the Innovation departement of Bouygues construction and became an Open Innovation Manager. He worked over more than 140 POCs with external partners and Bouygues Construction employees to change the way we build buildings.", address:"600 California St, 11th floor 94108 San Francisco, CA USA")
User.create(first_name: "Adrien", last_name: "Chaussinand", email: "adrien@winnovation.net", password: "USoffice600!", title: "VP Real Estate", description:"Adrien conducted scientific research during one year at Ecole Polytechnique Fédérale of Lausanne. He then joined Bouygues Immobilier in 2015 in the Innovation Department. He worked on several innovative projects among which 'Entre voisins', a private residential social network. In April 2018, Adrien took charge of Bouygues Group - MIT relationship in Boston.", address:"600 California St, 11th floor 94108 San Francisco, CA USA")


Partner.create(company_name: "Amazon", status: "PROJECT MANAGEMENT AND METHODS", grand_groupe: true)
Partner.create(company_name: "Microsoft", status: "PRODUCTIVITY AND COLLABORATIVE WORK TOOLS", grand_groupe: true)
Partner.create(company_name: "Google", status: "FUTURE OF THE CITY", grand_groupe: true)
Partner.create(company_name: "Cloudflare", status: "NETWORK AND CLOUD OPTIMIZATIONS", grand_groupe: true)
Partner.create(company_name: "vmware", status: "NETWORK AND CLOUD OPTIMIZATIONS", grand_groupe: true)
Partner.create(company_name: "Salesforce", status: "FUTURE OF WORK OFFICES", grand_groupe: true)

Partner.create(company_name: "OTO.ai", status: "IN THE PROCESS OF SIGNING", grand_groupe: false)
Partner.create(company_name: "Mila", status: "INDUSTRIALIZATION", grand_groupe: false)
Partner.create(company_name: "Dashbot", status: "INDUSTRIALIZATION", grand_groupe: false)
