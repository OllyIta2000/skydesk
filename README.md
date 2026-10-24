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

## Rules

- Never set port 6080 to **Public**. Keep it private.
- Do not save anything secret in here.
- Codespaces that are not used for 30 days are deleted.
