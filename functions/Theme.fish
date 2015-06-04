function Theme --argument-names name
  set -g fish_theme $name

  if [ -e $fish_path/themes/$name -o -e $fish_custom/themes/$name ]
    import themes/$name
  else
    if ! $fish_suppress_install_warning
      set_color yellow
      echo "Theme '$name' is not installed. Run 'omf install' to download and install it."
      set_color normal
    end
  end
end
