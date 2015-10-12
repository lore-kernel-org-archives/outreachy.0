X-GM-THRID: 6204781093577555968
X-Received: by 10.140.237.202 with SMTP id i193mr24527825qhc.10.1444663182494;
        Mon, 12 Oct 2015 08:19:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.81.33 with SMTP id w1ls1033813obx.68.gmail; Mon, 12 Oct
 2015 08:19:42 -0700 (PDT)
X-Received: by 10.182.128.101 with SMTP id nn5mr24542508obb.31.1444663182214;
        Mon, 12 Oct 2015 08:19:42 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id pe1si1700549pac.2.2015.10.12.08.19.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 08:19:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id hy16so156481481pad.1
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 08:19:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=qh2gjbEhSj/qrKOUO2s1pVj+XxY4gIdov2MmbUx4lZg=;
        b=eK4UcglONAbs1jDeOk8QsyiBh6bJIFGoi5LPZnUCakRYQUyIMkJwa/prwfUyTFgIUY
         RjR1osRh1Jb4K3UsGO7MCFE2KQadbcL4bkx4XI+5tH7BzU0/VrOoMgadb+IaMWKMoDje
         BiKRgm9ggLATifgZFWI+jisd9mGcbj1DFyoxdBzHOXdwVIUcSvJYGqYMROlthBiJY2PB
         sKAoWRsfMsukSPCx79wMq0Z7zEkJ/NU6JK84mVLfUznRRoiKOZOzSMgtHDH6geAdBQcj
         SPKcaF4wx/4zSlxxg0A72nj5YOFPCKDevgVP99zjbjDA41v0ggptJLGjZJxti3g8FNBH
         65bg==
X-Received: by 10.66.182.135 with SMTP id ee7mr35049547pac.95.1444663182060;
        Mon, 12 Oct 2015 08:19:42 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id qy7sm11175141pab.37.2015.10.12.08.19.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 12 Oct 2015 08:19:41 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 3/3] Staging: wilc1000: linux_wlan: Remove NULL check before kfree
Date: Mon, 12 Oct 2015 20:49:20 +0530
Message-Id: <1444663160-26795-4-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444663160-26795-1-git-send-email-shraddha.6596@gmail.com>
References: <1444663160-26795-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.561BCF8D.0032,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

kfree on NULL pointer is a no-op.

The semantic patch used -

// <smpl>
@@ expression E; @@
- if (E != NULL) { kfree(E); }
+ kfree(E);
@@ expression E; @@
- if (E != NULL) { kfree(E); E = NULL; }
+ kfree(E);
+ E = NULL;
// </smpl>smpl>

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/wilc1000/linux_wlan.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
index f6a6287..2db9796 100644
--- a/drivers/staging/wilc1000/linux_wlan.c
+++ b/drivers/staging/wilc1000/linux_wlan.c
@@ -1887,10 +1887,8 @@ static void __exit exit_wilc_driver(void)
 	sdio_unregister_driver(&wilc_bus);
 #endif
 
-	if (g_linux_wlan != NULL) {
-		kfree(g_linux_wlan);
-		g_linux_wlan = NULL;
-	}
+	kfree(g_linux_wlan);
+	g_linux_wlan = NULL;
 	printk("Module_exit Done.\n");
 
 #if defined(WILC_DEBUGFS)
-- 
2.1.4


