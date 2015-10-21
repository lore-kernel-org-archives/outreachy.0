X-GM-THRID: 6208143559134019584
X-Received: by 10.182.245.163 with SMTP id xp3mr6629588obc.19.1445446202569;
        Wed, 21 Oct 2015 09:50:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.19.207 with SMTP id 76ls607346iot.4.gmail; Wed, 21 Oct
 2015 09:50:02 -0700 (PDT)
X-Received: by 10.66.227.166 with SMTP id sb6mr8558515pac.0.1445446202228;
        Wed, 21 Oct 2015 09:50:02 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id ce6si1213896pad.0.2015.10.21.09.50.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 09:50:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=navyasri.tech@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id hk11so59612957pad.1
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 09:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=pugOCHaKQpLcx5OW6MlLCpb9+NPI1QvjHU5lFHaFNuA=;
        b=ZfWkgKnsTq6Q1EvesrHi8wCl3EV1FcwH55sTK2m+klBPspZ4HNiwJi1c4paukaUWdF
         2QllnAn4TJY6J8cThYZ2GNEqKfjrOi3cJuTUyoAa7g4dCiI2J/oaZr4WkavDIqLYsGfU
         ck6ZrwQl87ykauOMmUky56k+KsRyYj6PYuuGru/J4Fca4pbAlqm6U57buuJbgIwxn8ML
         dgpL9DdGrktRXPxbmipsBkndxsXTFGkbxzbxVHXOzkUIlT3PRqAb9wXsKIk/5zejmcRc
         JHpRgwdZwvOglJsyt7nqzV/7xQmvCvklOrukVeSQniyktmLxrcuDPQsgwlYKF8huHF6S
         0K2A==
X-Received: by 10.68.179.33 with SMTP id dd1mr11802647pbc.134.1445446202139;
        Wed, 21 Oct 2015 09:50:02 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from navya ([27.6.33.173])
        by smtp.gmail.com with ESMTPSA id g12sm10075875pat.36.2015.10.21.09.50.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 21 Oct 2015 09:50:01 -0700 (PDT)
Date: Wed, 21 Oct 2015 22:20:04 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/5] Staging: xgifb: Remove extra blank lines.
Message-ID: <a9759c9a16d9c00ae9a896186edd77da79d4c0f4.1445445320.git.navyasri.tech@gmail.com>
References: <cover.1445445320.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445445320.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the checkpatch.pl check:

CHECK: Please don't use multiple blank lines

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/xgifb/vb_init.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/xgifb/vb_init.c b/drivers/staging/xgifb/vb_init.c
index 2eee3ac..1aa8600 100644
--- a/drivers/staging/xgifb/vb_init.c
+++ b/drivers/staging/xgifb/vb_init.c
@@ -498,7 +498,6 @@ static void XGINew_SetDRAMDefaultRegister340(
 	xgifb_reg_set(P3c4, 0x1B, 0x03); /* SR1B */
 }
 
-
 static unsigned short XGINew_SetDRAMSize20Reg(
 		unsigned short dram_size,
 		struct vb_device_info *pVBInfo)
-- 
1.9.1


