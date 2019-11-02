X-GM-THRID: 6754500769734459392
X-Received: by 2002:a63:d754:: with SMTP id w20mr16561329pgi.156.1572658823066;
        Fri, 01 Nov 2019 18:40:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:7292:: with SMTP id d18ls1991411pll.13.gmail; Fri,
 01 Nov 2019 18:40:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzCMKqgeQFftXFN9HDZTw9S6pBF60c0IeU5RU9GJRdQxDJ0/5luiYwOScQB9bGkkdY26V/m
X-Received: by 2002:a17:90a:17ab:: with SMTP id q40mr18979051pja.139.1572658821911;
        Fri, 01 Nov 2019 18:40:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572658821; cv=none;
        d=google.com; s=arc-20160816;
        b=JkNlCczWfDtSp4GpTQlawNuOhKHWolABYjEtmRE6o9rUR0K+keM0KZy06ifz7IejEv
         a3WJcmvTc/a85ct7OocqhXOLHRO34LiuL0jIwYoV3hsL2Gik3X110ykrektARbUXKR7w
         lQ5GYJlhzx/rZfu3ACKiYy7G0Y8D2zDSe6rp4kFKYguzwaqpmjtkk+OEGeHQcF4Vhc4o
         sKRu/cqYGLRv6LvOXCJk2rlZo+B3mSpSXY6zU9leWuFnvAmNgWlx8SodYczW2JeXPBSQ
         vC5tbOvVoJYvnB3QzRgIGrJOET3TPtXM+uNzBYfMO+j5iHEyRqoltG0wMo1azSmyJUN3
         a7bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:mail-followup-to:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=cvcRSVa5RZ8Gz/PvY1KyEOVBPE/nZzp+RyiAe5TD4Fs=;
        b=SUAhIRJ1lN7rpvRFE6lwTPitCSNmQFBOD4yLGQw2g5iI59y/DcaNBnnRX1/NrwqOXe
         dKabWM0JQ+r0DzzzaPSbLiYEHnJqi44PfjGJVNYqAYlqLg8RIS5u5NvIkh8U6IdKrJs8
         ralaq5NHugOxash+btu18HszAp3ITCV5U1LI3YP3xWE0quWFwLGHxkqCvp+RqlZowVna
         KNsmoEOVW4X9r8T956KFMo+ybTJ8EyaHM9IU28wCg99dIZwm60lqM3G3tUKHX9x8ekS1
         iaRPfSw04BdCF5bDSdQ7t0BpiRjJixHKdsNcGt3mz9dDcnRBJ8clv5Txq7ayEG2qnV7L
         9jyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vPEfIs4x;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id s26si416374pgn.5.2019.11.01.18.40.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 18:40:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vPEfIs4x;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id x195so4698895pfd.1
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 18:40:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition;
        bh=cvcRSVa5RZ8Gz/PvY1KyEOVBPE/nZzp+RyiAe5TD4Fs=;
        b=vPEfIs4x30nrzr1xL4J3Z3dVAjroOHQjgklXFD0Wlleh/D8lS6hwvXy5GWmG2EFyZu
         ay667qn7cMfAHhhwzhNauApI5t2UKS2zZLwn3xrpO+nXpWXxJIRpr5a9LBtc0GN3UObr
         ACWdicTfSpVp2A6yCqKGMRJk/7dBAC5gzcTb2FxBKqytUY91ySE9jrQVZCYQDBPGWTYU
         s3c52QMS5dkKFjTCBocvjku/fVfHooIQZ0fL0ci0Vq/h0uD4/7Uu+bRZXFhiU4ixDjT9
         c1DNshcRt5nAZ50dv3u4sanHBGL8h5yUCKcrnjAydqu6Vh2zLAKIq4cPGGs91F7cjf5r
         3Ltw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition;
        bh=cvcRSVa5RZ8Gz/PvY1KyEOVBPE/nZzp+RyiAe5TD4Fs=;
        b=hiN4zjee+9hC6YUXV0bIEG69RZ8n4Be7vxdZwOqfaquyHEu0OFrevF/10MnDwPrTVS
         bS+TBFjEiAHgMUxTdjRGlx9OcCijaoe5nuTQ976nGFA31whRWospYRn0y47Tv5lfVy55
         OfS94fxmCk1tceRXnaun2YPpIOLyTORp1gUPHNlF3jyAUG+kmev/ofBU5UzFyPAFPYYc
         U/dD6OCyLns/2SLOxKbuiPixm1RPiaA4Q9gcJekoCsQZzKo68FKsXLxzJyTDdZj4/KPC
         WSMrNzOiwcJM01AoYZY6LqaMrxA0mVdPBmcDAvTUtlaC/HEslpcDJstU9I2+9Hca6chX
         i6dQ==
X-Gm-Message-State: APjAAAVvBzwUwnBSWBub32vg1Zl7yttBlFKanD/dvfeat+FocIjCJYLb
	N7o49cAJ4B0leBBs4ujeEJo=
X-Received: by 2002:a63:4b52:: with SMTP id k18mr16408915pgl.394.1572658821183;
        Fri, 01 Nov 2019 18:40:21 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([104.216.216.194])
        by smtp.gmail.com with ESMTPSA id 10sm8069136pgs.11.2019.11.01.18.40.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 18:40:20 -0700 (PDT)
Date: Fri, 1 Nov 2019 20:40:17 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH V2] staging: rtl8723bs: Remove unnecessary conditional block
Message-ID: <20191102014017.t5rtf5syzs762nea@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patch removes a conditional block that had no effect.
It also reformat the affected lines to set the right indentation
after the removal.
Issue found by Coccinelle.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
Changes in V2:
	- Edit the commit message and description.

 drivers/staging/rtl8723bs/hal/sdio_halinit.c | 19 +++++++------------
 1 file changed, 7 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 0f5dd4629e6f..b4b535c66bae 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -551,18 +551,13 @@ static void HalRxAggr8723BSdio(struct adapter *padapter)
 
 	pregistrypriv = &padapter->registrypriv;
 
-	if (pregistrypriv->wifi_spec) {
-		/*  2010.04.27 hpfan */
-		/*  Adjust RxAggrTimeout to close to zero disable RxAggr, suggested by designer */
-		/*  Timeout value is calculated by 34 / (2^n) */
-		valueDMATimeout = 0x06;
-		valueDMAPageCount = 0x06;
-	} else {
-		/*  20130530, Isaac@SD1 suggest 3 kinds of parameter */
-		/*  TX/RX Balance */
-		valueDMATimeout = 0x06;
-		valueDMAPageCount = 0x06;
-	}
+	/*  2010.04.27 hpfan */
+	/*  Adjust RxAggrTimeout to close to zero disable RxAggr, suggested by designer */
+	/*  Timeout value is calculated by 34 / (2^n) */
+	valueDMATimeout = 0x06;
+	valueDMAPageCount = 0x06;
+	/*  20130530, Isaac@SD1 suggest 3 kinds of parameter */
+	/*  TX/RX Balance */
 
 	rtw_write8(padapter, REG_RXDMA_AGG_PG_TH + 1, valueDMATimeout);
 	rtw_write8(padapter, REG_RXDMA_AGG_PG_TH, valueDMAPageCount);
-- 
2.20.1


