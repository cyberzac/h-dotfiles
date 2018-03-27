it2prof() { echo -e "\033]50;SetProfile=$1\a" }
it2redtab() {echo -e "\033]6;1;bg;red;brightness;255\a"}
it2reset()  echo -ne "\033]6;1;bg;*;default\a"
tab-color() {
    echo -ne "\033]6;1;bg;red;brightness;$1\a"
    echo -ne "\033]6;1;bg;green;brightness;$2\a"
    echo -ne "\033]6;1;bg;blue;brightness;$3\a"
}
tab-reset() {
    echo -ne "\033]6;1;bg;*;default\a"
}
