X-GM-THRID: 6557663232000
X-Received: by 10.182.50.161 with SMTP id d1mr4273315obo.28.1425469510549;
        Wed, 04 Mar 2015 03:45:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.250.164 with SMTP id zd4ls265993obc.82.gmail; Wed, 04 Mar
 2015 03:45:10 -0800 (PST)
X-Received: by 10.182.96.131 with SMTP id ds3mr3950131obb.35.1425469510331;
        Wed, 04 Mar 2015 03:45:10 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id ri9si482450pdb.1.2015.03.04.03.45.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 03:45:10 -0800 (PST)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id eu11so18941041pac.4
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 03:45:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=yNuMhHBtaxI0Tw+/33ss3xJJgJzHV/XxZddomIjv/mU=;
        b=gChQNdKSn+kupvRcdmve7aq6BQHOx1dxcCA5TywK0Mj7jB8afyTpDsEh3w1eO7DuVh
         pyNS+S6eVbaQdaYsglzM1hDbzYsUmpzYGRozUuLYHvBlBfYL4Na+YgnsqZWbuafBGH3L
         Hl+cMsMp4Jao3N3cXw8gX8R7Xmz7C74GabAOIY5gpQd5Gcx/xpQjxRTeDYNiX1gjoANH
         kL5e7aVLmsPKlvS5idzH0XFT6no0Irt79pgTcnkTVSK3IZUd8uvIs/1OZQUbgNPhcQ8D
         Bhg9deeIKMyKC01X7hQYkN/pL00Cn+udiHv5yEWSCDaE3h/5QgkEC4mFbXDOppG3vX2P
         dr0Q==
X-Received: by 10.70.125.162 with SMTP id mr2mr1899651pdb.21.1425469510156;
        Wed, 04 Mar 2015 03:45:10 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([182.66.41.48])
        by mx.google.com with ESMTPSA id fy2sm3826164pbb.30.2015.03.04.03.44.58
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 04 Mar 2015 03:45:09 -0800 (PST)
From: Somya Anand <somyaanand214@gmail.com>
To: julia.lawall@lip6.fr
Cc: outreachy-kernel@googlegroups.com,
	Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH 0/6] checkpatch.pl and coccinelle cleanups
Date: Wed,  4 Mar 2015 17:13:56 +0530
Message-Id: <1425469442-32412-1-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch-set contains cleanup patches suggested by checkpatch.pl
as well as coccinelle script. The coccinelle script used:
@@
expression ret;
identifier f;
@@

-ret =
+return
     f(...);
-return ret;

Somya Anand (6):
  Staging: rtl8188eu: Remove unnecessary return statement
  Staging: rtl8188eu: Remove unnecessary return statement
  Staging: rtl8188eu: Remove unnecessary return statement
  staging: rtl8188eu: Remove unneeded parentheses
  Staging: rtl8188eu: Remove redundant local variable
  Staging: rtl8188eu: Remove redundant local variable

 drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 88 +++++++++-----------------
 1 file changed, 29 insertions(+), 59 deletions(-)

-- 
1.9.1


