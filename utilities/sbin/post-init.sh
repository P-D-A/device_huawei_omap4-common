#!/system/bin/sh

# SELinux policy for Viper4Android
/system/xbin/supolicy --live "allow mediaserver mediaserver_tmpfs:file { read write execute };"

# Timer slack
mount -t cgroup -o timer_slack none /sys/fs/cgroup
echo 50000 > /sys/fs/cgroup/timer_slack.min_slack_ns
echo 100000 > /sys/fs/cgroup/timer_slack.min_slack_suspend_ns

exit;
