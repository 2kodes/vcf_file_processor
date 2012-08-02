
def write_list(info)
    file = File.new("logfile.txt", "a")
	file.puts(info)
    file.close
 end
 

Dir.chdir("Exported contacts")
myDir=Dir.pwd
myList=Dir.entries(myDir)
#myList2=Array.new(myList)
puts "Now in directory #{myDir}"
mycount=1
for contact in 2..myList.length-1 do
    puts "Number #{mycount} --> Processing : --> #{myList[contact]}"
       
    mycounter = 0
    write_list ("Filename : #{myList[contact]} ")
    file = File.new(myList[contact], "r")
    while (line = file.gets)
	    #puts "#{mycounter}: #{line}" 
	    #f = File.new("logfile.txt", "a")
        #puts line if mycounter==5 || mycounter==7
        #f.close
        myLine=line.scan(/\w+/)
       # puts "Scan method: #{myLine}"
        if myLine.include?("FN") || myLine.include?("TEL") ||  myLine.include?("SKYPE") || myLine.include?("NICKNAME") || myLine.include?("EMAIL")
			write_list (myLine.join(' '))
		
		end
end
		write_list ("")

end
