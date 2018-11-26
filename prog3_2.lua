function InfixToPostfix(str)

    currIndex = 1
    computationList = {}
    infixList = {}
    postfixOutput = ""
    splitter = "%S+"
    listLength = 0

    for data in string.gmatch(str, splitter)
        do
            infixList[currIndex] = data
            currIndex = currIndex + 1
            listLength = listLength + 1
        end

    pemdas = {}
    pemdas["*"] = 4
    pemdas["/"] = 3
    pemdas["%"] = 3
    pemdas["+"] = 2
    pemdas["-"] = 1
    pemdas["nil"] = 0

    for increment = 1, listLength
        do
            if tonumber(infixList[increment]) ~= nil
                then
                    postfixOutput = postfixOutput .. infixList[increment]

            else
                while((next(computationList) ~= nil) and
                    (pemdas[tostring(computationList[#computationList])] >=
                    pemdas[tostring(infixList[increment])]))
                        do
                            postfixOutput = postfixOutput .. computationList[#computationList]
                            table.remove(computationList)
                end
                table.insert(computationList, infixList[increment])
            end
      end

      while(next(computationList) ~= nil)
          do
              postfixOutput = postfixOutput .. computationList[#computationList]
              table.remove(computationList)
      end

      return postfixOutput

end
