X-GM-THRID: 6463819726342586368
X-Received: by 10.129.216.77 with SMTP id n13mr4173737ywl.159.1504975307310;
        Sat, 09 Sep 2017 09:41:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.222.13 with SMTP id v13ls1726563iog.40.gmail; Sat, 09 Sep
 2017 09:41:46 -0700 (PDT)
X-Received: by 10.202.229.129 with SMTP id c123mr3601431oih.114.1504975306545;
        Sat, 09 Sep 2017 09:41:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504975306; cv=none;
        d=google.com; s=arc-20160816;
        b=NOlDgZj2LqcXR1H9hBUDrtQfoZp1m/JWrnY8NxcuU9Uf7KjS4GCZrILEkzrddZsN/D
         OKfTSXJMj0xIubRiMZ8u91pKRfp+nHjwhUYvEjPh4AnOpBf3rxtFYKjbmw8XmQxP4BPG
         gmKbFE5KCaecUyAWE/Qccfqz6KDcxEgGRplWkNyM3/ejTQSJ4t1arSuiU9N9SY0WSFul
         IDZ1FZZhHU2gK/DjfzavO0KoTwIgtsuHjwtD1aO0adp8PKmuMGpPNz5ncreI9feyvyAW
         B3VE2Nc7658aXiq49De8QKIVi6bfxmX9WhLu1iyfJC76ssWs5wBFI5EwkNMFiyv1IX6v
         Gk3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=FeXK/7pyJH+1VscdgwnJyD101W6cUlGRngm6pbXqmoI=;
        b=oM7ltD2kmcOebhKg/qP9XzzbaHN0LzmReDL8d/D6MkVgfi/xVFREXXg0Jxe9kcWs/N
         qgmO+OOl38gMxxdTr7hblTChSTeKbmR+HyUF1yi+AktUu/XoXF0SF4ycYhYPtGTOM5lf
         15l9Tu6q/Q7eZwQ/OLIOH53aSVbYwqRbPclBi7v7eTant+UkCpM7nAnX8TrDwcmN9uzY
         ievrtWluUOM7Py9XfXH0C4eB281MiuL1Eatb40gglpiLrqyNasXpBEFfFFIxFFgI7p8s
         +Z5U87D809MjM5jbq6JgVXE3JT8PdeHIQy8HpzjH9qvmD+7XIZbLJSjxpI8vftWnEQIb
         AFqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IsXyqXYm;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id q65si507585pfj.8.2017.09.09.09.41.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 09:41:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IsXyqXYm;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q76so2933432pfq.5
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Sep 2017 09:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=FeXK/7pyJH+1VscdgwnJyD101W6cUlGRngm6pbXqmoI=;
        b=IsXyqXYmHGmuSB+/MNGk6eTbfkHetobbCG1NaZiIIStX3BcbHz66VCgUq+1at5Bauv
         2hppnI+8H0DL+hrTOCY4hg/xHvfUpsFwtaNx1hv2hcBECZ85vT5k+lG7zATovDQBD8I3
         atg/22DMgU1U6rf1sBqFuGY7M1vUKrlBucTe6lCVNvCLhJr7SFcWWaED29txGq+Dr5NK
         LU6R3sKtCIFxfIPCNTzQfBaBGUGr+7mlRdPyD4MaEfvsemaoZ8nTt7OZqG0iCBF/4CHw
         36qHL+ZOkpYz35Bn8ChggXgX173viGGZ8rD6e55I/9s1wRhZoxl4UwnuK8x2QDMuZ6se
         rxzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=FeXK/7pyJH+1VscdgwnJyD101W6cUlGRngm6pbXqmoI=;
        b=NnfQ+PCKr0OX9xJ06NnPMXWPSFaERXyTDy6BeyJmT/TC0zCB/XkS7IE6zPJtbJFnOj
         6A/PfZKFQxIClb12n7IM4pAcT/gzOayS2Xg+nWJy4i8xk7BckIDWka63rEuRKkQOaesy
         gVzuWC3d9BScVTEvCnANZRLlD1cizmxeuUe+tr7Lq4moEXF0Mf2HEKp+NJm4aCnK2wsR
         VDUsKH/vso+TmG4thR3trqUCaDqen6JgL+cCyuEowPkeKkRSJZXuYtXNhX9Q0rPjmhbw
         igKizSxEhEAYJAPqFGe3yEFnmnR/S8LozGxXU10vnzE3HsZT2EKl9E43M9cM4hsCYk5Q
         SxEQ==
X-Gm-Message-State: AHPjjUiNBIvOm1NYcau+5FFhymTeFBknSGuCgTStSVuRc7n+I5yXqkb9
	tpvUa7oJtfiRhg==
X-Google-Smtp-Source: ADKCNb5JItDFvPzrzvLGO0XNe9hSs2lseMsXWPhy1yzzK8lKjxiwtjANPTcMuMatTmDwomCNe1RyoQ==
X-Received: by 10.99.55.2 with SMTP id e2mr6618886pga.226.1504975306139;
        Sat, 09 Sep 2017 09:41:46 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id u8sm7301354pgq.52.2017.09.09.09.41.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 09 Sep 2017 09:41:45 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] staging: rtl8723bs: Change foo* bar to foo *bar
Date: Sat,  9 Sep 2017 22:09:37 +0530
Message-Id: <1504975177-11843-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

This coding style (foo *bar) is more common for the kernel code.

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 0215899..a82804b 100644
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
@@ -460,7 +460,7 @@ u16 rtw_recv_select_queue(struct sk_buff *skb)
 
 }
 
-static int rtw_ndev_notifier_call(struct notifier_block * nb, unsigned long state, void *ptr)
+static int rtw_ndev_notifier_call(struct notifier_block *nb, unsigned long state, void *ptr)
 {
 	struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 
@@ -623,7 +623,7 @@ void rtw_stop_drv_threads (struct adapter *padapter)
 static u8 rtw_init_default_value(struct adapter *padapter)
 {
 	u8 ret  = _SUCCESS;
-	struct registry_priv* pregistrypriv = &padapter->registrypriv;
+	struct registry_priv *pregistrypriv = &padapter->registrypriv;
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
@@ -691,7 +691,7 @@ struct dvobj_priv *devobj_init(void)
 {
 	struct dvobj_priv *pdvobj = NULL;
 
-	if ((pdvobj = (struct dvobj_priv*)rtw_zmalloc(sizeof(*pdvobj))) == NULL)
+	if ((pdvobj = (struct dvobj_priv *)rtw_zmalloc(sizeof(*pdvobj))) == NULL)
 		return NULL;
 
 	mutex_init(&pdvobj->hw_init_mutex);
-- 
1.9.1


