def caseItOrBreakIt(bunchOfJunk) 
  if bunchOfJunk.respond_to?("each")
    # bunchOfJunk is a set
    puts "#{bunchOfJunk} is a cool array!"
    idx = 0
    bunchOfJunk.each do |coolThing|
      if coolThing.respond_to?("/")
        # coolThing is an int or double!
        bunchOfJunk[idx] = coolThing/2
      elsif coolThing.respond_to?("upcase")
        # coolThing is a String!
        bunchOfJunk[idx] = coolThing.upcase
        # alternative method: coolThing.upcase!
      else
        # coolThing is some other object not intended to be here.
        puts "This wasn't supposed to happen."
      end
      idx = idx + 1
    end
  else
    # bunchOfJunk is not a set
    puts "Arrays are way cooler than this lonely Object: #{bunchOfJunk}"
  end
end

pile1 = [ 42, 3.0, 17, 8, 2 ]
pile2 = [ 'seven', 'one!', 38, 77.7, 3, 10, 'a billion?' ]

print "Before running the method:
- caseItOrBreakIt
on the arrays.
\npile1 = ", pile1.join(' '), 
"\npile2 = ", pile2.join(' '), "\n
"

caseItOrBreakIt(pile1)
caseItOrBreakIt(pile2) 
caseItOrBreakIt(12)

print "\npile1 + pile2 after caseItOrBReakIt:\n", 
(pile1 + pile2).join(' '), "\n"
print "pile1[2] = ", pile1[2], "\npile2[3] = ", pile2[3], "\npile2[-1] = ", pile2[-1], "\n"
print "(temporarily) sorted pile1 = ", pile1.sort.join(' '), "\n" 

pile1 << 57 << 9 << 'zero'
print "\nnew additions to pile1 = ", pile1.join(' '), "\n"
pile2 << 'thirteen' << 48 << 'thirteen' << 220
print "new additions to pile2 = ", pile2.join(' '), "\n"

print "pop last number off pile2: ", pile2.pop, "\n"
print "shift first number off pile2: ", pile2.shift, "\n"
print "after popping + shifting: 
pile2 = ", pile2.join(' '), "\n\n"

pile2.delete_at(2)
print "delete whatever is at index 2:
pile2 = ", pile2.join(' '), "\n"
pile2.delete_at(2)
print "delete whatever is at index 2 AGAIN:
pile2 = ", pile2.join(' '), "\n\n"
pile2.delete('thirteen')
print "delete all instances of 'thirteen':
pile2 = ", pile2.join(' '), "\n\n"


# https://replit.com/@averycook/RubyLiveExample#main.rb