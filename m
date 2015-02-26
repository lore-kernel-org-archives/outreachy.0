X-GM-THRID: 3599576858624
X-Received: by 10.180.13.195 with SMTP id j3mr273576wic.2.1424937176309;
        Wed, 25 Feb 2015 23:52:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.179.4 with SMTP id dc4ls992lac.73.gmail; Wed, 25 Feb 2015
 23:52:55 -0800 (PST)
X-Received: by 10.112.189.227 with SMTP id gl3mr1088244lbc.2.1424937175631;
        Wed, 25 Feb 2015 23:52:55 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wg0-x236.google.com (mail-wg0-x236.google.com. [2a00:1450:400c:c00::236])
        by gmr-mx.google.com with ESMTPS id ew5si63856wid.1.2015.02.25.23.52.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 23:52:55 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) client-ip=2a00:1450:400c:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x236.google.com with SMTP id l18so8344764wgh.7
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 23:52:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=OWyhN9ZWMcg/kMaPIJYRyZ38Gblj0pdsom4rn8Moc8I=;
        b=NImHUnaNgkG/4mSShTZoxFj0ESFWw3Aa9zJ5HRmFWz6XyfcBsbCscVFntwn7RY56jN
         berKIS2kN4ClY20RAg2Ctyxls2RF2+yqdFWWu5uaVf59E9CxUtoBccNOIbvj1GM0PlY4
         +yBlEJbsMvk39xmy+brnatHae6LU7jor8i2zRg1fmG4sVXxtZT3vhRetHz+SN7Hq4o4I
         OyGwavTHk+RHK6IFLD7OHUpdY0JzgR1PJtCda0CcLfJ82xcYJ+6fQT6wUJzfM8nqH41i
         uZkMWIK4eU7i6ngbNxg++vb/U4j9gwIcdhgnWrDQLlgVjkZSGJzsB8FJHk3z8JHxNgMW
         jCFA==
X-Received: by 10.180.108.239 with SMTP id hn15mr13963755wib.38.1424937175549;
        Wed, 25 Feb 2015 23:52:55 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id vq9sm156118wjc.6.2015.02.25.23.52.53
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 23:52:54 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH 2/3] Staging: rtl8723au: Remove return in void function
Date: Thu, 26 Feb 2015 09:52:07 +0200
Message-Id: <1424937128-16981-2-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2
In-Reply-To: <1424937128-16981-1-git-send-email-aysemelikeyurtoglu@gmail.com>
References: <1424937128-16981-1-git-send-email-aysemelikeyurtoglu@gmail.com>

WARNING: void function return statements are not generally useful
Remove return in void function. That was found by running checkpatch.

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/rtl8723au/os_dep/usb_intf.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/os_dep/usb_intf.c b/drivers/staging/rtl8723au/os_dep/usb_intf.c
index e8158c2..07ab571 100644
--- a/drivers/staging/rtl8723au/os_dep/usb_intf.c
+++ b/drivers/staging/rtl8723au/os_dep/usb_intf.c
@@ -599,8 +599,6 @@ static void rtw_disconnect(struct usb_interface *pusb_intf)
 
 	RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("-dev_remove()\n"));
 	DBG_8723A("-r871xu_dev_remove, done\n");
-
-	return;
 }
 
 static int __init rtw_drv_entry(void)
-- 
1.8.3.2


