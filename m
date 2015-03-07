X-GM-THRID: 6950918029312
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,4f1aeb5db514fe54
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.208.12 with SMTP id ma12mr810187wic.6.1425762192760;
        Sat, 07 Mar 2015 13:03:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.103.71 with SMTP id fu7ls302939wib.29.canary; Sat, 07 Mar
 2015 13:03:12 -0800 (PST)
X-Received: by 10.194.11.70 with SMTP id o6mr3104278wjb.6.1425762192317;
        Sat, 07 Mar 2015 13:03:12 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x22f.google.com (mail-we0-x22f.google.com. [2a00:1450:400c:c03::22f])
        by gmr-mx.google.com with ESMTPS id l8si483103wia.0.2015.03.07.13.03.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2015 13:03:12 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) client-ip=2a00:1450:400c:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wevm14 with SMTP id m14so66212166wev.13
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Mar 2015 13:03:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=vi4KKdrEQIMuaIgxMw1IfX89UGQga/fRtnKVjVsKDco=;
        b=yjvDwntgLssISvmzyKUhL82dDtvR5TX/xC/ZYLH3R7knKcc+RRrl9n05e0WFN0q6CX
         9N9MT0oBoOBg335hUJ7GpCoiP3bW9wE49VTiv1vlNDI9YCEKIv4+5nrvfESAtm23z4gv
         ujcbXXKHJ+a1d6fKUQKh8mZZO7xyN7TebNlaPwNP1DuGq7jYfeKtLz0A5n/qnt6vOcqM
         5z4ocJC5xbC5zefRNlLejbF60zjiCKDPUAoMkpGhv40/iU8heOicdQpREKXYJCQUWv9o
         QgrJyFVyl5vUVinrcGKc06BeBz3N2tYDWeupu0ZyFFjQLkl8Y2fuKiyrYNF+MLeDVqkO
         St7w==
X-Received: by 10.194.243.1 with SMTP id wu1mr43485984wjc.69.1425762192221;
        Sat, 07 Mar 2015 13:03:12 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.240])
        by mx.google.com with ESMTPSA id nb4sm2360708wjc.20.2015.03.07.13.03.10
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2015 13:03:11 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id C8EBE62A1F; Sun,  8 Mar 2015 00:03:05 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 1/2] Staging: dgap: Remove unused variable
Date: Sun,  8 Mar 2015 00:02:34 +0300
Message-Id: <1425762154-1898-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425668163-27190-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425668163-27190-1-git-send-email-hamohammed.sa@gmail.com>

This patch removes variable that was used to store only the return value of a function call.

The issue was detected and resolved using the following coccinelle script:

@@
expression ret;
identifier f;
@@

-ret =
+return
	f(...);
-return ret;

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/dgap/dgap.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/dgap/dgap.c b/drivers/staging/dgap/dgap.c
index 914e332..03489d3 100644
--- a/drivers/staging/dgap/dgap.c
+++ b/drivers/staging/dgap/dgap.c
@@ -1361,7 +1361,6 @@ static uint dgap_get_custom_baud(struct channel_t *ch)
 {
 	u8 __iomem *vaddr;
 	ulong offset;
-	uint value;
 
 	if (!ch || ch->magic != DGAP_CHANNEL_MAGIC)
 		return 0;
@@ -1384,8 +1383,7 @@ static uint dgap_get_custom_baud(struct channel_t *ch)
 	offset = (ioread16(vaddr + ECS_SEG) << 4) + (ch->ch_portnum * 0x28)
 	       + LINE_SPEED;
 
-	value = readw(vaddr + offset);
-	return value;
+	return readw(vaddr + offset);
 }
 
 /*
-- 
1.9.1


