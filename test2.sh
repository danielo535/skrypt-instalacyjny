### Options ###

    echo "Please select your installation option:"
    echo "[1] Install Panel. | Installs latest version of Pterodactyl Panel"
    echo "[2] Install Wings. | Installs latest version of Pterodactyl Wings."
    echo "[3] Install PHPMyAdmin. | Installs PHPMyAdmin. (Installs using NGINX)"
    read -r option
    case $option in
        1 ) option=1
            start
            ;;
        2 ) option=2
            startwings
            ;;
        3 ) option=3
            startphpmyadmin
            ;;
        * ) output ""
            output "Please enter a valid option from 1-10"
    esac
}
