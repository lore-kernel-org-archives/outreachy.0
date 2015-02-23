X-GM-THRID: 2858768400384
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,976b70dea6a25f72,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.160.176 with SMTP id xl16mr573744wib.6.1424710282433;
        Mon, 23 Feb 2015 08:51:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.94.200 with SMTP id de8ls594410wib.26.gmail; Mon, 23 Feb
 2015 08:51:22 -0800 (PST)
X-Received: by 10.180.8.67 with SMTP id p3mr1445802wia.7.1424710282161;
        Mon, 23 Feb 2015 08:51:22 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id el6si730304wib.2.2015.02.23.08.51.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 08:51:22 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x234.google.com with SMTP id h11so18957184wiw.1
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 08:51:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=kpzNDiBcvxDUcpCpWaV/rpuaLRinx98sa4TTBmXkXXQ=;
        b=sWwEtZmQ+/aTazLTE9Z7uuClNc0YiYm92+XIsZgDq/K5eGNUnMnYRAhQ4zuq2ejCuI
         /hjaTLkAhbRCxovqTpnUCSSzMKKTaS91zyawgflDiatrwus9Z1UH1kI5WgcVpRRWeAMN
         p8e4eZ1F729UVgg7V2MeIwv7eARG10ixJ+5b3T7adIXsDuTrsGQ6QzDIqDRMF8mCF3LX
         Na/6VwFXcDyxStDYIPJj5OEzt2G9LPJ//VUchL4CQSsi5A7ml6VwTijE5+S4mXLW+kOM
         uHYXUGpFdbAMbH3ux+OL0ZLnTrb/kfO91BeTDQzQnOuXZjAxtubGYfWZ7OlIuPnP0O6d
         UcaA==
X-Received: by 10.181.8.99 with SMTP id dj3mr10958095wid.83.1424710282064;
        Mon, 23 Feb 2015 08:51:22 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id uo6sm56338120wjc.49.2015.02.23.08.51.19
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 23 Feb 2015 08:51:21 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: slicoss: Fix quoted sting split across the line
Date: Mon, 23 Feb 2015 17:51:11 +0100
Message-Id: <1424710271-3310-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the warning issued by checkpatch.pl
by adding split string with '+'.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/slicoss/slicoss.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
index 42d62ef..5594cbb 100644
--- a/drivers/staging/slicoss/slicoss.c
+++ b/drivers/staging/slicoss/slicoss.c
@@ -99,7 +99,7 @@
 #include "slic.h"
 
 static uint slic_first_init = 1;
-static char *slic_banner = "Alacritech SLIC Technology(tm) Server "
+static char *slic_banner = "Alacritech SLIC Technology(tm) Server"+
 		"and Storage Accelerator (Non-Accelerated)";
 
 static char *slic_proc_version = "2.0.351  2006/07/14 12:26:00";
-- 
1.9.1


