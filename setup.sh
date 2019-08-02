repo_loc=${PWD}
cmd="s:@env@:${repo_loc}:"

echo "# Begin Env" >> ${HOME}/.subversion/config
echo "[helpers]" >> ${HOME}/.subversion/config
sed ${cmd} svnconfig.template >> ${HOME}/.subversion/config
echo "# End Env" >> ${HOME}/.subversion/config

