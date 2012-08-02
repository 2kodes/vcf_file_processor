
def write_list(info,output_dir)
    output=File.join(output_dir,"output_file.txt")
    file = File.new(output, "a")
	file.puts(info)
    file.close
 end
 
 input_dir=ARGV[0]  #input directory and output directory to be specified
 output_dir=ARGV[1]
 if input_dir.nil?
   puts "Error. No input directory specified."
   break   
 else 
 end
if output_dir.nil?
   output_dir=Dir.pwd
 end
Dir.chdir(input_dir)
myDir=Dir.pwd
myList=Dir.entries(myDir)
puts "Now in directory #{myDir}"
mycount=1
for contact in 2..myList.length-1 do
    puts "Number #{mycount} --> Processing : --> #{myList[contact]}"
       
    mycounter = 0
    write_list ("Filename : #{myList[contact]} ")
    file = File.new(myList[contact], "r")
    while (line = file.gets)	    
        myLine=line.scan(/\w+/)       
        if myLine.include?("FN") || myLine.include?("TEL") ||  myLine.include?("SKYPE") || myLine.include?("NICKNAME") || myLine.include?("EMAIL")
			write_list (myLine.join(' '),output_dir)
		
		end
end
		write_list ((""),output_dir)

end
