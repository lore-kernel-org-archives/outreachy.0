X-GM-THRID: 6745991976602042368
X-Received: by 2002:a81:1ac4:: with SMTP id a187mr4950926ywa.494.1570673691512;
        Wed, 09 Oct 2019 19:14:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:48ca:: with SMTP id v193ls400581ywa.12.gmail; Wed, 09
 Oct 2019 19:14:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwZO1t+FkWfeqmbky4jZkt+PlgbC6hdJk+9Z3/F1mlSiRuTKyUQMXRKmQqsy2Sj3dOihmjQ
X-Received: by 2002:a0d:eb89:: with SMTP id u131mr5226850ywe.239.1570673690197;
        Wed, 09 Oct 2019 19:14:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570673690; cv=none;
        d=google.com; s=arc-20160816;
        b=Yc0no2nVpVMldq1qsyX5WqmJIMM6tCbuFxIxrTnBIf5zWAG+oUP1E5jW6QXoW5P5vK
         EbUj5JeWqrv2ztVH+Dg1srHjWVhmq2+gWLKeg+kv+KU3IINL3SsEdfE9QePmshjGmJfc
         ZQTYuZZ1NSpOOru2OkaB0vFhHqErKOWfJ86mDlN0IFKaa2sM0mvcKIUeGDjh1oOaltZ5
         r2HyjNicjDRuBlHym5nhn96rLnTik2qpo4+COLSdSvjQxM8XhAU6Boftb1A3NnaY9pYk
         nxqF9dbjFDwyscm33MAVTb+8UeqP2sYO8Gs3z5z8yRgwtTbpxx/U7g3Woxpo+5dCHUtu
         t3TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=pOILJsL1tiJ3ipV5TOKSLFlsAqnNm+Syr/JxWxSUOD0=;
        b=vmx6mHxHrfWDyMRX7iMrF0uW8NMp+pVooqH+2ujUeJJ1uF/9DNIacdbpUQ6pmTgpbt
         uTQ5emJpJrYypYdAiMGm51kCADZ6A+VM44KT+TP3BmEkUlD/bnj62OFEYPUOiQHMO+dp
         GqD36tdx3rz3TPRq75dAbDSrJA+6Wo9Qkvg6q822W3JwbSLCOODXGVZZhEABXAXw/fUv
         4EbuVN0AgfRYiDpMuiSfjwz61U5mbLfkg6Fe+mY2mmYLGmcWssvMYsUHxRJu7qlmoVps
         Cws2P6M04aguq08qgQJWpCvFdBzecJ8aCrEKrUp14J4EMH1AQcUMsyDJS5/7oVVEAaT1
         531w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TdhjSv9u;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id p140si449969ywg.4.2019.10.09.19.14.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 19:14:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TdhjSv9u;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe43.google.com with SMTP id v10so2865502vsc.7
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Oct 2019 19:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=pOILJsL1tiJ3ipV5TOKSLFlsAqnNm+Syr/JxWxSUOD0=;
        b=TdhjSv9uIpmQYm/GpR+4XvKS0Z8/wJjArPcn0IM9tXwUHo0VgpKE7sUkOJ8+b9ftdH
         b4n3AX6yWA5HugTyj+5r/+AhVXrRp3oZZ7HQI6uh7dj+KGwthaVIGapUpx5jFfBrxN1J
         SaJ6FzjUfjucLI4PGi6tkxl0HcfaXjZf7HFHbWphxeUw45Snv5+2LcHUrop9xkObThYm
         yJrg2cjXbv0WFvzWJ6va4bMLh8aCjqtamKlbM5MqKjo7zo2+T2JpUboym7Hq04b5H4mZ
         1YSupvSjdBPkeWcTboWhwFo/w24iOCWTQD6cP+a6qajD+vvfRoIEbu0fULuOwDfGohHz
         /XWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=pOILJsL1tiJ3ipV5TOKSLFlsAqnNm+Syr/JxWxSUOD0=;
        b=tMJNbYZFsxosFqxd4fVCrr0fVIEioI6sZaBMjebgdBDMl4KJWqdXLYpAWTIyRjIyXw
         Sbu5K4MxY1PYPU+VWMNmSUei/oPoUfC3YgnoPqiRtXCTGkGSApYsteNiPjtHn6bZCB9j
         xXQ8nPBOiLtM4GBkeQNWvIPcfm/rqZ65uCDlqMfhZqglOcTY3ySj8yKRXdPd2krnkiPV
         hOKycdg2PdTQpiOp33Jj/RPTCquKxzftsvp+GsfLLR3Xph8AaBGD4elpCSeJqZF+FPS7
         EvwF7qXyIu43Ygb4mp+rxb7aYzTpT93RBUBNbUdMLDrLzGwzGV2Lez4o1G4WWfFzbcWU
         QgRA==
X-Gm-Message-State: APjAAAXtuuUzoPyUdRvfbUG+upSe1xZE8dI5wM7HA64g5HYXFeig+YPb
	nSK1C4IJ7umkLUmBNII3xo4=
X-Received: by 2002:a05:6102:310b:: with SMTP id e11mr3769529vsh.79.1570673689888;
        Wed, 09 Oct 2019 19:14:49 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-190-27-96-102.dynamic.etb.net.co. [190.27.96.102])
        by smtp.gmail.com with ESMTPSA id h62sm2232327vkd.50.2019.10.09.19.14.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 19:14:49 -0700 (PDT)
Date: Wed, 9 Oct 2019 21:14:47 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] staging: rtl8723bs: Remove commented code
Message-ID: <132126f0d04d5ca1129e9d682dfe9a535ec7bb39.1570672544.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1570672544.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1570672544.git.jarias.linux@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

Remove commented code for a cleaner file.
Issue found by checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/sdio_ops.c | 33 ------------------------
 1 file changed, 33 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c b/drivers/staging/rtl8723bs/hal/sdio_ops.c
index 301d327d0624..1853f90511f6 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_ops.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c
@@ -72,9 +72,6 @@ static u8 get_deviceid(u32 addr)
 		devide_id = WLAN_IOREG_DEVICE_ID;
 		break;
 
-/* 		case 0x1027: */
-/* 			devide_id = SDIO_FIRMWARE_FIFO; */
-/* 			break; */
 
 	case 0x1031:
 		devide_id = WLAN_TX_HIQ_DEVICE_ID;
@@ -93,7 +90,6 @@ static u8 get_deviceid(u32 addr)
 		break;
 
 	default:
-/* 			devide_id = (u8)((addr >> 13) & 0xF); */
 		devide_id = WLAN_IOREG_DEVICE_ID;
 		break;
 	}
@@ -440,7 +436,6 @@ static u32 sdio_read_port(
 	oldcnt = cnt;
 	if (cnt > psdio->block_transfer_len)
 		cnt = _RND(cnt, psdio->block_transfer_len);
-/* 	cnt = sdio_align_size(cnt); */
 
 	err = _sd_read(intfhdl, addr, cnt, mem);
 
@@ -490,7 +485,6 @@ static u32 sdio_write_port(
 
 	if (cnt > psdio->block_transfer_len)
 		cnt = _RND(cnt, psdio->block_transfer_len);
-/* 	cnt = sdio_align_size(cnt); */
 
 	err = sd_write(intfhdl, addr, cnt, xmitbuf->pdata);
 
@@ -754,22 +748,6 @@ void InitInterrupt8723BSdio(struct adapter *adapter)
 	haldata->sdio_himr = (u32)(		\
 								SDIO_HIMR_RX_REQUEST_MSK			|
 								SDIO_HIMR_AVAL_MSK					|
-/* 								SDIO_HIMR_TXERR_MSK				| */
-/* 								SDIO_HIMR_RXERR_MSK				| */
-/* 								SDIO_HIMR_TXFOVW_MSK				| */
-/* 								SDIO_HIMR_RXFOVW_MSK				| */
-/* 								SDIO_HIMR_TXBCNOK_MSK				| */
-/* 								SDIO_HIMR_TXBCNERR_MSK			| */
-/* 								SDIO_HIMR_BCNERLY_INT_MSK			| */
-/* 								SDIO_HIMR_C2HCMD_MSK				| */
-/* 								SDIO_HIMR_HSISR_IND_MSK			| */
-/* 								SDIO_HIMR_GTINT3_IND_MSK			| */
-/* 								SDIO_HIMR_GTINT4_IND_MSK			| */
-/* 								SDIO_HIMR_PSTIMEOUT_MSK			| */
-/* 								SDIO_HIMR_OCPINT_MSK				| */
-/* 								SDIO_HIMR_ATIMEND_MSK				| */
-/* 								SDIO_HIMR_ATIMEND_E_MSK			| */
-/* 								SDIO_HIMR_CTWEND_MSK				| */
 								0);
 }
 
@@ -787,11 +765,6 @@ void InitSysInterrupt8723BSdio(struct adapter *adapter)
 	haldata = GET_HAL_DATA(adapter);
 
 	haldata->SysIntrMask = (		\
-/* 							HSIMR_GPIO12_0_INT_EN			| */
-/* 							HSIMR_SPS_OCP_INT_EN			| */
-/* 							HSIMR_RON_INT_EN				| */
-/* 							HSIMR_PDNINT_EN				| */
-/* 							HSIMR_GPIO9_INT_EN				| */
 							0);
 }
 
@@ -992,7 +965,6 @@ void sd_int_dpc(struct adapter *adapter)
 
 		report.state = SdioLocalCmd52Read1Byte(adapter, SDIO_REG_HCPWM1_8723B);
 
-		/* cpwm_int_hdl(adapter, &report); */
 		_set_workitem(&(pwrctl->cpwm_event));
 	}
 
@@ -1055,7 +1027,6 @@ void sd_int_dpc(struct adapter *adapter)
 		int alloc_fail_time = 0;
 		u32 hisr;
 
-/* 		DBG_8192C("%s: RX Request, size =%d\n", __func__, hal->SdioRxFIFOSize); */
 		hal->sdio_hisr ^= SDIO_HISR_RX_REQUEST;
 		do {
 			hal->SdioRxFIFOSize = SdioLocalCmd52Read2Byte(adapter, SDIO_REG_RX0_REQ_LEN);
@@ -1133,14 +1104,12 @@ u8 HalQueryTxBufferStatus8723BSdio(struct adapter *adapter)
 {
 	struct hal_com_data *hal;
 	u32 numof_free_page;
-	/* _irql irql; */
 
 
 	hal = GET_HAL_DATA(adapter);
 
 	numof_free_page = SdioLocalCmd53Read4Byte(adapter, SDIO_REG_FREE_TXPG);
 
-	/* spin_lock_bh(&phal->SdioTxFIFOFreePageLock); */
 	memcpy(hal->SdioTxFIFOFreePage, &numof_free_page, 4);
 	RT_TRACE(_module_hci_ops_c_, _drv_notice_,
 			("%s: Free page for HIQ(%#x), MIDQ(%#x), LOWQ(%#x), PUBQ(%#x)\n",
@@ -1149,7 +1118,6 @@ u8 HalQueryTxBufferStatus8723BSdio(struct adapter *adapter)
 			hal->SdioTxFIFOFreePage[MID_QUEUE_IDX],
 			hal->SdioTxFIFOFreePage[LOW_QUEUE_IDX],
 			hal->SdioTxFIFOFreePage[PUBLIC_QUEUE_IDX]));
-	/* spin_unlock_bh(&hal->SdioTxFIFOFreePageLock); */
 
 	return true;
 }
@@ -1190,7 +1158,6 @@ u8 RecvOnePkt(struct adapter *adapter, u32 size)
 		recvbuf = sd_recv_rxfifo(adapter, size);
 
 		if (recvbuf) {
-			/* printk("Completed Recv One Pkt.\n"); */
 			sd_rxhandler(adapter, recvbuf);
 			res = true;
 		} else {
-- 
2.20.1


