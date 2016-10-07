X-GM-THRID: 6338729335697965056
X-Received: by 10.129.57.84 with SMTP id g81mr4962171ywa.127.1475850431468;
        Fri, 07 Oct 2016 07:27:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.4.43 with SMTP id 40ls5121150otc.42.gmail; Fri, 07 Oct
 2016 07:27:11 -0700 (PDT)
X-Received: by 10.157.33.196 with SMTP id s62mr5240099otb.8.1475850430452;
        Fri, 07 Oct 2016 07:27:10 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id u125si217450itc.0.2016.10.07.07.27.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 07:27:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id hh10so2832703pac.0
        for <outreachy-kernel@googlegroups.com>; Fri, 07 Oct 2016 07:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=nroqLAlf96rHm1aLGOCtrEZR3Ox+MKMxXsq40CCFqHQ=;
        b=vtbuYyD3FPV8at6y+LlJ7eLpFxPo64Y3JJwG2l+F9/yBvFEQBFvM0uaCPp1g3bpUpM
         fs6o0DVOoiSpWyPoErluf27uy62z6QhO+Uxzb0yuKZMYjumwZI1A790w8agn95nHUFdd
         bzwoguC7es+hCy61ZLl1ZZ2SsJhjdFZxlWSalUZMmZyAjvQ0yPR9mxU+HN50wiG+usf+
         4pIeN9jgAZOqa9o+efm9RjSvbOZu59RSNt3uP68m7Lwpjt0uhiRMoA3ZdFx1AHV7rG46
         DECjX/1St3vOUc8U9684UyGcJ2N+yhklxP2Nswa9wm3qJqEK9zVo+nBqF7nXC15xvsQM
         RMAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=nroqLAlf96rHm1aLGOCtrEZR3Ox+MKMxXsq40CCFqHQ=;
        b=J0aB91MifI6+2y0mPc9QIme7IkxbNCfcLjHbGl1Ycqj1mFTzaTOX+PxTNeFFbLa1D/
         gmtMfyE8Wv7Yfmd7krMEnJcY1hdN6qh83kj7DvAC3hpTPb5Wa48eq0GhedfAqRxpzkca
         11/eN+5IHwbsiysoCOs+UWnqMorRiXBITki0fjIEGVXfyZfQhEXV3DBJkkvFOGJJBT97
         mu3PYGrZExQdsS+47pNKH8cJjS+ixWRKszmBsT6SYKq8nAMtsGEBeilr1RtsDhnf0+Cb
         SQoYhkm6A7mHIoCdGzIabfD7LLE4Z5LtwekHa2dMtPlDnKuCulJFGiKFNVme6fS4YSUU
         ihcw==
X-Gm-Message-State: AA6/9Rk9aXZ1GtsiTUwtBfbB3zZuC+cnFpkcplx861o9712oYibfXcsutyXe1GzWZXXHXg==
X-Received: by 10.66.222.202 with SMTP id qo10mr30392045pac.76.1475850429553;
        Fri, 07 Oct 2016 07:27:09 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([223.176.141.5])
        by smtp.gmail.com with ESMTPSA id 77sm14504143pfx.91.2016.10.07.07.27.01
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 07 Oct 2016 07:27:08 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Fri, 07 Oct 2016 19:56:54 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	German.Rivera@freescale.com,
	stuart.yoder@nxp.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: fsm-mc: bus: remove unused function modalias_show
Date: Fri,  7 Oct 2016 19:56:51 +0530
Message-Id: <1475850411-16745-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The function modalias_show is not used anywhere in the kernel, so
remove it. Done using Coccinelle:

@r1@
identifier func;
type T;
@@
static T func(...)
{
...
}

@r@
identifier r1.func;
@@
func

@delete depends on !r@
identifier r1.func;
type r1.T;
@@
- static T func(...){...}

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/fsl-mc/bus/fsl-mc-bus.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/staging/fsl-mc/bus/fsl-mc-bus.c b/drivers/staging/fsl-mc/bus/fsl-mc-bus.c
index 44f64b6..e8bca6e 100644
--- a/drivers/staging/fsl-mc/bus/fsl-mc-bus.c
+++ b/drivers/staging/fsl-mc/bus/fsl-mc-bus.c
@@ -121,15 +121,6 @@ static int fsl_mc_bus_uevent(struct device *dev, struct kobj_uevent_env *env)
 
 	return 0;
 }
-
-static ssize_t modalias_show(struct device *dev, struct device_attribute *attr,
-			     char *buf)
-{
-	struct fsl_mc_device *mc_dev = to_fsl_mc_device(dev);
-
-	return sprintf(buf, "fsl-mc:v%08Xd%s\n", mc_dev->obj_desc.vendor,
-		       mc_dev->obj_desc.type);
-}
 static DEVICE_ATTR_RO(modalias);
 
 static struct attribute *fsl_mc_dev_attrs[] = {
-- 
1.9.1


