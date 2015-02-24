X-GM-THRID: 3247770173440
X-Received: by 10.180.182.44 with SMTP id eb12mr2283352wic.4.1424799040983;
        Tue, 24 Feb 2015 09:30:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.29.201 with SMTP id m9ls711900lah.6.gmail; Tue, 24 Feb
 2015 09:30:40 -0800 (PST)
X-Received: by 10.112.199.69 with SMTP id ji5mr2318613lbc.0.1424799040444;
        Tue, 24 Feb 2015 09:30:40 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id el6si951664wib.2.2015.02.24.09.30.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 09:30:40 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x230.google.com with SMTP id h11so27237668wiw.3
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 09:30:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=eS6L3xZHXhl1lg7k/mghWyTl9xr6vo9VE6rvP2ZR8AI=;
        b=CHr2N2l8H/2tqsdfAJaH2HbKYQvue23AuhFtwGW0a7FaHlaHviwor9OELhvPwpxZBk
         7b1Z2bir+4Atg4mEWpJFnt3CfqAHbIOOMvr4+8GruvAsx6DDkhrbINQtkhFHdByDoc2z
         lTBtgCdwvL6rrYRp+kmEDo7ugs2jIxffGrbI/USXJV7icbiE6nPZOjMVnSkiTbT3E7tS
         oo+p9tOTG6kHRhPMMomj1XmDT/6J8jP1xHniKKKvJND90FoxDPre9Rl/Yh+nAYpRNPR8
         uSq+lOlzZkCRE1hMxFnvz96+qWmBAv8nY+pcYiB8PRJiVHO3x+8U2Zg5dvQ3juu9JnZ+
         BdSg==
X-Received: by 10.194.5.168 with SMTP id t8mr31871525wjt.150.1424799040304;
        Tue, 24 Feb 2015 09:30:40 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id dn7sm10085736wid.12.2015.02.24.09.30.39
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Feb 2015 09:30:39 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 1/6] Staging: rtl8192u: Remove TRUE and FALSE macros
Date: Tue, 24 Feb 2015 18:30:30 +0100
Message-Id: <f286a0fed29701378cab40c60e1b2d72d5dae827.1424798953.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424798953.git.ksenija.stanojevic@gmail.com>
References: <cover.1424798953.git.ksenija.stanojevic@gmail.com>

Remove TRUE and FALSE boolean macros, since Linux kernel has already a
boolean type, bool, defined in linux/stddef.h

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/r8192U.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U.h b/drivers/staging/rtl8192u/r8192U.h
index c9d8c10..6c2e438 100644
--- a/drivers/staging/rtl8192u/r8192U.h
+++ b/drivers/staging/rtl8192u/r8192U.h
@@ -40,8 +40,6 @@
 #define RTL8192U
 #define RTL819xU_MODULE_NAME "rtl819xU"
 /* HW security */
-#define FALSE 0
-#define TRUE 1
 #define MAX_KEY_LEN     61
 #define KEY_BUF_SIZE    5
 
-- 
1.9.1


