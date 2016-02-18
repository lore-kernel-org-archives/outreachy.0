X-GM-THRID: 6252683036206301184
X-Received: by 10.182.243.135 with SMTP id wy7mr7677994obc.8.1455816215855;
        Thu, 18 Feb 2016 09:23:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.87.196 with SMTP id ba4ls2386566obb.36.gmail; Thu, 18 Feb
 2016 09:23:35 -0800 (PST)
X-Received: by 10.182.243.135 with SMTP id wy7mr7677973obc.8.1455816215539;
        Thu, 18 Feb 2016 09:23:35 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-io0-x22c.google.com (mail-io0-x22c.google.com. [2607:f8b0:4001:c06::22c])
        by gmr-mx.google.com with ESMTPS id s20si286829igr.2.2016.02.18.09.23.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 09:23:35 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::22c as permitted sender) client-ip=2607:f8b0:4001:c06::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::22c as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x22c.google.com with SMTP id 9so80560130iom.1
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 09:23:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=kaK+Xp7sx0HHkyzcsDDl+i6XvNdENaD+t0w6ZwhbIgo=;
        b=a5+aJH/sr/pqeLy3q3WRyA4y3abjLsb035nEC4/ohuKHPxPL7LKKjJdayhmzKtU+7j
         ae1zXniOt/00naV4TfIi0Aq1V1Dnkcr6G1goEDopvPgzLIeU0EU5oBtWX0NpY8jatmOl
         PKj1qZr7EjFVcn+CiWL8ZHCLICw663WCF9HMB/LtkxI3mKaB15kHqQbBBc6IulMg9VPD
         +sQauY/BoEcnpqoNqh/rPCQTioxneKSL1AjV0ZGwbOZ6kx7gPrKW3UZNPFE+0K/OvmQJ
         lLitjUChFZA3dLyXjGAakEJO6FgHsOD5mMSV3l9h65bg/sprv4yKtYs7JnMV5IVZBhQT
         E7pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=kaK+Xp7sx0HHkyzcsDDl+i6XvNdENaD+t0w6ZwhbIgo=;
        b=mp1lZx1TlCguz76DWtgs+BGAafbmRMFfNPPMnJ4YpBxqV5+oL2DmE3XgfDCWfntp81
         khD9SSH7SGXnZUW+4bCe2lZpRLrWDZi37pmMcdpFaGdphUUjsB1nMoS6f57SmXaOzn7W
         ocqRU+Xtcp8ar72DKvP8DrHZoGpoO5K1ESQ3pCHFi0aUJ60GXal8iS4SQbADJUz2CdLt
         VHmo3w6aOid0XiPb52N17WUuZa2L0vmiVifaLI+8vdY8e66wdtC4nXXX04mFHyEczDpf
         /hwl5YTsPEPWf/vVb+hNSjHRyHba9jozJxYLU3vbPBZupH8ttA48rjkxSOko28TjhTZO
         0iTw==
X-Gm-Message-State: AG10YOSpASM5wNGhSSdMQRPpE/vTJuorewGzSR9zcPHPaV0h3fwkX6J1l6KCCrqIJSV0kQ==
X-Received: by 10.107.3.79 with SMTP id 76mr9800604iod.101.1455816215396;
        Thu, 18 Feb 2016 09:23:35 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id c79sm3892434iod.5.2016.02.18.09.23.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 09:23:35 -0800 (PST)
Date: Thu, 18 Feb 2016 17:22:50 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: fsl-mc: Remove unneeded else following a return
Message-ID: <20160218222250.GA7630@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove unnecessary else when there is a return statement in the
corresponding if block. Coccinelle patch used:

@rule1@
expression e1;
@@

	if (e1) { ... return ...; }
-       else{
	        ...
-       }


@rule2@
expression e2;
statement s1;
@@ 

	if(e2) { ... return ...; }
-       else
               s1

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/fsl-mc/bus/mc-bus.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/fsl-mc/bus/mc-bus.c b/drivers/staging/fsl-mc/bus/mc-bus.c
index 9317561..438a9d7 100644
--- a/drivers/staging/fsl-mc/bus/mc-bus.c
+++ b/drivers/staging/fsl-mc/bus/mc-bus.c
@@ -248,8 +248,7 @@ static bool fsl_mc_is_root_dprc(struct device *dev)
 	fsl_mc_get_root_dprc(dev, &root_dprc_dev);
 	if (!root_dprc_dev)
 		return false;
-	else
-		return dev == root_dprc_dev;
+	return dev == root_dprc_dev;
 }
 
 static int get_dprc_icid(struct fsl_mc_io *mc_io,
-- 
2.5.0


