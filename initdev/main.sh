#.!/bin/bash 




rep=$1;   # le nom du reptoire .
tipe=$2 ; # le  type pour de  projet.
lic=$3 ;  # le type de la licence.
git1=$4 ; # argument git 
 
   if [ -z $1 ] # une boucle verifier si le nom du repertoire est vide.
       
        then  
        
               echo "Expected arguments, please check the help : *initdev –help" 
               echo "<<******entrer le premier argument:nom projet****** >>"
    exit
 
    


           elif [ $1 = "help" ] # si le nom du reptoire est helpe alors  il va m'afficher l'affichage  suivant:
        
                then
 
                        echo "*_*(1) name : initdevsel.sh  ";
               
                        echo "*_*(2) Syntax : ./initdevsel.sh {nom projet} {type de language} {type de license} {git}";
               
                        echo "*_*(3) args :   arg1==projet nam: nom du projet // arg2==type de language: 'c','cpp','py','latex',BEAMER' // arg3==type de licence=='GPL', 'MIT' ";
                    
                        echo "*_*(4) author : AJEMMAA Selma // l’email: selmaajemmaa@gmail.comd";
        
         



                           elif [ -z $2 ] || ( [ $2 != "c" ] && [ $2 != "cpp" ] && [ $2 != "py" ] && [ $2 != "latex" ] && [ $2 != "BEAMER" ] ) # 1) des conditions pour  preciser le type du projet que je souhaite avoir dans mon projet .
# 2) si l'arg2 est vide ou bien different a ces language('c', 'cpp', 'py', 'latex', 'BEAMER') alors il va m'afficher le commentaire suivant : . 
# remarque : arg2= type de language      
                                 then
                                          echo "Uknown arguments, please check the help : 01initdev –help" 
                                        
                                          echo "<<******ce type de language n'existe pas dans notre projet******>>"
           
                
                                    elif [ -z $3 ] || ([ $3 != "GPL" ] && [ $3 != "MIT" ] ) # 1)des conditions pour preciser la type de la licence que je souhaite avoir dans mon projet.
# 2) si l'arg3 est vide ou bien different a ces type de license ('GPL','MIT') alors il va m'afficher le commentaire suivant: .
# remarque : arg3= le type de licence                                              
                                            

                                                    then
                                                         echo "Uknown arguments, please check the help : 02initdev –help"
                                                         
                                                         echo "<<****** ce n'est pas le type demander*******>> " 
              
                                               elif  [ -z $4 ] || [ $4 != "git" ] # si arg4 est vide ou bien different a 'git'. va m'afficher  le commentaire suivant: .
                                                                                  #remarque : arg4 est le quatrieme argument.
                                                        
                                                        then
                                                                  
                                                                  echo "You must set project type, please check the help : 03initdev –help"
                  
               else
                    mkdir  -p  $rep;             #cree un repertoire 
                    mkdir  -p  $rep/main  ;      #cree un sous repertoire vide dans le repertoire projet (main)    .
                    mkdir  -p  $rep/LICENCE ;    #cree un sous repertoire  vide dans le repertoire projet (LICENCE) . 
                    touch      $rep/licence ;    #cree un fichier vide dans le repertoire projet (licence).
                    touch      $rep/makfile ;    #cree un fishier vide dans le repertoire projet (MAKFILE) . 
                    mkdir  -p  $rep/.gitignore ; # cree un fichier vide dans le repertoire projet (.gitignore ).
                   
               echo  "<<******----****** ExeLLent TravaiLLE braVoooooo ******----******"
fi


 if [ $2 == "c" ] || [ $2 == "cpp" ] || [ $2 == "py" ] # si l'arg2 est egale a ('c','cpp' ou bien 'py'),alors il va faire l'opperation copier.
       
        then 
            cp $HOME/initdev/sources/main.$tipe    $HOME/$rep/main.$tipe ; # copier le main.$tipt qui se trouve dans la sources apartir du fichier initdev dans le main de mon projet .
         
         elif    [ $2 == "latex" ] # si l'arg2 est egale 'latex' .
              
              then 
                    cp $HOME/initdev/sources/latexMin.tex  $HOME/$rep/main ; # copier le latexMin.tex qui se trouve dans la sources apartir du fichier initdev dans le main de mon projet .
                  
                  elif  [ $2 == "BEAMER" ] # si l'arg2 est egale 'BEAMER' .
                      
                       then 
                             cp $HOME/initdev/sources/beamer.tex   $HOME/$rep/main ; # copier le beamer.tex qui se trouve dans la sources apartir du fichier initdev dans le main de mon projet .
                       
                           fi                                           
 	 
 	 
        cp $HOME/initdev/licenses/$lic  $HOME/$rep/LICENCE ;  #  ici je vais copier la licenses apartir  du fichier initdev vers un fichier LICENSE dans  le repertoire de mon projet 
 	
 if [ $4 = "C" ] || [ $4="CPP" ] || [ $4= "tex" ] || [ $4 = "python"]
                                         
                                                    then
 	                                                         cd  $rep ; # entrer dans initdevsel.sh
 	                                                         cd .gitignore # faire entrer dans le fichier cache et dans cette position je f 
                                                                 cp $HOME/initdev/gitignores/$tipe . # entrer dans le fichier gitignores et puis copier ce fichier apartir  d'un type deja choisit . 
                                                                     $HOME/$REP.gitignore ; 
                                                                 echo  $HOME/${REP}/.gitignore ; # c juste un affichage pour confirmer.

                                                   
                                                          git init ; # C DE FAIRE EXECUTER LA COMMANDE 

               #***********************////// LA FIN \\\\\\\****************************
exit   
   
   
   
   
