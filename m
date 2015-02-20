X-GM-THRID: 2067485687808
X-Received: by 10.152.4.229 with SMTP id n5mr427402lan.1.1424549228462;
        Sat, 21 Feb 2015 12:07:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.234.165 with SMTP id uf5ls406070lac.60.gmail; Sat, 21 Feb
 2015 12:07:07 -0800 (PST)
X-Received: by 10.112.161.9 with SMTP id xo9mr439876lbb.7.1424549227989;
        Sat, 21 Feb 2015 12:07:07 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x243.google.com (mail-wg0-x243.google.com. [2a00:1450:400c:c00::243])
        by gmr-mx.google.com with ESMTPS id r6si369951wix.0.2015.02.21.12.07.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 12:07:07 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::243 as permitted sender) client-ip=2a00:1450:400c:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::243 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x243.google.com with SMTP id b13so5961968wgh.2
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 12:07:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=qzopAP7n3B/FyqEkRxdMBE0Cn5UhQMotclTpKz5pRNs=;
        b=IbGTo7lQ2IadjWp1QScBFYOef3QLwjl2iZfagz5+5XKCxvVJdTH/hMxRGhuRD9RZae
         ebIYtzxKknwcJcKFdkLUbLKJXO8lTlny4pvSwcdY01nKCRjqUeQ6ZFT73NJyJuu7P8Gp
         s1kqYvr6zqRm0g9G4Ug8ruseCIvG6nphWnytmdS0819xLXqYXPlFFvNUB1815Fi8Vk6Z
         E70JmNMzqP63aHG+8LEkJ1y0LJ+4Pcj58ei2g4IOkiMMABB/2Np7AlhlS+bjTdLUntv1
         fayW4fxHbuvqQl843pQJSWuMxKirj7Q7WcjE7cfiv0FjKX0evwYDXv7oqTE80zMEFwEP
         E7xw==
X-Received: by 10.180.78.3 with SMTP id x3mr6679158wiw.86.1424549227891;
        Sat, 21 Feb 2015 12:07:07 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.52])
        by mx.google.com with ESMTPSA id v16sm8302308wib.5.2015.02.21.12.07.06
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 12:07:07 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id C1840632AB; Sat, 21 Feb 2015 02:32:19 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 2/2] Staging: emxx_udc: Replace printk with pr_err
Date: Sat, 21 Feb 2015 02:32:18 +0300
Message-Id: <aa0c6571b79f806ec4edba60e2d13d2edcf0cd8f.1424473862.git.hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424473862.git.hamohammed.sa@gmail.com>
References: <cover.1424473862.git.hamohammed.sa@gmail.com>

This patch replaces printk(KERN_ERR .. with pr_err, to fix the following
checkpatch.pl warning:
WARNING: Prefer [subsystem eg: netdev]_err([subsystem]dev,  ... then
dev_err(dev,  ... then pr_err(...  to printk(KERN_ERR ...

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
index c1f98b3..c3fd7f6 100644
--- a/drivers/staging/emxx_udc/emxx_udc.h
+++ b/drivers/staging/emxx_udc/emxx_udc.h
@@ -644,6 +644,6 @@ volatile union usb_reg_access {
 };
 
 /*-------------------------------------------------------------------------*/
-#define ERR(stuff...)		printk(KERN_ERR "udc: " stuff)
+#define ERR(stuff...)		pr_err("udc: " stuff)
 
 #endif  /* _LINUX_EMXX_H */
-- 
1.9.1


