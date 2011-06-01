require File.dirname(__FILE__) + "/spec_helper"

describe "Golf" do

  describe ".hole1" do
    it "should multiply the numbers in an array" do
      Golf.hole1([1,2,3,4]).should eql 24
    end
    it "should be 600 for [5,2,10,6]" do
      Golf.hole1([5,2,10,6]).should eql 600
    end
    it "should be 50 for [2,5,5]" do
      Golf.hole1([2,5,5]).should eql 50
    end
  end

  describe ".hole2" do
    it "should find all numeric palindromes for a range from 0 to 20" do
      Golf.hole2([0, 20]).should == [0,1,2,3,4,5,6,7,8,9,11]
    end
    it "should find all numeric palindromes for a range from 100 to 200" do
      Golf.hole2([100, 200]).should == [101,111,121,131,141,151,161,171,181,191]
    end
    it "should find all numeric palindromes for a range from 1990 to 1992" do
      Golf.hole2([1990, 1992]).should == [1991]
    end
  end

  describe ".hole3" do
    it "should recognize string palindromes" do
      Golf.hole3("ABAB").should == false
      Golf.hole3("ABBA").should == true
    end
    it "should recognize string palindromes with odd length" do
      Golf.hole3("ABA").should == true
    end
    it "should recognize string palindromes ignoring case" do
      Golf.hole3("AbBa").should == true
    end
  end


  describe ".hole4" do
    it "should put a hat on every man" do
      Golf.hole4(["man(bob)", "man(geoff)", "man(harry)"]).should ==
        ["hat(man(bob))", "hat(man(geoff))", "hat(man(harry))"]
    end

    it "should feed each dog a bone" do
      Golf.hole4(["dog(luna)", "dog(rex)", "dog(spot)"]).should ==
        ["dog(luna(bone))", "dog(rex(bone))", "dog(spot(bone))"]
    end

    it "should collapse the probability waveform of each cat" do
      Golf.hole4(["cat(tiddles)", "cat(miffy)"]).should ==
        ["dead(tiddles)", "dead(miffy)"]
    end

    it "should do all the above at once" do
      Golf.hole4(["man(steve)", "dog(snoopy)", "cat(garfield)"]).should ==
        ["hat(man(steve))", "dog(snoopy(bone))", "dead(garfield)"]
    end
  end


  describe ".hole5" do
    it "should return all sub-lists of the input, sorted by length then numerically" do
      Golf.hole5([1,2,3,4]).should ==
        [[1], [2], [3], [4], [1, 2], [2, 3], [3, 4], [1, 2, 3], [2, 3, 4], [1, 2, 3, 4]]

      Golf.hole5([4,10,15,23]).should ==
        [[4], [10], [15], [23], [4, 10], [10, 15], [15, 23], [4, 10, 15], [10, 15, 23], [4, 10, 15, 23]]
    end
  end

  describe ".hole6" do
    it "should play fizzbuzz to 3, where multiples of 3 are 'fizz'" do
      Golf.hole6(3).should eql [1,2,"fizz"]
    end

    it "should play fizzbuzz to 5, with rules above and multiples of 5 are 'buzz'" do
      Golf.hole6(5).should eql [1,2,"fizz",4,"buzz"]
    end

    it "should play fizzbuzz to 10 with rules above and muliples of 3 and 5 are 'fizzbuzz'" do
      Golf.hole6(15).should eql [1,2,"fizz",4,"buzz","fizz",7,8,"fizz","buzz",11,"fizz",13,14,"fizzbuzz"]
    end

    it "should play fizzbuzz to 30" do
      Golf.hole6(30).should eql [1,2,"fizz",4,"buzz","fizz",7,8,"fizz","buzz",11,"fizz",13,14,"fizzbuzz",16,17,"fizz",19,"buzz","fizz",22,23,"fizz","buzz",26,"fizz",28,29,"fizzbuzz"]
    end
  end

  describe ".hole7" do
    it "should collapse consecutive numbers to a range" do
      Golf.hole7([1,2,3]).should eql ["1-3"]
    end

    it "should keep separate ranges distinct" do
      Golf.hole7([1,2,3,5,6,7,100,101]).should eql ["1-3","5-7","100-101"]
    end

    it "should show isolated digits on their own" do
      Golf.hole7([1,2,3,5,10,11,12]).should eql ["1-3","5","10-12"]
    end
  end


  describe ".hole8" do
    it "should give the first N numbers of the fibonacci sequence" do
      Golf.hole8(5).should eql [1,1,2,3,5]
    end

    it "should give the first 9 numbers" do
      Golf.hole8(9).should eql [1,1,2,3,5,8,13,21,34]
    end

    it "should give the first 15 numbers" do
      Golf.hole8(15).should eql [1,1,2,3,5,8,13,21,34,55,89,144,233,377,610]
    end
  end

end

