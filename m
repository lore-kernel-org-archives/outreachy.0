X-GM-THRID: 6395785103347286016
X-Received: by 10.157.56.39 with SMTP id i36mr6635628otc.71.1489134762763;
        Fri, 10 Mar 2017 00:32:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.1.7 with SMTP id 7ls381020itk.11.canary-gmail; Fri, 10 Mar
 2017 00:32:40 -0800 (PST)
X-Received: by 10.99.174.78 with SMTP id e14mr8740176pgp.74.1489134760198;
        Fri, 10 Mar 2017 00:32:40 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 2si1669680pfx.8.2017.03.10.00.32.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 00:32:40 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id b5so9573077pgg.1
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 00:32:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=cDxeX+GZh83/58V0dbOF8f7sdBQ1QSXyZpKNy9X4tkA=;
        b=QTTQBHT3KwC5rUptQUUGN0qZEwq6wpfmoUNBCHlr0nYemIcar1L+dvTBDPoAEqbaoz
         UldU3uwUDkQCXjJUyOdYkPIzFbp7FPDsLd6S9e4a7sOIDDOrGWlkJ5l8Wfub8jtBHfzM
         sYSVGfs9QNBSwQsBZM+mW4eKHNuGDJLuE6/kf4WabiqUAV5ohjXtKdiLa1rWE76HuFUW
         MzT/TePLpsSfflgde7//jtNc18tQaUjmNK0GOKnH9rKMa3O5D3rVCOsTtjjT1+v0Yn1b
         Y7j9+yBtCA498li78FVFzF4tstMV19aff0lHjsHQsBK9tKCKsSz+Ij02ffdH5FBTIGP4
         PXhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=cDxeX+GZh83/58V0dbOF8f7sdBQ1QSXyZpKNy9X4tkA=;
        b=jt5m9bsHLFFKnFJoDzMxaMeiXr0Na6hI4qAIMQvo/J7BDVSujrs9Qf0s3dn9paGCBi
         Exhn1fQFfjyf0wvqfyRbgEr9TsUnJG0eGM85eSex0SGbMihkoX5pC8CXLSfAqFqaTbmG
         sxTBjCozm1rfkh7eGmepbJpNDOrjLzev/aFOigB0yJF0xPGMhzRpM94RySTdmBNQrWR9
         z+GuAdabzhUqnIjmPyw5ty+B7wiwjFMJ7aVVUj8CFga3gRocsYkD1NUr8t+bMuT5YPug
         +biQ5qcXOjdn3sKrMaq4kC4lWluXSIBj9B0OZMdk32hvCyzFmyJcZp32LyjHrmUPRPDH
         Q1ag==
X-Gm-Message-State: AMke39kpjt4PdlW4tf0nkP8rX08XjUfVvc0PZkIdBlrwxxo3Q8Ylw0AaiQrx2Sh2I1S4pw==
X-Received: by 10.99.149.6 with SMTP id p6mr18598248pgd.122.1489134760017;
        Fri, 10 Mar 2017 00:32:40 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([42.109.66.179])
        by smtp.gmail.com with ESMTPSA id m29sm16972060pfi.54.2017.03.10.00.32.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 00:32:39 -0800 (PST)
Date: Fri, 10 Mar 2017 14:02:18 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: media: mt9m114: Use true/false instead of 1/0 for
 bool initialisations
Message-ID: <20170310083218.GA23882@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Bool initializations should use true and false instead of 1 and 0.
Detected by coccinelle/misc/boolinit.cocci.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/media/atomisp/i2c/mt9m114.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/mt9m114.c b/drivers/staging/media/atomisp/i2c/mt9m114.c
index 1b79cdb..60ba6f9 100644
--- a/drivers/staging/media/atomisp/i2c/mt9m114.c
+++ b/drivers/staging/media/atomisp/i2c/mt9m114.c
@@ -926,10 +926,10 @@ static int mt9m114_set_fmt(struct v4l2_subdev *sd,
 		for (index = 0; index < N_RES; index++) {
 			if ((width == mt9m114_res[index].width) &&
 			    (height == mt9m114_res[index].height)) {
-				mt9m114_res[index].used = 1;
+				mt9m114_res[index].used = true;
 				continue;
 			}
-			mt9m114_res[index].used = 0;
+			mt9m114_res[index].used = false;
 		}
 	}
 	ret = mt9m114_get_intg_factor(c, mt9m114_info,
-- 
2.7.4


