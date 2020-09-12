My customisation of '[st](http://st.suckless.org)', the simple terminal emulator for X.
The suckless philosophy is customisation is done directly to the source code.
`config.h` contains the keyboard shortcuts.
Otherwise, the only changes I made beyond the patches is changing the default colours for background, foreground, cursor, and reverse cursor in `config.def.h`

`config.def.h` and `config.h` and are the same (see the 'cp' in the Makefile).
The former is meant to be a template for the latter; the latter is where you should make your customisations.

To install you need remember to have the developer versions of `fontconfig`, `libX11`, `libXft` installed before running `sudo make install` (or run `./install.sh` which basically does the same thing).
I have shellscripts for installing and patching included, as well as the patches themselves.

# Patches
<!-- :append(line('.'), system("ls patches | sed 's/^st-//;s/-.*$//'")) -->

* boxdraw - for making plots look nicer
* clipboard - for copying and pasting
* font2 - multiple fallback fonts
* scrollback - just keyboard scrollback, no mouse scrollback
* vertcenter - just aesthetic improvement
* xresources - reading colours from `.Xresources`

Intentionally no alpha transparency patch unless I can figure out how to make alpha transparency look good with a light background.

# Configuring Xresources
TODO

To configure a second font you want `st.font2: ...` in `.Xresources`.
Additionally fallback fonts (third and beyond) have to be added directly to `config.h`.
`st` in terminal might also crash due emoji being too large (unsure of what my solution is to this).
Possible solutions are to set font size for emoji lower or choosing a smaller font.

With the xresources patch, you probably need to set `st.termname: st-256colors` or you will run into trouble with control characters not processing correctly (like you cannot delete).
This stems from `$TERM` being set incorrectly (which you could also solve with exporting TERM in your `.profile`, `.bashrc`, or relevant startup config for your shell).

# Keyboard shortcuts
Refer to config.h

* Copy - Ctrl-Shift-C
* Paste - Ctrl-Shift-V
* Scroll Down - Alt-J / Alt + Down
* Scroll Up - Alt-K / Alt + Up
* Page Down - Alt-D
* Page Up  - Alt-U
* Zoom In  - Alt-L / Alt-Right / Ctrl-Shift-Plus (+)
* Zoom Out - Alt-H / Alt-Left / Ctrl-Shift-Underscore (_)

# Credits
Based on Aurélien APTEL <aurelien dot aptel at gmail dot com> bt source code.

