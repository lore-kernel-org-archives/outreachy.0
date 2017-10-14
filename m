X-GM-THRID: 6476305073791041536
X-Received: by 10.200.26.180 with SMTP id x49mr3161512qtj.10.1507971268589;
        Sat, 14 Oct 2017 01:54:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.212.144 with SMTP id s16ls4106243qks.0.gmail; Sat, 14 Oct
 2017 01:54:28 -0700 (PDT)
X-Received: by 10.200.57.6 with SMTP id s6mr3008419qtb.18.1507971268122;
        Sat, 14 Oct 2017 01:54:28 -0700 (PDT)
Received: by 10.55.161.207 with SMTP id k198msqke;
        Sat, 14 Oct 2017 01:03:39 -0700 (PDT)
X-Received: by 10.25.225.217 with SMTP id l86mr115642lfk.19.1507968218769;
        Sat, 14 Oct 2017 01:03:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507968218; cv=none;
        d=google.com; s=arc-20160816;
        b=N/8zQxRj0HQon68CBtu+R93k22WR5s7p4x1nvtf/e5/bcjfgpTcBQbd0+fwvzTV5OO
         PTyOwMQcN0UvvUqhw5p+nQJo1UZ8qf+8407gINLfIbij4e0FLl3wyi9bxbKHWOVuiVEH
         tjYXvJetgerDS/vP/J6kuqNiJNd2R0FaujgKzUwBI329O4iMVLVzCVNvljKGO17C1kAx
         jfQYd2vwfabN9SZIOfyAELcpUex7T4iw4+RSVnGrB+lAb7XwMtGi0hxMaOf+lHO1i5cd
         rsW0D5sq8+cjYbalDkVfIX5NoRXiZqS6a/ALMMDvNf2yHYHxtdJQH0Tt+dBD9zYC98wi
         yu/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:reply-to
         :dkim-signature:arc-authentication-results;
        bh=3y6mTD36TC0LQgWg0YhhinuUVkhfXj2MlT/JTrGXKdI=;
        b=q7+4zAilCeANZ5D527xeh3vtN1k+3+vfFgblsaI6J/C3JZpK/Bfi69MhprpumiDmyW
         qb2Ss8uHYZhKtM6V1GFW7UT8Z9JZKOtgLKC5r+RdwjUp3CkcW0Swrtqu5j/Bhjhb//cv
         0hRO3PLgF0EyqGsMmPs4Bsr1RAM1+PzGw7SBQ99exujel23y2QRtbZft4i7bl7vD1/k9
         CRiOXneCXubyET+F/EbkBE72EofiUcvI+QzB7WffiJ7ryl//1eLVdEsM6JGHxnZ3cJ1U
         t5OAvdZVlWpsFk+Rcawjin5u8Q7VT2es5MnWvJ+1cSyOScpz8n7liWxciUOIKNwGqsq9
         W3Wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qkBWCmP5;
       spf=pass (google.com: domain of ckoenig.leichtzumerken@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <ckoenig.leichtzumerken@gmail.com>
Received: from mail-wm0-x231.google.com (mail-wm0-x231.google.com. [2a00:1450:400c:c09::231])
        by gmr-mx.google.com with ESMTPS id c23si106222ljf.4.2017.10.14.01.03.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 01:03:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of ckoenig.leichtzumerken@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) client-ip=2a00:1450:400c:c09::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qkBWCmP5;
       spf=pass (google.com: domain of ckoenig.leichtzumerken@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x231.google.com with SMTP id m72so25038528wmc.1
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Oct 2017 01:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=reply-to:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=3y6mTD36TC0LQgWg0YhhinuUVkhfXj2MlT/JTrGXKdI=;
        b=qkBWCmP5hbdwL/OTqI3+HuOyfYxzn0Ow6dgq5aVk6P9fa96dkUkEodgm2yIWNsWkgh
         Uqv+JgFrgU09u7PY4T1H/QVK4D+46gPqzdZyg1ZjCIgw9K4SM9l0vHnjro/hy/GfwCav
         6A27bdKRx/KTonWYkcNlZEQVNicg1Qq82g4CoDNrigsdRp4/kpOykGgyf5YWWY6Dj/ND
         E17neH07g2UOQXTo/+YAdLI7F4oF0+U9DTTy8VxX92uLc1COJfqlqDdVLGYkHc4CbVyP
         aM8Yw6x1Deq0DxWOYXM+pOfvYTqEqgVFTGqMFfDzN883MTx7wi/CQEi0iAe8kWMBSsoZ
         HIEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=3y6mTD36TC0LQgWg0YhhinuUVkhfXj2MlT/JTrGXKdI=;
        b=MnUbWUmPxmR2WrdloRN4ZoIBNZJm+L2m1Z+jly7Y8tINkGLwHdoxycQK+G5slm4l5w
         jyTJBLMfC7ElTzytR1SzOFqbxKf5cAChAIFG0n+Ou7crDa76QT5FOTYsCYH6f1+FIn0+
         DCXRFW1K63LpdsG2aegPRSjY2AvB7wGhPfRMdH9/XocKqlW8xtsEgAejnFNjxahTxppp
         WoNXTzmJnpWD3uxjGymSO5uUam/DaAjs+/KHOej8fr21zb3ewC/AMcU5DNXV4s/CUJIa
         33C3BJNViZliI0xCNgb6SRxPKvn8qKnI5YHoMfLZ5E1KvEftN9akzPEclveh5XV47SGi
         4MiQ==
X-Gm-Message-State: AMCzsaXXmaXdpYVMij/bWGoBqvjBjJMQ/+b3ewnDBFX5uyYxoYk0u9tB
	47GBDUZ6Fqj1eaManYBM6Go=
X-Google-Smtp-Source: AOwi7QDu8dU/zVm+O3EOQROH8rmV0vOwzad8sMRDfQKaiHtIgorU4l1lBVUwdgeiivEvNsr3MEvlUw==
X-Received: by 10.28.236.25 with SMTP id k25mr3521494wmh.146.1507968218394;
        Sat, 14 Oct 2017 01:03:38 -0700 (PDT)
Return-Path: <ckoenig.leichtzumerken@gmail.com>
Received: from ?IPv6:2a02:908:1251:7981:9511:e506:409d:b695? ([2a02:908:1251:7981:9511:e506:409d:b695])
        by smtp.gmail.com with ESMTPSA id p49sm3930685wrc.61.2017.10.14.01.03.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 01:03:37 -0700 (PDT)
Reply-To: christian.koenig@amd.com
Subject: Re: [PATCH v2] drm/amd/powerplay: Remove unnecessary cast on void
 pointer
To: Harsha Sharma <harshasharmaiitr@gmail.com>, alexander.deucher@amd.com,
 christian.koenig@amd.com, airlied@linux.ie
Cc: outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org
References: <20171013173341.12367-1-harshasharmaiitr@gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <006d6665-dbce-f4f4-5789-970c7b0c64b5@gmail.com>
Date: Sat, 14 Oct 2017 10:03:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20171013173341.12367-1-harshasharmaiitr@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Am 13.10.2017 um 19:33 schrieb Harsha Sharma:
> Done with following coccinelle patch
>
> @r@
> expression x;
> void* e;
> type T;
> identifier f;
> @@
> (
>    *((T *)e)
> |
>    ((T *)x)[...]
> |
>    ((T*)x)->f
> |
>
> - (T*)
>    e
> )
>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>

Reviewed-by: Christian König <christian.koenig@amd.com>

> ---
> Changes in v2:
>   -Remove unnecessary parentheses
>   -Remove one more useless cast
>
>   drivers/gpu/drm/amd/powerplay/hwmgr/cz_hwmgr.c       |  6 +++---
>   drivers/gpu/drm/amd/powerplay/hwmgr/hwmgr.c          |  8 ++++----
>   drivers/gpu/drm/amd/powerplay/hwmgr/ppatomctrl.c     |  2 +-
>   drivers/gpu/drm/amd/powerplay/hwmgr/ppatomfwctrl.c   |  6 +++---
>   .../gpu/drm/amd/powerplay/hwmgr/processpptables.c    |  2 +-
>   drivers/gpu/drm/amd/powerplay/hwmgr/smu7_hwmgr.c     | 20 ++++++++++----------
>   drivers/gpu/drm/amd/powerplay/hwmgr/smu7_thermal.c   |  4 ++--
>   drivers/gpu/drm/amd/powerplay/hwmgr/vega10_hwmgr.c   | 12 ++++++------
>   drivers/gpu/drm/amd/powerplay/hwmgr/vega10_thermal.c |  2 +-
>   9 files changed, 31 insertions(+), 31 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/powerplay/hwmgr/cz_hwmgr.c b/drivers/gpu/drm/amd/powerplay/hwmgr/cz_hwmgr.c
> index bc839ff0bdd0..f22104c78dcb 100644
> --- a/drivers/gpu/drm/amd/powerplay/hwmgr/cz_hwmgr.c
> +++ b/drivers/gpu/drm/amd/powerplay/hwmgr/cz_hwmgr.c
> @@ -474,7 +474,7 @@ static int cz_tf_upload_pptable_to_smu(struct pp_hwmgr *hwmgr, void *input,
>   	PP_ASSERT_WITH_CODE((0 == ret && NULL != table),
>   			    "Fail to get clock table from SMU!", return -EINVAL;);
>   
> -	clock_table = (struct SMU8_Fusion_ClkTable *)table;
> +	clock_table = table;
>   
>   	/* patch clock table */
>   	PP_ASSERT_WITH_CODE((vddc_table->count <= CZ_MAX_HARDWARE_POWERLEVELS),
> @@ -868,8 +868,8 @@ static int cz_tf_update_low_mem_pstate(struct pp_hwmgr *hwmgr,
>   {
>   	bool disable_switch;
>   	bool enable_low_mem_state;
> -	struct cz_hwmgr *hw_data = (struct cz_hwmgr *)(hwmgr->backend);
> -	const struct phm_set_power_state_input *states = (struct phm_set_power_state_input *)input;
> +	struct cz_hwmgr *hw_data = hwmgr->backend;
> +	const struct phm_set_power_state_input *states = input;
>   	const struct cz_power_state *pnew_state = cast_const_PhwCzPowerState(states->pnew_state);
>   
>   	if (hw_data->sys_info.nb_dpm_enable) {
> diff --git a/drivers/gpu/drm/amd/powerplay/hwmgr/hwmgr.c b/drivers/gpu/drm/amd/powerplay/hwmgr/hwmgr.c
> index 9547f265a8bb..5d63a1b18b39 100644
> --- a/drivers/gpu/drm/amd/powerplay/hwmgr/hwmgr.c
> +++ b/drivers/gpu/drm/amd/powerplay/hwmgr/hwmgr.c
> @@ -469,7 +469,7 @@ int phm_reset_single_dpm_table(void *table,
>   {
>   	int i;
>   
> -	struct vi_dpm_table *dpm_table = (struct vi_dpm_table *)table;
> +	struct vi_dpm_table *dpm_table = table;
>   
>   	dpm_table->count = count > max ? max : count;
>   
> @@ -484,7 +484,7 @@ void phm_setup_pcie_table_entry(
>   	uint32_t index, uint32_t pcie_gen,
>   	uint32_t pcie_lanes)
>   {
> -	struct vi_dpm_table *dpm_table = (struct vi_dpm_table *)table;
> +	struct vi_dpm_table *dpm_table = table;
>   	dpm_table->dpm_level[index].value = pcie_gen;
>   	dpm_table->dpm_level[index].param1 = pcie_lanes;
>   	dpm_table->dpm_level[index].enabled = 1;
> @@ -494,7 +494,7 @@ int32_t phm_get_dpm_level_enable_mask_value(void *table)
>   {
>   	int32_t i;
>   	int32_t mask = 0;
> -	struct vi_dpm_table *dpm_table = (struct vi_dpm_table *)table;
> +	struct vi_dpm_table *dpm_table = table;
>   
>   	for (i = dpm_table->count; i > 0; i--) {
>   		mask = mask << 1;
> @@ -566,7 +566,7 @@ int phm_find_boot_level(void *table,
>   {
>   	int result = -EINVAL;
>   	uint32_t i;
> -	struct vi_dpm_table *dpm_table = (struct vi_dpm_table *)table;
> +	struct vi_dpm_table *dpm_table = table;
>   
>   	for (i = 0; i < dpm_table->count; i++) {
>   		if (value == dpm_table->dpm_level[i].value) {
> diff --git a/drivers/gpu/drm/amd/powerplay/hwmgr/ppatomctrl.c b/drivers/gpu/drm/amd/powerplay/hwmgr/ppatomctrl.c
> index 953e0c9ad7cd..676f2e8bb2ee 100644
> --- a/drivers/gpu/drm/amd/powerplay/hwmgr/ppatomctrl.c
> +++ b/drivers/gpu/drm/amd/powerplay/hwmgr/ppatomctrl.c
> @@ -579,7 +579,7 @@ static ATOM_GPIO_PIN_LUT *get_gpio_lookup_table(void *device)
>   	PP_ASSERT_WITH_CODE((NULL != table_address),
>   			"Error retrieving BIOS Table Address!", return NULL;);
>   
> -	return (ATOM_GPIO_PIN_LUT *)table_address;
> +	return table_address;
>   }
>   
>   /**
> diff --git a/drivers/gpu/drm/amd/powerplay/hwmgr/ppatomfwctrl.c b/drivers/gpu/drm/amd/powerplay/hwmgr/ppatomfwctrl.c
> index c062844b15f3..05e3f5302994 100644
> --- a/drivers/gpu/drm/amd/powerplay/hwmgr/ppatomfwctrl.c
> +++ b/drivers/gpu/drm/amd/powerplay/hwmgr/ppatomfwctrl.c
> @@ -66,7 +66,7 @@ static struct atom_voltage_objects_info_v4_1 *pp_atomfwctrl_get_voltage_info_tab
>           "Error retrieving BIOS Table Address!",
>           return NULL);
>   
> -    return (struct atom_voltage_objects_info_v4_1 *)table_address;
> +    return table_address;
>   }
>   
>   /**
> @@ -173,7 +173,7 @@ static struct atom_gpio_pin_lut_v2_1 *pp_atomfwctrl_get_gpio_lookup_table(
>   			"Error retrieving BIOS Table Address!",
>   			return NULL);
>   
> -	return (struct atom_gpio_pin_lut_v2_1 *)table_address;
> +	return table_address;
>   }
>   
>   static bool pp_atomfwctrl_lookup_gpio_pin(
> @@ -542,4 +542,4 @@ int pp_atomfwctrl_get_vbios_bootup_values(struct pp_hwmgr *hwmgr,
>   		boot_values->ulDCEFClk   = frequency;
>   
>   	return 0;
> -}
> \ No newline at end of file
> +}
> diff --git a/drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c b/drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c
> index 2716721e5453..e795b14eaabe 100644
> --- a/drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c
> +++ b/drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c
> @@ -807,7 +807,7 @@ static const ATOM_PPLIB_POWERPLAYTABLE *get_powerplay_table(
>   		hwmgr->soft_pp_table_size = size;
>   	}
>   
> -	return (const ATOM_PPLIB_POWERPLAYTABLE *)table_addr;
> +	return table_addr;
>   }
>   
>   int pp_tables_get_response_times(struct pp_hwmgr *hwmgr,
> diff --git a/drivers/gpu/drm/amd/powerplay/hwmgr/smu7_hwmgr.c b/drivers/gpu/drm/amd/powerplay/hwmgr/smu7_hwmgr.c
> index c2743233ba10..8f339a3d6221 100644
> --- a/drivers/gpu/drm/amd/powerplay/hwmgr/smu7_hwmgr.c
> +++ b/drivers/gpu/drm/amd/powerplay/hwmgr/smu7_hwmgr.c
> @@ -2952,13 +2952,13 @@ static int smu7_get_pp_table_entry_callback_func_v1(struct pp_hwmgr *hwmgr,
>   		void *state, struct pp_power_state *power_state,
>   		void *pp_table, uint32_t classification_flag)
>   {
> -	struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
> +	struct smu7_hwmgr *data = hwmgr->backend;
>   	struct smu7_power_state  *smu7_power_state =
> -			(struct smu7_power_state *)(&(power_state->hardware));
> +			&(power_state->hardware);
>   	struct smu7_performance_level *performance_level;
> -	ATOM_Tonga_State *state_entry = (ATOM_Tonga_State *)state;
> +	ATOM_Tonga_State *state_entry = state;
>   	ATOM_Tonga_POWERPLAYTABLE *powerplay_table =
> -			(ATOM_Tonga_POWERPLAYTABLE *)pp_table;
> +			pp_table;
>   	PPTable_Generic_SubTable_Header *sclk_dep_table =
>   			(PPTable_Generic_SubTable_Header *)
>   			(((unsigned long)powerplay_table) +
> @@ -3391,7 +3391,7 @@ static int smu7_read_sensor(struct pp_hwmgr *hwmgr, int idx,
>   		if (*size < sizeof(struct pp_gpu_power))
>   			return -EINVAL;
>   		*size = sizeof(struct pp_gpu_power);
> -		return smu7_get_gpu_power(hwmgr, (struct pp_gpu_power *)value);
> +		return smu7_get_gpu_power(hwmgr, value);
>   	default:
>   		return -EINVAL;
>   	}
> @@ -3400,7 +3400,7 @@ static int smu7_read_sensor(struct pp_hwmgr *hwmgr, int idx,
>   static int smu7_find_dpm_states_clocks_in_dpm_table(struct pp_hwmgr *hwmgr, const void *input)
>   {
>   	const struct phm_set_power_state_input *states =
> -			(const struct phm_set_power_state_input *)input;
> +			input;
>   	const struct smu7_power_state *smu7_ps =
>   			cast_const_phw_smu7_power_state(states->pnew_state);
>   	struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
> @@ -3478,7 +3478,7 @@ static int smu7_request_link_speed_change_before_state_change(
>   		struct pp_hwmgr *hwmgr, const void *input)
>   {
>   	const struct phm_set_power_state_input *states =
> -			(const struct phm_set_power_state_input *)input;
> +			input;
>   	struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
>   	const struct smu7_power_state *smu7_nps =
>   			cast_const_phw_smu7_power_state(states->pnew_state);
> @@ -3558,7 +3558,7 @@ static int smu7_populate_and_upload_sclk_mclk_dpm_levels(
>   {
>   	int result = 0;
>   	const struct phm_set_power_state_input *states =
> -			(const struct phm_set_power_state_input *)input;
> +			input;
>   	const struct smu7_power_state *smu7_ps =
>   			cast_const_phw_smu7_power_state(states->pnew_state);
>   	struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
> @@ -3729,7 +3729,7 @@ static int smu7_generate_dpm_level_enable_mask(
>   {
>   	int result;
>   	const struct phm_set_power_state_input *states =
> -			(const struct phm_set_power_state_input *)input;
> +			input;
>   	struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
>   	const struct smu7_power_state *smu7_ps =
>   			cast_const_phw_smu7_power_state(states->pnew_state);
> @@ -3789,7 +3789,7 @@ static int smu7_notify_link_speed_change_after_state_change(
>   		struct pp_hwmgr *hwmgr, const void *input)
>   {
>   	const struct phm_set_power_state_input *states =
> -			(const struct phm_set_power_state_input *)input;
> +			input;
>   	struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
>   	const struct smu7_power_state *smu7_ps =
>   			cast_const_phw_smu7_power_state(states->pnew_state);
> diff --git a/drivers/gpu/drm/amd/powerplay/hwmgr/smu7_thermal.c b/drivers/gpu/drm/amd/powerplay/hwmgr/smu7_thermal.c
> index baddb569a8b8..a17443d5aa61 100644
> --- a/drivers/gpu/drm/amd/powerplay/hwmgr/smu7_thermal.c
> +++ b/drivers/gpu/drm/amd/powerplay/hwmgr/smu7_thermal.c
> @@ -452,7 +452,7 @@ static int tf_smu7_thermal_start_smc_fan_control(struct pp_hwmgr *hwmgr,
>   static int tf_smu7_thermal_set_temperature_range(struct pp_hwmgr *hwmgr,
>   		void *input, void *output, void *storage, int result)
>   {
> -	struct PP_TemperatureRange *range = (struct PP_TemperatureRange *)input;
> +	struct PP_TemperatureRange *range = input;
>   
>   	if (range == NULL)
>   		return -EINVAL;
> @@ -581,4 +581,4 @@ void pp_smu7_thermal_fini(struct pp_hwmgr *hwmgr)
>   	phm_destroy_table(hwmgr, &(hwmgr->set_temperature_range));
>   	phm_destroy_table(hwmgr, &(hwmgr->start_thermal_controller));
>   	return;
> -}
> \ No newline at end of file
> +}
> diff --git a/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_hwmgr.c b/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_hwmgr.c
> index f8f02e70b8bc..9e82eed7e7a9 100644
> --- a/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_hwmgr.c
> +++ b/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_hwmgr.c
> @@ -2994,9 +2994,9 @@ static int vega10_get_pp_table_entry_callback_func(struct pp_hwmgr *hwmgr,
>   	struct vega10_power_state *vega10_power_state =
>   			cast_phw_vega10_power_state(&(power_state->hardware));
>   	struct vega10_performance_level *performance_level;
> -	ATOM_Vega10_State *state_entry = (ATOM_Vega10_State *)state;
> +	ATOM_Vega10_State *state_entry = state;
>   	ATOM_Vega10_POWERPLAYTABLE *powerplay_table =
> -			(ATOM_Vega10_POWERPLAYTABLE *)pp_table;
> +			pp_table;
>   	ATOM_Vega10_SOCCLK_Dependency_Table *socclk_dep_table =
>   			(ATOM_Vega10_SOCCLK_Dependency_Table *)
>   			(((unsigned long)powerplay_table) +
> @@ -3306,7 +3306,7 @@ static int vega10_apply_state_adjust_rules(struct pp_hwmgr *hwmgr,
>   static int vega10_find_dpm_states_clocks_in_dpm_table(struct pp_hwmgr *hwmgr, const void *input)
>   {
>   	const struct phm_set_power_state_input *states =
> -			(const struct phm_set_power_state_input *)input;
> +			input;
>   	const struct vega10_power_state *vega10_ps =
>   			cast_const_phw_vega10_power_state(states->pnew_state);
>   	struct vega10_hwmgr *data =
> @@ -3397,7 +3397,7 @@ static int vega10_populate_and_upload_sclk_mclk_dpm_levels(
>   {
>   	int result = 0;
>   	const struct phm_set_power_state_input *states =
> -			(const struct phm_set_power_state_input *)input;
> +			input;
>   	const struct vega10_power_state *vega10_ps =
>   			cast_const_phw_vega10_power_state(states->pnew_state);
>   	struct vega10_hwmgr *data =
> @@ -3813,7 +3813,7 @@ static int vega10_generate_dpm_level_enable_mask(
>   	struct vega10_hwmgr *data =
>   			(struct vega10_hwmgr *)(hwmgr->backend);
>   	const struct phm_set_power_state_input *states =
> -			(const struct phm_set_power_state_input *)input;
> +			input;
>   	const struct vega10_power_state *vega10_ps =
>   			cast_const_phw_vega10_power_state(states->pnew_state);
>   	int i;
> @@ -4042,7 +4042,7 @@ static int vega10_read_sensor(struct pp_hwmgr *hwmgr, int idx,
>   			ret = -EINVAL;
>   		else {
>   			*size = sizeof(struct pp_gpu_power);
> -			ret = vega10_get_gpu_power(hwmgr, (struct pp_gpu_power *)value);
> +			ret = vega10_get_gpu_power(hwmgr, value);
>   		}
>   		break;
>   	default:
> diff --git a/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_thermal.c b/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_thermal.c
> index d44243441d28..4f832c607514 100644
> --- a/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_thermal.c
> +++ b/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_thermal.c
> @@ -647,7 +647,7 @@ int tf_vega10_thermal_start_smc_fan_control(struct pp_hwmgr *hwmgr,
>   int tf_vega10_thermal_set_temperature_range(struct pp_hwmgr *hwmgr,
>   		void *input, void *output, void *storage, int result)
>   {
> -	struct PP_TemperatureRange *range = (struct PP_TemperatureRange *)input;
> +	struct PP_TemperatureRange *range = input;
>   
>   	if (range == NULL)
>   		return -EINVAL;



