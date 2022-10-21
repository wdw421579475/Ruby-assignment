def conv_filter(str)
    #filter conversation from STUDENT
    str = str.gsub(/STUDENT.+?ADVISOR:/m, '')
    #Delete "ADVISOR:"
    str = str.gsub(/ADVISOR:/, '')
    return str
end
