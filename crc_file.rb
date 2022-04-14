require_relative 'crc_lib'

crc = 0

file_name = './test_test.txt'

crc = FileInCRC.file_calculateCRC(file_name)

puts ("crc:  %08X" % [crc]) 