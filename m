X-GM-THRID: 5094793805824
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,17f5f0cecae96bdf,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.199.69 with SMTP id ji5mr2666301lbc.0.1425123962322;
        Sat, 28 Feb 2015 03:46:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.29.4 with SMTP id f4ls190589lah.18.gmail; Sat, 28 Feb 2015
 03:46:00 -0800 (PST)
X-Received: by 10.112.147.35 with SMTP id th3mr2411535lbb.15.1425123960902;
        Sat, 28 Feb 2015 03:46:00 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-we0-x232.google.com (mail-we0-x232.google.com. [2a00:1450:400c:c03::232])
        by gmr-mx.google.com with ESMTPS id by11si311806wib.1.2015.02.28.03.46.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 03:46:00 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::232 as permitted sender) client-ip=2a00:1450:400c:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::232 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x232.google.com with SMTP id x3so24909841wes.6
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 03:46:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=5p3epRok+Tlxj/Z2lUO1o34hAKD3ymbi9uwo4nBrIMA=;
        b=wV2BhKo09rUvChXga+urJYpnH8RpbSOnIyuqf2d0N/7QVsSLYfjq7mxa6YPgRQqt+L
         ZZkqPUCxEe03O173e8dQlZpnY5RWGAjk5IMsM5S81GuZBmxxr+Kd4HOqzdlxKFFkgFxd
         bsnf7P5oi/QD+cH8r9Q4az3JD8wu42TELuD31VwxIak6njAjQyy8bPPvFS2Q9iO6tmB9
         y6Tsl8Inwctzh9PNMFavXtuhiVORGUKBvmimA5Jh6cDosVji90ars+nX09OBf/Jts0mz
         CLk7d6+PEkCMpzjzAyH8O8BCE4xUytxMU9fShN46UxmKDCuJPyuIQHTyEepCIFXXdVvx
         qcRw==
X-Received: by 10.194.60.19 with SMTP id d19mr26479204wjr.133.1425123960820;
        Sat, 28 Feb 2015 03:46:00 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id a1sm9856657wjs.40.2015.02.28.03.45.59
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Feb 2015 03:46:00 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 1/3] Staging: rtl8192u: Fix comments
Date: Sat, 28 Feb 2015 12:45:53 +0100
Message-Id: <7bfff94ded0c35022cd1e08d3119dbd9cb1948de.1425123921.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1425123921.git.ksenija.stanojevic@gmail.com>
References: <cover.1425123921.git.ksenija.stanojevic@gmail.com>

This patch fixes comments to fit kernel coding style rules,
and also removes commented header file linux/wireless.h. Issue
found by checkpatch.pl.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_wx.h | 25 +++++++++++++------------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_wx.h b/drivers/staging/rtl8192u/r8192U_wx.h
index ae7a617..d6a2d97 100644
--- a/drivers/staging/rtl8192u/r8192U_wx.h
+++ b/drivers/staging/rtl8192u/r8192U_wx.h
@@ -1,20 +1,21 @@
 /*
-	This is part of rtl8180 OpenSource driver - v 0.3
-	Copyright (C) Andrea Merello 2004  <andrea.merello@gmail.com>
-	Released under the terms of GPL (General Public Licence)
+ * This is part of rtl8180 OpenSource driver - v 0.3
+ * Copyright (C) Andrea Merello 2004  <andrea.merello@gmail.com>
+ * Released under the terms of GPL (General Public Licence)
+ *
+ * Parts of this driver are based on the GPL part of the official realtek driver
+ * Parts of this driver are based on the rtl8180 driver skeleton from Patric
+ * Schenke & Andres Salomon
+ * Parts of this driver are based on the Intel Pro Wireless 2100 GPL driver
+ *
+ * We want to thank the Authors of such projects and the Ndiswrapper project
+ * Authors.
+ */
 
-	Parts of this driver are based on the GPL part of the official realtek driver
-	Parts of this driver are based on the rtl8180 driver skeleton from Patric Schenke & Andres Salomon
-	Parts of this driver are based on the Intel Pro Wireless 2100 GPL driver
-
-	We want to thank the Authors of such projects and the Ndiswrapper project Authors.
-*/
-
-/* this file (will) contains wireless extension handlers*/
+/* this file (will) contains wireless extension handlers */
 
 #ifndef R8180_WX_H
 #define R8180_WX_H
-//#include <linux/wireless.h>
 
 extern struct iw_handler_def r8192_wx_handlers_def;
 /* Enable  the rtl819x_core.c to share this function, david 2008.9.22 */
-- 
1.9.1


