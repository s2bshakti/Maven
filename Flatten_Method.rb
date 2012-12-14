inpList=[1,2,[3,4,5],6,7,[8,[9,10],11],12]
outList=[]
def loping(inpList,outList)
	inpList.each do |inp_value|
	if inp_value.kind_of?(Array)
		loping(inp_value,outList)
	else
		outList.push(inp_value)
	end
	end
return outList
end
print loping(inpList,outList)
