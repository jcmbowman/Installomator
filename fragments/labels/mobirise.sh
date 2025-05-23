mobirise)
    name="Mobirise"
    type="dmg"
    downloadURL="https://download.mobirise.com/MobiriseSetup.dmg"
    appNewVersion=$(curl -fsL 'https://history.mobirisesite.com' | grep -A 1 "Download Mobirise " | tail -n 1 | sed -E 's/.*Mobirise ([0-9.]*)<.*/\1/g')
    expectedTeamID="V324ZB3P82"
    ;;
