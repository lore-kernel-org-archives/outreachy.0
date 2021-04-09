X-GM-THRID: 6948695492025909248
X-Received: by 2002:a05:6512:11c3:: with SMTP id h3mr9698984lfr.366.1617959274548;
        Fri, 09 Apr 2021 02:07:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3b95:: with SMTP id g21ls526797lfv.1.gmail; Fri, 09
 Apr 2021 02:07:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzXMxUHGYBD9ZZJ5voADkPJfzNA/9NsY4cr4QQ+s1dunPldGwQNSfO6lJ6ijVcE01eTB4qF
X-Received: by 2002:a05:6512:3241:: with SMTP id c1mr10015753lfr.230.1617959272905;
        Fri, 09 Apr 2021 02:07:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617959272; cv=none;
        d=google.com; s=arc-20160816;
        b=OlVfym7gToZyXYHt6YHc1ZH0vJuB0qPOY3OnGfiizMgS18/99NQ2wQlzmeem9Itu3O
         5JfAacqn9pnxeW9tl+73xs91q1DK+2xLdk7W0OuNPmYs4D4D6ax1MFSjbqNzWQb6maxL
         oYYrmdnSCkgIme/nzrjSfw747H+ef1jBWMLyz04QCo2Nks/SWOQ37iyoZsgC7jHO4G/U
         cZge29Dzwi5v/7WXRtrOqI5Jv/k/sCCXamyjcDlmALIofHpIpK2yFXnmZ4tW0IFabkv/
         ghDICCxonJnFZGBwniE7x13gdD1fT5MjYZDEF3Q9dhHGFYaabxX8dqeUYKQdCtXh/ybk
         5Q8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=FdDiJbRkBDDcebgiOC7XdxzSZvzxwChwrR8HR8/ut0E=;
        b=lUEyHv8eNd28RRKUjBWj/YTP5n7i9XF1GbZZ799XjABsnyyt0dfz08ExI97Re3sW4E
         yj+9AUbrUIoK0q9T3FTBph7P/VOW9/OZRZ5KfzGgv4XKtMbD4lM4eRASO+CBMl3k6CPB
         N1FT3+U2P0i0gdte6TIGeUde4n+b5Bl9w4auXzX330J44RtNp2JYcKmHkoTInkUmsRZM
         LYAgEKv8W/AB1SJzPLrouzejJfL7BPUuEg0EYRyYyh1wyRLLB2UQ04LH8dZXXcf0qpN+
         w7sJXM9JqPGHBd7e8Tt3hZDPCeERmca0QLhvkx2MZYC+hbavQsdQere19bTx8jbnVy4g
         dlYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FcBxLbDP;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com. [2a00:1450:4864:20::530])
        by gmr-mx.google.com with ESMTPS id q9si151153ljm.3.2021.04.09.02.07.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 02:07:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) client-ip=2a00:1450:4864:20::530;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FcBxLbDP;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x530.google.com with SMTP id g17so4927356edm.6
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 02:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FdDiJbRkBDDcebgiOC7XdxzSZvzxwChwrR8HR8/ut0E=;
        b=FcBxLbDPjFAefzwc4rgW98jQu3Z9pHkMutC96PLVUVEVwrEW66WI+AoH9ywtGp5cIr
         dBGyUNkEcklhwspCmhSsyjYKcP2fSDKUlENX8T/hr8fy6/2EYwezPM5GhvCM5uZUfRqt
         VIQT8gK3O5kZWLLEC0U6AqWII14SHxWfcywG0WPQzf82RypsgekG+ANO7tvTD4yUNUBL
         bOFzGmoVnT680N3p8bzmweu0BzR8cRqoxsuw90QIqQ+u12RZ7D49+QQm3AUrF740ujlL
         9FSFT/iKlgGtrAdQU0yyE845KbKqgqDMqbPID46xerzHsCa+TVO1TJEDrU+fLT9T19XH
         PZcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FdDiJbRkBDDcebgiOC7XdxzSZvzxwChwrR8HR8/ut0E=;
        b=iTH30McMraoJIR4esXKouPtH1gtLVVTrjcLjG/dS7oldZgn/LOXEFGB7nKxjk/Zcs+
         odRXqFpR1a785w381Ke6ytcUhu2Kyy+SNIdLR/5NQ6JG5XDMFhRaYMmX4u10XHp6QFMi
         q8pwY2X3krtfLCBnEeBy5s6o6KgZ/YmBtEFkbSaZJLUJfdal4xbCwrQ+7BnUOQG8dATm
         HSmBkDMYBLqIkcccMVJnwrcSQxt97ddtkU0PMTctsFlrUREk5BInRNHuRZQW+eoJ5dai
         fgy+lTCIzCmj6vvpC7b2V767gPcASquFzhA7Rmx6hX+UwEkXBuFoZbgBl7XvfYrOVxQj
         nM5A==
X-Gm-Message-State: AOAM5323oTyhXl7fIHWghxkP247AVah7s6cWzty6iB/p/4P+RDXLv4Zf
	rCQvgCQJMIXz9XNxNzV+ZUo=
X-Received: by 2002:aa7:cb97:: with SMTP id r23mr16185212edt.106.1617959272418;
        Fri, 09 Apr 2021 02:07:52 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-42-91-147.retail.telecomitalia.it. [79.42.91.147])
        by smtp.gmail.com with ESMTPSA id hd37sm870163ejc.114.2021.04.09.02.07.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 02:07:51 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH v7] staging: rtl8723bs: Remove camelcase in several files
Date: Fri,  9 Apr 2021 11:07:43 +0200
Message-Id: <20210409090743.12574-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove camelcase in bFwCurrentInPSMode, a variable used by code
of several subdirectories/files of the driver. Issue detected by
checkpatch.pl. Delete the unnecessary "b" (that stands for "byte") from
the beginning of the name.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Changes from v6: Edit against the wrong patch (again).
Changes from v5: Edit against the wrong patch.
Changes from v4: Mention the removal of the initial "b" in log message.
Changes from v3: Fix errors in the format of the patch.
Changes from v2: Remove unnecessary comment. Shortened a function name.
Changes from v1: No changes to the code but only to the subject for the
purpose to differentiate this patch because other removes of camelcase
have been made in other files of the same directory.

 drivers/staging/rtl8723bs/core/rtw_cmd.c       |  2 +-
 drivers/staging/rtl8723bs/core/rtw_mlme.c      |  2 +-
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c   | 18 +++++++++---------
 drivers/staging/rtl8723bs/hal/hal_intf.c       |  2 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c    |  6 +++---
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c  |  2 +-
 drivers/staging/rtl8723bs/hal/sdio_ops.c       | 14 +++++++-------
 .../staging/rtl8723bs/include/rtw_pwrctrl.h    |  2 +-
 8 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index baf8b1e0f43c..feb53b8c0ff2 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -1510,7 +1510,7 @@ static void rtw_lps_change_dtim_hdl(struct adapter *padapter, u8 dtim)
 	if (pwrpriv->dtim != dtim)
 		pwrpriv->dtim = dtim;
 
-	if ((pwrpriv->bFwCurrentInPSMode == true) && (pwrpriv->pwr_mode > PS_MODE_ACTIVE)) {
+	if ((pwrpriv->fw_current_in_ps_mode == true) && (pwrpriv->pwr_mode > PS_MODE_ACTIVE)) {
 		u8 ps_mode = pwrpriv->pwr_mode;
 
 		rtw_hal_set_hwreg(padapter, HW_VAR_H2C_FW_PWRMODE, (u8 *)(&ps_mode));
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index a7e40aaae2d9..895997868c81 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -1684,7 +1684,7 @@ void rtw_dynamic_check_timer_handler(struct adapter *adapter)
 	if (adapter->net_closed)
 		return;
 
-	if ((adapter_to_pwrctl(adapter)->bFwCurrentInPSMode)
+	if ((adapter_to_pwrctl(adapter)->fw_current_in_ps_mode)
 		&& !(hal_btcoex_IsBtControlLps(adapter))
 		) {
 		u8 bEnterPS;
diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
index f7465cf90c46..481e2ad60853 100644
--- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
@@ -365,7 +365,7 @@ void rtw_set_ps_mode(struct adapter *padapter, u8 ps_mode, u8 smart_ps, u8 bcn_a
 			rtw_set_rpwm(padapter, PS_STATE_S4);
 
 			rtw_hal_set_hwreg(padapter, HW_VAR_H2C_FW_PWRMODE, (u8 *)(&ps_mode));
-			pwrpriv->bFwCurrentInPSMode = false;
+			pwrpriv->fw_current_in_ps_mode = false;
 
 			hal_btcoex_LpsNotify(padapter, ps_mode);
 		}
@@ -377,7 +377,7 @@ void rtw_set_ps_mode(struct adapter *padapter, u8 ps_mode, u8 smart_ps, u8 bcn_a
 
 			hal_btcoex_LpsNotify(padapter, ps_mode);
 
-			pwrpriv->bFwCurrentInPSMode = true;
+			pwrpriv->fw_current_in_ps_mode = true;
 			pwrpriv->pwr_mode = ps_mode;
 			pwrpriv->smart_ps = smart_ps;
 			pwrpriv->bcn_ant_mode = bcn_ant_mode;
@@ -734,7 +734,7 @@ s32 rtw_register_task_alive(struct adapter *padapter, u32 task)
 
 	register_task_alive(pwrctrl, task);
 
-	if (pwrctrl->bFwCurrentInPSMode) {
+	if (pwrctrl->fw_current_in_ps_mode) {
 		if (pwrctrl->cpwm < pslv) {
 			if (pwrctrl->cpwm < PS_STATE_S2)
 				res = _FAIL;
@@ -782,7 +782,7 @@ void rtw_unregister_task_alive(struct adapter *padapter, u32 task)
 
 	unregister_task_alive(pwrctrl, task);
 
-	if ((pwrctrl->pwr_mode != PS_MODE_ACTIVE) && pwrctrl->bFwCurrentInPSMode) {
+	if ((pwrctrl->pwr_mode != PS_MODE_ACTIVE) && pwrctrl->fw_current_in_ps_mode) {
 		if (pwrctrl->cpwm > pslv)
 			if ((pslv >= PS_STATE_S2) || (pwrctrl->alives == 0))
 				rtw_set_rpwm(padapter, pslv);
@@ -819,7 +819,7 @@ s32 rtw_register_tx_alive(struct adapter *padapter)
 
 	register_task_alive(pwrctrl, XMIT_ALIVE);
 
-	if (pwrctrl->bFwCurrentInPSMode) {
+	if (pwrctrl->fw_current_in_ps_mode) {
 		if (pwrctrl->cpwm < pslv) {
 			if (pwrctrl->cpwm < PS_STATE_S2)
 				res = _FAIL;
@@ -864,7 +864,7 @@ s32 rtw_register_cmd_alive(struct adapter *padapter)
 
 	register_task_alive(pwrctrl, CMD_ALIVE);
 
-	if (pwrctrl->bFwCurrentInPSMode) {
+	if (pwrctrl->fw_current_in_ps_mode) {
 		if (pwrctrl->cpwm < pslv) {
 			if (pwrctrl->cpwm < PS_STATE_S2)
 				res = _FAIL;
@@ -909,7 +909,7 @@ void rtw_unregister_tx_alive(struct adapter *padapter)
 
 	unregister_task_alive(pwrctrl, XMIT_ALIVE);
 
-	if ((pwrctrl->pwr_mode != PS_MODE_ACTIVE) && pwrctrl->bFwCurrentInPSMode) {
+	if ((pwrctrl->pwr_mode != PS_MODE_ACTIVE) && pwrctrl->fw_current_in_ps_mode) {
 		if (pwrctrl->cpwm > pslv)
 			if ((pslv >= PS_STATE_S2) || (pwrctrl->alives == 0))
 				rtw_set_rpwm(padapter, pslv);
@@ -945,7 +945,7 @@ void rtw_unregister_cmd_alive(struct adapter *padapter)
 
 	unregister_task_alive(pwrctrl, CMD_ALIVE);
 
-	if ((pwrctrl->pwr_mode != PS_MODE_ACTIVE) && pwrctrl->bFwCurrentInPSMode) {
+	if ((pwrctrl->pwr_mode != PS_MODE_ACTIVE) && pwrctrl->fw_current_in_ps_mode) {
 		if (pwrctrl->cpwm > pslv) {
 			if ((pslv >= PS_STATE_S2) || (pwrctrl->alives == 0))
 				rtw_set_rpwm(padapter, pslv);
@@ -978,7 +978,7 @@ void rtw_init_pwrctrl_priv(struct adapter *padapter)
 	pwrctrlpriv->power_mgnt = padapter->registrypriv.power_mgnt;/*  PS_MODE_MIN; */
 	pwrctrlpriv->bLeisurePs = pwrctrlpriv->power_mgnt != PS_MODE_ACTIVE;
 
-	pwrctrlpriv->bFwCurrentInPSMode = false;
+	pwrctrlpriv->fw_current_in_ps_mode = false;
 
 	pwrctrlpriv->rpwm = 0;
 	pwrctrlpriv->cpwm = PS_STATE_S4;
diff --git a/drivers/staging/rtl8723bs/hal/hal_intf.c b/drivers/staging/rtl8723bs/hal/hal_intf.c
index bc9ae2088754..96fe172ced8d 100644
--- a/drivers/staging/rtl8723bs/hal/hal_intf.c
+++ b/drivers/staging/rtl8723bs/hal/hal_intf.c
@@ -348,7 +348,7 @@ void rtw_hal_dm_watchdog(struct adapter *padapter)
 
 void rtw_hal_dm_watchdog_in_lps(struct adapter *padapter)
 {
-	if (adapter_to_pwrctl(padapter)->bFwCurrentInPSMode == true) {
+	if (adapter_to_pwrctl(padapter)->fw_current_in_ps_mode == true) {
 		if (padapter->HalFunc.hal_dm_watchdog_in_lps)
 			padapter->HalFunc.hal_dm_watchdog_in_lps(padapter); /* this function caller is in interrupt context */
 	}
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
index c2e9e4a0be22..23be025ceb5b 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
@@ -141,7 +141,7 @@ void rtl8723b_InitHalDm(struct adapter *Adapter)
 
 void rtl8723b_HalDmWatchDog(struct adapter *Adapter)
 {
-	bool bFwCurrentInPSMode = false;
+	bool fw_current_in_ps_mode = false;
 	bool bFwPSAwake = true;
 	u8 hw_init_completed = false;
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
@@ -151,12 +151,12 @@ void rtl8723b_HalDmWatchDog(struct adapter *Adapter)
 	if (hw_init_completed == false)
 		goto skip_dm;
 
-	bFwCurrentInPSMode = adapter_to_pwrctl(Adapter)->bFwCurrentInPSMode;
+	fw_current_in_ps_mode = adapter_to_pwrctl(Adapter)->fw_current_in_ps_mode;
 	rtw_hal_get_hwreg(Adapter, HW_VAR_FWLPS_RF_ON, (u8 *)(&bFwPSAwake));
 
 	if (
 		(hw_init_completed == true) &&
-		((!bFwCurrentInPSMode) && bFwPSAwake)
+		((!fw_current_in_ps_mode) && bFwPSAwake)
 	) {
 		/*  */
 		/*  Calculate Tx/Rx statistics. */
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index e31ad3feed62..1ab0c9e8760b 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -430,7 +430,7 @@ void rtl8723b_InitializeFirmwareVars(struct adapter *padapter)
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
 
 	/*  Init Fw LPS related. */
-	adapter_to_pwrctl(padapter)->bFwCurrentInPSMode = false;
+	adapter_to_pwrctl(padapter)->fw_current_in_ps_mode = false;
 
 	/* Init H2C cmd. */
 	rtw_write8(padapter, REG_HMETFR, 0x0f);
diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c b/drivers/staging/rtl8723bs/hal/sdio_ops.c
index af7f846f90fe..abe8f2f8f452 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_ops.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c
@@ -173,7 +173,7 @@ static u32 sdio_read32(struct intf_hdl *intfhdl, u32 addr)
 	if (
 		((device_id == WLAN_IOREG_DEVICE_ID) && (offset < 0x100)) ||
 		(!mac_pwr_ctrl_on) ||
-		(adapter_to_pwrctl(adapter)->bFwCurrentInPSMode)
+		(adapter_to_pwrctl(adapter)->fw_current_in_ps_mode)
 	) {
 		err = sd_cmd52_read(intfhdl, ftaddr, 4, (u8 *)&le_tmp);
 #ifdef SDIO_DEBUG_IO
@@ -230,7 +230,7 @@ static s32 sdio_readN(struct intf_hdl *intfhdl, u32 addr, u32 cnt, u8 *buf)
 	if (
 		((device_id == WLAN_IOREG_DEVICE_ID) && (offset < 0x100)) ||
 		(!mac_pwr_ctrl_on) ||
-		(adapter_to_pwrctl(adapter)->bFwCurrentInPSMode)
+		(adapter_to_pwrctl(adapter)->fw_current_in_ps_mode)
 	)
 		return sd_cmd52_read(intfhdl, ftaddr, cnt, buf);
 
@@ -297,7 +297,7 @@ static s32 sdio_write32(struct intf_hdl *intfhdl, u32 addr, u32 val)
 	if (
 		((device_id == WLAN_IOREG_DEVICE_ID) && (offset < 0x100)) ||
 		(!mac_pwr_ctrl_on) ||
-		(adapter_to_pwrctl(adapter)->bFwCurrentInPSMode)
+		(adapter_to_pwrctl(adapter)->fw_current_in_ps_mode)
 	) {
 		le_tmp = cpu_to_le32(val);
 
@@ -334,7 +334,7 @@ static s32 sdio_writeN(struct intf_hdl *intfhdl, u32 addr, u32 cnt, u8 *buf)
 	if (
 		((device_id == WLAN_IOREG_DEVICE_ID) && (offset < 0x100)) ||
 		(!mac_pwr_ctrl_on) ||
-		(adapter_to_pwrctl(adapter)->bFwCurrentInPSMode)
+		(adapter_to_pwrctl(adapter)->fw_current_in_ps_mode)
 	)
 		return sd_cmd52_write(intfhdl, ftaddr, cnt, buf);
 
@@ -565,7 +565,7 @@ s32 sdio_local_read(
 	rtw_hal_get_hwreg(adapter, HW_VAR_APFM_ON_MAC, &mac_pwr_ctrl_on);
 	if (
 		(!mac_pwr_ctrl_on) ||
-		(adapter_to_pwrctl(adapter)->bFwCurrentInPSMode)
+		(adapter_to_pwrctl(adapter)->fw_current_in_ps_mode)
 	)
 		return sd_cmd52_read(intfhdl, addr, cnt, buf);
 
@@ -611,7 +611,7 @@ s32 sdio_local_write(
 	rtw_hal_get_hwreg(adapter, HW_VAR_APFM_ON_MAC, &mac_pwr_ctrl_on);
 	if (
 		(!mac_pwr_ctrl_on) ||
-		(adapter_to_pwrctl(adapter)->bFwCurrentInPSMode)
+		(adapter_to_pwrctl(adapter)->fw_current_in_ps_mode)
 	)
 		return sd_cmd52_write(intfhdl, addr, cnt, buf);
 
@@ -660,7 +660,7 @@ static u32 sdio_local_cmd53_read4byte(struct adapter *adapter, u32 addr)
 
 	hal_sdio_get_cmd_addr_8723b(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
 	rtw_hal_get_hwreg(adapter, HW_VAR_APFM_ON_MAC, &mac_pwr_ctrl_on);
-	if (!mac_pwr_ctrl_on || adapter_to_pwrctl(adapter)->bFwCurrentInPSMode) {
+	if (!mac_pwr_ctrl_on || adapter_to_pwrctl(adapter)->fw_current_in_ps_mode) {
 		sd_cmd52_read(intfhdl, addr, 4, (u8 *)&le_tmp);
 		val = le32_to_cpu(le_tmp);
 	} else {
diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
index 2e739a17dd95..5450d20b44a6 100644
--- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
+++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
@@ -203,7 +203,7 @@ struct pwrctrl_priv {
 	u8 LpsIdleCount;
 	u8 power_mgnt;
 	u8 org_power_mgnt;
-	u8 bFwCurrentInPSMode;
+	u8 fw_current_in_ps_mode;
 	unsigned long	DelayLPSLastTimeStamp;
 	s32		pnp_current_pwr_state;
 	u8 pnp_bstop_trx;
-- 
2.31.1


