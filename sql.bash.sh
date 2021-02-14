StrList=`awk -vs1="'" '{S=S?S OFS s1 $0 s1:s1 $0 s1} END{print S}' OFS=, file.list`

 echo |awk '{
                print  "-- Query -- " > salida
                print  "SELECT" >> salida
                print  "campo1" >> salida
                print  ",to_date(Fecha,\047rrmmdd\047)" >> salida
                print  ",campo2" >> salida
                print  "FROM TABLA" >> salida
                print  "WHERE campo1 is not null" >> salida
                printf("%s%s%s \n","and campo3 IN (",ParamList,")") >> salida
               }' ParamList=${StrList} salida='select.txt'
