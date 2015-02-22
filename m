X-GM-THRID: 2273030701056
X-Received: by 10.152.6.232 with SMTP id e8mr516797laa.2.1424569942721;
        Sat, 21 Feb 2015 17:52:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.132 with SMTP id b4ls435698lah.33.gmail; Sat, 21 Feb
 2015 17:52:22 -0800 (PST)
X-Received: by 10.112.160.3 with SMTP id xg3mr505457lbb.5.1424569942479;
        Sat, 21 Feb 2015 17:52:22 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from mail-wg0-x235.google.com (mail-wg0-x235.google.com. [2a00:1450:400c:c00::235])
        by gmr-mx.google.com with ESMTPS id ta1si400356wic.1.2015.02.21.17.52.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 17:52:22 -0800 (PST)
Received-SPF: pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) client-ip=2a00:1450:400c:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) smtp.mail=gulsah.1004@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f53.google.com with SMTP id a1so19506454wgh.12
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 17:52:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=xDdI0T7KERxVsydsuJMbqFSmuQy7Xqm/mAqqZQ85RWY=;
        b=0SC8Hwvr+ITyAMoCRRorY1FuWBL2vI03cv6T0/drj9KHBqJaUphpeg0WZVM4o9jf8i
         Su4ELe8nfsNDEUs6wF55DZ3dUOAOCBXNvsQbXmN2glMWxagOCbqRb8JWRmah6dypPQNc
         /k6NDUb5v5goyhs6Xz6i8zrQICNVBYjGJHYP7tLBQ4Fl8IFmuFroar8e17SKQHFZ0ixR
         q/O7Acx5lxNSpl5XnlgEiRFqoMGP3T5N3HWB15OlXO9For9imIEmo33zYJsE49JQ/Ffs
         daQ9Bfsbn+D1h8cZWXBdu7CZ45looEV8yXayNnLSDzlpnBGWjOXQjqsbozwVHLfAM2mO
         gEAg==
X-Received: by 10.181.27.199 with SMTP id ji7mr8066601wid.76.1424569942396;
        Sat, 21 Feb 2015 17:52:22 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from diyorki.kykwifi.com ([81.213.40.143])
        by mx.google.com with ESMTPSA id dm6sm9227136wib.22.2015.02.21.17.52.21
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 17:52:21 -0800 (PST)
From: Gulsah Kose <gulsah.1004@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gulsah Kose <gulsah.1004@gmail.com>
Subject: [PATCH 5/7] staging: ft1000: ft1000-pcmcia: Deleted unnecessary braces.
Date: Sun, 22 Feb 2015 03:52:01 +0200
Message-Id: <a3e1e9f274b2578ffff06d80ba76390dc1e61266.1424569663.git.gulsah.1004@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424569663.git.gulsah.1004@gmail.com>
References: <cover.1424569663.git.gulsah.1004@gmail.com>
In-Reply-To: <cover.1424569663.git.gulsah.1004@gmail.com>
References: <cover.1424569663.git.gulsah.1004@gmail.com>

Brackets were removed from the expression that containing single
line in the phrase "if else". Removed following checkpatch.pl
warnings:
WARNING: braces {} are not necessary for any arm of this statement

Signed-off-by: Gulsah Kose <gulsah.1004@gmail.com>
---
 drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
index a7606fd..29cca41 100644
--- a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
+++ b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
@@ -1945,11 +1945,10 @@ static irqreturn_t ft1000_interrupt(int irq, void *dev_id)
 						ft1000_read_reg(dev,
 								FT1000_REG_MAG_DFSR);
 				}
-				if (tempword & 0x1f) {
+				if (tempword & 0x1f)
 					ft1000_copy_up_pkt(dev);
-				} else {
+				else
 					break;
-				}
 				cnt++;
 			} while (cnt < MAX_RCV_LOOP);
 
-- 
1.9.1


