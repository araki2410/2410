#!/usr/local/bin/ruby
# -*- coding:utf-8 -*-

guzai ={"tiny mushroom" => ["red","small","soft","mashroom"],
	"big root" => ["red","big","soft","plant"],
	"bluk berry" => ["blue","small","soft","sweet","plant"],
	"icy rock" => ["blue","big","hard"],
	"apricorn" => ["yellow","small","hard","plant"],
	"honey" => ["yellow","big","soft","sweet"],
	"fossil" => ["gray","small","hard","minerals"],
	"balm mushroom" => ["gray","big","soft","mashroom"]
	}

recipe={"mulligan stew" => [[],[1,"Whatever you like"]],
	"red stew" => [[],[2, "a whole lot of red"]],
	"blue soda" => [[],[3, "a whole lot of blue"]],
	"yellow curry" => [[],[4, "a whole lot of yellow"]],
	"gray porridge" => [[],[5, "a whole lot of gray"]],
	"mouth-watering dip"=>[[],[6, "a whole lot of soft and a lot of blue"]],
	"plain crepe" => [[],[7, "a lot of sweet and a few gray"]],
	"sludge soup" => [[],[8, "a whole lot of mushroom and a lot of soft"]],
	"mud pie" => [[],[9, "a few minerals and a lot of soft"]],
	"veggie sommothie" => [[],[10,"a whole lot of plants and a few soft"]],
	"huney nectar" => [[],[11, "a whole lot of sweet and a lot of yellow"]],
	"brain food" => [[],[12, "a lot of sweet and a few hard"]],
	"stone soup" => [[],[13, "a whole lot of hard and few minerals"]],
	"hot pot" => [[],[15, "a lot of mushroom and a little red"]]
	}

menu = []
guzai.keys.each do |i|
  menu << i
end

srand()
5.times do
  puts menu[rand(menu.length)]
end
puts 8**5
