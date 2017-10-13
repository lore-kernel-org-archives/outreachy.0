X-GM-THRID: 6476305073791041536
X-Received: by 10.36.67.201 with SMTP id s192mr674843itb.26.1507882278514;
        Fri, 13 Oct 2017 01:11:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.47.153 with SMTP id v25ls1276487iov.15.gmail; Fri, 13 Oct
 2017 01:11:17 -0700 (PDT)
X-Received: by 10.107.56.198 with SMTP id f189mr422188ioa.120.1507882277797;
        Fri, 13 Oct 2017 01:11:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507882277; cv=none;
        d=google.com; s=arc-20160816;
        b=Eyn4iJYQFExojnW7Vs++moQquxZGzLAm8Orb4Uzler2qAAP5uHJJh5Z8mrEdmG+mQ8
         bcEpyzTmJla/ZahpiMirw7hl/6jkUb3deVimtnMVtjz3+beKhiC/NOUxqL1c9Ab/eVcz
         u6aS666oTHqyfV8LuOAwbdczIPEhKMv+rjGG8x0OhARBFA1cf+blwU04YjNSX4MRHf8S
         0DwCEdHXVszu5oDc467AuJ5xcJhGrs96ywwjdz9mEzkkyDvsfwjV3mRw5v/Ynvf5hHdc
         XdQyO4MP0V2AEehxZMHJIEMCBt9/eBa1yE3Lph8nO3Noi6MYZ/Fk2vlztBdwJ5oubZ6C
         b3ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=6q9auwZCWHeu52aWXvxrppHUB5hm/MTtgKuFrDERLh4=;
        b=zoadHXHvnax6s0bVESWaib+gpQ6YMU5DZWzcbRJf99gRNoWBkKC55v7SOF19OgPVOX
         sywep8GBfCA0ZjUsErnhhhIGRpFVywvTrh3eYASRJuEsdHsIXUFhAVZw724OXTeDeJaD
         TWgfMyIaHW8Zx+40sRM6jwJ/7nB2IhnWrnD40i/FP0UA3Rc7i/P18Qb5uUPuLrbMezeV
         CF1vgPEBNHg/tKidlUcc4+xIigzvXm4ktsUXEoPpeAVoKMWXNjULwkHyqFt2nxQe7Jo+
         yftCS2sXWj79ySe4tQnlGf3naDvhrPTnqrcDxzbiuf88rKeaMBTvAyQpfVChIaSNFXcQ
         h0gQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xjx3QAyp;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x234.google.com (mail-pf0-x234.google.com. [2607:f8b0:400e:c00::234])
        by gmr-mx.google.com with ESMTPS id w133si45621itc.0.2017.10.13.01.11.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 01:11:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) client-ip=2607:f8b0:400e:c00::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xjx3QAyp;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x234.google.com with SMTP id t188so6497439pfd.10
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Oct 2017 01:11:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=6q9auwZCWHeu52aWXvxrppHUB5hm/MTtgKuFrDERLh4=;
        b=Xjx3QAypDztYkfN0/jsS2X1qzxCx1af9nZO0KMT/i5ClS59fduedHfh+zBvoTVyirh
         7oz8kWlVUA9PPw6Iwk/FRBxTJd32TJF55Pnh3CPgw92O/0JcuqsIvmk6f5JfgBwAKEyP
         U1vzF83w37+lCd++f9htKmC7UoydBicyg3bA/lhdzRRjE7YF8bTqq6ViZmZi04H2x59+
         f+JEz6VrdnYAYfIaVPSb4NIavNM1fkMAHr9VTlXF4b30DZTPsMBZtC46Rlz9XjBAjG11
         QYdq4R2PW56szykxD6ypXB8D1lGkWZ82HlukEs5YCiNqz9bKGEjZz2JNOGuucktdsrZ+
         /XaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=6q9auwZCWHeu52aWXvxrppHUB5hm/MTtgKuFrDERLh4=;
        b=GKOPPV4RnnUvbBiWTOFQcOMyBTnwww18DdUyjnxGloW+4BrR8/oLnh93JCjVmmU2uQ
         6wFYpsUTqyi4gjhnbooNdntGrSRBfEySLsedaU3Bajr6Rot2eTgVI5yrbDR70jxRsPFP
         qaBekbLvLJsIkaVwlu2BV0FqMyofL7wvSf9qVMjJbqdL+YSadHlNlA7Ehs6+gi/kb9m/
         ukuT/RNEmee+/8+H5jqXBF8XvRMVuldO6k2wtT8seLcfQcwglLWYlxaFfCBJe+Vk/N6c
         NywBT9+bV+UDEf0rFc0w9X+hucJdroDwO4vQvpAbLpd9ejmthhSgxziN4KfYsgwl3mx/
         nluw==
X-Gm-Message-State: AMCzsaWopRFzC3tyTj8u3Agw09TdR/30PaKErdvOQoBWcGUxWZ0lMZp0
	l5G9G4zxiqRD9dwJOqK+BKc=
X-Google-Smtp-Source: AOwi7QDru4HQgJed6LdB74/pStVHNFED3kir/hIbNzSvJWh+MEtYcLpVBqmycMnMIne94m3THGiaig==
X-Received: by 10.98.33.80 with SMTP id h77mr694473pfh.18.1507882277358;
        Fri, 13 Oct 2017 01:11:17 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id t9sm1305692pgr.3.2017.10.13.01.11.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 01:11:16 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: alexander.deucher@amd.com,
	christian.koenig@amd.com,
	airlied@linux.ie
Cc: amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] drm/amd/powerplay: Remove unnecessary cast on void pointer
Date: Fri, 13 Oct 2017 13:39:02 +0530
Message-Id: <20171013080902.3323-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

Done with following coccinelle patch

@r@
expression x;
void* e;
type T;
identifier f;
@@
(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T*)x)->f
|

- (T*)
  e
)

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 drivers/gpu/drm/amd/powerplay/hwmgr/cz_hwmgr.c        |  6 +++---
 drivers/gpu/drm/amd/powerplay/hwmgr/hwmgr.c           |  8 ++++----
 drivers/gpu/drm/amd/powerplay/hwmgr/ppatomctrl.c      |  2 +-
 drivers/gpu/drm/amd/powerplay/hwmgr/ppatomfwctrl.c    |  6 +++---
 drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c |  2 +-
 drivers/gpu/drm/amd/powerplay/hwmgr/smu7_hwmgr.c      | 18 +++++++++---------
 drivers/gpu/drm/amd/powerplay/hwmgr/smu7_thermal.c    |  4 ++--
 drivers/gpu/drm/amd/powerplay/hwmgr/vega10_hwmgr.c    | 12 ++++++------
 drivers/gpu/drm/amd/powerplay/hwmgr/vega10_thermal.c  |  2 +-
 9 files changed, 30 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/amd/powerplay/hwmgr/cz_hwmgr.c b/drivers/gpu/drm/amd/powerplay/hwmgr/cz_hwmgr.c
index bc839ff0bdd0..897f666622f3 100644
--- a/drivers/gpu/drm/amd/powerplay/hwmgr/cz_hwmgr.c
+++ b/drivers/gpu/drm/amd/powerplay/hwmgr/cz_hwmgr.c
@@ -474,7 +474,7 @@ static int cz_tf_upload_pptable_to_smu(struct pp_hwmgr *hwmgr, void *input,
 	PP_ASSERT_WITH_CODE((0 == ret && NULL != table),
 			    "Fail to get clock table from SMU!", return -EINVAL;);
 
-	clock_table = (struct SMU8_Fusion_ClkTable *)table;
+	clock_table = table;
 
 	/* patch clock table */
 	PP_ASSERT_WITH_CODE((vddc_table->count <= CZ_MAX_HARDWARE_POWERLEVELS),
@@ -868,8 +868,8 @@ static int cz_tf_update_low_mem_pstate(struct pp_hwmgr *hwmgr,
 {
 	bool disable_switch;
 	bool enable_low_mem_state;
-	struct cz_hwmgr *hw_data = (struct cz_hwmgr *)(hwmgr->backend);
-	const struct phm_set_power_state_input *states = (struct phm_set_power_state_input *)input;
+	struct cz_hwmgr *hw_data = (hwmgr->backend);
+	const struct phm_set_power_state_input *states = input;
 	const struct cz_power_state *pnew_state = cast_const_PhwCzPowerState(states->pnew_state);
 
 	if (hw_data->sys_info.nb_dpm_enable) {
diff --git a/drivers/gpu/drm/amd/powerplay/hwmgr/hwmgr.c b/drivers/gpu/drm/amd/powerplay/hwmgr/hwmgr.c
index 9547f265a8bb..5d63a1b18b39 100644
--- a/drivers/gpu/drm/amd/powerplay/hwmgr/hwmgr.c
+++ b/drivers/gpu/drm/amd/powerplay/hwmgr/hwmgr.c
@@ -469,7 +469,7 @@ int phm_reset_single_dpm_table(void *table,
 {
 	int i;
 
-	struct vi_dpm_table *dpm_table = (struct vi_dpm_table *)table;
+	struct vi_dpm_table *dpm_table = table;
 
 	dpm_table->count = count > max ? max : count;
 
@@ -484,7 +484,7 @@ void phm_setup_pcie_table_entry(
 	uint32_t index, uint32_t pcie_gen,
 	uint32_t pcie_lanes)
 {
-	struct vi_dpm_table *dpm_table = (struct vi_dpm_table *)table;
+	struct vi_dpm_table *dpm_table = table;
 	dpm_table->dpm_level[index].value = pcie_gen;
 	dpm_table->dpm_level[index].param1 = pcie_lanes;
 	dpm_table->dpm_level[index].enabled = 1;
@@ -494,7 +494,7 @@ int32_t phm_get_dpm_level_enable_mask_value(void *table)
 {
 	int32_t i;
 	int32_t mask = 0;
-	struct vi_dpm_table *dpm_table = (struct vi_dpm_table *)table;
+	struct vi_dpm_table *dpm_table = table;
 
 	for (i = dpm_table->count; i > 0; i--) {
 		mask = mask << 1;
@@ -566,7 +566,7 @@ int phm_find_boot_level(void *table,
 {
 	int result = -EINVAL;
 	uint32_t i;
-	struct vi_dpm_table *dpm_table = (struct vi_dpm_table *)table;
+	struct vi_dpm_table *dpm_table = table;
 
 	for (i = 0; i < dpm_table->count; i++) {
 		if (value == dpm_table->dpm_level[i].value) {
diff --git a/drivers/gpu/drm/amd/powerplay/hwmgr/ppatomctrl.c b/drivers/gpu/drm/amd/powerplay/hwmgr/ppatomctrl.c
index 953e0c9ad7cd..676f2e8bb2ee 100644
--- a/drivers/gpu/drm/amd/powerplay/hwmgr/ppatomctrl.c
+++ b/drivers/gpu/drm/amd/powerplay/hwmgr/ppatomctrl.c
@@ -579,7 +579,7 @@ static ATOM_GPIO_PIN_LUT *get_gpio_lookup_table(void *device)
 	PP_ASSERT_WITH_CODE((NULL != table_address),
 			"Error retrieving BIOS Table Address!", return NULL;);
 
-	return (ATOM_GPIO_PIN_LUT *)table_address;
+	return table_address;
 }
 
 /**
diff --git a/drivers/gpu/drm/amd/powerplay/hwmgr/ppatomfwctrl.c b/drivers/gpu/drm/amd/powerplay/hwmgr/ppatomfwctrl.c
index c062844b15f3..05e3f5302994 100644
--- a/drivers/gpu/drm/amd/powerplay/hwmgr/ppatomfwctrl.c
+++ b/drivers/gpu/drm/amd/powerplay/hwmgr/ppatomfwctrl.c
@@ -66,7 +66,7 @@ static struct atom_voltage_objects_info_v4_1 *pp_atomfwctrl_get_voltage_info_tab
         "Error retrieving BIOS Table Address!",
         return NULL);
 
-    return (struct atom_voltage_objects_info_v4_1 *)table_address;
+    return table_address;
 }
 
 /**
@@ -173,7 +173,7 @@ static struct atom_gpio_pin_lut_v2_1 *pp_atomfwctrl_get_gpio_lookup_table(
 			"Error retrieving BIOS Table Address!",
 			return NULL);
 
-	return (struct atom_gpio_pin_lut_v2_1 *)table_address;
+	return table_address;
 }
 
 static bool pp_atomfwctrl_lookup_gpio_pin(
@@ -542,4 +542,4 @@ int pp_atomfwctrl_get_vbios_bootup_values(struct pp_hwmgr *hwmgr,
 		boot_values->ulDCEFClk   = frequency;
 
 	return 0;
-}
\ No newline at end of file
+}
diff --git a/drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c b/drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c
index 2716721e5453..e795b14eaabe 100644
--- a/drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c
+++ b/drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c
@@ -807,7 +807,7 @@ static const ATOM_PPLIB_POWERPLAYTABLE *get_powerplay_table(
 		hwmgr->soft_pp_table_size = size;
 	}
 
-	return (const ATOM_PPLIB_POWERPLAYTABLE *)table_addr;
+	return table_addr;
 }
 
 int pp_tables_get_response_times(struct pp_hwmgr *hwmgr,
diff --git a/drivers/gpu/drm/amd/powerplay/hwmgr/smu7_hwmgr.c b/drivers/gpu/drm/amd/powerplay/hwmgr/smu7_hwmgr.c
index c2743233ba10..9b4b644525c9 100644
--- a/drivers/gpu/drm/amd/powerplay/hwmgr/smu7_hwmgr.c
+++ b/drivers/gpu/drm/amd/powerplay/hwmgr/smu7_hwmgr.c
@@ -2954,11 +2954,11 @@ static int smu7_get_pp_table_entry_callback_func_v1(struct pp_hwmgr *hwmgr,
 {
 	struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
 	struct smu7_power_state  *smu7_power_state =
-			(struct smu7_power_state *)(&(power_state->hardware));
+			(&(power_state->hardware));
 	struct smu7_performance_level *performance_level;
-	ATOM_Tonga_State *state_entry = (ATOM_Tonga_State *)state;
+	ATOM_Tonga_State *state_entry = state;
 	ATOM_Tonga_POWERPLAYTABLE *powerplay_table =
-			(ATOM_Tonga_POWERPLAYTABLE *)pp_table;
+			pp_table;
 	PPTable_Generic_SubTable_Header *sclk_dep_table =
 			(PPTable_Generic_SubTable_Header *)
 			(((unsigned long)powerplay_table) +
@@ -3391,7 +3391,7 @@ static int smu7_read_sensor(struct pp_hwmgr *hwmgr, int idx,
 		if (*size < sizeof(struct pp_gpu_power))
 			return -EINVAL;
 		*size = sizeof(struct pp_gpu_power);
-		return smu7_get_gpu_power(hwmgr, (struct pp_gpu_power *)value);
+		return smu7_get_gpu_power(hwmgr, value);
 	default:
 		return -EINVAL;
 	}
@@ -3400,7 +3400,7 @@ static int smu7_read_sensor(struct pp_hwmgr *hwmgr, int idx,
 static int smu7_find_dpm_states_clocks_in_dpm_table(struct pp_hwmgr *hwmgr, const void *input)
 {
 	const struct phm_set_power_state_input *states =
-			(const struct phm_set_power_state_input *)input;
+			input;
 	const struct smu7_power_state *smu7_ps =
 			cast_const_phw_smu7_power_state(states->pnew_state);
 	struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
@@ -3478,7 +3478,7 @@ static int smu7_request_link_speed_change_before_state_change(
 		struct pp_hwmgr *hwmgr, const void *input)
 {
 	const struct phm_set_power_state_input *states =
-			(const struct phm_set_power_state_input *)input;
+			input;
 	struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
 	const struct smu7_power_state *smu7_nps =
 			cast_const_phw_smu7_power_state(states->pnew_state);
@@ -3558,7 +3558,7 @@ static int smu7_populate_and_upload_sclk_mclk_dpm_levels(
 {
 	int result = 0;
 	const struct phm_set_power_state_input *states =
-			(const struct phm_set_power_state_input *)input;
+			input;
 	const struct smu7_power_state *smu7_ps =
 			cast_const_phw_smu7_power_state(states->pnew_state);
 	struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
@@ -3729,7 +3729,7 @@ static int smu7_generate_dpm_level_enable_mask(
 {
 	int result;
 	const struct phm_set_power_state_input *states =
-			(const struct phm_set_power_state_input *)input;
+			input;
 	struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
 	const struct smu7_power_state *smu7_ps =
 			cast_const_phw_smu7_power_state(states->pnew_state);
@@ -3789,7 +3789,7 @@ static int smu7_notify_link_speed_change_after_state_change(
 		struct pp_hwmgr *hwmgr, const void *input)
 {
 	const struct phm_set_power_state_input *states =
-			(const struct phm_set_power_state_input *)input;
+			input;
 	struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
 	const struct smu7_power_state *smu7_ps =
 			cast_const_phw_smu7_power_state(states->pnew_state);
diff --git a/drivers/gpu/drm/amd/powerplay/hwmgr/smu7_thermal.c b/drivers/gpu/drm/amd/powerplay/hwmgr/smu7_thermal.c
index baddb569a8b8..a17443d5aa61 100644
--- a/drivers/gpu/drm/amd/powerplay/hwmgr/smu7_thermal.c
+++ b/drivers/gpu/drm/amd/powerplay/hwmgr/smu7_thermal.c
@@ -452,7 +452,7 @@ static int tf_smu7_thermal_start_smc_fan_control(struct pp_hwmgr *hwmgr,
 static int tf_smu7_thermal_set_temperature_range(struct pp_hwmgr *hwmgr,
 		void *input, void *output, void *storage, int result)
 {
-	struct PP_TemperatureRange *range = (struct PP_TemperatureRange *)input;
+	struct PP_TemperatureRange *range = input;
 
 	if (range == NULL)
 		return -EINVAL;
@@ -581,4 +581,4 @@ void pp_smu7_thermal_fini(struct pp_hwmgr *hwmgr)
 	phm_destroy_table(hwmgr, &(hwmgr->set_temperature_range));
 	phm_destroy_table(hwmgr, &(hwmgr->start_thermal_controller));
 	return;
-}
\ No newline at end of file
+}
diff --git a/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_hwmgr.c b/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_hwmgr.c
index f8f02e70b8bc..9e82eed7e7a9 100644
--- a/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_hwmgr.c
+++ b/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_hwmgr.c
@@ -2994,9 +2994,9 @@ static int vega10_get_pp_table_entry_callback_func(struct pp_hwmgr *hwmgr,
 	struct vega10_power_state *vega10_power_state =
 			cast_phw_vega10_power_state(&(power_state->hardware));
 	struct vega10_performance_level *performance_level;
-	ATOM_Vega10_State *state_entry = (ATOM_Vega10_State *)state;
+	ATOM_Vega10_State *state_entry = state;
 	ATOM_Vega10_POWERPLAYTABLE *powerplay_table =
-			(ATOM_Vega10_POWERPLAYTABLE *)pp_table;
+			pp_table;
 	ATOM_Vega10_SOCCLK_Dependency_Table *socclk_dep_table =
 			(ATOM_Vega10_SOCCLK_Dependency_Table *)
 			(((unsigned long)powerplay_table) +
@@ -3306,7 +3306,7 @@ static int vega10_apply_state_adjust_rules(struct pp_hwmgr *hwmgr,
 static int vega10_find_dpm_states_clocks_in_dpm_table(struct pp_hwmgr *hwmgr, const void *input)
 {
 	const struct phm_set_power_state_input *states =
-			(const struct phm_set_power_state_input *)input;
+			input;
 	const struct vega10_power_state *vega10_ps =
 			cast_const_phw_vega10_power_state(states->pnew_state);
 	struct vega10_hwmgr *data =
@@ -3397,7 +3397,7 @@ static int vega10_populate_and_upload_sclk_mclk_dpm_levels(
 {
 	int result = 0;
 	const struct phm_set_power_state_input *states =
-			(const struct phm_set_power_state_input *)input;
+			input;
 	const struct vega10_power_state *vega10_ps =
 			cast_const_phw_vega10_power_state(states->pnew_state);
 	struct vega10_hwmgr *data =
@@ -3813,7 +3813,7 @@ static int vega10_generate_dpm_level_enable_mask(
 	struct vega10_hwmgr *data =
 			(struct vega10_hwmgr *)(hwmgr->backend);
 	const struct phm_set_power_state_input *states =
-			(const struct phm_set_power_state_input *)input;
+			input;
 	const struct vega10_power_state *vega10_ps =
 			cast_const_phw_vega10_power_state(states->pnew_state);
 	int i;
@@ -4042,7 +4042,7 @@ static int vega10_read_sensor(struct pp_hwmgr *hwmgr, int idx,
 			ret = -EINVAL;
 		else {
 			*size = sizeof(struct pp_gpu_power);
-			ret = vega10_get_gpu_power(hwmgr, (struct pp_gpu_power *)value);
+			ret = vega10_get_gpu_power(hwmgr, value);
 		}
 		break;
 	default:
diff --git a/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_thermal.c b/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_thermal.c
index d44243441d28..4f832c607514 100644
--- a/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_thermal.c
+++ b/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_thermal.c
@@ -647,7 +647,7 @@ int tf_vega10_thermal_start_smc_fan_control(struct pp_hwmgr *hwmgr,
 int tf_vega10_thermal_set_temperature_range(struct pp_hwmgr *hwmgr,
 		void *input, void *output, void *storage, int result)
 {
-	struct PP_TemperatureRange *range = (struct PP_TemperatureRange *)input;
+	struct PP_TemperatureRange *range = input;
 
 	if (range == NULL)
 		return -EINVAL;
-- 
2.11.0


