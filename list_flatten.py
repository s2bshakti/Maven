inp=[1,2,[3,4,5],6,7,[8,[9,10],11],12]
output=[]
def flatten(input1,data=(list)):
	def list(input1):
		for value in input1:
			if isinstance(value, data):
				list(value)
			else:    
				output.append(value)
	list(input1)
	return output
print flatten(inp)
 

