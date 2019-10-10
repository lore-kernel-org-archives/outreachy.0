X-GM-THRID: 6745991976602042368
X-Received: by 2002:a17:902:524:: with SMTP id 33mr6473513plf.123.1570673771807;
        Wed, 09 Oct 2019 19:16:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b485:: with SMTP id y5ls814364plr.0.gmail; Wed, 09
 Oct 2019 19:16:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxy584JKZVrRADMacBQnCBtdJWmxI3LcnkxC+K1L5u+HB02MHjVOpNsYzjrwS2FJz3SC7w8
X-Received: by 2002:a17:902:a717:: with SMTP id w23mr6510023plq.27.1570673770614;
        Wed, 09 Oct 2019 19:16:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570673770; cv=none;
        d=google.com; s=arc-20160816;
        b=Sx7dr/sFGSFUCGG6D9iqQEHFHhEFB1rvTCM4ZDXkYm2GTSpuwNmzE6Aua1HhCUk7yp
         WH/eGEIGVSFK7seIkUoItQt7R9yvPWINrxo8Pkqabs66BPHecYFVZujxWmrQgItZes5n
         lECM+13lmpAmaXnw7CIZlwPIwAoHOtXZ43xRfbhkerOH/i8I+4IRlEKhBEPpJaFgiHEB
         FBLk1puJkjzUnaWbgxbpITpjYP+t9aDHBHnrvFq1RfwJupx23MkCtxbn0eTbwsqXiAHt
         DFsa6PajigJmest5zlyH3IAZVDrJD1lV81H93bI5MMPuSMk/OoY5pIafj93sb7WpGHxM
         6QOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=UZ6SgvooPhg6IrmUdMN0TinE0/TKgh733maslr7lSes=;
        b=zUdByY+dekawKToWRNrVwxsxhyX08egHW0GEYc1cn4GN7co/3GDXNByMvxrCXsxFgC
         tzHFQr8CG2JBWnnqDpu7lopjO6MZ0nTjf/ZAFfIMI1LfjF2cryJ/rdzAxIQFNsoddpmX
         +7uU6RrJEHr8/6xgGw04T9osEXXX2EQEqFSHdkxr+wUNLIsU8pgyfPWLisavkpHwER6l
         blB7oTyBWri65DIuGZWWOvg+qAc002/VOzdU+vr2oy2Njey7CQkUJoyr1eHIg/KDLiy0
         8hou7ZGKcHCgMKdZuhjQ5EPEHMq5qwWPTyQJcm5XFnE8/qihPHSbOZfWhnQ0a/PIJJn1
         7Y4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g4Ynq3QO;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id e6si156726pjp.2.2019.10.09.19.16.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 19:16:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g4Ynq3QO;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe44.google.com with SMTP id v10so2867211vsc.7
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Oct 2019 19:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=UZ6SgvooPhg6IrmUdMN0TinE0/TKgh733maslr7lSes=;
        b=g4Ynq3QO9jhgjYH8xpf8/wDK0mNbK6ZyYFNyU+GDwhgmjdp36CvQD0U8ZKCWnX1UOa
         cmmXoAQLaNo66PVonJoVlThDOeW4pwo/NbGhADR2b+hbiWGzJOVJcMOeu1EuzbQUtgsZ
         LhVwnCtvB2aVx5l1+Gc0ugoHOdkDn1JcMkPn8v/IKUQ7tMMHAp/sjAa21uT38eBJHQzp
         QNQnWhqYR21NkkY5YVE/8wSquyPHSz7TlBjEcUpedY9fWnS2HoRypB+HxvhhH6qzdB6H
         c4d30VuPeAhgkoP4eyssSWKNiiM78jO0yPvgwEUQH+avTSnl0nUtSgffPw0/YudHHwMX
         3Nuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=UZ6SgvooPhg6IrmUdMN0TinE0/TKgh733maslr7lSes=;
        b=rn466W67V2yvLwiyykQwlztp39/YI/OCjsAABUgjtmMqn8EZq8m4HEMhbjeBz4W6O2
         jk7uXKlzIJr6M3Fne+w67vNp+4o9WmK/1DO9q6GPxraaq+ES9Wupby02Q3nUqIcGuj2w
         gCtLZsVAoT+w0NBiIRxtSq21VizOTfveeF29fY+RtR2jNalwUoi1XPE/94yAR7za81NZ
         zGJpz3rE/R0PrJ1WTo7iqzSuGjpI/tRrjfVYtNHWe7syIK4gXmvxXkjqS1JQ1fbJDpSO
         GGTRHtgy7JsZwgBbtk1aDTc7xa0gYa8YhaIBG+Z2qvKZXRMR9nXbE7cRa5MrcdH4StCV
         Bibg==
X-Gm-Message-State: APjAAAVxS8ILWdmFahnnkieLrJKlSidahZHOeziivVP4gM2nloBnOSz3
	B7YEzmFxtd/W8B5jDJY2I/00E7hKO2cIJA==
X-Received: by 2002:a67:fac7:: with SMTP id g7mr3809868vsq.194.1570673769797;
        Wed, 09 Oct 2019 19:16:09 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-190-27-96-102.dynamic.etb.net.co. [190.27.96.102])
        by smtp.gmail.com with ESMTPSA id f1sm1123075vsc.20.2019.10.09.19.16.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 19:16:09 -0700 (PDT)
Date: Wed, 9 Oct 2019 21:16:07 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] staging: rtl8723bs: Remove duplicate blank lines
Message-ID: <cdc1899acadc436c2f0247ded9ec2a8b3423350e.1570672544.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1570672544.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1570672544.git.jarias.linux@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

Remove duplicate blank lines.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/sdio_ops.c | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c b/drivers/staging/rtl8723bs/hal/sdio_ops.c
index 1853f90511f6..dc62ac2c51ae 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_ops.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c
@@ -61,7 +61,6 @@ static u8 get_deviceid(u32 addr)
 	u8 devide_id;
 	u16 pseudo_id;
 
-
 	pseudo_id = (u16)(addr >> 16);
 	switch (pseudo_id) {
 	case 0x1025:
@@ -72,7 +71,6 @@ static u8 get_deviceid(u32 addr)
 		devide_id = WLAN_IOREG_DEVICE_ID;
 		break;
 
-
 	case 0x1031:
 		devide_id = WLAN_TX_HIQ_DEVICE_ID;
 		break;
@@ -107,7 +105,6 @@ static u32 _cvrt2ftaddr(const u32 addr, u8 *pdevice_id, u16 *poffset)
 	u16 offset;
 	u32 ftaddr;
 
-
 	device_id = get_deviceid(addr);
 	offset = 0;
 
@@ -426,7 +423,6 @@ static u32 sdio_read_port(
 	u32 oldcnt;
 	s32 err;
 
-
 	adapter = intfhdl->padapter;
 	psdio = &adapter_to_dvobj(adapter)->intf_data;
 	hal = GET_HAL_DATA(adapter);
@@ -532,7 +528,6 @@ static s32 _sdio_local_read(
 	u8 *tmpbuf;
 	u32 n;
 
-
 	intfhdl = &adapter->iopriv.intf;
 
 	HalSdioGetCmdAddr8723BSdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
@@ -705,7 +700,6 @@ static s32 ReadInterrupt8723BSdio(struct adapter *adapter, u32 *phisr)
 	u32 hisr, himr;
 	u8 val8, hisr_len;
 
-
 	if (!phisr)
 		return false;
 
@@ -743,7 +737,6 @@ void InitInterrupt8723BSdio(struct adapter *adapter)
 {
 	struct hal_com_data *haldata;
 
-
 	haldata = GET_HAL_DATA(adapter);
 	haldata->sdio_himr = (u32)(		\
 								SDIO_HIMR_RX_REQUEST_MSK			|
@@ -761,7 +754,6 @@ void InitSysInterrupt8723BSdio(struct adapter *adapter)
 {
 	struct hal_com_data *haldata;
 
-
 	haldata = GET_HAL_DATA(adapter);
 
 	haldata->SysIntrMask = (		\
@@ -869,7 +861,6 @@ static struct recv_buf *sd_recv_rxfifo(struct adapter *adapter, u32 size)
 	struct recv_priv *recv_priv;
 	struct recv_buf	*recvbuf;
 
-
 	/*  Patch for some SDIO Host 4 bytes issue */
 	/*  ex. RK3188 */
 	readsize = RND4(size);
@@ -911,7 +902,6 @@ static struct recv_buf *sd_recv_rxfifo(struct adapter *adapter, u32 size)
 		return NULL;
 	}
 
-
 	/* 3 4. init recvbuf */
 	recvbuf->len = size;
 	recvbuf->phead = recvbuf->pskb->head;
@@ -945,7 +935,6 @@ void sd_int_dpc(struct adapter *adapter)
 	struct intf_hdl *intfhdl = &adapter->iopriv.intf;
 	struct pwrctrl_priv *pwrctl;
 
-
 	hal = GET_HAL_DATA(adapter);
 	dvobj = adapter_to_dvobj(adapter);
 	pwrctl = dvobj_to_pwrctl(dvobj);
@@ -1021,7 +1010,6 @@ void sd_int_dpc(struct adapter *adapter)
 	if (hal->sdio_hisr & SDIO_HISR_RXERR)
 		DBG_8192C("%s: Rx Error\n", __func__);
 
-
 	if (hal->sdio_hisr & SDIO_HISR_RX_REQUEST) {
 		struct recv_buf *recvbuf;
 		int alloc_fail_time = 0;
@@ -1061,7 +1049,6 @@ void sd_int_hdl(struct adapter *adapter)
 {
 	struct hal_com_data *hal;
 
-
 	if (
 		(adapter->bDriverStopped) || (adapter->bSurpriseRemoved)
 	)
@@ -1105,7 +1092,6 @@ u8 HalQueryTxBufferStatus8723BSdio(struct adapter *adapter)
 	struct hal_com_data *hal;
 	u32 numof_free_page;
 
-
 	hal = GET_HAL_DATA(adapter);
 
 	numof_free_page = SdioLocalCmd53Read4Byte(adapter, SDIO_REG_FREE_TXPG);
-- 
2.20.1


