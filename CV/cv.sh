#!/bin/sh

setTerm () {
  clear
  trap "tput reset" 2
  tput reset
  tput civis
}
resetTerm () {
  tput clear
  tput cnorm
}
bold () {
  echo `tput bold`$1`tput sgr0`
}
underline () {
  echo `tput smul`$1`tput rmul`
}

setTerm

bold 'Cyril SABOURAULT'
#echo `tput bold`Cyril SABOURAULT`tput sgr0`
echo 'cyril@sabourau.lt'
./alignText.sh 'https://sabourau.lt' 'top' 'right'
./alignText.sh 'Devops' 'top' 'center'
echo
echo

echo
echo `tput bold`EXPÉRIENCE PROFESSIONNELLE`tput sgr0`
echo " - "`tput smul`"Sept. 2014 - Sept. 2017"`tput rmul`
echo "Devoteam G Cloud, Lyon : \tApprenti consultant Cloud Platform"
echo
echo " - "`tput smul`"Juillet 2017 - Aout 2016"`tput rmul`
echo "The Latest, Los Angeles : \tDéveloppeur Full-Stack"
echo
echo " - "`tput smul`"Avril 2014 - Juillet 2014"`tput rmul`
echo "CERN, Genève : \t\t\tStage, Développement en télécommunications"

echo
echo

echo `tput bold`COMPÉTENCES`tput sgr0`
echo ' - '`tput smul`Cloud Computing`tput rmul`
echo ' - '`tput smul`Administration système et réseaux`tput rmul`
echo ' - '`tput smul`Programmation Web`tput rmul`
echo ' - '`tput smul`Réseaux`tput rmul`
echo
echo ' - '`tput smul`Anglais C2`tput rmul`
echo ' - '`tput smul`Espagnol conversationnel`tput rmul`

#echo
#echo

#echo `tput bold`FORMATION`tput sgr0`
#echo ' - '`tput smul`CPE Lyon, Diplôme d\ingénieur Informatique et Réseaux de Communications`tput rmul`
#echo ' - '`tput smul`IUT Annecy, Réseaux et Télécommunications`tput rmul`
#echo ' - '`tput smul`Lycée Berthollet, Bac S`tput rmul`

read input
resetTerm
