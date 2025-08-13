filezilla)
    name="FileZilla"
    type="bz2"
    packageID="org.filezilla-project.filezilla"
    if [[ $(arch) == "arm64" ]]; then
        cpu_arch="arm64"
        url_platform="macos-arm64"
    elif [[ $(arch) == "i386" ]]; then
        cpu_arch="x86"
        url_platform="osx"
    fi
    appNewVersion=$( curl -A "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15" -fsL "https://filezilla-project.org/download.php?platform=$url_platform" | grep 'name="description"' | head -n 1 | awk -F ' ' '{print $6}' )
    downloadURL="https://dl4.cdn.filezilla-project.org/client/FileZilla_${appNewVersion}_macos-${cpu_arch}.app.tar.bz2"
    expectedTeamID="5VPGKXL75N"
    blockingProcesses=( NONE )
    ;;
