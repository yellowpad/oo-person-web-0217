# your code goes here
class Person 
	attr_reader :name
	attr_accessor :bank_account,:happiness,:hygiene
	
	def initialize(name)
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end
	
	def hygiene
		@hygiene
	end
	
	def clean?
		if hygiene > 7
			return true
		else 
			false
		end

	end
	
	def happiness=(num)
	    @happiness = num
	    @happiness = 10 if @happiness > 10
	    @happiness = 0 if @happiness < 0
	end

	def hygiene=(num)
	    @hygiene = num
	    @hygiene = 10 if @hygiene > 10
	    @hygiene = 0 if @hygiene < 0
	end

	def happy?
		self.happiness > 7
	end

	def hygiene?
		self.hygiene > 7
	end

	def get_paid(salary_amount)
		self.bank_account += salary_amount
		return 'all about the benjamins'	
	end

	def take_bath
		self.hygiene += 4
		return "♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		self.happiness += 2
		self.hygiene -= 3
		return "♪ another one bites the dust ♫"
	end

	def call_friend(friend)
		self.happiness += 3
		# if (self.happiness + 3) > 10
		# 	self.happiness = 10
		# else 
		# # end
		friend.happiness += 3		
		# if friend.happiness + 3 > 10
		# 	friend.happiness = 10
		# else 
		# 	friend.happiness += 3
		# end
		"Hi #{friend.name}! It's #{self.name}. How are you?"
	end

	def start_conversation(arg1,arg2)
		if arg2 == "politics"
			arg1.happiness -= 2
			self.happiness -= 2
			# if arg1.happiness - 2 < 0 
			# 	arg1.happiness = 0
			# else
			# 	arg1.happiness -= 2
			# end

			# if self.happiness - 2 < 0 
			# 	self.happiness = 0
			# else
			# 	self.happiness -= 2
			# end
			return 'blah blah partisan blah lobbyist'
				# arg1.each do |person|		
				# 		# if person.happiness > 2 
				# 		# 	happiness -= 2
				# 		# elsif person.happiness == 1
				# 		# 	happiness -= 1
				# 		# elsif person.happiness == 0
				# 		# 	#
				# 		# end
				# end
		elsif arg2 == "weather"
			arg1.happiness += 1
			self.happiness += 1		
			return 'blah blah sun blah rain'
		else
			return 'blah blah blah blah blah'
		end
	end



end