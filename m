X-GM-THRID: 6396344864850575360
X-Received: by 10.157.40.105 with SMTP id h38mr10863150otd.56.1489265091499;
        Sat, 11 Mar 2017 12:44:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.61.119 with SMTP id a110ls12372669otc.29.gmail; Sat, 11
 Mar 2017 12:44:51 -0800 (PST)
X-Received: by 10.157.48.57 with SMTP id d54mr11521378otc.8.1489265091155;
        Sat, 11 Mar 2017 12:44:51 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id y203si2005287pfb.0.2017.03.11.12.44.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 12:44:51 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 77so13963064pgc.0
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 12:44:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=QKlsYXANGBRGYlsYjCJM64up+Mz4ONHbj8ZK+ZYIWRc=;
        b=G5YlIvzJ7J+yxBWWDpCPivRGpWC8MBvNiSjlfIyFM79F9wH+MVeB1nvfHGKsgw3YNi
         PV1plznjXJA5xMzocR6b+dMBEv3WW+BhgtWC+UnQVAvA1YZc59JbQX1oeeW0kyYI/vsg
         8eEnAXPSoIyN944Bm75bC8bMwi2DykoScrFqvKLrRgBS1h3ym557tPjzk8eneAo7I2ns
         n6luPX66WaSELGIrsR7nRksPrvsvYu/dK4Zm84MULFNLu63g6KTUQSazDpyBt91qfXzd
         iVOMa2yHJgaGW3hsjiiSnmxRaOzYEbvOZLSSxQMaHXDu9kzhchSK4FeVsxknYyNt/mDl
         fFCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=QKlsYXANGBRGYlsYjCJM64up+Mz4ONHbj8ZK+ZYIWRc=;
        b=gGgxgYOHap58aZM1n+jKQ66BwHzRKXDdH/O7d+jdYDF68eIH1fbooPpFQG05uT5R1c
         BsrmzTlzpdKMeffMqQwXVe+lRo9SEpoMWTPYm9ZMIN1vc693aaER6zyTC8lbKgidxwDs
         NaM//01T/UlFbnsptcW4Uf79EnbYU/2aD3bJMhOhlmrhL44xc6drIekU4sQ6NmwOzbpp
         HjfrHMMb39MtfjfSjj7KWyOqr0NhZUj4AxAUlA5uqE5sYDO9s0KMSAbibwmPMSzCC0SE
         8eMMfO9ppjNTAd4GXKqNnKFXyIo+r9nAIYfaqFiZzwcTKRAS1SAjrtyGmjJQ5mjRePT8
         XWfg==
X-Gm-Message-State: AMke39l/EGLz4OA3znnjLc9zCxkClGFRf3X4XjaauWqEsY7vnTUahSSrjp6vAe7dWZ60iw==
X-Received: by 10.99.3.16 with SMTP id 16mr28516681pgd.150.1489265090921;
        Sat, 11 Mar 2017 12:44:50 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id i3sm25626464pfk.47.2017.03.11.12.44.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 12:44:50 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: lustre: Use min3 macro
Date: Sun, 12 Mar 2017 02:11:37 +0530
Message-Id: <1489264897-7700-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Replace comparsions between three expressions using
two min macros with min3 macro. Done using Coccinelle
Script:

@@
expression e1;
expression e2;
expression e3;
@@
(
- min(min(e1, e2), e3)
+ min3(e1, e2, e3)
|
- min(e1, min(e2, e3))
+ min3(e1, e2, e3)
)

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
index e2f3f72..31265d6 100644
--- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
+++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
@@ -1103,9 +1103,9 @@ kiblnd_init_rdma(struct kib_conn *conn, struct kib_tx *tx, int type,
 			break;
 		}
 
-		wrknob = min(min(kiblnd_rd_frag_size(srcrd, srcidx),
-				 kiblnd_rd_frag_size(dstrd, dstidx)),
-			     (__u32)resid);
+		wrknob = min3(kiblnd_rd_frag_size(srcrd, srcidx),
+			      kiblnd_rd_frag_size(dstrd, dstidx),
+			      (__u32)resid);
 
 		sge = &tx->tx_sge[tx->tx_nwrq];
 		sge->addr   = kiblnd_rd_frag_addr(srcrd, srcidx);
-- 
2.7.4


