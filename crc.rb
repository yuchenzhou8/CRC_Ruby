require_relative 'crc_lib'



crc = 0

file_name = './test_test.txt'

file_size = File.size(file_name) # Returns nil if file nonexistent or file size is zero

if (file_size)
    open(file_name, 'rb') do |file|
    crc = crc & 0xFFFF

    data = file.read()
    crc = FileInCRC.file_in_calculateCRC(crc, data)

    end

    puts ("crc:  %08X" % [crc]) 

else
    puts "here"
    puts crc.to_s
end

