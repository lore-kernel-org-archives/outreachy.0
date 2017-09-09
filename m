X-GM-THRID: 6463828664038457344
X-Received: by 10.129.46.70 with SMTP id u67mr4327860ywu.230.1504977388729;
        Sat, 09 Sep 2017 10:16:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.81.11 with SMTP id f11ls1872951iob.1.gmail; Sat, 09 Sep
 2017 10:16:18 -0700 (PDT)
X-Received: by 10.98.79.157 with SMTP id f29mr3523364pfj.13.1504977378661;
        Sat, 09 Sep 2017 10:16:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504977378; cv=none;
        d=google.com; s=arc-20160816;
        b=aM0QW6e+7g3cWwS5EFIuO3cHoijfzSU0ugAQMmujgHdek715VO74CyIlwPqYRFw0ta
         w+lMGcB3jT3+7MWYhMFP4E+gGSH3hSers6rn+TmUJ0SaMp/LRiZGxzykfPr5oDMURPTr
         dUcuvupuXqjFibAm8ACozW9SZqqEXJY4ETz5ZKZ4vdD9l0Jyjux5VZgMFtIOVMzhvwW5
         jZh54ov0/cuOFLKXn/YBxzv6B5ed7GJoDMwt6u8hqLOetjpg18tkLTw+qGutB04FmWr/
         rtIREL0NuAZRhzInQkUCjD0HR8NuPv+xnXK6yZo1ak3sxgv0XD3LCjG0FSV7+Sp50P++
         Krsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=DEfRY6MRndWPMF4IZOroqVDIdKBJN4EsZlTc5lxj9z8=;
        b=sWVFL7gbsIZV8PW1FoLoVZDqyAcBVVBSfT1nVw22K3C5GHAydw0/FOcNs53DG2qIUv
         Iu54zN3lP/Xgcp9bq/h//wqoLSweiwjL5Aw/bU1lnhZphEQat1sojQf1eNTk4XUMbnhg
         xmtCiJOCp/03HqtJcfjd1i4Ehy5tu3AMCof1vVLyHT9jFlKd7/Ip/T5e/QU0CC4xu3gV
         HWkiZSptHS2zZB/g9B0uJm6pS8nSf8LeiFUWr9lFAGOdo7Tgjfm0zZLc9MjBLApsjZ04
         FgfJ1egvYYQbbWdQ2ab9QYA+FclwlbG1JmL6DJu5V7tFeGgqreYmbv5klj1uN/YH8Okh
         kj3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gT5sqghg;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id j20si516919pfa.18.2017.09.09.10.16.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 10:16:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gT5sqghg;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id f84so2970763pfj.3
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Sep 2017 10:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=DEfRY6MRndWPMF4IZOroqVDIdKBJN4EsZlTc5lxj9z8=;
        b=gT5sqghg28nHOcoktnQY0QSVCNaqaUmZoqqqcn2ZkGRfueNEertGwDYiWiRPUWFS/H
         l5tUL3vsjiCg/2wG53M+5rlVl+mokkHlfkEhQgGedgJef6/ith4JXAMLr9GpAGebPKJQ
         +sf3kFfuiOMO0KzH0jcnRhHsb45ildYf8vYHVKwk6gJ07UJe8VcAD/tYaA2kmY0hnzWe
         LoiYIMalmDLxnjTD59y4On7MqisrBYW9qxKaUjB7JZ31+14WS6fCsEosqqd8JLbmU8su
         eQfHPaz+J6qpoHnBeKsoCi+U48GC6uk+RbhDXrMhqrlkdc6RKAc/EDGkMLHE2iSJlKkz
         q5FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=DEfRY6MRndWPMF4IZOroqVDIdKBJN4EsZlTc5lxj9z8=;
        b=CkhWLak/tx2mBW/HD6JerBQed3rplgT7/+sIdVW0yw5Jp0F/2YWa8okWDfe9Z0CvPc
         Voss3IUni4m0jBQxCakQo0NFJRmxQxDcrdV9SCGhRO3ao4li/4Vys42GkCGjbGAjo6fe
         eKkeetdSkDW7LAI4ElP21RK+mLuaGC7+EEyd/cTAb0X3HiG5+cHw8iZKbxM71RKv+UOG
         GYgcer0FFXWHY5x7txrEt0ZXRyku7w+h/Vsm8gw5w+y4aQarDPgcfpWL0SfLaywFkuLB
         BlTteSOAREKFzPvrkKy3VSrpT3KNt4OJuMLLkhkdLMZOh2C+tvRK3Mh/WoIKg52OfB7H
         KuBA==
X-Gm-Message-State: AHPjjUg+KrEqKyCugRZr0/wpr0dZkPtkVg4MhO+CMGqEldU63wAQjokg
	ztZrwMLJsobqKw==
X-Google-Smtp-Source: ADKCNb6vfoRhbcVcyu4FVhawleIUCxqBV5jZpSf9HuIaDs848Ew+viiZPjAz3SEROTwpz1QsrVZCSA==
X-Received: by 10.101.82.8 with SMTP id o8mr6612056pgp.261.1504977378401;
        Sat, 09 Sep 2017 10:16:18 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id g76sm9016400pfb.12.2017.09.09.10.16.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 09 Sep 2017 10:16:17 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH v2] staging: rtl8723bs: Change coding style to (foo *bar) 
Date: Sat,  9 Sep 2017 22:43:36 +0530
Message-Id: <1504977216-12686-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

This coding style (foo *bar) is more common for the kernel code.
Change foo* bar to foo *bar.
Change foo * bar to foo *bar.
Change (foo*) to (foo *).

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
Change in v2:
 -Updated log message and subject
 
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


