X-GM-THRID: 6806929906514001920
X-Received: by 2002:a17:906:3ec5:: with SMTP id d5mr16035292ejj.106.1584874847132;
        Sun, 22 Mar 2020 04:00:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:1599:: with SMTP id c25ls6271490edv.4.gmail; Sun,
 22 Mar 2020 04:00:45 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt28tShoHnUrY8oljsaFoVupBqbiyq2QhM4ywXXr4PQo+Z+nVnaLUdGSUndfpY/PYlSaDpP
X-Received: by 2002:a05:6402:8ca:: with SMTP id d10mr16520685edz.362.1584874845635;
        Sun, 22 Mar 2020 04:00:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584874845; cv=none;
        d=google.com; s=arc-20160816;
        b=g2M4xRKWFTFcr+1oPWDbPlinNBpQW9kPYE42+ESzeBKP9wEJQYr1pkcH37sol6+zfw
         PrG4Kj7vBVEx+8GxFI3lPJ+w7+DCRKM5+9dK4WpYqZfRPpcp2aXvMvd3r6hyzAhoLOok
         IhcbohmZ7ggEu6AYc4qJrqrHvibGzg7VKgcYl5og8MoC7RJHUiaWRfURfqA6guRrB8NA
         z5Qy3sU/ED2OhLf0i/WrN/MnL8Oz5Ci5F/F2PkONr7y8s+GJT9wfAGKGyr03K4E8Hb9T
         Ato+ttqCpuGjDqZsMaGmdMiVE7e2QtSVS3gJF6hcbK3GP0z08pMvCAZHK70X4+zwmy4d
         dT9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=S+gJPpyPyVs9DeVG+oh27c6QySg2aqGtjMHm73FMb1g=;
        b=gFuwHCbSLtFdxUzkGcUf4YISdPnjD/s8zJucS1l1sB2sLPqwx+dnoBYThdW5+wGqCS
         2rv1nwXrRVZ2Zxg/neLKzMBZ3tV2M7XpgSCMJtFxiH78zlDNGLasdG+GsSGsPjkzewxp
         JRTPpHxGduMofQS3X+L2z5QDUQp/6hgnZ2cgLSJS3akJ5sD3Yg4sBT5kPNghuyjqJxX8
         u2GIoTwwXSxUQgTpu6411Ll0vMCEawxwUtoHa/C2NJ7a/cz+L50+aacbRI6KOzujlf1Q
         xeHrgZl3yKBm+R1OHzU09fMx8PwHY/7BKMK9heAyvhNjkwRNIvbcsDg1KT0aVDLmle/j
         La4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lqBHiD6B;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id b6si69095edq.3.2020.03.22.04.00.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 04:00:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lqBHiD6B;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x342.google.com with SMTP id m3so11161840wmi.0
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 04:00:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=S+gJPpyPyVs9DeVG+oh27c6QySg2aqGtjMHm73FMb1g=;
        b=lqBHiD6BbYi2hnp0yAp/BK4whB88HxkX9+RGieUmYv7Bw+K/zBTaML6NZQ/eoy9WEM
         IIN+/qOHQHjv6FgReVZA5zMIwNGSogy+OZKIEzAeW767bN/nPUHoPLKKgSt25AF+ivpe
         4hv4R7/yMhSh+ZrA+mOIAyecW4ohKeJDpM9TIUAjkhI5PEu9s7+a4GtoGXTTSnYcrL42
         h9cxu5BZnLrOmP0QGecSfE1A42E99W/b0DTOsJ3t9HJ6tDMDP3zmaUcnHMG0asHJ/cTo
         ejHGAVkVd8HEPnC9Rgr2rrrTVMXxlwy+cxPvDlb1MBThinOZIrJdDBw1Rl3eNQGcJfVq
         pi1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=S+gJPpyPyVs9DeVG+oh27c6QySg2aqGtjMHm73FMb1g=;
        b=R8eGAh7CPa54UJcPJMvtMRS4Qp+aijRjgvoF6lYbgYVB3Y0HqZcllgz9RU5fqRpITf
         jU9BxBxADJi7uL3ilIJgv5OkynYwz2YFB/q8fkSGm+VO2fT2f28Zw8UmADk7mb7a2tYo
         RPcMCqOzLEITcpl1GhByP88ickO4eDl5e+Vptitybm5RyT2Do2QFxNLznFGJhsirUoHB
         Y8is+9srSpX76va6qBa+aM6zpxPGuoNnuvZGgPTz6HwfQruOPw8dL1AaVDIDPe3bZ50A
         Tbo6mM1qyLlOxW6qf0G+HXvzQjJ9MDZ2lXJfRDWu2YwvB0E8ktVBHJWPn5DL/KVRlMBb
         8DjA==
X-Gm-Message-State: ANhLgQ06WcdKbntoLZrO7V29vPnd1vB0PGmhWBem6uU3IT75K5GUTE56
	mpmjJlo0aS9DlOI0Eq6QA44=
X-Received: by 2002:a7b:cb17:: with SMTP id u23mr21953316wmj.12.1584874845342;
        Sun, 22 Mar 2020 04:00:45 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.132.208])
        by smtp.gmail.com with ESMTPSA id f10sm18007027wrw.96.2020.03.22.04.00.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2020 04:00:44 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Jaroslav Kysela <perex@perex.cz>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH v4] Staging: hp: Use netdev_warn().
Date: Sun, 22 Mar 2020 07:00:35 -0400
Message-Id: <20200322110035.2756-1-jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This replaces printk(KERN_WARNING ..) with netdev_warn(),
as the use of printk() isn't preferred when
a struct net_device is available.

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
Changes in v4:
- Make log message more clear.

Changes in v3:
- Update subject line and log message to be more desriptive.

Changes in v2:
- Remove " : " from the printing message, netdev_warn() doesn't need it.

 drivers/staging/hp/hp100.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index b89c4dcf53f5..1afd511260d0 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -469,8 +469,7 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,

 	eid = hp100_read_id(ioaddr);
 	if (eid == NULL) {	/* bad checksum? */
-		printk(KERN_WARNING "%s: bad ID checksum at base port 0x%x\n",
-		       __func__, ioaddr);
+		netdev_warn(dev, "bad ID checksum at base port 0x%x\n", ioaddr);
 		goto out2;
 	}

@@ -478,9 +477,9 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
 	for (i = uc = 0; i < 7; i++)
 		uc += hp100_inb(LAN_ADDR + i);
 	if (uc != 0xff) {
-		printk(KERN_WARNING
-		       "%s: bad lan address checksum at port 0x%x)\n",
-		       __func__, ioaddr);
+		netdev_warn(dev,
+			    "bad lan address checksum at port 0x%x)\n",
+			    ioaddr);
 		err = -EIO;
 		goto out2;
 	}
---
2.20.1


