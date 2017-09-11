X-GM-THRID: 6463828664038457344
X-Received: by 10.202.0.193 with SMTP id 184mr7009661oia.124.1505151714739;
        Mon, 11 Sep 2017 10:41:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.144.9 with SMTP id s9ls4564491iod.28.gmail; Mon, 11 Sep
 2017 10:41:54 -0700 (PDT)
X-Received: by 10.101.74.130 with SMTP id b2mr7528474pgu.53.1505151713975;
        Mon, 11 Sep 2017 10:41:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505151713; cv=none;
        d=google.com; s=arc-20160816;
        b=jUj0/ob+SbcH4lsSnNcdYJ8t/xJeyqC1fgg4fKAlZrWPG+T8kai26T2tggmueDhjEv
         YcUvYOhYoS+rkaRcVIXoAzbgjholeS6rr4LfVwHKnFlzB3MPr8IRCHb9+/+9vSyhF45D
         S+kzrTlxn9ynyCgNecBW2HDmebzyw/0QWbNdHjXBe4jUx4k1R+NFDfGr5ek/FVtgwel+
         ZD2AG8Gbj8AD43c3FNRtwzSAm3WvfXcZOTuDTC0Hprg6Lx+fLEFrxOyhiCrXNaF+P636
         JKWqgg9Yj7nWK1TmqtG3HBfpSyWcsGO3/Ta7ZrRpS41LSvwgfX1S723gryYLT2zJ7BwG
         joAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=1Au86vsTBs1EM4mcqzL/NrcTgs3FSMCRwqOEoSf7dd8=;
        b=1D8VigUNuS5bq3Fc9fBbZzni+ovkIu8wjWe0zhklbyFboHEm6D2zYj8f3xeCY5fcFB
         ZV7u26iw3yLcC8ACF6YWsu7GMqJ/ukUbRdaAKWWmTaW0j78r99uXrwoma5kdHLGaQnCP
         wWlCf8bbJ2IkEtiE2tbZguokck2qbIVKFXQQxUY998yqsXmUtjapYfva6wWxbflf6uI3
         mL999CYSR0rjN/aOwn7pJo1LFbrlsCu/oWAo8Ma0gk2NAE+081NCf8T+LWWbQwuBh32A
         wN+6jK2coUFR65KyT2Edts8aN9RgXg7lqdrQaMxCR4dYMISP8WmAx+uey0JAJ8yikKbm
         gbBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lmp0VPAn;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id f191si331555ite.7.2017.09.11.10.41.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 10:41:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lmp0VPAn;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id i130so2946194pgc.0
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Sep 2017 10:41:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=1Au86vsTBs1EM4mcqzL/NrcTgs3FSMCRwqOEoSf7dd8=;
        b=lmp0VPAnJin2wx+GfvrqdjKy3nMUtpVU8aL2Bhsg7+Neopem1tAX0c2hmadYFME7KX
         pdGYQoilF2fwbqWyVchn7PbtMxPW0+hMr3aIt3CGvqX/OEUz2QXc0ZJsOnpFgsel7S4D
         97sneqluScF58q3YyY2Qr4s91bXHeMuZdYu50gQlvqfW6HlyyCv4ZcOzmhXj8saQWVzr
         cwuvPJhhaEYjudZivghSOIhFzNi0jqYepxDjUdRnogC3d7y0L7uOFUYjoiELQwOnLbL1
         CPFcuQWDPnv7CphmJ2z9PBk90j9o69bKwh5fzrX1IVDrp+4bCRhvIIgluTaD4L16M1mV
         r7+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=1Au86vsTBs1EM4mcqzL/NrcTgs3FSMCRwqOEoSf7dd8=;
        b=OrzbAiTj/pX8TIa7n7kyikFOwogIDtUQZ8+l8eBapNGc14zxnLAQViRgXRlIN1NSJQ
         2hS31eeEMmu1vZGZY1YO1nsG3JmPbifKPYU9g9Mr/KCmcsrxMytdzUu4Q5+pjmwAUqBe
         nPX93qFUT7Ae8UX/5UUGb65yCDfy3BSE9kFFeateQyYjsF4++gw88FCBEBNPEIwsuk6F
         SmMDJHqL7NtrlfSLgkAc/fTZDMYmSeeq7cG90MCPr0o9MBez5pCtOrMzywA+xDJ2LNLJ
         LVH6ZC0k5XC7CB1lhh0rRN4Ov9xgc76t0omQKiZBAPUV5RLBc77zEQ7KaXeZQjSWabeC
         VK7g==
X-Gm-Message-State: AHPjjUhqG8jAa6TeIlIL8+XzJZQC1tc3MoWG3pcGtHuxkgCI6f+lZUuv
	zxE6rp7rGlxV4A==
X-Google-Smtp-Source: ADKCNb6Za6LhQ5Vu5V3uykWDwvram/ZNrQ6MibLPGH5g5AsCLC8z0/IQ9at9PkMBgH+C8lwjEU96TQ==
X-Received: by 10.98.159.140 with SMTP id v12mr12597865pfk.142.1505151713472;
        Mon, 11 Sep 2017 10:41:53 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from harryPotter.iitr.ernet.in ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id s81sm18104444pfg.162.2017.09.11.10.41.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 11 Sep 2017 10:41:53 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH v3] staging: rtl8723bs: Change coding style to (foo *bar)
Date: Mon, 11 Sep 2017 23:09:51 +0530
Message-Id: <1505151591-2378-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

This coding style (foo *bar) is more common for the kernel code.
Change foo* bar to foo *bar.
Change foo * bar to foo *bar.
Change (foo*) to (foo *).

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
Change in v3:
 -Rebase against staging-testing branch
Change in v2:
 -Updated log message and subject
 
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index b3635e2..f509713 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -142,11 +142,11 @@
 #endif
 module_param(rtw_qos_opt_enable, int, 0644);
 
-static char* ifname = "wlan%d";
+static char *ifname = "wlan%d";
 module_param(ifname, charp, 0644);
 MODULE_PARM_DESC(ifname, "The default name to allocate for first interface");
 
-char* rtw_initmac = NULL;  /*  temp mac address if users want to use instead of the mac address in Efuse */
+char *rtw_initmac = NULL;  /*  temp mac address if users want to use instead of the mac address in Efuse */
 
 module_param(rtw_initmac, charp, 0644);
 module_param(rtw_channel_plan, int, 0644);
@@ -456,7 +456,7 @@ u16 rtw_recv_select_queue(struct sk_buff *skb)
 	return rtw_1d_to_queue[priority];
 }
 
-static int rtw_ndev_notifier_call(struct notifier_block * nb, unsigned long state, void *ptr)
+static int rtw_ndev_notifier_call(struct notifier_block *nb, unsigned long state, void *ptr)
 {
 	struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 
@@ -619,7 +619,7 @@ void rtw_stop_drv_threads (struct adapter *padapter)
 static u8 rtw_init_default_value(struct adapter *padapter)
 {
 	u8 ret  = _SUCCESS;
-	struct registry_priv* pregistrypriv = &padapter->registrypriv;
+	struct registry_priv *pregistrypriv = &padapter->registrypriv;
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
-- 
1.9.1


