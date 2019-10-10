X-GM-THRID: 6745991976602042368
X-Received: by 2002:a17:902:8e8b:: with SMTP id bg11mr6470451plb.332.1570673793631;
        Wed, 09 Oct 2019 19:16:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:610a:: with SMTP id v10ls845396pgb.13.gmail; Wed, 09 Oct
 2019 19:16:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyjYhy65hDuCLnhBjPDNQaLReGuI3YlFnT6f987xitsFKsSi3YuWKZv7jSq4mPKq1Jz0OWt
X-Received: by 2002:a62:ae06:: with SMTP id q6mr7256129pff.96.1570673792556;
        Wed, 09 Oct 2019 19:16:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570673792; cv=none;
        d=google.com; s=arc-20160816;
        b=qOmfutr0aclyMNq8zlNkqzIejZ2acbYNTZTjlDK6jjtoxxo4dKygBMQyfxdkOb8jF6
         6pBi25eDLR+5q8D1vYXNyiwyF+ahwkEKgWWQLIYaYJkVpDsk995vhbTzIG69Yy1IKphL
         OsqqerIHYXCU20n2NnLLptHEAepLV5Ve3yMFJb/p1+e+p6mAREgE9ebXQsS00eLC7T3e
         SuxRuq/bZMtmRkHdCswskJcoT7qj9skhxvh2xxiYYDRHDnYf6m9jSqcI0J660Ki+LVza
         YBjfBrdo6z78LmMyJxR/VP71geM19jUwY++FFtGYsl+FojLm9QS4TfyFqA72+Z1VfzsQ
         0RYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=MEeHo2CmK4qy1CuvI70hGpdpsC+HQUQ+um4WT3a3X78=;
        b=dIsVl0dDzK11HuwfKxPNTMJacoW1SEJdWlWdbiZHrwsghVtjonECn5OKZ/q6AzijNA
         48LgkxH+nrrxYNCb2TrUKMjq7bJ6s1wVcDnA1JodQZMO3nHEw/E5a6wjOYAeFWLbTiU1
         qYyRcZDqy1LFWGiG6ELThAywIo4ga+nO+b+JGLssXgsul47AapIodnuP1M+jm/C59pRu
         tRxzDYSrUvIMBf7CvZXy/plSSqFpBtViPOx3GslzggE7oY5w8retkgZjsXirfgG64XiG
         5UZQiVsUumaPA34G/h+Oj88Qrndu1ornRt0HPqK0ULHhhDX+ZvfOhlrRZKpA9OZgXf1m
         g/6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uCae0zZC;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id e6si156726pjp.2.2019.10.09.19.16.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 19:16:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uCae0zZC;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe44.google.com with SMTP id v10so2867211vsc.7
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Oct 2019 19:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=MEeHo2CmK4qy1CuvI70hGpdpsC+HQUQ+um4WT3a3X78=;
        b=uCae0zZCxUoLK7gvBhqndhCIXgEuKQPU2ApOnLL/pabz78b+Wd0ygQy9d4hUEkOVIe
         1bmYgxcJWNKr5KzvEwwDTUAY8R3QxsKrqiTjJfMK470Erg79c9/RyjchYpouzPZnkd+g
         JmawxBpTS+Z6hg7NdtWp6uIWHju0jwhI2ic0dfunEexqJGDUs+IWzxPF8j4GkzBQbcrk
         0cfIetAjCtPfj2A1R9CmOf53oG9fRkuGt1vUn9QsXtkyULFy7Cs74FWnTGKTajJycpP+
         5g73b+qcHWwWLe3vXRqM93sFaGBbUDXlK9BlttdUx12ajWDksqdByn/xtKgeFShAq+j4
         jpjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=MEeHo2CmK4qy1CuvI70hGpdpsC+HQUQ+um4WT3a3X78=;
        b=OiOYEp6K1Bhmh8k5BQgcdflpPmMEwmGcosQKidL/SiC+oGPF/JoM/8Xs/yOhVtNOC0
         iWWOKhyq3RrWqMdpk+MxDT444uSB3mWd9wtuc0G8zLnXlCa5Cg4htVMvx34Yd0h+OJHD
         eYYgudoolZ2kMEqgtf7fOzIgLgJAjQZND/xkpPuqtH1L3scwygDeeWXaKedCjpdH4Gf4
         Seeczj3389NJaeGyAsNI9vgGGjTbHgd85Ik8FlXaUI4f8b58/gLNtu46eG7e5w0wigp2
         jrVVVH1a6+Pco1Owv5uA/Afi+KYZReShjlSbQB/BZSt56fQzLaz6X2NAzqEA3pVKCe5d
         zisg==
X-Gm-Message-State: APjAAAWsqicUrL3uUYq2hYEZQWaqjtSI8Iy1KPGvorelFhMu0pEnb6ZF
	ninBQiZicF050+WeuWKHj2Dt31ZyZN4b8w==
X-Received: by 2002:a67:f4c4:: with SMTP id s4mr3967834vsn.185.1570673792206;
        Wed, 09 Oct 2019 19:16:32 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-190-27-96-102.dynamic.etb.net.co. [190.27.96.102])
        by smtp.gmail.com with ESMTPSA id r7sm1894880uad.0.2019.10.09.19.16.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 19:16:32 -0700 (PDT)
Date: Wed, 9 Oct 2019 21:16:29 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] staging: rtl8723bs: Remove space before tabs
Message-ID: <120800f884986092ca757235781d9ddc740ec832.1570672544.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1570672544.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1570672544.git.jarias.linux@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

Remove space before tabs to fix checkpatch warning.
Issue found by checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/sdio_ops.c | 66 ++++++++++++------------
 1 file changed, 33 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c b/drivers/staging/rtl8723bs/hal/sdio_ops.c
index dc62ac2c51ae..4c27b3a53307 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_ops.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c
@@ -15,7 +15,7 @@
 
 /*  */
 /*  Description: */
-/* 	The following mapping is for SDIO host local register space. */
+/*	The following mapping is for SDIO host local register space. */
 /*  */
 /*  Creadted by Roger, 2011.01.31. */
 /*  */
@@ -725,13 +725,13 @@ static s32 ReadInterrupt8723BSdio(struct adapter *adapter, u32 *phisr)
 }
 
 /*  */
-/* 	Description: */
-/* 		Initialize SDIO Host Interrupt Mask configuration variables for future use. */
+/*	Description: */
+/*		Initialize SDIO Host Interrupt Mask configuration variables for future use. */
 /*  */
-/* 	Assumption: */
-/* 		Using SDIO Local register ONLY for configuration. */
+/*	Assumption: */
+/*		Using SDIO Local register ONLY for configuration. */
 /*  */
-/* 	Created by Roger, 2011.02.11. */
+/*	Created by Roger, 2011.02.11. */
 /*  */
 void InitInterrupt8723BSdio(struct adapter *adapter)
 {
@@ -745,10 +745,10 @@ void InitInterrupt8723BSdio(struct adapter *adapter)
 }
 
 /*  */
-/* 	Description: */
-/* 		Initialize System Host Interrupt Mask configuration variables for future use. */
+/*	Description: */
+/*		Initialize System Host Interrupt Mask configuration variables for future use. */
 /*  */
-/* 	Created by Roger, 2011.08.03. */
+/*	Created by Roger, 2011.08.03. */
 /*  */
 void InitSysInterrupt8723BSdio(struct adapter *adapter)
 {
@@ -761,14 +761,14 @@ void InitSysInterrupt8723BSdio(struct adapter *adapter)
 }
 
 /*  */
-/* 	Description: */
-/* 		Enalbe SDIO Host Interrupt Mask configuration on SDIO local domain. */
+/*	Description: */
+/*		Enalbe SDIO Host Interrupt Mask configuration on SDIO local domain. */
 /*  */
-/* 	Assumption: */
-/* 		1. Using SDIO Local register ONLY for configuration. */
-/* 		2. PASSIVE LEVEL */
+/*	Assumption: */
+/*		1. Using SDIO Local register ONLY for configuration. */
+/*		2. PASSIVE LEVEL */
 /*  */
-/* 	Created by Roger, 2011.02.11. */
+/*	Created by Roger, 2011.02.11. */
 /*  */
 void EnableInterrupt8723BSdio(struct adapter *adapter)
 {
@@ -814,13 +814,13 @@ void EnableInterrupt8723BSdio(struct adapter *adapter)
 }
 
 /*  */
-/* 	Description: */
-/* 		Disable SDIO Host IMR configuration to mask unnecessary interrupt service. */
+/*	Description: */
+/*		Disable SDIO Host IMR configuration to mask unnecessary interrupt service. */
 /*  */
-/* 	Assumption: */
-/* 		Using SDIO Local register ONLY for configuration. */
+/*	Assumption: */
+/*		Using SDIO Local register ONLY for configuration. */
 /*  */
-/* 	Created by Roger, 2011.02.11. */
+/*	Created by Roger, 2011.02.11. */
 /*  */
 void DisableInterrupt8723BSdio(struct adapter *adapter)
 {
@@ -831,13 +831,13 @@ void DisableInterrupt8723BSdio(struct adapter *adapter)
 }
 
 /*  */
-/* 	Description: */
-/* 		Using 0x100 to check the power status of FW. */
+/*	Description: */
+/*		Using 0x100 to check the power status of FW. */
 /*  */
-/* 	Assumption: */
-/* 		Using SDIO Local register ONLY for configuration. */
+/*	Assumption: */
+/*		Using SDIO Local register ONLY for configuration. */
 /*  */
-/* 	Created by Isaac, 2013.09.10. */
+/*	Created by Isaac, 2013.09.10. */
 /*  */
 u8 CheckIPSStatus(struct adapter *adapter)
 {
@@ -1078,14 +1078,14 @@ void sd_int_hdl(struct adapter *adapter)
 }
 
 /*  */
-/* 	Description: */
-/* 		Query SDIO Local register to query current the number of Free TxPacketBuffer page. */
+/*	Description: */
+/*		Query SDIO Local register to query current the number of Free TxPacketBuffer page. */
 /*  */
-/* 	Assumption: */
-/* 		1. Running at PASSIVE_LEVEL */
-/* 		2. RT_TX_SPINLOCK is NOT acquired. */
+/*	Assumption: */
+/*		1. Running at PASSIVE_LEVEL */
+/*		2. RT_TX_SPINLOCK is NOT acquired. */
 /*  */
-/* 	Created by Roger, 2011.01.28. */
+/*	Created by Roger, 2011.01.28. */
 /*  */
 u8 HalQueryTxBufferStatus8723BSdio(struct adapter *adapter)
 {
@@ -1109,8 +1109,8 @@ u8 HalQueryTxBufferStatus8723BSdio(struct adapter *adapter)
 }
 
 /*  */
-/* 	Description: */
-/* 		Query SDIO Local register to get the current number of TX OQT Free Space. */
+/*	Description: */
+/*		Query SDIO Local register to get the current number of TX OQT Free Space. */
 /*  */
 void HalQueryTxOQTBufferStatus8723BSdio(struct adapter *adapter)
 {
-- 
2.20.1


