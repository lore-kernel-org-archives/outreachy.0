X-GM-THRID: 6666820090157072384
X-Received: by 2002:aca:b804:: with SMTP id i4mr23268486oif.13.1552302989882;
        Mon, 11 Mar 2019 04:16:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:3189:: with SMTP id x131ls4392406oix.2.gmail; Mon, 11
 Mar 2019 04:16:29 -0700 (PDT)
X-Google-Smtp-Source: AHgI3IYntSoMWzUA3nPOx9YVVBWssczE9GVWn6B6P6jHiCapU8wzUz2IadTnIrW6CPouF5tM/GhF
X-Received: by 2002:aca:e6cf:: with SMTP id d198mr31686024oih.24.1552302989206;
        Mon, 11 Mar 2019 04:16:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552302989; cv=none;
        d=google.com; s=arc-20160816;
        b=DAhfd1hGXKSIdVJuKCBj4ZTALulCQA/0VpnxoVUAHM/X6uiVvIeDAzB1mECSW3GFM+
         Mn0tYZeyCP5KmkUGpAhtYxq26G19ZKlk1tCn4PTWJNLCRmt7CIHPVCaqS+HIVQ/Kgz3X
         gm0JuKpGKxsVlAH3yB0WmtpcKfrkBn4Vzg6kejB9sSoJ2sHr6w570Oy6cnEnc3m443uu
         zq/dTWznAX9To98q0AP2zBtTmRVFs9fExBTnYE0PPQEGqkoP7Ym+0GBa43Bu1K9Prl7k
         D0bE//+7uJvF3BFypLlG1JGkCGM58PWhqar2sUfzgayAUay5erTfidkoMskGKU6quSPM
         5k3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=8LpNvkvTSx7GN3/FIENN1iY0OSa29W74JYdyp6gC2gA=;
        b=LxdXAkqfH1J+YEK00fWwaL9JKO9ubQrSqAzgag/p8L/CrkIj71E6vJOcsSXolk0GH6
         ylayZ6q8hjmZjDBeJqJ4TuxW0OgZCtxwwJ7E+t/rh0rf//uUknd8eYagURj6obVHxkcC
         BqL12i1O8uxdmkHIWTomrdY71rIE8CPjQclBaGx4evfQ2bQa8aog+x9uPmSH40o2AdEV
         HmctFok/0Q6aYHMX52gfHCO+MNXykCeI0YYgt33c+7ueiuXTTBbiV4UWLF2pwJ41A1cI
         DDa9hN6ERGE+9/USqIzQ4RhaVh+cfkg5FnIlbyfIQvyKJb0p9nEZuUeiRGwUKApH79kM
         qXig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XkNeoNwv;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id a188si360919oih.4.2019.03.11.04.16.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 04:16:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XkNeoNwv;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x536.google.com with SMTP id u9so3772818pgo.7
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Mar 2019 04:16:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=8LpNvkvTSx7GN3/FIENN1iY0OSa29W74JYdyp6gC2gA=;
        b=XkNeoNwvGlsvTPdmxvoyJesiddbQ+FbS3uR1G0tQP/IliC2wLTCeyqtA9K2kooH5NU
         pDi2MsynxcLyV7Gk5XJ4ssufwxHu3oVt3I+xPicvrHH2mPOo3g6rpdB7eaRl38p1jdem
         13tOjHJEGPpKIHBiRUtOjOLo9tjqBffgYcfF6/kPClzZC2CzlVPz/p+joPwkPhViKSEI
         lv1DrVVJWc06hDBKF6Ewj/AI/aLOrRttyGJkNuOrr2qQw0bbQ153mGXWn3TO0ceXCtOi
         wf5Jw5do7cM/DJcNy7bQNGIMrDbHNxi/tHghJCIgplLftpnV6GU9obJJkexme75pswqK
         o7Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=8LpNvkvTSx7GN3/FIENN1iY0OSa29W74JYdyp6gC2gA=;
        b=SeD5j2QIk4OXpQ9RJMH+hf50k2NK0NdjELv+wXsMPnNM4lg3puXqksX74ENuyQ/e0V
         SoRlqp9mGLRyhwwg/Lc5olFaumTdiYldEDPCspulOmHP+BhAOevuH6E4xo5l5IhcxLfG
         JGVkQWDnOpcMTMAQHp3k26c/yt5nZzisFtyeFJQYMBLnXnFY6gAyff1eOtAzUV+cuTtU
         GXgsXUGSsOasU2l7wLmD1sUd9DFXJATTrVrESuw9QqpxB3CW8aNuJt4n0CY2PAktWnz+
         Q6dBEAwNaWM7+zjb/Cn/dGBGGKTy1C2oXCxRgqFiq8rWfUMz0LDfSslE0ZKDqpLyK2ni
         ijMQ==
X-Gm-Message-State: APjAAAVx+OZZNsIwX8rhN8ecQgmZ3eU8U2nYGHE8dcLy6UYMqnilyFHq
	eYlZtD/RCYT81H9yttUfQVCAwibECGs=
X-Received: by 2002:a17:902:8b83:: with SMTP id ay3mr31774756plb.1.1552302988698;
        Mon, 11 Mar 2019 04:16:28 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id p11sm23586700pfi.10.2019.03.11.04.16.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 04:16:28 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 3/7] Staging: rtl8192u: Remove typedef for struct _RT_POWER_SAVE_CONTROL
Date: Mon, 11 Mar 2019 16:46:03 +0530
Message-Id: <20190311111607.28766-4-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190311111607.28766-1-bhanusreemahesh@gmail.com>
References: <20190311111607.28766-1-bhanusreemahesh@gmail.com>

-Avoid typedefs for structure types to maintain kernel coding style.
-Remove typedefs RT_POWER_SAVE_CONTROL and *PRT_POWER_SAVE_CONTROL of struct _RT_POWER_SAVE_CONTROL.
-Change Structure name _RT_POWER_SAVE_CONTROL to rt_power_save_control to maintain Linux kernel Coding Style.
-Replace occurence of _RT_POWER_SAVE_CONTROL to struct rt_power_save_control.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index d78bc976cc69..c8c0e4282fea 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -1518,7 +1518,7 @@ typedef	enum _RT_RF_POWER_STATE {
 	eRfOff
 } RT_RF_POWER_STATE;
 
-typedef struct _RT_POWER_SAVE_CONTROL {
+struct rt_power_save_control {
 
 	//
 	// Inactive Power Save(IPS) : Disable RF when disconnected
@@ -1562,7 +1562,7 @@ typedef struct _RT_POWER_SAVE_CONTROL {
 	//
 	bool				bLeisurePs;
 
-} RT_POWER_SAVE_CONTROL, *PRT_POWER_SAVE_CONTROL;
+};
 
 typedef u32 RT_RF_CHANGE_SOURCE;
 #define RF_CHANGE_BY_SW		BIT(31)
@@ -1876,9 +1876,9 @@ struct ieee80211_device {
 	bool FwRWRF;
 
 	//added by amy for AP roaming
-	RT_LINK_DETECT_T	LinkDetectInfo;
+	RT_LINK_DETECT_T       	LinkDetectInfo;
 	//added by amy for ps
-	RT_POWER_SAVE_CONTROL	PowerSaveControl;
+	struct rt_power_save_control PowerSaveControl;
 //}
 	/* used if IEEE_SOFTMAC_TX_QUEUE is set */
 	struct  tx_pending tx_pending;
-- 
2.17.1


