# install
apt install -y xinit x11-utils chromium-browser xdotool

# configure
sed -i -e 's/console/anybody/g' /etc/X11/Xwrapper.config
echo '*/5 * * * * root export DISPLAY=:0.0 ; xdotool key Ctrl > /dev/null 2>&1 ' | tee -a /etc/cron.d/nosleep

nano /etc/systemd/system/browser.service

[Unit]
Description=browser service
Wants=network-online.target
After=network-online.target
[Service]
ExecStart=/bin/bash -c "xinit /usr/bin/chromium-browser \
                              --aggressive-cache-discard \
                              -no-sandbox \
                              --enable-features=OverlayScrollbar \
                              --window-size=1920,1080 \
                              --start-fullscreen \
                              --kiosk \
                              --incognito \
                              --noerrdialogs \
                              --no-first-run \
                              --fast \
                              --fast-start \
                              --disable-infobars \
                              'https://www.google.com' -- -nocursor"
Restart=always
[Install]
WantedBy=multi-user.target

systemctl daemon-reload ; systemctl start browser.service
