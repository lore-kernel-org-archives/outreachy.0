X-GM-THRID: 6252684397959446528
X-Received: by 10.107.138.211 with SMTP id c80mr9409576ioj.20.1455816532122;
        Thu, 18 Feb 2016 09:28:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.45.161 with SMTP id o1ls2554708obm.27.gmail; Thu, 18 Feb
 2016 09:28:51 -0800 (PST)
X-Received: by 10.182.24.199 with SMTP id w7mr7880102obf.48.1455816531705;
        Thu, 18 Feb 2016 09:28:51 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-io0-x230.google.com (mail-io0-x230.google.com. [2607:f8b0:4001:c06::230])
        by gmr-mx.google.com with ESMTPS id s20si289644igr.2.2016.02.18.09.28.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 09:28:51 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::230 as permitted sender) client-ip=2607:f8b0:4001:c06::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::230 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x230.google.com with SMTP id 9so80838690iom.1
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 09:28:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=bvu8868vFVbT+CGMnJSSWWghEVQf299RgFs/0Alc6d0=;
        b=KL+L2vOga2gCZIhUbDmgmj9CdASIBvXXzjwM7FXqzHZ52RQC1XgIHT5T5Pexra0soP
         Kdxzjtxuq/1XqyzjTMLI7doKOGq8d8I2iJyJYPiYaQYRCxZjGwf5lUaOdBnVQFCtTKw9
         Wl5oC89k33cOCbUlJn34tT8tlGtlnUHFy9ZBJcMm7z4tJX+BJ/32ytaHvlrsWrczbN3m
         wGsaFjBe/6RIM5yYmAevbCeeFZ/cUcyo8y2rofhGK2yFkjP/F8IvEcJGZYbui2QfMG8T
         JwKaQS4ySci8K1LktV6GHBHyLEEOj58M0a1LHkWlW009L+Rrohfb8A2c0P8rEymj2ezg
         X0eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=bvu8868vFVbT+CGMnJSSWWghEVQf299RgFs/0Alc6d0=;
        b=HdnwMATyPzqASuVDV9L2r2vVda/W591qJds1tYgFB9k0pJBjajV0xE1MfayNI+qyQ3
         8BewXNPhh2i9Jwyg+xrAvk9jRGXa/fDRwHRe5c3fFHA3JC+EP7yxKk/uqwZqh7hooOgR
         OD5RIWyDOHXE9CKFKf2t7I0G9llHLWi2qbe/kQoNPvcnUBF1Wy/sP0KHd6g46iOBFo01
         +CxCQ3U4AAmKNpdHqZMUU1/0rB9i5vUkrmCWoaaFJYbSPm0gRx/Vt4dXXWQJp0Qdj/h/
         q9MWcj8HAtGSpRecyy8Yu5gsY5C07Kvf2R2h9UWMEULtChrbKw74/Q10ByLYlnKZ1XbK
         0WQA==
X-Gm-Message-State: AG10YOROD8CSpcO8zHWgg/2ckVLGCN/rogJSMvdu3J+2wye+51up3k8gXCHNRqLORmCntQ==
X-Received: by 10.107.132.12 with SMTP id g12mr10498946iod.145.1455816531552;
        Thu, 18 Feb 2016 09:28:51 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id o65sm3886070ioi.24.2016.02.18.09.28.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 09:28:51 -0800 (PST)
Date: Thu, 18 Feb 2016 17:28:07 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: mt29f_spinand: Remove unneeded else following return
Message-ID: <20160218222806.GA7719@janani-Inspiron-3521>
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
-	    }


@rule2@
expression e2;
statement s1;
@@ 

	if(e2) { ... return ...; }
-       else
		s1

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/mt29f_spinand/mt29f_spinand.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt29f_spinand/mt29f_spinand.c b/drivers/staging/mt29f_spinand/mt29f_spinand.c
index 3d9a426..75fe61c 100644
--- a/drivers/staging/mt29f_spinand/mt29f_spinand.c
+++ b/drivers/staging/mt29f_spinand/mt29f_spinand.c
@@ -175,7 +175,7 @@ static int wait_till_ready(struct spi_device *spi_nand)
 		retval = spinand_read_status(spi_nand, &stat);
 		if (retval < 0)
 			return -1;
-		else if (!(stat & 0x1))
+		if (!(stat & 0x1))
 			break;
 
 		cond_resched();
-- 
2.5.0


