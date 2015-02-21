X-GM-THRID: 1771791450112
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5864b10778fbf19e,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.144.130 with SMTP id sm2mr294106lbb.9.1424523032576;
        Sat, 21 Feb 2015 04:50:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.19.165 with SMTP id g5ls315651lae.68.gmail; Sat, 21 Feb
 2015 04:50:32 -0800 (PST)
X-Received: by 10.112.159.227 with SMTP id xf3mr288467lbb.11.1424523032115;
        Sat, 21 Feb 2015 04:50:32 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wg0-x22f.google.com (mail-wg0-x22f.google.com. [2a00:1450:400c:c00::22f])
        by gmr-mx.google.com with ESMTPS id ev8si289142wib.3.2015.02.21.04.50.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 04:50:32 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) client-ip=2a00:1450:400c:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22f.google.com with SMTP id x12so17699334wgg.6
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 04:50:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=cExzpx+okOY+vqIbjAppgmvqi0Y8yJHfVc2RcTJMggY=;
        b=P2xsbkzWSiwtrwKri758PG0P+fixSO30zMHXJ+U4B3pN9eOy8sokycJUoKzKRjiaZ6
         74bMAW1o2tcG+FUJo/8cy/+GFCgkXeH9x+4hXCccpFTXa2axMdEnkCvJHeBXAK7ZJKva
         sgnvQgB0S3FdacHxpkzTvo6qadktfBwXSSQ3OKVWIAZbhAl2lGy7n/gQ1mUaOg6R1Jzx
         ROnXYwnA1jwYPjbCA/4g9CLm4PljzCnsY02BoFgHpbiGVF0Xk5aIyUe83O39zOk5XdbO
         dTd0Qb6H1VwcLMFyQYmunaa1Tn6mXcbH8C1lumRnKnWG3HdyjxUylSfPZU/glSiHXt99
         vgPg==
X-Received: by 10.194.89.163 with SMTP id bp3mr4197707wjb.145.1424523032027;
        Sat, 21 Feb 2015 04:50:32 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.192.150])
        by mx.google.com with ESMTPSA id lx10sm14773247wjb.17.2015.02.21.04.50.31
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 04:50:31 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: rts5208: Add blank line
Date: Sat, 21 Feb 2015 14:50:35 +0200
Message-Id: <1424523035-8717-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This patch fixes the checkpatch.pl warning:
WARNING: "Missing a blank line after declarations"

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/rts5208/general.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/rts5208/general.c b/drivers/staging/rts5208/general.c
index eada934..79d2458 100644
--- a/drivers/staging/rts5208/general.c
+++ b/drivers/staging/rts5208/general.c
@@ -25,6 +25,7 @@
 int bit1cnt_long(u32 data)
 {
 	int i, cnt = 0;
+
 	for (i = 0; i < 32; i++) {
 		if (data & 0x01)
 			cnt++;
-- 
1.8.3.2


