X-GM-THRID: 6663286701018841088
X-Received: by 2002:a02:9c16:: with SMTP id q22mr1569957jak.13.1551417362944;
        Thu, 28 Feb 2019 21:16:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:8154:: with SMTP id f20ls3229059ioo.2.gmail; Thu, 28 Feb
 2019 21:16:02 -0800 (PST)
X-Google-Smtp-Source: APXvYqwQbMZVdZqH18FnYV2nYfL5hab6JTFh+kynLwtewVMqXnSdxX+0aLoA3zCOdMBY/pE/EzJN
X-Received: by 2002:a6b:db0f:: with SMTP id t15mr1797458ioc.29.1551417362452;
        Thu, 28 Feb 2019 21:16:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551417362; cv=none;
        d=google.com; s=arc-20160816;
        b=ySQULPLl3FyaoCvXTRcqd5f9qGsdMN3uM4f6Mqo/cdthb+o34+eACzKVnAnRffLjsB
         Akx0sdLzQrO4dT8h8Jz7+mgHgR+5sJWRC+n6Z0Ght0zjE0BJtHKFlmicadr/b++2BtMc
         JOHDk21yavSP52RjPUYLCEFgdaGuGQQGkR9Cw60/Ng1s+0LQxGhfXscPyiGxXnfhCN71
         JAtbJU53oVk1ciEnKT2jA6sbb7X7kybTjCG0s9FyF0bOi7QHwFUwRx2y//JcRPJ9XCFV
         DsonS3Jk7W6DipJ570XXMkPW+/aIrZ2p+tQ5Ue0u8/Urbg9qtcBnVfkbpxo2hMe6m3GM
         2GVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=BLgazjte3OHLtCh2FOancvm2MClVKLMbrKdHtev+2Hc=;
        b=uu0cQS58JQigCBL1xszbqSKkkrB6eq3RzzP9YbrWMrN0NttLGXwi5frs9sv0oVMPfK
         +o7S+MhLkCL22U4vQV2o/8BgabldZDPoPRRALUMvFLHvFIAH18epZaJr5peqxG6GzYqk
         gt47P9WuzfCByjlsicG44Ah/1t7haUqfjkM/zdy8XJrLB8ucvpAWVZyFMDagUKRg3MSR
         sVVkmHoge09xveWHdyNp6OhqClBPS6EngwNf28kC95+BC25TEEjVikz+6E67zq8UueIa
         0q4QklbyKuAIMBoyEZPleySMgujmP4+Qkj8Bj1WjtB5lTCzPTpnQ1KcKwHdU8MbMbwGm
         crXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IwL9wuGu;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id 185si131046itw.4.2019.02.28.21.16.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 21:16:02 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IwL9wuGu;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id r14so10876990pls.12
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Feb 2019 21:16:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=BLgazjte3OHLtCh2FOancvm2MClVKLMbrKdHtev+2Hc=;
        b=IwL9wuGur4ESu/NqbAtg/ABG01jpd2ZCcPlnTiIeYxlWM5fTXmUbSl+7hz3L+e2HRJ
         tpcVC0Z23a6KtID1QxnE2PuDISkBvrMrruOM4bVJWTeCI38YGchlySA1vyu6DHsWHlj+
         vy1fl1Qcbbr0jyLk91ydDUK3NLKDlenNWGKv4tKG3rTNjRG9nK7VtMhE+uz8DL1f20Lc
         9c//WCwWRlYgvqSwxjKdytMX8ojh3CqEbeby5EU/eNjtpe/ZrmDG1eJa7MvO5vORVPKR
         0x2NCt8EbYLTyEP2FE1sjdv8K9uhr8mbyAVhCcjPQCaL5O68dBXhIrxwRxdcz+8diAj9
         t3kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=BLgazjte3OHLtCh2FOancvm2MClVKLMbrKdHtev+2Hc=;
        b=G3z7OwScIfoxNRXlAixLY44AAq5guFkbAmDOPbtaafwqFioXd/xgNfmZSVXPYEyPkM
         8n9Uo4iQy3fLk8sTzxgBN9MWvuGPRkwC6N7OtzAn9hBYYUtNVuy5jDHiaYuAaE4qa/B6
         QKFlljlG7aFZ1U37xNKWyKMndZxIsnnV4f0Qpn28DrHAC7kChZ5hG5ducYoM+6pO71HL
         jEVWHZVzet/DvnokvhFKl4UzwpdjgRWbrL527mfTJlgpgt/guPQA2VkemQXqgwXv7frn
         n5Dy4qrAIec527EE48MzS92Tup2z1+zcyExyY7d9/QjLyUxbuLAsIh5wZhGR25aV4lDi
         Y5Nw==
X-Gm-Message-State: APjAAAXQ3rnjLfnFOCyzyuGaH19653KBoMjHmAkat0agImKTB8T1FDVr
	QeEGwY1cKi9yjlfa9yOBARcxzPJV
X-Received: by 2002:a17:902:e00d:: with SMTP id ca13mr3537166plb.206.1551417362063;
        Thu, 28 Feb 2019 21:16:02 -0800 (PST)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx.daiict.ac.in. [220.225.53.35])
        by smtp.googlemail.com with ESMTPSA id e14sm9543231pga.61.2019.02.28.21.15.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 21:16:01 -0800 (PST)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH 3/3] staging: rtl8712: rename bSuspended to suspended
Date: Fri,  1 Mar 2019 10:45:05 +0530
Message-Id: <20190301051505.55407-3-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190301051505.55407-1-himadri18.07@gmail.com>
References: <20190301051505.55407-1-himadri18.07@gmail.com>

Fix checkpatch.pl warning: Avoid CamelCase by renaming struct variable
bSuspended to suspended.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/rtl8712/drv_types.h     | 2 +-
 drivers/staging/rtl8712/usb_intf.c      | 4 ++--
 drivers/staging/rtl8712/usb_ops_linux.c | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8712/drv_types.h b/drivers/staging/rtl8712/drv_types.h
index ac00aa64c7bf..855d22603420 100644
--- a/drivers/staging/rtl8712/drv_types.h
+++ b/drivers/staging/rtl8712/drv_types.h
@@ -147,7 +147,7 @@ struct _adapter {
 	struct mp_priv  mppriv;
 	s32	driver_stopped;
 	s32	surprise_removed;
-	s32	bSuspended;
+	s32	suspended;
 	u32	IsrContent;
 	u32	ImrContent;
 	u8	EepromAddressSize;
diff --git a/drivers/staging/rtl8712/usb_intf.c b/drivers/staging/rtl8712/usb_intf.c
index 674c31155cdd..7478bbd3de78 100644
--- a/drivers/staging/rtl8712/usb_intf.c
+++ b/drivers/staging/rtl8712/usb_intf.c
@@ -196,7 +196,7 @@ static int r871x_suspend(struct usb_interface *pusb_intf, pm_message_t state)
 	struct _adapter *padapter = netdev_priv(pnetdev);
 
 	netdev_info(pnetdev, "Suspending...\n");
-	padapter->bSuspended = true;
+	padapter->suspended = true;
 	rtl871x_intf_stop(padapter);
 	if (pnetdev->netdev_ops->ndo_stop)
 		pnetdev->netdev_ops->ndo_stop(pnetdev);
@@ -220,7 +220,7 @@ static int r871x_resume(struct usb_interface *pusb_intf)
 	netif_device_attach(pnetdev);
 	if (pnetdev->netdev_ops->ndo_open)
 		pnetdev->netdev_ops->ndo_open(pnetdev);
-	padapter->bSuspended = false;
+	padapter->suspended = false;
 	rtl871x_intf_resume(padapter);
 	return 0;
 }
diff --git a/drivers/staging/rtl8712/usb_ops_linux.c b/drivers/staging/rtl8712/usb_ops_linux.c
index 8df308df35c6..9d290bc2fdb7 100644
--- a/drivers/staging/rtl8712/usb_ops_linux.c
+++ b/drivers/staging/rtl8712/usb_ops_linux.c
@@ -221,7 +221,7 @@ static void r8712_usb_read_port_complete(struct urb *purb)
 			padapter->driver_stopped = true;
 			break;
 		case -ENOENT:
-			if (!padapter->bSuspended) {
+			if (!padapter->suspended) {
 				padapter->driver_stopped = true;
 				break;
 			}
-- 
2.17.1


