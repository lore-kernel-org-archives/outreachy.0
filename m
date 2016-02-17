X-GM-THRID: 6252275562391273472
X-Received: by 10.31.165.1 with SMTP id o1mr1820596vke.12.1455721359629;
        Wed, 17 Feb 2016 07:02:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.230.33 with SMTP id sv1ls826089obc.69.gmail; Wed, 17 Feb
 2016 07:02:39 -0800 (PST)
X-Received: by 10.182.148.227 with SMTP id tv3mr1788956obb.30.1455721359288;
        Wed, 17 Feb 2016 07:02:39 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id yd9si245961pab.1.2016.02.17.07.02.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 07:02:39 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id fl4so12650502pad.0
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 07:02:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=pTfojL3h/lyXJGH89zAOtaQH72ZqoHRhEBCFZXS/25g=;
        b=H8VjsGz1y0SrQJtMW7g5PyNzMKhJXTgzYT80Kwdj+4hpaoaMsM4LqX/WJ2Hgjjbpef
         4lKEVEqerAbUK1+cuo++UGPNIXS7/4oaQjJDiAauzKn/szIRYJvDmxPrTEmTFI6OCNh9
         9Se4oH1Va3TBKsX75d/+8LaUD85zHjjQgusrgjdXWLaBIVB0oj5LjzGPEEPuPXOY00Q7
         V720VibAfuI8yLaxGxKS7eo5+86nxjvLVAXI3NamW95bNwFyDEVr32rbngDD0eBeSUo0
         JvCeVCgtBT8Plh9VmLLjIdXDxSl9sxJ5M6Ubd39N9fY0Y93HpHyELIg27bqaL7MrnzUJ
         P86g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=pTfojL3h/lyXJGH89zAOtaQH72ZqoHRhEBCFZXS/25g=;
        b=D5bvEe0ziXMFt1+V3wNX74QBuxdewp54SRBgMlJxyNcVIF1ATD1ozI1RjqOpImnei/
         LGQDfGJtgw8vXzpbttyyoOGNldWEiHE1bb3EmUZQBsOAyfakcwVW5QWBDQXR7qZXQexV
         Q5N6O9OA6ctCwNrhdckCkyt/n3RolRjPLz27DdpA25Ze4Vk6XdaEO73fD5ez6GOQnH0S
         jqaZO89F683K77mUoiuIoekja4S3dkuIcvWBWFeZqo3pNcf3qxOgSa9mt1FWzq9mTDlj
         89/a6Zw+OgDe6iYVod3kawen6L4OvBPAS7zuxTnrk2bzfbmooOvkU8674OKLrjm8iP0U
         zsdA==
X-Gm-Message-State: AG10YOTm8SxgcJ94EVoz/NAu0H2Cr3G/JDXW3AdcwjL8G4gJZwwm5L2pDW2lwK486yepSA==
X-Received: by 10.66.251.65 with SMTP id zi1mr2695383pac.133.1455721359129;
        Wed, 17 Feb 2016 07:02:39 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.168])
        by smtp.gmail.com with ESMTPSA id q16sm3375028pfi.80.2016.02.17.07.02.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 07:02:38 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 5/5] staging: iio: tsl2x7x_core: add blank line after struct declaration
Date: Wed, 17 Feb 2016 23:02:17 +0800
Message-Id: <1455721337-31883-6-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1455721337-31883-1-git-send-email-eraretuya@gmail.com>
References: <1455721337-31883-1-git-send-email-eraretuya@gmail.com>

Add the missing blank line after struct declaration. Checkpatch found
this issue.

CHECK: Please use a blank line after function/struct/union/enum
declarations

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/iio/light/tsl2x7x_core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/iio/light/tsl2x7x_core.c b/drivers/staging/iio/light/tsl2x7x_core.c
index 9de6670..b7439ab 100644
--- a/drivers/staging/iio/light/tsl2x7x_core.c
+++ b/drivers/staging/iio/light/tsl2x7x_core.c
@@ -1646,6 +1646,7 @@ static struct attribute *tsl2X7X_ALS_event_attrs[] = {
 	&dev_attr_in_intensity0_thresh_period.attr,
 	NULL,
 };
+
 static struct attribute *tsl2X7X_PRX_event_attrs[] = {
 	&dev_attr_in_proximity0_thresh_period.attr,
 	NULL,
-- 
1.9.1


