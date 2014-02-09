# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	
	5.times do 
		Post.create!([
			{ 
				title: "This is a Cool Hipster Ipsum" ,

				content: 
					%{"Magna mollit enim, trust fund officia 
					elit American Apparel XOXO PBR&B polaroid. 
					Pour-over nesciunt bespoke, bicycle rights ex officia 
					small batch iPhone kogi quis Brooklyn tote bag biodiesel 
					cardigan synth. Banksy cred forage Austin, semiotics 
					VHS velit gluten-free American Apparel magna next level. 
					Butcher synth elit, kogi fanny pack hoodie veniam laborum 
					mustache. You probably haven't heard of them High Life 
					distillery, do sartorial mumblecore pickled. Qui occupy 
					Schlitz magna, skateboard accusamus brunch. Tempor tousled 
					synth ethical, hella street art voluptate anim in." }.squish,
			},	])
	end

