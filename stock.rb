class Stock
    def Stock_picker(*args)

    	l = args.length

    	diffArr = [-1000000000000]

    	args.each_with_index do |i, k|

    		j = k + 1

    		j.to_i

    		

    		while j < l
    			

    			jNum = args[j].to_i

    			diff = jNum - i.to_i

    			if diff > diffArr.max

    				diffArr.push(diff)

    				@buyIndex = k
    				@sellIndex = j

    				j += 1

    			else
    				j += 1
    			end

    		end
    	end

    	
    	maxDiff = diffArr.max

    	puts "your profit would be: " + maxDiff.to_s
    	puts "Buy index value = " + @buyIndex.to_s
    	puts "Sell index value = " + @sellIndex.to_s


    
    end

    
end

b = Stock.new
b.Stock_picker(1,2000,50000,10000)  

