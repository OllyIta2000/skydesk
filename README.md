# Skydesk

A free Linux desktop that runs in your browser, with Firefox, a file manager and internet access.
Each person gets their own private computer on their own free GitHub account.

## How to start

1. Make a free GitHub account at github.com (you must be 13 or older) and log in.
2. Open this link: https://codespaces.new/OllyIta2000/skydesk
   (or: click the green **Code** button, then **Codespaces**, then **Create codespace on main**).
3. Click **Create new codespace**. The first time takes about 10 minutes, so wait until the setup log stops moving.
4. At the bottom, open the **Ports** tab, find port **6080**, and click the globe icon.
5. In the new tab, click **Connect** and enter the password: `12345`

## Open Firefox

In the code editor tab, click **Terminal** at the bottom and run:

    DISPLAY=:1 firefox &

Then switch back to the desktop tab.

## Stop it when you are done

Go to github.com/codespaces, click the three dots next to Skydesk, and choose **Stop codespace**.
Each person has about 60 free hours per month, and a running codespace uses them up.

## If something did not install

In the terminal, run:

    bash .devcontainer/setup.sh

## Modern desktop look (experimental)

The default desktop is very basic. These steps switch to a modern one (XFCE with a dark theme).
Not every step has been tested yet, so tell me if something fails.

**Step 1: Switch the desktop.** In the code editor tab, open the terminal and run:

    pkill fluxbox; DISPLAY=:1 nohup dbus-launch --exit-with-session startxfce4 > /tmp/xfce.log 2>&1 &

Wait 20 seconds and look at the desktop tab. If a window asks about the panel, choose **Use default config**.

**Step 2: Dark theme and icons.** Inside the desktop (not the code editor), open the application menu,
start **Terminal**, and run these three lines:

    xfconf-query -c xsettings -p /Net/ThemeName -s "Arc-Dark"
    xfconf-query -c xsettings -p /Net/IconThemeName -s "Papirus-Dark"
    xfconf-query -c xfwm4 -p /general/theme -s "Arc-Dark"

If the commands don't change anything, use the menu instead: **Settings → Appearance** (choose Arc-Dark and Papirus-Dark)
and **Settings → Window Manager** (choose Arc-Dark).

**Step 3: A dock.** In the same desktop terminal, run:

    plank &

**If the screen goes blank:** in the code editor terminal, run

    DISPLAY=:1 startfluxbox &

to go back to the basic desktop.

## Rules

- Never set port 6080 to **Public**. Keep it private.
- Do not save anything secret in here.
- Codespaces that are not used for 30 days are deleted.
