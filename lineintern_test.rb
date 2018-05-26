#!/usr/bin/ruby
# -*- coding:utf-8 -*-
#print Time.at(1328554385)
local_time = Time.local(2018,6,5,5,55,00)

shihatu = {"A1"=>["5:55",5], "A7"=>["6:06",10], "A13"=>["5:52",10]}
addtion = {"A7"=>["A13","6:10"]}
stA = ["A1","A2","A3","A4","A5","A6","A7","A8","A9","A10","A11","A12","A13"]
stB = ["B1","B2","B3","B4","B5"]
stations = {"A1"=>{"A2"=>3},
          "A2"=>{"A1"=>3,"A3"=>5},
          "A3"=>{"A2"=>5,"A4"=>2},
          "A4"=>{"A3"=>2,"A5"=>3},
          "A5"=>{"A4"=>3,"A6"=>4},
          "A6"=>{"A5"=>4,"A7"=>3},
          "A7"=>{"A6"=>3,"A8"=>4,"B5"=>4},
          "A8"=>{"A7"=>4,"A9"=>2},
          "A9"=>{"A8"=>2,"A10"=>2},
          "A10"=>{"A9"=>2,"A11"=>3},
          "A11"=>{"A10"=>3,"A12"=>6},
          "A12"=>{"A11"=>6,"A13"=>2},
          "A13"=>{"A12"=>2},
          "B1"=>{"B2"=>4},
          "B2"=>{"B1"=>4,"B3"=>3},
          "B3"=>{"B2"=>3,"B4"=>3},
          "B4"=>{"B3"=>3,"B5"=>2},
          "B5"=>{"B4"=>2,"A7"=>4},
         }

## from A1 list
timeline = {}
lines =[]
interval = 300
tmp_time = local_time
i = 1
while tmp_time <= local_time+60*60*17+300 do
  if i%2 == 1
    togo = "A7"
  else
    togo = "A13"
  end
  i += 1
  ariv = [togo,tmp_time.hour,tmp_time.min]
  lines.push(ariv)
  tmp_time += interval
end
timeline["A1"] = lines

for i in 1..stA.length-1
  lines = []
  ariv_time = stations[stA[i-1]][stA[i]].to_i*60
  tmp_time = Time.local(2018,6,5,,55,00)
  for j in timeline[stA[i-1]]
    tmp_time += ariv_time
    ariv = [j[0],tmp_time.hour,tmp_time.min]
    lines.push(ariv)
  end
  timeline[stA[i]] = lines
end
print timeline["A2"]
exit
#print timeline["A7"]
#exit
########
# from A7 list
lines =[]
interval = 600 
local_time = Time.local(2018,6,5,6,06,00)
tmp_time = local_time
n = timeline["A1"].length
n.times do
  togo = "A1"
  ariv = [togo,tmp_time.hour,tmp_time.min]
  lines.push(ariv)
#  print i,"," ,ariv , "\n"
  tmp_time += interval
end
timeline["A7"] += lines
tmp = []
for i in 0..timeline["A7"].length-1
  if timeline["A7"][i][0] == "A1"
    toa7 = timeline["A7"][i]
    tmp.push([toa7])
  end
end

(stA.length-7).downto(1) do |i|
  st = stA[i]
  lines = []
  ariv_time = stations[stA[i-1]][stA[i]].to_i*60
  tmp_time = local_time
  for j in timeline[stA[i-1]]
    tmp_time += ariv_time
    ariv = [j[0],tmp_time.hour,tmp_time.min]
    lines.push(ariv)
  end
  timeline[stA[i]] = lines
end

exit
#B4 to B1
stin = ["A6", "A7", "21:12"]
ridein_st = stin[0]
getoff_st = stin[1]
time = stin[2]
h,m = time.split(":")
time = Time.local(2018,6,5,h.to_i,m.to_i,00)
                                             
exit
if /(\S)(\d)/ =~ ridein_st
  now_line = $1
  now_st_num = $2
end
if /(\S)(\d)/ =~ getoff_st
  destination_line = $1
  destination_st_num = $2
end

while true
  if destination_line == now_line
    if now_st_num == destination_st_num
      break
    else
    end
  else
  end
end
puts(stations[ridein_st].keys)
