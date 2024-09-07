# CPU SET

echo "1" > $cpuonline/cpu0/online
echo "1" > $cpuonline/cpu1/online
echo "1" > $cpuonline/cpu2/online
echo "1" > $cpuonline/cpu3/online
echo "1" > $cpuonline/cpu4/online
echo "1" > $cpuonline/cpu5/online
echo "1" > $cpuonline/cpu6/online
echo "1" > $cpuonline/cpu7/online

echo "00" > /proc/gpufreqv2/fix_target_opp_index
echo "enable" > /proc/gpufreqv2/aging_mode

echo "1" > /sys/devices/system/cpu/cpu0/core_ctl/enable
echo "1" > /sys/devices/system/cpu/cpu6/core_ctl/enable

# CPU SET MIN FREQUENCY
chmod 644 /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
chmod 644 /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
chmod 644 /sys/devices/system/cpu/cpu2/cpufreq/scaling_min_freq
chmod 644 /sys/devices/system/cpu/cpu3/cpufreq/scaling_min_freq
echo "20000000" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
echo "20000000" > /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
echo "20000000" > /sys/devices/system/cpu/cpu2/cpufreq/scaling_min_freq
echo "20000000" > /sys/devices/system/cpu/cpu3/cpufreq/scaling_min_freq
chmod 444 /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
chmod 444 /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
chmod 444 /sys/devices/system/cpu/cpu2/cpufreq/scaling_min_freq
chmod 444 /sys/devices/system/cpu/cpu3/cpufreq/scaling_min_freq
chmod 644 /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
chmod 644 /sys/devices/system/cpu/cpu5/cpufreq/scaling_min_freq
chmod 644 /sys/devices/system/cpu/cpu6/cpufreq/scaling_min_freq
chmod 644 /sys/devices/system/cpu/cpu7/cpufreq/scaling_min_freq
echo "20000000" > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
echo "20000000" > /sys/devices/system/cpu/cpu5/cpufreq/scaling_min_freq
echo "24000000" > /sys/devices/system/cpu/cpu6/cpufreq/scaling_min_freq
echo "24000000" > /sys/devices/system/cpu/cpu7/cpufreq/scaling_min_freq
chmod 444 /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
chmod 444 /sys/devices/system/cpu/cpu5/cpufreq/scaling_min_freq
chmod 444 /sys/devices/system/cpu/cpu6/cpufreq/scaling_min_freq
chmod 444 /sys/devices/system/cpu/cpu7/cpufreq/scaling_min_freq


# CPU SET MAX FREQUENCY
chmod 644 /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
chmod 644 /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
chmod 644 /sys/devices/system/cpu/cpu2/cpufreq/scaling_max_freq
chmod 644 /sys/devices/system/cpu/cpu3/cpufreq/scaling_max_freq
echo "20000000" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
echo "20000000" > /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
echo "20000000" > /sys/devices/system/cpu/cpu2/cpufreq/scaling_max_freq
echo "20000000" > /sys/devices/system/cpu/cpu3/cpufreq/scaling_max_freq
chmod 444 /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
chmod 444 /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
chmod 444 /sys/devices/system/cpu/cpu2/cpufreq/scaling_max_freq
chmod 444 /sys/devices/system/cpu/cpu3/cpufreq/scaling_max_freq
chmod 644 /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq
chmod 644 /sys/devices/system/cpu/cpu5/cpufreq/scaling_max_freq
chmod 644 /sys/devices/system/cpu/cpu6/cpufreq/scaling_max_freq
chmod 644 /sys/devices/system/cpu/cpu7/cpufreq/scaling_max_freq
echo "20000000" > /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq
echo "20000000" > /sys/devices/system/cpu/cpu5/cpufreq/scaling_max_freq
echo "24000000" > /sys/devices/system/cpu/cpu6/cpufreq/scaling_max_freq
echo "24000000" > /sys/devices/system/cpu/cpu7/cpufreq/scaling_max_freq
chmod 444 /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq
chmod 444 /sys/devices/system/cpu/cpu5/cpufreq/scaling_max_freq
chmod 444 /sys/devices/system/cpu/cpu6/cpufreq/scaling_max_freq
chmod 444 /sys/devices/system/cpu/cpu7/cpufreq/scaling_max_freq

# CPU SET POLICY MAX FREQUENCY 
chmod 644 /sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq
chmod 644 /sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq
echo "20000000" > /sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq
echo "24000000" > /sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq
chmod 444 /sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq
chmod 444 /sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq

# Conservative Governor CPU0
chmod 644 /sys/devices/system/cpu/cpufreq/policy0/scaling_governor
echo "performance" > /sys/devices/system/cpu/cpufreq/policy0/scaling_governor
chmod 444 /sys/devices/system/cpu/cpufreq/policy0/scaling_governor

# Conservative Governor CPU6
chmod 644 /sys/devices/system/cpu/cpufreq/policy6/scaling_governor
echo "performance" > /sys/devices/system/cpu/cpufreq/policy6/scaling_governor
chmod 444 /sys/devices/system/cpu/cpufreq/policy6/scaling_governor

# GPU Tweaks

chmod 644 /sys/class/devfreq/mtk-dvfsrc-devfreq/governor
chmod 644 /sys/class/devfreq/13000000.mali/governor
echo "performance" > /sys/class/devfreq/mtk-dvfsrc-devfreq/governor
echo "performance" > /sys/class/devfreq/13000000.mali/governor

echo "always_on" > /sys/class/misc/mali0/device/power_policy
echo "-1" > /proc/gpufreqv2/fix_target_opp_index
echo "enable" > /proc/gpufreqv2/aging_mode

chmod 444 /sys/class/devfreq/mtk-dvfsrc-devfreq/governor
chmod 444 /sys/class/devfreq/13000000.mali/governor

# CPU Tweaks

echo 0 > /dev/cpuset/memory_pressure_enabled
echo 0 > /dev/cpuset/sched_load_balance
echo 0 > /dev/cpuset/foreground/sched_load_balance
echo 0 > /dev/cpuset/foreground-l/sched_load_balance
echo 0 > /dev/cpuset/dex2oat/sched_load_balance
echo 1 > /dev/cpuctl/rt/cpu.uclamp.latency_sensitive
echo 1 > /dev/cpuctl/foreground/cpu.uclamp.latency_sensitive
echo 1 > /dev/cpuctl/nnapi-hal/cpu.uclamp.latency_sensitive
echo 1 > /dev/cpuctl/dex2oat/cpu.uclamp.latency_sensitive
echo 1 > /dev/cpuctl//top-app/cpu.uclamp.latency_sensitive
echo 1 > /dev/cpuctl/foreground-l/cpu.uclamp.latency_sensitive

echo 3 > /proc/cpufreq/cpufreq_power_mode
echo 1 > /proc/cpufreq/cpufreq_cci_mode

# Memory Optimization

echo "always" > /sys/kernel/mm/transparent_hugepage/enabled
echo "always" > /sys/kernel/mm/transparent_hugepage/shmem_enabled

# Kernel Scheduler Tweaks

echo 500000 > /proc/sys/kernel/sched_migration_cost_ns
echo 5 > /proc/sys/kernel/perf_cpu_time_max_percent
echo 1000000 > /proc/sys/kernel/sched_latency_ns
echo 1024 > /proc/sys/kernel/sched_util_clamp_max
echo 1024 > /proc/sys/kernel/sched_util_clamp_min
echo 1 > /proc/sys/kernel/sched_tunable_scaling
echo 1 > /proc/sys/kernel/sched_child_runs_first
echo 0 > /proc/sys/kernel/sched_energy_aware
echo 1 > /proc/sys/kernel/sched_util_clamp_min_rt_default
echo 4194304 > /proc/sys/kernel/sched_deadline_period_max_us
echo 100 > /proc/sys/kernel/sched_deadline_period_min_us
echo 0 > /proc/sys/kernel/sched_schedstats


# FPSGo & GED Parameter

echo "1" > /sys/pnpmgr/fpsgo_boost/boost_mode
echo "0" > /sys/pnpmgr/mwn
echo "2" > /sys/module/mtk_fpsgo/parameters/bhr_opp
echo "1" > /sys/module/mtk_fpsgo/parameters/bhr_opp_l
echo "1" > /sys/module/mtk_fpsgo/parameters/boost_affinity
echo "1" > /sys/module/mtk_fpsgo/parameters/xgf_uboost
echo "-1" > /sys/module/mtk_fpsgo/parameters/uboost_enhance_f
echo "1" > /sys/module/mtk_fpsgo/parameters/gcc_fps_margin
echo "1" > /sys/module/mtk_fpsgo/parameters/rescue_enhance_f
echo "1" > /sys/module/mtk_fpsgo/parameters/qr_mod_frame
echo "1" > /sys/module/mtk_fpsgo/parameters/fstb_separate_runtime_enable
echo "1" > /sys/module/mtk_fpsgo/parameters/fstb_consider_deq
echo "0" > /sys/pnpmgr/fpsgo_boost/fstb/fstb_tune_quantile
echo "1" > /sys/pnpmgr/fpsgo_boost/fstb/fstb_tune_error_threshold
echo "1" > /sys/pnpmgr/fpsgo_boost/fstb/margin_mode
echo "2" > /sys/pnpmgr/fpsgo_boost/fbt/bhr_opp
echo "-1" > /sys/pnpmgr/fpsgo_boost/fbt/adjust_loading
echo "-1" > /sys/pnpmgr/fpsgo_boost/fbt/dyn_tgt_time_en
echo "2" > /sys/pnpmgr/fpsgo_boost/fbt/floor_opp
echo "-1" > /sys/pnpmgr/fpsgo_boost/fbt/rescue_enhance_f
echo "-1" > /sys/pnpmgr/fpsgo_boost/fbt/rescue_opp_c
echo "-1" > /sys/pnpmgr/fpsgo_boost/fbt/rescue_opp_f
echo "-1" > /sys/pnpmgr/fpsgo_boost/fbt/rescue_percent
echo "1" > /sys/pnpmgr/fpsgo_boost/fbt/ultra_rescue
echo "0" > /sys/kernel/fpsgo/xgf/xgf_trace_enable
echo "1" > /sys/kernel/fpsgo/fstb/tfps_to_powerhal_enable
echo "1" > /sys/kernel/fpsgo/fstb/set_cam_active
echo "1" > /sys/kernel/fpsgo/fbt/boost_ta
echo "0" > /sys/module/ged/parameters/ged_smart_boost
echo "-1" > /sys/module/ged/parameters/gpu_cust_upbound_freq
echo "1" > /sys/module/ged/parameters/enable_gpu_boost
echo "1" > /sys/module/ged/parameters/ged_boost_enable
echo "1" > /sys/module/ged/parameters/boost_gpu_enable
echo "1" > /sys/module/ged/parameters/ged_monitor_3D_fence_systrace
echo "-1" > /sys/module/ged/parameters/g_fb_dvfs_threshold
echo "0" > /sys/module/ged/parameters/g_gpu_timer_based_emu
echo "-1" > /sys/module/ged/parameters/gpu_cust_boost_freq
echo "-1" > /sys/kernel/ged/hal/gpu_boost_level
echo "0" > /sys/module/ged/parameters/is_GED_KPI_enabled
echo "-1" > /sys/kernel/ged/hal/custom_boost_gpu_freq
echo "-1" > /sys/kernel/ged/hal/custom_upbound_gpu_freq
echo "0" > /sys/kernel/ged/hal/dvfs_loading_mode
echo "0" > /sys/kernel/ged/hal/dvfs_workload_mode
echo "-1" > /sys/kernel/ged/hal/dvfs_margin_value

su -lp 2000 -c "cmd notification post -S bigtext -t 'Kanagawa Yamada' Tag240726 'Performance Mode Is Online!'"