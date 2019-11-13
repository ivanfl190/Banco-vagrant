#!/bin/bash

#Set the value of variable

database="areas"
 
#Execute few psql commands: 
#Note: you can also add -h hostname -U username in the below commands. 
 
psql -d $database -c "CREATE TABLE public.tbl_setor(rno integer, name character varying)"
psql -d $database -c "INSERT INTO public.tbl_setor VALUES (1,'gerente'),(2,'subgerente'),(3,'Funcionarios'),(4,'tercerizado')"
psql -d $database -c "SELECT *FROM public.tbl_setor"
 
#Assign table count to variable
TableCount=$(psql -d $database -t -c "select count(1) from public.tbl_setor")
 
#Print the value of variable
echo "Total table records count....:"$TableCount

