# CPU SET

for cpuonline in /sys/devices/system/cpu

do

echo "1" > $cpuonline/cpu0/online
echo "1" > $cpuonline/cpu1/online
echo "1" > $cpuonline/cpu2/online
echo "1" > $cpuonline/cpu3/online
echo "1" > $cpuonline/cpu4/online
echo "1" > $cpuonline/cpu5/online
echo "1" > $cpuonline/cpu6/online
echo "1" > $cpuonline/cpu7/online

done

for gpufreqv2 in /proc/gpufreqv2

do

echo "00" > $gpufreqv2/fix_target_opp_index
echo "enable" > $gpufreqv2/aging_mode

done

for cpuctl in /sys/devices/system/cpu

do

echo "1" > $cpuctl/cpu0/core_ctl/enable
echo "1" > $cpuctl/cpu6/core_ctl/enable

done

# CPU SET MIN FREQUENCY

for cpufreq in /sys/devices/system/cpu

do

chmod 644 $cpufreq/cpu0/cpufreq/scaling_min_freq
chmod 644 $cpufreq/cpu1/cpufreq/scaling_min_freq
chmod 644 $cpufreq/cpu2/cpufreq/scaling_min_freq
chmod 644 $cpufreq/cpu3/cpufreq/scaling_min_freq
echo "20000000" > $cpufreq/cpu0/cpufreq/scaling_min_freq
echo "20000000" > $cpufreq/cpu1/cpufreq/scaling_min_freq
echo "20000000" > $cpufreq/cpu2/cpufreq/scaling_min_freq
echo "20000000" > $cpufreq/cpu3/cpufreq/scaling_min_freq
chmod 444 $cpufreq/cpu0/cpufreq/scaling_min_freq
chmod 444 $cpufreq/cpu1/cpufreq/scaling_min_freq
chmod 444 $cpufreq/cpu2/cpufreq/scaling_min_freq
chmod 444 $cpufreq/cpu3/cpufreq/scaling_min_freq

chmod 644 $cpufreq/cpu4/cpufreq/scaling_min_freq
chmod 644 $cpufreq/cpu5/cpufreq/scaling_min_freq
chmod 644 $cpufreq/cpu6/cpufreq/scaling_min_freq
chmod 644 $cpufreq/cpu7/cpufreq/scaling_min_freq
echo "20000000" > $cpufreq/cpu4/cpufreq/scaling_min_freq
echo "20000000" > $cpufreq/cpu5/cpufreq/scaling_min_freq
echo "24000000" > $cpufreq/cpu6/cpufreq/scaling_min_freq
echo "24000000" > $cpufreq/cpu7/cpufreq/scaling_min_freq
chmod 444 $cpufreq/cpu4/cpufreq/scaling_min_freq
chmod 444 $cpufreq/cpu5/cpufreq/scaling_min_freq
chmod 444 $cpufreq/cpu6/cpufreq/scaling_min_freq
chmod 444 $cpufreq/cpu7/cpufreq/scaling_min_freq


# CPU SET MAX FREQUENCY
chmod 644 $cpufreq/cpu0/cpufreq/scaling_max_freq
chmod 644 $cpufreq/cpu1/cpufreq/scaling_max_freq
chmod 644 $cpufreq/cpu2/cpufreq/scaling_max_freq
chmod 644 $cpufreq/cpu3/cpufreq/scaling_max_freq
echo "20000000" > $cpufreq/cpu0/cpufreq/scaling_max_freq
echo "20000000" > $cpufreq/cpu1/cpufreq/scaling_max_freq
echo "20000000" > $cpufreq/cpu2/cpufreq/scaling_max_freq
echo "20000000" > $cpufreq/cpu3/cpufreq/scaling_max_freq
chmod 444 $cpufreq/cpu0/cpufreq/scaling_max_freq
chmod 444 $cpufreq/cpu1/cpufreq/scaling_max_freq
chmod 444 $cpufreq/cpu2/cpufreq/scaling_max_freq
chmod 444 $cpufreq/cpu3/cpufreq/scaling_max_freq
chmod 644 $cpufreq/cpu4/cpufreq/scaling_max_freq
chmod 644 $cpufreq/cpu5/cpufreq/scaling_max_freq
chmod 644 $cpufreq/cpu6/cpufreq/scaling_max_freq
chmod 644 $cpufreq/cpu7/cpufreq/scaling_max_freq
echo "20000000" > $cpufreq/cpu4/cpufreq/scaling_max_freq
echo "20000000" > $cpufreq/cpu5/cpufreq/scaling_max_freq
echo "24000000" > $cpufreq/cpu6/cpufreq/scaling_max_freq
echo "24000000" > $cpufreq/cpu7/cpufreq/scaling_max_freq
chmod 444 $cpufreq/cpu4/cpufreq/scaling_max_freq
chmod 444 $cpufreq/cpu5/cpufreq/scaling_max_freq
chmod 444 $cpufreq/cpu6/cpufreq/scaling_max_freq
chmod 444 $cpufreq/cpu7/cpufreq/scaling_max_freq

# CPU SET POLICY MAX FREQUENCY 
chmod 644 $cpufreq/cpufreq/policy6/scaling_max_freq
chmod 644 $cpufreq/cpufreq/policy0/scaling_max_freq
echo "20000000" > $cpufreq/cpufreq/policy0/scaling_max_freq
echo "24000000" > $cpufreq/cpufreq/policy6/scaling_max_freq
chmod 444 $cpufreq/cpufreq/policy6/scaling_max_freq
chmod 444 $cpufreq/cpufreq/policy0/scaling_max_freq

# Conservative Governor CPU0
chmod 644 $cpufreq/cpufreq/policy0/scaling_governor
echo "performance" > $cpufreq/cpufreq/policy0/scaling_governor
chmod 444 $cpufreq/cpufreq/policy0/scaling_governor

# Conservative Governor CPU6
chmod 644 $cpufreq/cpufreq/policy6/scaling_governor
echo "performance" > $cpufreq/cpufreq/policy6/scaling_governor
chmod 444 $cpufreq/cpufreq/policy6/scaling_governor

done

# GPU Tweaks

for gputweak in /sys/class/devfreq

do

chmod 644 $gputweak/mtk-dvfsrc-devfreq/governor
chmod 644 $gputweak/13000000.mali/governor
echo "performance" > $gputweak/mtk-dvfsrc-devfreq/governor
echo "performance" > $gputweak/13000000.mali/governor

echo "always_on" > /sys/class/misc/mali0/device/power_policy
echo "-1" > /proc/gpufreqv2/fix_target_opp_index
echo "enable" > /proc/gpufreqv2/aging_mode

chmod 444 $gputweak//mtk-dvfsrc-devfreq/governor
chmod 444 $gputweak//13000000.mali/governor

done

# CPU Tweaks

for cputweakset in /dev/cpuset

do 

echo 0 > $cputweakset/memory_pressure_enabled
echo 0 > $cputweakset/sched_load_balance
echo 0 > $cputweakset/foreground/sched_load_balance
echo 0 > $cputweakset/foreground-l/sched_load_balance
echo 0 > $cputweakset/dex2oat/sched_load_balance

done

for cputweakctl in /dev/cpuctl

do

echo 1 > $cputweakctl/rt/cpu.uclamp.latency_sensitive
echo 1 > $cputweakctl/foreground/cpu.uclamp.latency_sensitive
echo 1 > $cputweakctl/nnapi-hal/cpu.uclamp.latency_sensitive
echo 1 > $cputweakctl/dex2oat/cpu.uclamp.latency_sensitive
echo 1 > $cputweakctl/top-app/cpu.uclamp.latency_sensitive
echo 1 > $cputweakctl/foreground-l/cpu.uclamp.latency_sensitive

done

echo 3 > /proc/cpufreq/cpufreq_power_mode
echo 1 > /proc/cpufreq/cpufreq_cci_mode

# Memory Optimization

echo "always" > /sys/kernel/mm/transparent_hugepage/enabled
echo "always" > /sys/kernel/mm/transparent_hugepage/shmem_enabled

# Kernel Scheduler Tweaks

for kerneltweak in /proc/sys/kernel

do

echo 500000 > $kerneltweak/sched_migration_cost_ns
echo 5 > $kerneltweak/perf_cpu_time_max_percent
echo 1000000 > $kerneltweak/sched_latency_ns
echo 1024 > $kerneltweak/sched_util_clamp_max
echo 1024 > $kerneltweak/sched_util_clamp_min
echo 2 > $kerneltweak/sched_tunable_scaling
echo 0 > $kerneltweak/sched_child_runs_first
echo 0 > $kerneltweak/sched_energy_aware
echo 1 > $kerneltweak/sched_util_clamp_min_rt_default
echo 4194304 > $kerneltweak/sched_deadline_period_max_us
echo 100 > $kerneltweak/sched_deadline_period_min_us
echo 0 > $kerneltweak/sched_schedstats

done

# FPSGo & GED Parameter

for FPSGOpnpmgr in /sys/pnpmgr

do 

echo "1" > $FPSGOpnpmgr/fpsgo_boost/boost_mode
echo "1" > $FPSGOpnpmgr/mwn
echo "0" > $FPSGOpnpmgr/fpsgo_boost/fstb/fstb_tune_quantile
echo "1" > $FPSGOpnpmgr/fpsgo_boost/fstb/fstb_tune_error_threshold
echo "1" > $FPSGOpnpmgr/fpsgo_boost/fstb/margin_mode
echo "2" > $FPSGOpnpmgr/fpsgo_boost/fbt/bhr_opp
echo "-1" > $FPSGOpnpmgr/fpsgo_boost/fbt/adjust_loading
echo "-1" > $FPSGOpnpmgr/fpsgo_boost/fbt/dyn_tgt_time_en
echo "2" > $FPSGOpnpmgr/fpsgo_boost/fbt/floor_opp
echo "-1" > $FPSGOpnpmgr/fpsgo_boost/fbt/rescue_enhance_f
echo "-1" > $FPSGOpnpmgr/fpsgo_boost/fbt/rescue_opp_c
echo "-1" > $FPSGOpnpmgr/fpsgo_boost/fbt/rescue_opp_f
echo "-1" > $FPSGOpnpmgr/fpsgo_boost/fbt/rescue_percent
echo "1" > $FPSGOpnpmgr/fpsgo_boost/fbt/ultra_rescue

done

for FPSGOparam in /sys/module/mtk_fpsgo/parameters

do

echo "2" > $FPSGOparam/bhr_opp
echo "1" > $FPSGOparam/bhr_opp_l
echo "90" > $FPSGOparam/boost_affinity
echo "80" > $FPSGOparam/xgf_uboost
echo "-1" > $FPSGOparam/uboost_enhance_f
echo "1" > $FPSGOparam/gcc_fps_margin
echo "1" > $FPSGOparam/rescue_enhance_f
echo "1" > $FPSGOparam/qr_mod_frame
echo "1" > $FPSGOparam/fstb_separate_runtime_enable
echo "1" > $FPSGOparam/fstb_consider_deq

done

for FPSGoKernel in /sys/kernel/fpsgo

do

echo "0" > $FPSGoKernel/xgf/xgf_trace_enable
echo "1" > $FPSGoKernel/fstb/tfps_to_powerhal_enable
echo "1" > $FPSGoKernel/fstb/set_cam_active
echo "1" > $FPSGoKernel/fbt/boost_ta

done

for GEDParam in /sys/module/ged/parameters

do 


echo 90 > "$GEDParam/ged_smart_boost"
echo 1 > "$GEDParam/enable_gpu_boost"
echo 90 > "$GEDParam/ged_boost_enable"
echo 1 > "$GEDParam/boost_gpu_enable"
echo 0 > "$GEDParam/is_GED_KPI_enabled"
echo 0 > "$GEDParam/boost_gpu_enable"

done

for GEDHal in /sys/kernel/ged/hal

do

echo "90" > $GEDHal/gpu_boost_level
echo "-1" > $GEDHal/custom_boost_gpu_freq
echo "-1" > $GEDHal/custom_upbound_gpu_freq
echo "0" > $GEDHal/dvfs_loading_mode
echo "0" > $GEDHal/dvfs_workload_mode
echo "-1" > $GEDHal/dvfs_margin_value

done

# CPU Power Tweaks

for CPUPerf in /sys/devices/system/cpu/perf
do

echo 1 > "$CPUPerf/gpu_pmu_enable"
echo -1 > "$CPUPerf/gpu_pmu_period"
echo 1 > "$CPUPerf/fuel_gauge_enable"
echo 1 > "$CPUPerf/enable"
echo 1 > "$CPUPerf/charger_enable"

done

# Virtual Memory Tweak

for VMT in /proc/sys/vm

do 

echo 20 > "$VMT/dirty_background_ratio"
echo 35 > "$VMT/dirty_ratio"
echo 120 > "$VMT/vfs_cache_pressure"
echo 3000 > "$VMT/dirty_expire_centisecs"
echo 5000 > "$VMT/dirty_writeback_centisecs"
echo 0 > "$VMT/oom_dump_tasks"
echo 0 > "$VMT/page-cluster"
echo 0 > "$VMT/block_dump"
echo 10 > "$VMT/stat_interval"
echo 0 > "$VMT/compaction_proactiveness"
echo 1 > "$VMT/watermark_boost_factor"
echo 40 > "$VMT/watermark_scale_factor"
echo 2 > "$VMT/drop_caches"

done

for swaptweak in /dev/memcg

do

echo 100 > "$swaptweak/memory.swappiness"
echo 30 > "$swaptweak/apps/memory.swappiness"
echo 100 > "$swaptweak/system/memory.swappiness"

done

# Note for Nazepyrus. Do not rename this into nigga amabatukan tweak, or I will turn you into a jawir