#!/usr/bin/ruby
# -*- coding:utf-8 -*-

rocker = []
LISTSIZE = 100


def numberof(list)
  hoge = list
  hoge.delete(0)
  printf("%d\n",hoge.count)
#  printf("%s\n%d\n", hoge, hoge.count)
end

for i in 1..LISTSIZE do
  rocker[i-1]=i
end 


for i in 1..LISTSIZE do 
  for j in 1..LISTSIZE do
#    printf("%d jouyo %d = %d\n",j,i,j%i)
    if j%i == 0
      if rocker[j-1].to_i==0
#        print "open\n"
        rocker[j-1]=j
      else
#        print "close\n"
        rocker[j-1]=0
      end
    end
  end
end

#rocker.delete(0)
#print rocker.count

numberof(rocker)


