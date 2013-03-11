pages={"P1"=>["Ford","Car","Review"],"P2"=>["Review","Car"],"P3"=>["Review","Ford"],"P4"=>["Toyota","Car"],
	"P5"=>["Honda","Car"],"P6"=>["Car"]}
query={"1"=>["Ford","Review"],
"2"=>["Car"],
"3"=>["Review"],
"4"=>["Ford"],
"5"=>["Ford","Car"],
"6"=>["cooking","French"]
}
output={}
query.each do |query_no,query_content|
	pages.each do |page_no,page_content|
		score=0 	
		for nested_query in query_content
			for nested in page_content
				if nested==nested_query	
					score+=(8-page_content.index(nested))*(8-query_content.index(nested_query))
				end	
			end
		end
		output[query_no]={}
		output[query_no][qpage_no]=score
	end
end
output.each do |a,b|
	b.each do |c,d|
	puts"#{c} : #{d}"
	end
end
