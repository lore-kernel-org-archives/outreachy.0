X-GM-THRID: 6948463626776739840
X-Received: by 2002:a50:b286:: with SMTP id p6mr6257873edd.282.1617819559901;
        Wed, 07 Apr 2021 11:19:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:d7a9:: with SMTP id pk9ls1680735ejb.7.gmail; Wed, 07
 Apr 2021 11:19:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx1/B93LPASGD/nOh4JCqOAzXW/OUtAYK2NsS85JnahupIQoIZJBqFtIDYWCEYqkLJUdlr9
X-Received: by 2002:a17:906:3643:: with SMTP id r3mr5177847ejb.527.1617819558141;
        Wed, 07 Apr 2021 11:19:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617819558; cv=none;
        d=google.com; s=arc-20160816;
        b=Ion0zJJiVhc4GFBKC7VobKaVRFQ9LcNjmC3vBwWlQ5TjuJ0okrHQE7cHTDwZPtnHze
         UXsPoscV6ihoyNDcSDgDOf4fxHxulIunBLifoIf7gNyug2BoT/jQLJ4WBiAqVhHqg48q
         Hpq7X+r0v68ba/5DcbTK8FwPv0ZNGDkAPYP9yRG7ileZHBgZL50l/0XwDZ5QLYeSsBEQ
         ZTChms44IswryfxqDoMVu1T+TiAetCCAfYJzBrEsOXZNPD4ZA5FWbJgbPAiDOocscWcH
         Tn/ZwM4jJ2hvvU1bEvLoTWBS4qMnlwYlOff6hgUqo6144DU0agtS8EW1Qbxzy2Ipu6Fj
         uumQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=rQ2L4szMZmU+FnxgASeleGfVwBJfSBTk3LNI3tywmew=;
        b=uEa0iuMZdlAQHEOXG9FFQEVZpX2E87L6f/2goJ5bsH1wEVrM03unA/Fp0/1uoW/wgA
         AZZxIXdp25w5CkZEDGjlgAtrKcEdQnIeNnoJ4sdSBgq0nt5gJLc1jDwF2l10fUJ+kxDy
         WuxOLdsMRXPL+U3Gg6oOmNbjM+aobbXNZYtdZygBI7zkzL5KJRQpZgxgH1ujmkygvezI
         KA9XuEPCx+apToEvYQ0GQ/r5zU68uwLXll8Bs2GfbFgTYXxUKvR5o43crVL5x2lCKtHv
         uYTh8hrtkNbkX4oN4IXtZZD9/iEDf8A8zL5f4ArL40aITUA2zJt9b2uQl8cLdr7+xt6Z
         HYEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GdKHBYlY;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com. [2a00:1450:4864:20::532])
        by gmr-mx.google.com with ESMTPS id b26si1179813edy.4.2021.04.07.11.19.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 11:19:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::532 as permitted sender) client-ip=2a00:1450:4864:20::532;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GdKHBYlY;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x532.google.com with SMTP id r22so9498270edq.9
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Apr 2021 11:19:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rQ2L4szMZmU+FnxgASeleGfVwBJfSBTk3LNI3tywmew=;
        b=GdKHBYlY0SFg391FNZJVMvtMDPrkfA966L5eEw2z4XsBNoEC/FxYU9x2f0DTl4BA1b
         6M4waxA30cttt4NxY6ZyAdXUF0ti3Apg5j8+X9+qAmIEBvta3aj82qhWal1LyIagTr3/
         VWc+UJHzODeUu4Jrji8sshRDR9rfg4T5lXAEaPDqMdXpGDmmXZ9ZkKO/bGnqIN+pH/6e
         98oiq2SK370KSPwdZjEpQluV9aterZ3SRM4cAobatWPs1LGRJT9O0CRZMa/5DlohDBEA
         +aJ+DyfERQ/AvoOBXonyEKSs0l4b+hCx+AlkXr2qebc4vNoZqe7Vb1onqJq61P5QJ8Vu
         v/Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rQ2L4szMZmU+FnxgASeleGfVwBJfSBTk3LNI3tywmew=;
        b=MIpZoYIEZmt0x6yk5i3WRZu+wG2oZc5TE97fUNidDhAJla/Csl3ssj2lEjkRALQc1y
         a9oSJOdha5zXu3l5gBig+XeUQep+U34JV6CsDrxkWZ+lL6FMfNJfp9J0+qO457utvgOv
         Fo5LHeSnzFwbm48tuas65a1QI5/qMmHmHH0VNbJxu89HeHBmRlP/bzmwuwW/xE8IrMVy
         9taKeztN+vD2+HQkFH4PFVpcPns/aQiko6Lz/j+g5exBEbxuhgwjCxhn1hBIDwzE37QC
         xrroatUQhr8TZla3Ob41FlCUqEjr0agQFmBq1kMdLTooLoZCpUt2mBYsIcg5JLZsKX+N
         szVg==
X-Gm-Message-State: AOAM530PlXELnMzVyzJzqWvsnpNDvXScYV81jAnNP7UfsqqylvZm0b9C
	DVRO27O7JPtvaQ37N1ljxorjd01CEJMRDFva
X-Received: by 2002:aa7:da0e:: with SMTP id r14mr1931624eds.375.1617819557958;
        Wed, 07 Apr 2021 11:19:17 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-42-91-147.retail.telecomitalia.it. [79.42.91.147])
        by smtp.gmail.com with ESMTPSA id lf6sm8016376ejc.33.2021.04.07.11.19.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Apr 2021 11:19:17 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH v3] staging: rtl8723bs: hal: Remove camelcase in sdio_ops.c
Date: Wed,  7 Apr 2021 20:19:14 +0200
Message-Id: <20210407181914.7079-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Changes from v2: Remove unnecessary comment. Shortened a function name.
Changes from v1: No changes to the code but only to the subject for the
purpose to differentiate this patch because other removes of camelcase
have been made in other files of the same directory.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/staging/rtl8723bs/hal/sdio_ops.c | 46 +++++++++++-------------
 1 file changed, 21 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c b/drivers/staging/rtl8723bs/hal/sdio_ops.c
index b1f02bb9f0a9..f10ae885c286 100644
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
@@ -475,7 +471,7 @@ static u32 sdio_write_port(
 	}
 
 	cnt = round_up(cnt, 4);
-	HalSdioGetCmdAddr8723BSdio(adapter, addr, cnt >> 2, &addr);
+	hal_sdio_get_cmd_addr_8723b(adapter, addr, cnt >> 2, &addr);
 
 	if (cnt > psdio->block_transfer_len)
 		cnt = _RND(cnt, psdio->block_transfer_len);
@@ -528,7 +524,7 @@ static s32 _sdio_local_read(
 
 	intfhdl = &adapter->iopriv.intf;
 
-	HalSdioGetCmdAddr8723BSdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
+	hal_sdio_get_cmd_addr_8723b(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
 
 	rtw_hal_get_hwreg(adapter, HW_VAR_APFM_ON_MAC, &mac_pwr_ctrl_on);
 	if (!mac_pwr_ctrl_on)
@@ -566,7 +562,7 @@ s32 sdio_local_read(
 
 	intfhdl = &adapter->iopriv.intf;
 
-	HalSdioGetCmdAddr8723BSdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
+	hal_sdio_get_cmd_addr_8723b(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
 
 	rtw_hal_get_hwreg(adapter, HW_VAR_APFM_ON_MAC, &mac_pwr_ctrl_on);
 	if (
@@ -612,7 +608,7 @@ s32 sdio_local_write(
 
 	intfhdl = &adapter->iopriv.intf;
 
-	HalSdioGetCmdAddr8723BSdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
+	hal_sdio_get_cmd_addr_8723b(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
 
 	rtw_hal_get_hwreg(adapter, HW_VAR_APFM_ON_MAC, &mac_pwr_ctrl_on);
 	if (
@@ -639,24 +635,24 @@ u8 SdioLocalCmd52Read1Byte(struct adapter *adapter, u32 addr)
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
@@ -664,7 +660,7 @@ static u32 SdioLocalCmd53Read4Byte(struct adapter *adapter, u32 addr)
 	struct intf_hdl *intfhdl = &adapter->iopriv.intf;
 	__le32 le_tmp;
 
-	HalSdioGetCmdAddr8723BSdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
+	hal_sdio_get_cmd_addr_8723b(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
 	rtw_hal_get_hwreg(adapter, HW_VAR_APFM_ON_MAC, &mac_pwr_ctrl_on);
 	if (!mac_pwr_ctrl_on || adapter_to_pwrctl(adapter)->bFwCurrentInPSMode) {
 		sd_cmd52_read(intfhdl, addr, 4, (u8 *)&le_tmp);
@@ -679,21 +675,21 @@ void SdioLocalCmd52Write1Byte(struct adapter *adapter, u32 addr, u8 v)
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
@@ -935,7 +931,7 @@ void sd_int_dpc(struct adapter *adapter)
 		status = rtw_malloc(4);
 		if (status) {
 			addr = REG_TXDMA_STATUS;
-			HalSdioGetCmdAddr8723BSdio(adapter, WLAN_IOREG_DEVICE_ID, addr, &addr);
+			hal_sdio_get_cmd_addr_8723b(adapter, WLAN_IOREG_DEVICE_ID, addr, &addr);
 			_sd_read(intfhdl, addr, 4, status);
 			_sd_write(intfhdl, addr, 4, status);
 			DBG_8192C("%s: SDIO_HISR_TXERR (0x%08x)\n", __func__, le32_to_cpu(*(u32 *)status));
@@ -986,7 +982,7 @@ void sd_int_dpc(struct adapter *adapter)
 
 		hal->sdio_hisr ^= SDIO_HISR_RX_REQUEST;
 		do {
-			hal->SdioRxFIFOSize = SdioLocalCmd52Read2Byte(adapter, SDIO_REG_RX0_REQ_LEN);
+			hal->SdioRxFIFOSize = sdio_local_cmd52_read2byte(adapter, SDIO_REG_RX0_REQ_LEN);
 			if (hal->SdioRxFIFOSize != 0) {
 				recvbuf = sd_recv_rxfifo(adapter, hal->SdioRxFIFOSize);
 				if (recvbuf)
@@ -1002,7 +998,7 @@ void sd_int_dpc(struct adapter *adapter)
 				break;
 
 			hisr = 0;
-			ReadInterrupt8723BSdio(adapter, &hisr);
+			read_interrupt_8723b_sdio(adapter, &hisr);
 			hisr &= SDIO_HISR_RX_REQUEST;
 			if (!hisr)
 				break;
@@ -1026,7 +1022,7 @@ void sd_int_hdl(struct adapter *adapter)
 	hal = GET_HAL_DATA(adapter);
 
 	hal->sdio_hisr = 0;
-	ReadInterrupt8723BSdio(adapter, &hal->sdio_hisr);
+	read_interrupt_8723b_sdio(adapter, &hal->sdio_hisr);
 
 	if (hal->sdio_hisr & hal->sdio_himr) {
 		u32 v32;
@@ -1036,7 +1032,7 @@ void sd_int_hdl(struct adapter *adapter)
 		/*  clear HISR */
 		v32 = hal->sdio_hisr & MASK_SDIO_HISR_CLEAR;
 		if (v32)
-			SdioLocalCmd52Write4Byte(adapter, SDIO_REG_HISR, v32);
+			sdio_local_cmd52_write4byte(adapter, SDIO_REG_HISR, v32);
 
 		sd_int_dpc(adapter);
 	}
@@ -1059,7 +1055,7 @@ u8 HalQueryTxBufferStatus8723BSdio(struct adapter *adapter)
 
 	hal = GET_HAL_DATA(adapter);
 
-	numof_free_page = SdioLocalCmd53Read4Byte(adapter, SDIO_REG_FREE_TXPG);
+	numof_free_page = sdio_local_cmd53_read4byte(adapter, SDIO_REG_FREE_TXPG);
 
 	memcpy(hal->SdioTxFIFOFreePage, &numof_free_page, 4);
 
-- 
2.30.2


