X-GM-THRID: 6208113115518730240
X-Received: by 10.67.23.163 with SMTP id ib3mr7885277pad.45.1445438972532;
        Wed, 21 Oct 2015 07:49:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.78.202 with SMTP id d10ls1537978igx.41.canary; Wed, 21 Oct
 2015 07:49:31 -0700 (PDT)
X-Received: by 10.66.148.72 with SMTP id tq8mr7753169pab.34.1445438971920;
        Wed, 21 Oct 2015 07:49:31 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id fa8si1119087pab.1.2015.10.21.07.49.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 07:49:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id z6so56719265pas.2
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 07:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=vG1fo+MuWvi1TTmSJY6SL0pRKu3VVaFzrMhwESHx6Yg=;
        b=IJTeSV4zVv2QNuQKjqupYBEmVmyRz0kOqh1RLuLfqzZAXS/LjGVCH30LjY3eH779v1
         aBv/MxBD0cj4MSmuc9u9WLJHZABfROct8ST+nhOqRk+QNpFkgHcsO1hj1tP7VT7XCd1g
         ca6qW0aP/0e1/63vgjKA1Ox5bJYIVRHPCVs9B8YXOKgutrPwj1BrLYik9re/TUN68exq
         TDy4Cgsx6yqAkMNszRH37DZyxtM2La5v/z/bvkrygUTQ5wOinIQP+/iLOS4VW3A7r21U
         MXrVrLQE+nx+wHqZw96JFOO5EBUEBs7Ijb0muM3U9eg+12mzKs1gaW34+hxMwecfB9dt
         oudw==
X-Received: by 10.66.119.135 with SMTP id ku7mr11085146pab.21.1445438971800;
        Wed, 21 Oct 2015 07:49:31 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id ez2sm9637483pbb.5.2015.10.21.07.49.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Oct 2015 07:49:31 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH] Staging: rtl8192u: Eliminate use of MSECS macro
Date: Wed, 21 Oct 2015 20:19:18 +0530
Message-Id: <1445438958-7663-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150201.5627A5FA.0108,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Use msecs_to_jiffies instead of driver specific macro
MSECS. This is done using Coccinelle and semantic
patch used for this is as follows:

@@expression t;@@

- MSECS(t)
+ msecs_to_jiffies(t)

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 678ecf6..e06864f 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -3516,7 +3516,7 @@ static void watch_dog_timer_callback(unsigned long data)
 
 	queue_delayed_work(priv->priv_wq, &priv->watch_dog_wq, 0);
 	mod_timer(&priv->watch_dog_timer,
-		  jiffies + MSECS(IEEE80211_WATCH_DOG_TIME));
+		  jiffies + msecs_to_jiffies(IEEE80211_WATCH_DOG_TIME));
 }
 static int _rtl8192_up(struct net_device *dev)
 {
-- 
2.1.4


