which youtube-dl 2>/dev/null 1>/dev/null
if [ "$?" = "0" ]; then
    ytget () {
        if [ -z "$(echo $1 | sed -ne /youtube/p)" ]; then
            url="http://www.youtube.com/watch?v=$1"
        else
            url=$1
        fi
        youtube-dl -t $url
    }
fi


