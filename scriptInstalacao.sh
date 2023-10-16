sudo apt update && sudo apt upgrade
java -version

if [ $? = 0 ]

	then
		echo "Java instalado"
	else
		sudo apt install openjdk-17-jre -y
fi

java -jar ChefwareLoocaGrupo.jar

if [ $? = 0 ]

	then
		echo "Muito obrigado por confiar na ChefWare"
	else
		git clone https://github.com/JonasKauan/stunning-octo-couscous.git
		cd stunning-octo-couscous/ && java -jar ChefwareLoocaGrupo.jar
fi

mysql --version

if [ $? = 1 ]
	then
		sudo apt install mysql-server
		y
		sudo mysql
		CREATE USER 'usuario'@'34.224.6.84' IDENTIFIED BY 'senha';
		GRANT INSERT, SELECT ON 'chefware' TO 'usuario'@'34.224.6.84'; 
		FLUSH PRIVILEGES;