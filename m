X-GM-THRID: 6666820090157072384
X-Received: by 2002:a1f:7244:: with SMTP id n65mr10852995vkc.0.1552240016708;
        Sun, 10 Mar 2019 10:46:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:3c47:: with SMTP id j68ls2372815vka.2.gmail; Sun, 10 Mar
 2019 10:46:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxvaYab/8JCPbxs3+jCOR/DiQ7s1cHtjMj0yOHmUhX5wHJvWe9PX3R+Zk5u/YAymWxcu5IK
X-Received: by 2002:a1f:1b82:: with SMTP id b124mr18273505vkb.11.1552240016084;
        Sun, 10 Mar 2019 10:46:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552240016; cv=none;
        d=google.com; s=arc-20160816;
        b=XDeXhTkgtiCadBh3u/Eyu33aEyapPsFVBk+5Zrnr1l63ClgH494TXu+DyEKy86jCwz
         0LhTjfJ23WPgj3K+tPRMAbPyPJA3276o0o/NjWUVc17uQ0HggiAm4aLkZR1o1Y0Xxtdd
         GHpJPm+JPeE/evn4isrtoF6fh2T5mOmrlvqvy8Vi2Y7NY813jlq5gtnDBhTplD4CtQuK
         ptTb27gh8+Uo6YzuWVQO1xHdcmTXkda7C99lFXniOLQNpJ5XRJ8BKov9Ci5QYyfe8zjv
         m2kQIukU7MprinQ3LQRP2sXYXKCbhaELYYLokR4kRwXeaSnJmM2HPowmatUHR7zzLiz1
         ef6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=6JCZdoSwYKcfwi60ZydARMtNjPgtM4TjCIvL+yFgpgA=;
        b=JfVIND+avNAo0tpmfcQClfONDlNRitpGV/xU6I7VEL1akdHyjMTLvQMJCyKH92+Q+D
         Kdw4AQDUcpAF+n6Z24v4m12AQd1goDSWm4iF9bPAmf2Qu2l+ADWuHZu58xsuIpnBXQ5H
         6JrJjHZr2RrixIVLFSTcfiFlwGqpaP/kJzgCurPWwIoh9PMuVCV4XFad/MBsjOlbIR2t
         s5bm+Eni7wFWvav/s0x08nXq7fFHgRpBPly3q6sE43eHTv3CPXqo9c0SfDt+h7KF8nvO
         2HzezHGdorTljSq4eYrGpVNJkNWkTQ8NTlxABzWw64URyNfG8aW8AVkypGV4z90WmCqK
         Shhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O5dBzixm;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com. [2607:f8b0:4864:20::431])
        by gmr-mx.google.com with ESMTPS id q85si117646vke.5.2019.03.10.10.46.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 10:46:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) client-ip=2607:f8b0:4864:20::431;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O5dBzixm;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x431.google.com with SMTP id u9so1963856pfn.1
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Mar 2019 10:46:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=6JCZdoSwYKcfwi60ZydARMtNjPgtM4TjCIvL+yFgpgA=;
        b=O5dBzixmy/qUHQXXuCnn3oz9vFsGAP8l7xmV1WYD5u/BKuKFlL4tN8pHV/u1KsyZMk
         XOCZASla2fI98vv7cyQWK/2suSSml9w/a9NVoOD8MbIoZlk0Gefv8WMpTpT9xS0dZRIk
         URX8YDpzsmVLHEjLoiOZYltViqjibrJvZOqyQuxK2W0Q6PnXu+PCrf0F/6cExJvPNxMQ
         gQ+ZsrKtsUf8RPna3UlkoDyiUsrjqB2+kOurstSU8e2zup6vgLy2DXpHjovycALdrETR
         d5lh4P4+k2HPpcElPOASSVXjZdcDgJ3jpWuuJcfftoSxaOZoPt5Q4iZh6F5ynyZJnPi2
         MMqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=6JCZdoSwYKcfwi60ZydARMtNjPgtM4TjCIvL+yFgpgA=;
        b=rRx/mcu5DVxKVm0KvLI9x2N02PlQ8Oi0/3ncvMPrpLItplOrGneTY/k65i0mkTtomu
         pagGQJHS/jjlJ7pOe4WtevjS5G9dN+dHCVup9Ighf4lylWTQWWIG11NmLqd0Dku3mntM
         uxlQkEQRznUNyg9YHflZ0UMTKLiLVa1d2EhlaBNtf5MLCRa2QviqHKPB+LuOkiluniC7
         AAtMzbYk3PF8CjrYxKxOZ38Oo1/6yLVWa5tgDKd6LGckHILi0XbdQ8F7qgBa3yikZJf4
         429xC2yCrQPH1AlaMCfQope7FQfao5e3VrPxDGxCPyJyoDK2XPVIbo0xvIwidw/5bfzH
         fCmA==
X-Gm-Message-State: APjAAAXFSod//CY/jtlhdtzmBzkyLn2cEmRBlCOsGmneUWNyt7+Vah7k
	KmJvQrqqAXMhDmd1fFvnFhwKp1YUY5M=
X-Received: by 2002:aa7:81c5:: with SMTP id c5mr29877105pfn.217.1552240015492;
        Sun, 10 Mar 2019 10:46:55 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id h184sm7340275pfc.78.2019.03.10.10.46.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 10:46:55 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 3/5] Staging: rtl8192u: Remove typedef for struct _RT_POWER_SAVE_CONTROL
Date: Sun, 10 Mar 2019 23:16:33 +0530
Message-Id: <20190310174635.16923-4-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190310174635.16923-1-bhanusreemahesh@gmail.com>
References: <20190310174635.16923-1-bhanusreemahesh@gmail.com>

-Avoid typedefs for structure types to maintain kernel coding style.
-Remove typedefs RT_POWER_SAVE_CONTROL and *PRT_POWER_SAVE_CONTROL of struct _RT_POWER_SAVE_CONTROL.
-Change Structure name _RT_POWER_SAVE_CONTROL to rt_power_save_control to maintain Linux kernel Coding Style.
-Replace occurences of _RT_POWER_SAVE_CONTROL to struct rt_power_save_control.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 735e86cc6adc..152854fc09f8 100644
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
@@ -1878,7 +1878,7 @@ struct ieee80211_device {
 	//added by amy for AP roaming
 	RT_LINK_DETECT_T	LinkDetectInfo;
 	//added by amy for ps
-	RT_POWER_SAVE_CONTROL	PowerSaveControl;
+	struct rt_power_save_control	PowerSaveControl;
 //}
 	/* used if IEEE_SOFTMAC_TX_QUEUE is set */
 	struct  tx_pending tx_pending;
-- 
2.17.1


