X-GM-THRID: 1678556266496
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,aaef3ffcc6f3a4d1
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.36.132 with SMTP id q4mr216459laj.6.1424510607110;
        Sat, 21 Feb 2015 01:23:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.37.227 with SMTP id b3ls316823lak.58.gmail; Sat, 21 Feb
 2015 01:23:25 -0800 (PST)
X-Received: by 10.152.19.100 with SMTP id d4mr213623lae.7.1424510605340;
        Sat, 21 Feb 2015 01:23:25 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-we0-x22d.google.com (mail-we0-x22d.google.com. [2a00:1450:400c:c03::22d])
        by gmr-mx.google.com with ESMTPS id by11si484130wib.1.2015.02.21.01.23.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 01:23:25 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) client-ip=2a00:1450:400c:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesw62 with SMTP id w62so9527730wes.9
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 01:23:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=GyqsayhYD/7lvqvLo3I3iYLo2qbd7fDqIFmE0eFE2o8=;
        b=u46C2I5KdjSoD53LmYJoviTcbScqHZhmEhYi2DV+R1TyvPloIzE2cINLqGoALuTXjh
         iXI1htYtZVqciH96m83v3B7Eh72+8X9TjP9cnU+l2kYqigqohWeq712aYYoROP/8bKJ9
         iS+i42J3e6STNZChz36XdE2Hz6jg5ng1OmSUI7QINWDZvqo6GyoSj672h+MVsWMMqjDa
         8Og4rxMa6/65conZHFzZruOXbtuDfTVJhhF70IThf+wqfxyzVYNhaobx7HYmhAEY3B/6
         /Xf4j7uKjtgGCqNQJdZDdKpPLm08uR5ZKCop12LMzPf/az7z326vFH/H4U9VPVyCEX/t
         msYg==
X-Received: by 10.180.73.75 with SMTP id j11mr2476276wiv.17.1424510605263;
        Sat, 21 Feb 2015 01:23:25 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id di11sm6159242wid.8.2015.02.21.01.23.24
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 01:23:24 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2] Staging: rtl8192u: Convert comment from C99 to C89 style.
Date: Sat, 21 Feb 2015 10:23:17 +0100
Message-Id: <1424510597-4149-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Kernel style for comments is C89 style. Issue found by checkpatch.pl.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
v2: fix e-mail address in Signed-off-by
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
index 447af93..a826d88 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
@@ -5,13 +5,13 @@
  * Portions Copyright (C) 2004, Intel Corporation <jketreno@linux.intel.com>
  *
  * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
+i * it under the terms of the GNU General Public License version 2 as
  * published by the Free Software Foundation. See README and COPYING for
  * more details.
  *
  */
 
-//#include <linux/config.h>
+/* #include <linux/config.h> */
 #include <linux/module.h>
 #include <linux/init.h>
 #include <linux/slab.h>
-- 
1.9.1


