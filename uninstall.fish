#!/usr/bin/fish

set script_dir (dirname (status filename))
set bash_script "$script_dir/uninstall.sh"

if not type -q bash
    echo "ERROR: bash is required to uninstall xTool Studio Cachy Box."
    exit 1
end

if not test -f "$bash_script"
    echo "ERROR: uninstall.sh was not found next to this Fish wrapper."
    exit 1
end

exec bash "$bash_script" $argv
