X-GM-THRID: 2900779597824
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,33a226cb1b77c823,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.201.10 with SMTP id jw10mr1521564wjc.3.1424713636931;
        Mon, 23 Feb 2015 09:47:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.108.197 with SMTP id hm5ls607499wib.51.canary; Mon, 23 Feb
 2015 09:47:16 -0800 (PST)
X-Received: by 10.181.29.66 with SMTP id ju2mr1484041wid.1.1424713636619;
        Mon, 23 Feb 2015 09:47:16 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-we0-x22f.google.com (mail-we0-x22f.google.com. [2a00:1450:400c:c03::22f])
        by gmr-mx.google.com with ESMTPS id by11si966609wib.1.2015.02.23.09.47.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 09:47:16 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) client-ip=2a00:1450:400c:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22f.google.com with SMTP id w62so20234756wes.9
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 09:47:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=xlEo1eCvc1skWVvNBE7BGz60WU20znV+/QkC+gDktFQ=;
        b=CouqtqRxC1kZijtonVzoq+Rxljo/8Txa5nO6/HaqSGV/MGsbvIZDtNVgiuOU678MG5
         +G/IOvskteWbfUu5cEV9WaICnb+c/XAGZqGziDP8qBI19kBpfBWQtmSHgoj/Z9OdhQOa
         5FZKplss0l8PCMNlGGmbUnS6/QlitH1JQsDCb9f7/TQI6xbSkw6Qp3yjuBgPBVDpsBTg
         TlcqLVp9wrD+/VNBlmPzutf9aw3RZq89zzskUa6qVwECiptNxftYifmkR+waZPHqQrUm
         Edb0tTMsHKnlluxtNP8J6pvjXHlsZdIyk8+kdHQAX2QdSZ9Cpeu7a8ShBQxk01+aSS/h
         pHvQ==
X-Received: by 10.194.193.99 with SMTP id hn3mr24793898wjc.148.1424713636533;
        Mon, 23 Feb 2015 09:47:16 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id s19sm16827802wik.18.2015.02.23.09.47.15
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 23 Feb 2015 09:47:15 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2] Staging: slicoss: Join split string.
Date: Mon, 23 Feb 2015 18:47:07 +0100
Message-Id: <1424713627-3852-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes warning issue by checkpatch.pl by joining the split string.
And also creates new warning that line exceeds 80 characters. In this case
this is more beneficial because of possibility to grep the string.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
v2: Join the split string so that it forms one line.

 drivers/staging/slicoss/slicoss.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
index 42d62ef..3d1d409 100644
--- a/drivers/staging/slicoss/slicoss.c
+++ b/drivers/staging/slicoss/slicoss.c
@@ -99,8 +99,7 @@
 #include "slic.h"
 
 static uint slic_first_init = 1;
-static char *slic_banner = "Alacritech SLIC Technology(tm) Server "
-		"and Storage Accelerator (Non-Accelerated)";
+static char *slic_banner = "Alacritech SLIC Technology(tm) Server and Storage Accelerator (Non-Accelerated)";
 
 static char *slic_proc_version = "2.0.351  2006/07/14 12:26:00";
 
-- 
1.9.1


