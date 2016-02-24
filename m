X-GM-THRID: 6254956437313683456
X-Received: by 10.31.165.1 with SMTP id o1mr38254906vke.12.1456345533852;
        Wed, 24 Feb 2016 12:25:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.20.232 with SMTP id q8ls1529937obe.50.gmail; Wed, 24 Feb
 2016 12:25:33 -0800 (PST)
X-Received: by 10.182.246.130 with SMTP id xw2mr39487907obc.29.1456345533543;
        Wed, 24 Feb 2016 12:25:33 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 79si700277pft.0.2016.02.24.12.25.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 12:25:33 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id a7so193883pax.3
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 12:25:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=XFfOyvdtIAnB+VsJ0NNvucQPWCkQ6xN7/cisM6VsWsQ=;
        b=hOwQvEvl9kKCWAoT1/3XgGC4it+I3bQ8kNtxDQgKNBkgq+CO7C253+RLV1u88mD+L1
         yevlT6unXi4+X+bgQz2um+Mzu/hZ9hHwIBIehctk570wOYZPVy36OyqJNGyz5ggL4fzd
         rA6OdCa0pVTqgKbkpRNmGbV7w/Z9AOvbfK21oL94um7wvIbhDAq9qBl4Z7rcBIj3U2bO
         KJiiytm3De2GpQOW4p+QJycSJ1qxVENduH1fU8zl2kQlByS31eASBNoKA5ED5vS9Zytz
         NXkNY4p0k6+1F7suORTNbFshunZQfxoSD5QzjHgTeGFqtjEbO1kOqngyFyMvdL3nOF73
         C5yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=XFfOyvdtIAnB+VsJ0NNvucQPWCkQ6xN7/cisM6VsWsQ=;
        b=j/OCcncFDJeuClOzHwvOYX6lbPrRL0kHUnzYRNC9rAZJ2we9WSV+z5iQqzyXXa81Zv
         xEyn+BkNphhZlYHA2a2WDKCKqBq/FjX06pNpkKAm9TkwYfj4oQgWGQfvi3UqiuM7NhGB
         BOTlmsOLTnWpifR+Q0Y2wI8U3ELr3Q50nRr1c17zk9/Ps6V7mCIAMHEYsojCTsdilJNg
         uZrp8KsO/uagZ74Tl2xadyZqIBs7hCI+YbJVcNuvFr4lbJpB6B3xqA866cJsDgh+M546
         7OeGXFVW/eaGXsIh4hB5raoFhhrUBOw3ZK479joj9CgtQoDj9RN1wBcNFUIDPSAqjUdY
         cpXQ==
X-Gm-Message-State: AG10YOS2P/VVNYffiJ0inOCXweBZhglFJUHsl4tSgjot1ozQaEKI6F0IFOH1F7X7GWZE+w==
X-Received: by 10.66.146.196 with SMTP id te4mr57473098pab.125.1456345533385;
        Wed, 24 Feb 2016 12:25:33 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id fk10sm6962849pab.33.2016.02.24.12.25.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 12:25:32 -0800 (PST)
Date: Thu, 25 Feb 2016 01:56:08 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/8] staging: unisys: visorbus: Remove useless return
 variables
Message-ID: <20160224202608.GA22951@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes unnecessary return variables and compresses the
return logic.
The coccinelle script that finds and fixes this issue is:
@@ type T; identifier i,f; constant C; @@
- T i;
...when != i
when strict
( return -C;
|
- i =
+ return
f(...);
- return i;
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/unisys/visorbus/visorbus_main.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/unisys/visorbus/visorbus_main.c b/drivers/staging/unisys/visorbus/visorbus_main.c
index a301385..1542206 100644
--- a/drivers/staging/unisys/visorbus/visorbus_main.c
+++ b/drivers/staging/unisys/visorbus/visorbus_main.c
@@ -701,12 +701,10 @@ DRIVER_ATTR_version(struct device_driver *xdrv, char *buf)
 static int
 register_driver_attributes(struct visor_driver *drv)
 {
-	int rc;
 	struct driver_attribute version =
 	    __ATTR(version, S_IRUGO, DRIVER_ATTR_version, NULL);
 	drv->version_attr = version;
-	rc = driver_create_file(&drv->driver, &drv->version_attr);
-	return rc;
+	return driver_create_file(&drv->driver, &drv->version_attr);
 }

 static void
--
2.1.4


