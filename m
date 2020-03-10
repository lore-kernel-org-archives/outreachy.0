X-GM-THRID: 6801918498465382400
X-Received: by 2002:a63:e4d:: with SMTP id 13mr20127528pgo.343.1583843558631;
        Tue, 10 Mar 2020 05:32:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:8597:: with SMTP id w23ls2102555pfn.8.gmail; Tue, 10 Mar
 2020 05:32:37 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuVsRJueWp71YE59VTOl4IZrNvRaVpS9EXA8Kgb3DAer5+fB4XtOQ+7fvqxi+sdnSaOq/Bb
X-Received: by 2002:a65:47c9:: with SMTP id f9mr21291955pgs.85.1583843557134;
        Tue, 10 Mar 2020 05:32:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583843557; cv=none;
        d=google.com; s=arc-20160816;
        b=o7cwozw4b6azc/v40KhRbF2x8AfyAWpsuEPSvXhS9NMhPCCclW5irSk9rg7vqxP5D3
         9c26DUeP0UwR3kLztIrwXrTai7awcO+GVQA5JoMM7NudqGnkMc5d88wLDGmdJgBoRY8W
         2AzV4HeCdGI2fzE9swH/GJe3iue22iakGOqdoEEO9qYcVFF42K/cMAMFd6yBflzypmpE
         SH08QeGEBCh0163+xZXV5JZe2bGle0cG7TESMV/qwYQb3bGMoigY61GaevBSeWLj8VR9
         /cTSklApiI0D/9g2JnpuanNDOUCmDxcueOogOADh+mKbagvkUDKDzmEHkcxUWGwYf/S5
         ZQ4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Z/iHICj995ZPm8eWC4YCMC623t0mydx9E30XjZ8RGRU=;
        b=HIiBYFfWuFUyQ3CMt5wFa7Yfe4+LsMXWcV0jIk+q+lKOB+HArf0+S2rDdN4uXFsRvT
         vFOKsxidBg2B2bsKrGHVBc6+y5LtZZkMiSS9zYg1jEMUdh+QLPohhVVpaQYPdBLTnSic
         0T2ycGp4cWXNfQ00qshsXZ7EfNnoiHSgIwaM0H8/xsUpw6Ax7sX3F1f0cquWV/F2/vWg
         ZpoL+hpEdGgTHy2uW4yBK/npN0J/ALCmShJcmYLw7EAunLhqh4nt4nOYCR4QXTsdg9Ei
         ouiXTJFYfYtBaHuzBcD1DoH/lnYhnYw/og37uBz7dn+/HBwWwRmjEP/jimdgxS8Q9kol
         6dmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ai7Fb6Qc;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id r11si71738pjq.0.2020.03.10.05.32.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 05:32:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ai7Fb6Qc;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id b22so5367478pls.12
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 05:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Z/iHICj995ZPm8eWC4YCMC623t0mydx9E30XjZ8RGRU=;
        b=Ai7Fb6QceIIH19OAmq7O5CdPg8u9glOlGvDHyfElINQuweGpRiJIDMoChTAqM3FlJ+
         LHbkMCmIHqbvZI/DPBEvFpy4Gdw5ZdSFB7O6eEbm/tSVFGhhwp0YngUvsj9s5w4uMFkU
         Rrizb6fAu9xD0lbDTEvF9rfTQRJkg91UIPTA615EMr1osxYdIS/va5TtPYtVDDFR6AsW
         9z24xwDuqhk5sC57pGYAN8urafrorN2CCGto9+zxPub/JrzwZR5R3l9uytVXqfwl9Uu1
         T/6VfmCaSSdFmgOBv0O0fqc3AY2P6YxUYQ1uOLHdJZdvIkQWgQkR2oYYPx79Thu3mtPO
         i9Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Z/iHICj995ZPm8eWC4YCMC623t0mydx9E30XjZ8RGRU=;
        b=es6ijQ2hQtD/djHd9dIyfmN9m0+oiyhOik175ZWla4KF+r0tS7PMQhCeQL8Mq2BbO9
         jfyeEFQCBCyWmWrNTs3wthm8YnHiD3DiwTgm9r37+1BUnEXIYQsTmcYX4dS+I3Wtrzgm
         pg3uD6mu8wcPQkBnWrLy6HKLyyYlxUtrKMjpZyfiXwmqA9SgF30LFwFRmFm/uMderEMv
         QZoBGH63A1Yr0Nkv7ZL+uXjd91oIDA/l6g9TKDtpaF93jOxJZ92Il5TiUym7Vi4CS/+Z
         SN5XImwx4P4ZArrLA6zp/0qiCT9id/jZA/HMQMxvrDzX2U0J6nA+K6SqjE/xPuBpnBOY
         H13A==
X-Gm-Message-State: ANhLgQ1arcxnugALEjkptdywQlKKQvtC3P9AyC/1+vjOOyAhaVXmyM12
	6kVIcmLDcXQ4JGpUThaTyWE=
X-Received: by 2002:a17:90b:30c2:: with SMTP id hi2mr1489992pjb.7.1583843556586;
        Tue, 10 Mar 2020 05:32:36 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.47.39.119])
        by smtp.gmail.com with ESMTPSA id u24sm46442853pgo.83.2020.03.10.05.32.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 05:32:35 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH v3] [Outreachy kernel] staging: vt6655: remove line over 80 characters
Date: Tue, 10 Mar 2020 18:02:28 +0530
Message-Id: <20200310123229.2424-1-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1

Reformatting code to not have lines over 80 characters.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
v3: Change in patch description.

 drivers/staging/vt6655/mac.h | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h
index c7888c4e96f2..eb56e16637f6 100644
--- a/drivers/staging/vt6655/mac.h
+++ b/drivers/staging/vt6655/mac.h
@@ -884,9 +884,11 @@ bool MACbIsIntDisable(struct vnt_private *priv);
 void MACvSetShortRetryLimit(struct vnt_private *priv,
 			    unsigned char byRetryLimit);
 
-void MACvSetLongRetryLimit(struct vnt_private *priv, unsigned char byRetryLimit);
+void MACvSetLongRetryLimit(struct vnt_private *priv,
+			   unsigned char byRetryLimit);
 
-void MACvSetLoopbackMode(struct vnt_private *priv, unsigned char byLoopbackMode);
+void MACvSetLoopbackMode(struct vnt_private *priv,
+			 unsigned char byLoopbackMode);
 
 void MACvSaveContext(struct vnt_private *priv, unsigned char *pbyCxtBuf);
 void MACvRestoreContext(struct vnt_private *priv, unsigned char *pbyCxtBuf);
@@ -913,7 +915,8 @@ void MACvSetCurrSyncDescAddrEx(struct vnt_private *priv,
 void MACvSetCurrATIMDescAddrEx(struct vnt_private *priv,
 			       u32 curr_desc_addr);
 void MACvTimer0MicroSDelay(struct vnt_private *priv, unsigned int uDelay);
-void MACvOneShotTimer1MicroSec(struct vnt_private *priv, unsigned int uDelayTime);
+void MACvOneShotTimer1MicroSec(struct vnt_private *priv,
+			       unsigned int uDelayTime);
 
 void MACvSetMISCFifo(struct vnt_private *priv, unsigned short wOffset,
 		     u32 dwData);
-- 
2.17.1


