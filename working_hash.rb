pages={"1"=>["Ford","Car","Review"],"2"=>["Review","Car"],"3"=>["Review","Ford"],"4"=>["Toyota","Car"],
	"5"=>["Honda","Car"],"6"=>["Car"]}
query={"1"=>"Car","2"=>"Ford"}
output={}
	query.each do |query_no,query_content|
		number=0
		pages.each do |page_no,page_content| 
			if page_content.kind_of?(Array)	
				for nested in page_content
					number+=1 if nested==query_content			
				end
			end
		end
		output[query_content]=number
	end
	output.each do |a,b|
		puts"#{a} repeats #{b} times"
	end
