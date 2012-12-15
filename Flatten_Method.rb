inpList=[1,2,[3,4,5],6,7,[8,[9,10],11],12]
def flatten(inpList,outList)
	inpList.each do |inp_value|
		if inp_value.kind_of?(Array)
			flatten(inp_value,outList)
		else
			outList.push(inp_value)
		end
	end
return outList
end
print flatten(inpList,outList=[])
