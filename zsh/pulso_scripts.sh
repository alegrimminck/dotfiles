#!/bin/zsh

function resurrect_pulso() {
  # Layout
  create_right
  resize_right
  create_right
  right
  create_down
  down
  create_down
  up
  create_down

  # Run servers
  run_postgres
  run_pulso_app_server
  down
  run_pulso_app_webpacker
  down
  run_admin_dashboard
  down
  run_docker


  run_postgres() {
    slow_sleep
    xdotool type --delay 36 "echo <password> | sudo -S systemctl restart postgresql" && xdotool key Return
    slow_sleep
  }

  run_pulso_app_server() {
    slow_sleep
    xdotool type --delay 36 "cd /home/dev/pulso/pulso-app/" && xdotool key Return
    slow_sleep
    xdotool type --delay 36 "rails s -b 192.168.101.1" && xdotool key Return
  }

  run_pulso_app_webpacker() {
    slow_sleep
    xdotool type --delay 36 "cd /home/dev/pulso/pulso-app/" && xdotool key Return
    slow_sleep
    xdotool type --delay 36 "bin/webpacker-dev-server" && xdotool key Return
    slow_sleep
  }

  run_admin_dashboard() {
    slow_sleep
    xdotool type --delay 36 "cd /home/dev/pulso/pulso-admin-dashboard-client" && xdotool key Return
    slow_sleep
    xdotool type --delay 36 "npm start" && xdotool key Return
    slow_sleep
  }

  run_docker(){
    slow_sleep
    xdotool type --delay 36 "cd /home/dev/pulso" && xdotool key Return
    slow_sleep
    xdotool type --delay 36 "docker compose up" && xdotool key Return
    slow_sleep
  }

  fast_sleep() {
    sleep 0.2
  }

  slow_sleep() {
    sleep 0.5
  }

  up() {
    xdotool key alt+Up
    fast_sleep
  }

  left() {
    xdotool key alt+Left
    fast_sleep
  }

  right() {
    xdotool key alt+Right
    fast_sleep
  }

  down() {
    xdotool key alt+Down
    fast_sleep
  }

  create_right() {
    xdotool key ctrl+p
    fast_sleep
    xdotool key r
    left
  }

  create_down() {
    xdotool key ctrl+p
    fast_sleep
    xdotool key d
    up
  }

  resize_right() {
    xdotool key ctrl+n
    fast_sleep
    xdotool key Right key Right key Right
  }
}

function restart_pulso_function() {
  local pulso_function=$1
  docker compose restart "$pulso_function" pubsub && docker compose restart pubsub-client
}

function attach_to_pulso_function_container() {
  local function_name=$1
  docker attach --detach-keys="ctrl-x" pulso-"$function_name"-1
}
