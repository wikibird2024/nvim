# ============================= SYSTEM UTILITIES ==============================

# Create a directory and move into it
mkcd() {
  mkdir -p "$1" && cd "$1"
}
# Open configfile
# Universal extract function for multiple archive formats
extract() {
  if [ -f "$1" ]; then
    case "$1" in
      *.tar.bz2) tar xvjf "$1" ;;
      *.tar.gz)  tar xvzf "$1" ;;
      *.tar.xz)  tar xvJf "$1" ;;
      *.bz2)     bunzip2 "$1" ;;
      *.gz)      gunzip "$1" ;;
      *.tar)     tar xvf "$1" ;;
      *.tbz2)    tar xvjf "$1" ;;
      *.tgz)     tar xvzf "$1" ;;
      *.zip)     unzip "$1" ;;
      *.rar)     unrar x "$1" ;;
      *.7z)      7z x "$1" ;;
      *)         echo "❌ Cannot extract: $1" ;;
    esac
  else
    echo "❌ File does not exist: $1"
  fi
}

# Measure execution time of any command
timer() {
  local start=$(date +%s)
  "$@"
  local end=$(date +%s)
  echo "⏱ Duration: $((end - start)) seconds"
}

# ============================= PYTHON & VENV ==============================

# Create a Python virtual environment
mkvenv() {
  if [ -z "$1" ]; then
    echo "Usage: mkvenv <env_name>"
    return 1
  fi
  python3 -m venv "$1"
  echo "✅ Created virtual environment: $1"
  echo "👉 To activate: source $1/bin/activate"
}

# Activate an existing Python virtual environment
workon() {
  if [ -z "$1" ]; then
    echo "Usage: workon <env_path>"
    return 1
  fi
  source "$1/bin/activate"
  echo "✅ Activated venv: $1"
}


# Display status of virtual environment
venvstatus() {
  if [[ "$VIRTUAL_ENV" != "" ]]; then
    echo "🟢 Virtual environment active: $VIRTUAL_ENV"
  else
    echo "🔴 No virtual environment is active"
  fi
}

# ============================= GIT UTILITIES ==============================

# Git log with full tree view
glog() {
  git log --graph --oneline --decorate --all
}

# Show files with merge conflicts
git_conflicts() {
  git diff --name-only --diff-filter=U
}

# Delete all local branches already merged (except main/master/dev)
git_clean_branches() {
  git fetch -p
  git branch --merged | grep -vE '^\*|main|master|dev' | xargs -r git branch -d
}

# Reset local branch to origin version
git_reset_hard_origin() {
  local branch=$(git symbolic-ref --short HEAD)
  git fetch origin
  git reset --hard origin/"$branch"
  echo "✅ Reset $branch to origin/$branch"
}

# ============================= ESP-IDF TOOLS ==============================

# Load ESP-IDF environment (v5+)
idfenv() {
  if [ -f "$HOME/esp/esp-idf/export.sh" ]; then
    source "$HOME/esp/esp-idf/export.sh"
    echo "✅ ESP-IDF environment loaded"
  else
    echo "❌ esp-idf not found at ~/esp/esp-idf/"
  fi
}

# Build current ESP-IDF project
idfbuild() {
  idf.py build && echo "✅ Build complete"
}

# Flash to default port or passed port
idfflash() {
  idf.py -p "${1:-/dev/ttyUSB0}" flash
}

# Open monitor on default or passed port
idfmonitor() {
  idf.py -p "${1:-/dev/ttyUSB0}" monitor
}

# Full clean of ESP-IDF build files
idfclean() {
  idf.py fullclean && echo "🧹 Cleaned ESP-IDF project"
}

# Shortcut to flash and monitor
idfreset() {
  idfflash "$1" && idfmonitor "$1"
}

# ============================= SYSTEM ADMIN ==============================

# Show basic system info (uptime, memory, OS...)
sysinfo() {
  echo "Hostname   : $(hostname)"
  echo "Uptime     : $(uptime -p)"
  echo "Kernel     : $(uname -r)"
  echo "OS         : $(lsb_release -ds 2>/dev/null || cat /etc/*release | head -n 1)"
  echo "Memory     : $(free -h | awk '/^Mem/ {print $3 "/" $2}')"
  echo "Disk Usage : $(df -h / | awk 'NR==2{print $3 "/" $2}')"
}

# List top listening ports
topports() {
  sudo lsof -i -n -P | grep LISTEN | awk '{print $1, $9, $10}' | sort | uniq
}

# Show top memory consuming processes
memtop() {
  ps aux --sort=-%mem | awk 'NR<=10{print $0}'
}

# Show top CPU consuming processes
cpuprof() {
  ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head
}

# ============================= NETWORKING ==============================

# Get public IP
myip_public() {
  curl -s ifconfig.me
}

# Simple ping test
pingtest() {
  ping -c 5 google.com
}

# List available Wi-Fi networks
wifi_scan() {
  nmcli dev wifi list
}

# ============================= TREE TOOLS ==============================

# Show tree with size, depth (default: 2)
treesize() {
  tree -sh --du -C -L "${1:-2}" | less
}

# Deep tree view excluding common build dirs
treedeep() {
  tree -C -a -L "${1:-3}" -I ".git|node_modules|__pycache__|build"
}

# ============================= FILE & FIND ==============================

# Fuzzy file search by name
ff() {
  find . -type f -iname "*$1*"
}

# Fuzzy directory search by name
fd() {
  find . -type d -iname "*$1*"
}

# Rerun last command with sudo
please() {
  sudo $(fc -ln -1)
}

# ============================= CLEANING TOOLS ==============================

# Clean /tmp files older than 2 days
cleantmp() {
  echo "🧹 Cleaning /tmp files older than 2 days..."
  sudo find /tmp -type f -atime +2 -delete
}

