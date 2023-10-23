# from https://stackoverflow.com/questions/10394302/how-do-i-use-vi-keys-in-ipython-under-nix
a = get_ipython().configurables[0]
a.editing_mode='vi'
a.emacs_bindings_in_vi_insert_mode = False
a.init_prompt_toolkit_cli()
