function InfixToPostfix(str)

    currIndex = 1
    computationList = {}
    infixList = {}
    postfixList = {}
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
                    table.insert(postfixList, infixList[increment])

            else
                while((next(computationList) ~= nil) and
                    (pemdas[tostring(computationList[#computationList])] >=
                    pemdas[tostring(infixList[increment])]))
                        do
                            table.insert(postfixList, table.remove(computationList))

                end
                table.insert(computationList, infixList[increment])
            end
      end

      while(next(computationList) ~= nil)
          do
              table.insert(postfixList, table.remove(computationList))

      end

      finalPostfix = table.concat(postfixList, ' ')

      print('Assignment 3-2, Brian Rafferty, bprafferty03@gmail.com')
      return finalPostfix


end
