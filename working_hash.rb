pages={"P1"=>["Ford","Car","Review"],"P2"=>["Review","Car"],"P3"=>["Review","Ford"],"P4"=>["Toyota","Car"],"P5"=>["Honda","Car"],"P6"=>["Car"]}
query={"Q1"=>["Ford"],"Q2"=>["Car"],"Q3"=>["Review"],"Q4"=>["Ford","Review"],"Q5"=>["Ford","Car"],"Q6"=>["cooking","French"]}
output={}
query.each do |query_no,query_content|
	output[query_no]={}
	pages.each do |page_no,page_content|
		score=0 	
		for nested_query in query_content
			for nested in page_content
				if nested==nested_query	
					score+=(8-page_content.index(nested))*(8-query_content.index(nested_query))
				end	
			end
		end
		output[query_no][page_no]=score
	end
end
output.each do |query_no,page_details|
	a=[]
	for e in page_details.values.sort.reverse
		if e>0
			a=a.push(page_details.map{|key,value| value==e ? key : nil}.compact).uniq
		end	
	end
	a=a.flatten.first 5
	puts "#{query_no}: " + a.join(" ") 
end
