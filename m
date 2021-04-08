X-GM-THRID: 6948463626776739840
X-Received: by 2002:a05:6512:b8f:: with SMTP id b15mr5403167lfv.633.1617865560314;
        Thu, 08 Apr 2021 00:06:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:7408:: with SMTP id p8ls183931ljc.1.gmail; Thu, 08 Apr
 2021 00:05:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx66+JTHAHiYt7B8M37APaXRA4cHWpVukzwbA7UeR35iWjMiyBYoADcfelXNsDjDamgC0qP
X-Received: by 2002:a2e:9054:: with SMTP id n20mr4493242ljg.225.1617865558486;
        Thu, 08 Apr 2021 00:05:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617865558; cv=none;
        d=google.com; s=arc-20160816;
        b=Em58d6/1xSiDn1O2XP4iRDiCsmo07gDGvOZ/EzYRtWnAEOIsb248L4yglnfyRZPuxN
         W1VZBoc5pg0HZ7U2uUBipECdmj+Jm50kioRwGhk40C+WsDM4veilAE5Wb+vOKxM+k9q9
         QVc/zIfFbJ/wat0lFuOKl9CDDcB08s7seotvSldtoGUeuiihxmSaE8Kel6iwtZPoTKuv
         /WpEZ4Tj/FXOvcnAC2iM6HeGIIpEY1LfZ0TLPeBlcTQNlSQC1X4Jt7K/nP/eE1TsE0ga
         xDjItaUVBHpyHMeRnnneiZNv3WHzWRgaV5Synxu9jMeKmiRmY1zWnuQIaexeI66KYL47
         6Yiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=tblVdzEqnz8Gci0ois+P0n+r3zDE6+7fyu6clK3bLZ0=;
        b=h+oWXvotTXkhVni88iOnqAVm8xwfbvE6V/mZ+Ii05MJfabbY5FROlRRdQC/Wn12zGj
         SB6ynFRD4td+1eOuQY15QuMFb8HswlQqwwxnACbpGp4LctgoEyasngvpR9FH5MK2nC0e
         0FIWoGJc4E2Y4e25eTw7PLWJV8UsZGEZYfTBYm7IhULSLPfiOJoWuLCFkjyh/yTUygPO
         vQTbCNAzXuZeTbMAZMzA6bgDSeKryjEe68sa82wKDf1xxf7pl14+IEjTeqyjxBQg3ERZ
         gIwiIxhbz5zGT6nlUEhDjTtWqJbTkSE+QdMw9LOoR3u4vbblZpm/G7v2ZbjYTTXxDDJ5
         aMuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jPNRUNOk;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::533 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com. [2a00:1450:4864:20::533])
        by gmr-mx.google.com with ESMTPS id v26si2193358lfo.2.2021.04.08.00.05.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 00:05:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::533 as permitted sender) client-ip=2a00:1450:4864:20::533;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jPNRUNOk;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::533 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x533.google.com with SMTP id r22so1080279edq.9
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Apr 2021 00:05:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tblVdzEqnz8Gci0ois+P0n+r3zDE6+7fyu6clK3bLZ0=;
        b=jPNRUNOklNVKnzAcV6gSMR42WDRH07KKn58Nm23WV0cgzPpTBnbLuKMELSgFs5GP8m
         aZxkODIctZ5gYeLUo17jVxJkSDsIl5iecDBBBdOAzjV6naKJJlX1A2gxbSAtmC1XFMeI
         /hpJRLiFcJCOfCHzz7a7Y7tryKvjybEkVjjQfzJGlLxlCpS+4JYTQqbn9qCfHsqqWCIS
         GZlO6sGcAC7eRdAIoKM7aN6ZbT+AEvrV4YHoZ2Cx8NWl6oqMKsgY1SJaQ5eGwt0WpcVU
         u+jksjGhzVLADRJzOE91k9syrsU7EySarggBN7TnhRzX6Z7XFFvkHWwZiyibSQ521VOZ
         OaQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tblVdzEqnz8Gci0ois+P0n+r3zDE6+7fyu6clK3bLZ0=;
        b=LFPcv9vrOVzSd7tWva/K0zHtqW4J3v9uPnjTb+TmTflNyS3Z4a27W43kmqAmGLQGjZ
         OCitbgvIbmnQ7X5ghNjZcgdGuY5tDnhSmbpuoQ21aIHJMI9p5ZQx1IrQuF9Q56iHEGBC
         A4eA4ZsEyCRm5eQL7IOFxzEwQw77nkzjc2XlZv89qMmDSmU8YUhfaO8Cluz6Cm/GpTof
         L9lhAUZWbRJW+g+5K8H1fQKWN9+YMykoHsFpCaUOzJNICfPRxS24YdcJyCwJvYDA5O6w
         2icYb8q2R7aTV7yVBS5xVdHw6Dj8n1LQxQeLnk8Uk1ItweKDwCYsnEH/3aSn+qeoDhGV
         OzlA==
X-Gm-Message-State: AOAM5324lAfRvCxmhWJCltunS4fzgMBUcZJh1RhQHXVtFNOyNDRoHK+z
	j0D1d2lnzT/ehxv6bc7NBH9twoeqtNpR9YDj
X-Received: by 2002:a05:6402:9:: with SMTP id d9mr9352543edu.67.1617865557768;
        Thu, 08 Apr 2021 00:05:57 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-42-91-147.retail.telecomitalia.it. [79.42.91.147])
        by smtp.gmail.com with ESMTPSA id gz20sm13721760ejc.25.2021.04.08.00.05.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 00:05:57 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH v4] staging: rtl8723bs: hal: Remove camelcase in sdio_ops.c
Date: Thu,  8 Apr 2021 09:05:53 +0200
Message-Id: <20210408070553.30363-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove camelcase. Issue detected by checkpatch.pl. For now, change only
names of static functions in order to not break the driver's code.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Changes from v3: fix errors in the format of the patch.
Changes from v2: Remove unnecessary comment. Shortened a function name.
Changes from v1: No changes to the code but only to the subject for the
purpose to differentiate this patch because other removes of camelcase
have been made in other files of the same directory.

 drivers/staging/rtl8723bs/hal/sdio_ops.c | 46 +++++++++++-------------
 1 file changed, 21 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c b/drivers/staging/rtl8723bs/hal/sdio_ops.c
index 8df3350d53fb..af7f846f90fe 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_ops.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c
@@ -19,7 +19,7 @@
 /*  */
 /*  Creadted by Roger, 2011.01.31. */
 /*  */
-static void HalSdioGetCmdAddr8723BSdio(
+static void hal_sdio_get_cmd_addr_8723b(
 	struct adapter *adapter,
 	u8 device_id,
 	u32 addr,
@@ -95,10 +95,6 @@ static u8 get_deviceid(u32 addr)
 	return devide_id;
 }
 
-/*
- * Ref:
- *HalSdioGetCmdAddr8723BSdio()
- */
 static u32 _cvrt2ftaddr(const u32 addr, u8 *pdevice_id, u16 *poffset)
 {
 	u8 device_id;
@@ -426,7 +422,7 @@ static u32 sdio_read_port(
 	psdio = &adapter_to_dvobj(adapter)->intf_data;
 	hal = GET_HAL_DATA(adapter);
 
-	HalSdioGetCmdAddr8723BSdio(adapter, addr, hal->SdioRxFIFOCnt++, &addr);
+	hal_sdio_get_cmd_addr_8723b(adapter, addr, hal->SdioRxFIFOCnt++, &addr);
 
 	if (cnt > psdio->block_transfer_len)
 		cnt = _RND(cnt, psdio->block_transfer_len);
@@ -473,7 +469,7 @@ static u32 sdio_write_port(
 		return _FAIL;
 
 	cnt = round_up(cnt, 4);
-	HalSdioGetCmdAddr8723BSdio(adapter, addr, cnt >> 2, &addr);
+	hal_sdio_get_cmd_addr_8723b(adapter, addr, cnt >> 2, &addr);
 
 	if (cnt > psdio->block_transfer_len)
 		cnt = _RND(cnt, psdio->block_transfer_len);
@@ -526,7 +522,7 @@ static s32 _sdio_local_read(
 
 	intfhdl = &adapter->iopriv.intf;
 
-	HalSdioGetCmdAddr8723BSdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
+	hal_sdio_get_cmd_addr_8723b(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
 
 	rtw_hal_get_hwreg(adapter, HW_VAR_APFM_ON_MAC, &mac_pwr_ctrl_on);
 	if (!mac_pwr_ctrl_on)
@@ -564,7 +560,7 @@ s32 sdio_local_read(
 
 	intfhdl = &adapter->iopriv.intf;
 
-	HalSdioGetCmdAddr8723BSdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
+	hal_sdio_get_cmd_addr_8723b(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
 
 	rtw_hal_get_hwreg(adapter, HW_VAR_APFM_ON_MAC, &mac_pwr_ctrl_on);
 	if (
@@ -610,7 +606,7 @@ s32 sdio_local_write(
 
 	intfhdl = &adapter->iopriv.intf;
 
-	HalSdioGetCmdAddr8723BSdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
+	hal_sdio_get_cmd_addr_8723b(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
 
 	rtw_hal_get_hwreg(adapter, HW_VAR_APFM_ON_MAC, &mac_pwr_ctrl_on);
 	if (
@@ -637,24 +633,24 @@ u8 SdioLocalCmd52Read1Byte(struct adapter *adapter, u32 addr)
 	u8 val = 0;
 	struct intf_hdl *intfhdl = &adapter->iopriv.intf;
 
-	HalSdioGetCmdAddr8723BSdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
+	hal_sdio_get_cmd_addr_8723b(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
 	sd_cmd52_read(intfhdl, addr, 1, &val);
 
 	return val;
 }
 
-static u16 SdioLocalCmd52Read2Byte(struct adapter *adapter, u32 addr)
+static u16 sdio_local_cmd52_read2byte(struct adapter *adapter, u32 addr)
 {
 	__le16 val = 0;
 	struct intf_hdl *intfhdl = &adapter->iopriv.intf;
 
-	HalSdioGetCmdAddr8723BSdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
+	hal_sdio_get_cmd_addr_8723b(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
 	sd_cmd52_read(intfhdl, addr, 2, (u8 *)&val);
 
 	return le16_to_cpu(val);
 }
 
-static u32 SdioLocalCmd53Read4Byte(struct adapter *adapter, u32 addr)
+static u32 sdio_local_cmd53_read4byte(struct adapter *adapter, u32 addr)
 {
 
 	u8 mac_pwr_ctrl_on;
@@ -662,7 +658,7 @@ static u32 SdioLocalCmd53Read4Byte(struct adapter *adapter, u32 addr)
 	struct intf_hdl *intfhdl = &adapter->iopriv.intf;
 	__le32 le_tmp;
 
-	HalSdioGetCmdAddr8723BSdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
+	hal_sdio_get_cmd_addr_8723b(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
 	rtw_hal_get_hwreg(adapter, HW_VAR_APFM_ON_MAC, &mac_pwr_ctrl_on);
 	if (!mac_pwr_ctrl_on || adapter_to_pwrctl(adapter)->bFwCurrentInPSMode) {
 		sd_cmd52_read(intfhdl, addr, 4, (u8 *)&le_tmp);
@@ -677,21 +673,21 @@ void SdioLocalCmd52Write1Byte(struct adapter *adapter, u32 addr, u8 v)
 {
 	struct intf_hdl *intfhdl = &adapter->iopriv.intf;
 
-	HalSdioGetCmdAddr8723BSdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
+	hal_sdio_get_cmd_addr_8723b(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
 	sd_cmd52_write(intfhdl, addr, 1, &v);
 }
 
-static void SdioLocalCmd52Write4Byte(struct adapter *adapter, u32 addr, u32 v)
+static void sdio_local_cmd52_write4byte(struct adapter *adapter, u32 addr, u32 v)
 {
 	struct intf_hdl *intfhdl = &adapter->iopriv.intf;
 	__le32 le_tmp;
 
-	HalSdioGetCmdAddr8723BSdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
+	hal_sdio_get_cmd_addr_8723b(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
 	le_tmp = cpu_to_le32(v);
 	sd_cmd52_write(intfhdl, addr, 4, (u8 *)&le_tmp);
 }
 
-static s32 ReadInterrupt8723BSdio(struct adapter *adapter, u32 *phisr)
+static s32 read_interrupt_8723b_sdio(struct adapter *adapter, u32 *phisr)
 {
 	u32 hisr, himr;
 	u8 val8, hisr_len;
@@ -924,7 +920,7 @@ void sd_int_dpc(struct adapter *adapter)
 		status = rtw_malloc(4);
 		if (status) {
 			addr = REG_TXDMA_STATUS;
-			HalSdioGetCmdAddr8723BSdio(adapter, WLAN_IOREG_DEVICE_ID, addr, &addr);
+			hal_sdio_get_cmd_addr_8723b(adapter, WLAN_IOREG_DEVICE_ID, addr, &addr);
 			_sd_read(intfhdl, addr, 4, status);
 			_sd_write(intfhdl, addr, 4, status);
 			DBG_8192C("%s: SDIO_HISR_TXERR (0x%08x)\n", __func__, le32_to_cpu(*(u32 *)status));
@@ -974,7 +970,7 @@ void sd_int_dpc(struct adapter *adapter)
 
 		hal->sdio_hisr ^= SDIO_HISR_RX_REQUEST;
 		do {
-			hal->SdioRxFIFOSize = SdioLocalCmd52Read2Byte(adapter, SDIO_REG_RX0_REQ_LEN);
+			hal->SdioRxFIFOSize = sdio_local_cmd52_read2byte(adapter, SDIO_REG_RX0_REQ_LEN);
 			if (hal->SdioRxFIFOSize != 0) {
 				recvbuf = sd_recv_rxfifo(adapter, hal->SdioRxFIFOSize);
 				if (recvbuf)
@@ -989,7 +985,7 @@ void sd_int_dpc(struct adapter *adapter)
 				break;
 
 			hisr = 0;
-			ReadInterrupt8723BSdio(adapter, &hisr);
+			read_interrupt_8723b_sdio(adapter, &hisr);
 			hisr &= SDIO_HISR_RX_REQUEST;
 			if (!hisr)
 				break;
@@ -1009,7 +1005,7 @@ void sd_int_hdl(struct adapter *adapter)
 	hal = GET_HAL_DATA(adapter);
 
 	hal->sdio_hisr = 0;
-	ReadInterrupt8723BSdio(adapter, &hal->sdio_hisr);
+	read_interrupt_8723b_sdio(adapter, &hal->sdio_hisr);
 
 	if (hal->sdio_hisr & hal->sdio_himr) {
 		u32 v32;
@@ -1019,7 +1015,7 @@ void sd_int_hdl(struct adapter *adapter)
 		/*  clear HISR */
 		v32 = hal->sdio_hisr & MASK_SDIO_HISR_CLEAR;
 		if (v32)
-			SdioLocalCmd52Write4Byte(adapter, SDIO_REG_HISR, v32);
+			sdio_local_cmd52_write4byte(adapter, SDIO_REG_HISR, v32);
 
 		sd_int_dpc(adapter);
 	}
@@ -1042,7 +1038,7 @@ u8 HalQueryTxBufferStatus8723BSdio(struct adapter *adapter)
 
 	hal = GET_HAL_DATA(adapter);
 
-	numof_free_page = SdioLocalCmd53Read4Byte(adapter, SDIO_REG_FREE_TXPG);
+	numof_free_page = sdio_local_cmd53_read4byte(adapter, SDIO_REG_FREE_TXPG);
 
 	memcpy(hal->SdioTxFIFOFreePage, &numof_free_page, 4);
 
-- 
2.30.2


