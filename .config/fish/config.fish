if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Start X at login
# if status is-login
#   if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
#     command neofetch
#     exec startx -- -keeptty
#   end
# end


function fish_greeting
  # echo "><> Fish Shell <°)))><3"
  # date +%H:%M\ ~\ %A\ %d\ %B\ %Y
end

fish_add_path ~/.cargo/bin/
fish_add_path ~/.juliaup/bin/
fish_add_path ~/.deno/bin/
fish_add_path ~/.bun/bin/

set --universal --export EDITOR nvim
set --universal --export BROWSER firefox
# set --universal --export PLUSHIE_RUST_SOURCE_PATH ~/.cargo/bin/cargo-plushie
# set --universal --export CARGO_MOMMYS_LITTLE "girl/baby girl"
# set --universal --export CARGO_MOMMYS_PRONOUNS "she/they"
# set --universal --export CARGO_MOMMYS_EMOTES "❤️/💖/💗/💓/💞/💕/💝/💟/❣️/🧡/💛/💚/💙/💜/🤍/♥/✨/💮/🌸/💠"

# fish_config theme save "Catppuccin Macchiato"
# fish_config theme choose "Catppuccin Macchiato"
fish_config theme choose "Dracula Official"


set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/priscilla/.ghcup/bin # ghcup-env

starship init fish | source
zoxide init fish | source

# >>> coursier install directory >>>
set -gx PATH "$PATH:/home/priscilla/.local/share/coursier/bin"
# <<< coursier install directory <<<
