X-GM-THRID: 6948463626776739840
X-Received: by 2002:ac2:43d1:: with SMTP id u17mr3002079lfl.311.1617815258042;
        Wed, 07 Apr 2021 10:07:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls2608103lff.3.gmail; Wed, 07
 Apr 2021 10:07:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyj/htlhFJJErER8trHFVZhf1XjNBrLaF0WhEzZH/wzPlgEfTR0EqV/rigxnZSgRvlTKVjx
X-Received: by 2002:ac2:5970:: with SMTP id h16mr2957593lfp.108.1617815256297;
        Wed, 07 Apr 2021 10:07:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617815256; cv=none;
        d=google.com; s=arc-20160816;
        b=r0cAQytU0zZTqj77yDxA6M6tV0ABJ2ASBnwFo5rsOzX4PLex1tqwlQampJD1Fam1YV
         zzOhqjWoQId0uCW8afriNYq2OBuTab7CLdSmazWiufa3IylrzdlarEflx5DaQRGXkM5i
         z8ZUzgYL0SfrM+mIPDUJ96y3uoPBTWSgEZT0BVprGBE3VC3Si+lrGXw2A6PKQdLO0PTo
         NdZOMKStq68itjo4HMYMZB6BfYJ4RMEPF7uL+Xg/DL7wiMw1eqC8Ii6ZsEPgrVwe6hdK
         LRTinQVNB+3FiVxCh9D+kNm/yQ1nPBLBaKALDCpaSGa2tRb3BHGIC5Xp7cFaqklj74d+
         8G7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=hhFS7+g4d9qhWL1Sxa92fUPKKPAt/A686yXQfYN4jSA=;
        b=SvFrBSpL8RZmtalFhA4kdo7UDiu6ls19ZTUbm0GOHv1cyc/wAmDR0LK/5YUrWi/BlK
         Edmqsod+FnrzF5uEkFr6H3PE0S3l0K7p11oE7RgCrQdas/VqpZrt1sAxw1NKeuVOTguk
         xhFmJ6IPJZt0c7UnPZXt3eHNDKrXJkfBEDMRF9qCj8gSVznbovu2uILYkKDRL82IgAR7
         UUWumGHA3FSPW4bSLvIaYtwS3bhXZrnadsYfuF/Bp1SagmEveqc0CIH2HaOHP/KLuH2/
         biiM3Rhg3AX2L4yYr8GrOmCoKTxTFzBbdoZx5MJywDgjimG0nzFLNkD70o7H7CJmlqEm
         bgTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mvlio835;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com. [2a00:1450:4864:20::531])
        by gmr-mx.google.com with ESMTPS id d32si1695280lfv.8.2021.04.07.10.07.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 10:07:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) client-ip=2a00:1450:4864:20::531;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mvlio835;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x531.google.com with SMTP id ba6so14249736edb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Apr 2021 10:07:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hhFS7+g4d9qhWL1Sxa92fUPKKPAt/A686yXQfYN4jSA=;
        b=mvlio8357iZkFrvb9V07d4caacQYkmQgSGYLrwalaYkjpFmFCeSuXrz0JQ+ohMhLjc
         XhLt34QTgac2MVfqUTtmweGj5I3Xvpj4UMrSwwZGcdvy89Fptu/h3kaEKokPakCQCOLF
         wbDNXYuzP6jxEcpcaWvp+ZnHWYUlcw3dbGckF+rbWd3HXOyZ9psRV9QXATOhihoGiDbN
         i5TYfgB1RIBpm5gNHF1kV71P37yfKVUTjqRls0mSxtcHlXNjEgzph4ENX18eZaxRqmZd
         Ab1878HamsONASfCgMEv3kXvhJV8ciI3jpMFuilUVRdHqWP/1i/zj1RznfddAejhoCPU
         Pfzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hhFS7+g4d9qhWL1Sxa92fUPKKPAt/A686yXQfYN4jSA=;
        b=UIDbNEQzRYQB8/i+ckwO8jMDocLHpqhpMdnTcEsQMBcnmJXwSijiZheK7QoUTFr29o
         SbEcUOYBuJcRMALFJ9YX31GDINZGUuYWYXoK9UwT7+o5WqCsmh/HhPMxKk8mB7QxE0TW
         HYr4OqZQG/L3+8/5zRqdcgrqlzV4kIA8M35vHv3ayUB4WEUyiZFjB7R8Dr1rZR9Y/36a
         75Q+kmU0drP/TREnDOIe6k/XJB7dy30GakdBo9myCbf6+yNr3otuudH8tMBBa/zEh6li
         vmgjTwxK1U8GaN5JGHz+H7RURz7JPWj6SWYr1j85UvGY6YlPo9tceeRxHjrPV2CbjDNG
         k65Q==
X-Gm-Message-State: AOAM5332JVGfsZRZHJfl6q7yWDWcb4NDMhnbYC45usq90vtAdTshsi6M
	dB8myN37eb396DSn11bF0yA=
X-Received: by 2002:aa7:dbd3:: with SMTP id v19mr5613133edt.314.1617815256001;
        Wed, 07 Apr 2021 10:07:36 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-42-91-147.retail.telecomitalia.it. [79.42.91.147])
        by smtp.gmail.com with ESMTPSA id la16sm3044067ejb.40.2021.04.07.10.07.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Apr 2021 10:07:35 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH v2] staging: rtl8723bs: hal: Remove camelcase in sdio_ops.c
Date: Wed,  7 Apr 2021 19:07:31 +0200
Message-Id: <20210407170731.7190-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove camelcase. Issue detected by checkpatch.pl. For now, change only
names of static functions in order to not break the driver's code.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Changes from v1: No chenges to the code but only to the subject for the
purpose to differentiate this patch because other removes of camelcase 
have been made in other files of the same directory.

 drivers/staging/rtl8723bs/hal/sdio_ops.c | 44 ++++++++++++------------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c b/drivers/staging/rtl8723bs/hal/sdio_ops.c
index b1f02bb9f0a9..5e28818e58e0 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_ops.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c
@@ -19,7 +19,7 @@
 /*  */
 /*  Creadted by Roger, 2011.01.31. */
 /*  */
-static void HalSdioGetCmdAddr8723BSdio(
+static void hal_sdio_get_cmd_addr_8723b_sdio(
 	struct adapter *adapter,
 	u8 device_id,
 	u32 addr,
@@ -97,7 +97,7 @@ static u8 get_deviceid(u32 addr)
 
 /*
  * Ref:
- *HalSdioGetCmdAddr8723BSdio()
+ *hal_sdio_get_cmd_addr_8723b_sdio()
  */
 static u32 _cvrt2ftaddr(const u32 addr, u8 *pdevice_id, u16 *poffset)
 {
@@ -426,7 +426,7 @@ static u32 sdio_read_port(
 	psdio = &adapter_to_dvobj(adapter)->intf_data;
 	hal = GET_HAL_DATA(adapter);
 
-	HalSdioGetCmdAddr8723BSdio(adapter, addr, hal->SdioRxFIFOCnt++, &addr);
+	hal_sdio_get_cmd_addr_8723b_sdio(adapter, addr, hal->SdioRxFIFOCnt++, &addr);
 
 	if (cnt > psdio->block_transfer_len)
 		cnt = _RND(cnt, psdio->block_transfer_len);
@@ -475,7 +475,7 @@ static u32 sdio_write_port(
 	}
 
 	cnt = round_up(cnt, 4);
-	HalSdioGetCmdAddr8723BSdio(adapter, addr, cnt >> 2, &addr);
+	hal_sdio_get_cmd_addr_8723b_sdio(adapter, addr, cnt >> 2, &addr);
 
 	if (cnt > psdio->block_transfer_len)
 		cnt = _RND(cnt, psdio->block_transfer_len);
@@ -528,7 +528,7 @@ static s32 _sdio_local_read(
 
 	intfhdl = &adapter->iopriv.intf;
 
-	HalSdioGetCmdAddr8723BSdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
+	hal_sdio_get_cmd_addr_8723b_sdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
 
 	rtw_hal_get_hwreg(adapter, HW_VAR_APFM_ON_MAC, &mac_pwr_ctrl_on);
 	if (!mac_pwr_ctrl_on)
@@ -566,7 +566,7 @@ s32 sdio_local_read(
 
 	intfhdl = &adapter->iopriv.intf;
 
-	HalSdioGetCmdAddr8723BSdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
+	hal_sdio_get_cmd_addr_8723b_sdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
 
 	rtw_hal_get_hwreg(adapter, HW_VAR_APFM_ON_MAC, &mac_pwr_ctrl_on);
 	if (
@@ -612,7 +612,7 @@ s32 sdio_local_write(
 
 	intfhdl = &adapter->iopriv.intf;
 
-	HalSdioGetCmdAddr8723BSdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
+	hal_sdio_get_cmd_addr_8723b_sdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
 
 	rtw_hal_get_hwreg(adapter, HW_VAR_APFM_ON_MAC, &mac_pwr_ctrl_on);
 	if (
@@ -639,24 +639,24 @@ u8 SdioLocalCmd52Read1Byte(struct adapter *adapter, u32 addr)
 	u8 val = 0;
 	struct intf_hdl *intfhdl = &adapter->iopriv.intf;
 
-	HalSdioGetCmdAddr8723BSdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
+	hal_sdio_get_cmd_addr_8723b_sdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
 	sd_cmd52_read(intfhdl, addr, 1, &val);
 
 	return val;
 }
 
-static u16 SdioLocalCmd52Read2Byte(struct adapter *adapter, u32 addr)
+static u16 sdio_local_cmd52_read2byte(struct adapter *adapter, u32 addr)
 {
 	__le16 val = 0;
 	struct intf_hdl *intfhdl = &adapter->iopriv.intf;
 
-	HalSdioGetCmdAddr8723BSdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
+	hal_sdio_get_cmd_addr_8723b_sdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
 	sd_cmd52_read(intfhdl, addr, 2, (u8 *)&val);
 
 	return le16_to_cpu(val);
 }
 
-static u32 SdioLocalCmd53Read4Byte(struct adapter *adapter, u32 addr)
+static u32 sdio_local_cmd53_read4byte(struct adapter *adapter, u32 addr)
 {
 
 	u8 mac_pwr_ctrl_on;
@@ -664,7 +664,7 @@ static u32 SdioLocalCmd53Read4Byte(struct adapter *adapter, u32 addr)
 	struct intf_hdl *intfhdl = &adapter->iopriv.intf;
 	__le32 le_tmp;
 
-	HalSdioGetCmdAddr8723BSdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
+	hal_sdio_get_cmd_addr_8723b_sdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
 	rtw_hal_get_hwreg(adapter, HW_VAR_APFM_ON_MAC, &mac_pwr_ctrl_on);
 	if (!mac_pwr_ctrl_on || adapter_to_pwrctl(adapter)->bFwCurrentInPSMode) {
 		sd_cmd52_read(intfhdl, addr, 4, (u8 *)&le_tmp);
@@ -679,21 +679,21 @@ void SdioLocalCmd52Write1Byte(struct adapter *adapter, u32 addr, u8 v)
 {
 	struct intf_hdl *intfhdl = &adapter->iopriv.intf;
 
-	HalSdioGetCmdAddr8723BSdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
+	hal_sdio_get_cmd_addr_8723b_sdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
 	sd_cmd52_write(intfhdl, addr, 1, &v);
 }
 
-static void SdioLocalCmd52Write4Byte(struct adapter *adapter, u32 addr, u32 v)
+static void sdio_local_cmd52_write4byte(struct adapter *adapter, u32 addr, u32 v)
 {
 	struct intf_hdl *intfhdl = &adapter->iopriv.intf;
 	__le32 le_tmp;
 
-	HalSdioGetCmdAddr8723BSdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
+	hal_sdio_get_cmd_addr_8723b_sdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
 	le_tmp = cpu_to_le32(v);
 	sd_cmd52_write(intfhdl, addr, 4, (u8 *)&le_tmp);
 }
 
-static s32 ReadInterrupt8723BSdio(struct adapter *adapter, u32 *phisr)
+static s32 read_interrupt_8723b_sdio(struct adapter *adapter, u32 *phisr)
 {
 	u32 hisr, himr;
 	u8 val8, hisr_len;
@@ -935,7 +935,7 @@ void sd_int_dpc(struct adapter *adapter)
 		status = rtw_malloc(4);
 		if (status) {
 			addr = REG_TXDMA_STATUS;
-			HalSdioGetCmdAddr8723BSdio(adapter, WLAN_IOREG_DEVICE_ID, addr, &addr);
+			hal_sdio_get_cmd_addr_8723b_sdio(adapter, WLAN_IOREG_DEVICE_ID, addr, &addr);
 			_sd_read(intfhdl, addr, 4, status);
 			_sd_write(intfhdl, addr, 4, status);
 			DBG_8192C("%s: SDIO_HISR_TXERR (0x%08x)\n", __func__, le32_to_cpu(*(u32 *)status));
@@ -986,7 +986,7 @@ void sd_int_dpc(struct adapter *adapter)
 
 		hal->sdio_hisr ^= SDIO_HISR_RX_REQUEST;
 		do {
-			hal->SdioRxFIFOSize = SdioLocalCmd52Read2Byte(adapter, SDIO_REG_RX0_REQ_LEN);
+			hal->SdioRxFIFOSize = sdio_local_cmd52_read2byte(adapter, SDIO_REG_RX0_REQ_LEN);
 			if (hal->SdioRxFIFOSize != 0) {
 				recvbuf = sd_recv_rxfifo(adapter, hal->SdioRxFIFOSize);
 				if (recvbuf)
@@ -1002,7 +1002,7 @@ void sd_int_dpc(struct adapter *adapter)
 				break;
 
 			hisr = 0;
-			ReadInterrupt8723BSdio(adapter, &hisr);
+			read_interrupt_8723b_sdio(adapter, &hisr);
 			hisr &= SDIO_HISR_RX_REQUEST;
 			if (!hisr)
 				break;
@@ -1026,7 +1026,7 @@ void sd_int_hdl(struct adapter *adapter)
 	hal = GET_HAL_DATA(adapter);
 
 	hal->sdio_hisr = 0;
-	ReadInterrupt8723BSdio(adapter, &hal->sdio_hisr);
+	read_interrupt_8723b_sdio(adapter, &hal->sdio_hisr);
 
 	if (hal->sdio_hisr & hal->sdio_himr) {
 		u32 v32;
@@ -1036,7 +1036,7 @@ void sd_int_hdl(struct adapter *adapter)
 		/*  clear HISR */
 		v32 = hal->sdio_hisr & MASK_SDIO_HISR_CLEAR;
 		if (v32)
-			SdioLocalCmd52Write4Byte(adapter, SDIO_REG_HISR, v32);
+			sdio_local_cmd52_write4byte(adapter, SDIO_REG_HISR, v32);
 
 		sd_int_dpc(adapter);
 	}
@@ -1059,7 +1059,7 @@ u8 HalQueryTxBufferStatus8723BSdio(struct adapter *adapter)
 
 	hal = GET_HAL_DATA(adapter);
 
-	numof_free_page = SdioLocalCmd53Read4Byte(adapter, SDIO_REG_FREE_TXPG);
+	numof_free_page = sdio_local_cmd53_read4byte(adapter, SDIO_REG_FREE_TXPG);
 
 	memcpy(hal->SdioTxFIFOFreePage, &numof_free_page, 4);
 
-- 
2.30.2


