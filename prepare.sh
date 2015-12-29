#!/usr/bin/env bash
#format attendu :
#users applicatifs STAMAIN_UID : user userid groupid
#STAMAIN_PUID user de maintenance : user userid groupid
#STAMAIN_GID : group groupid
#STAMAIN_PGID : group groupid

function genprep {
echo $1 | while read groupe groupid 
do
    /usr/sbin/groupadd -g $groupid $groupe
  done
  echo $2 | while read user userid groupid
do
  if [ "$3" == no_home ];then
    gen no_home
  fi
  done
}
function hex {
	openssl rand -hex 8
}
function gen {
if [ "$1" == no_home ];then
  /usr/sbin/useradd -u $userid -g $groupid -s /bin/bash -m $user
  return 0;
fi
/usr/sbin/useradd -u $userid -g $groupid -G wheel -s /bin/bash -d /home/$user -m $user
}
genprep "$STAMAIN_PGID" "$STAMAIN_PUID"
if [ "$STAMAIN_GID" ] && [ "$STAMAIN_UID" ];then
  genprep "$STAMAIN_GID" "$STAMAIN_UID" no_home
fi
if [ "$@" != "ssh" ];then
  exec $@
else
  exec /usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
fi
