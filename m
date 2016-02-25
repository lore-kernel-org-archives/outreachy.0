X-GM-THRID: 6255218137152618496
X-Received: by 10.107.16.87 with SMTP id y84mr2389730ioi.2.1456406465730;
        Thu, 25 Feb 2016 05:21:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.84.243 with SMTP id l106ls398891qgd.43.gmail; Thu, 25 Feb
 2016 05:21:05 -0800 (PST)
X-Received: by 10.140.102.69 with SMTP id v63mr13733413qge.14.1456406465151;
        Thu, 25 Feb 2016 05:21:05 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id u66si1263377pfa.2.2016.02.25.05.21.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 05:21:05 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x234.google.com with SMTP id ho8so33131096pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 05:21:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=sqGb5OpXeeCYXPr4iRQHVj4bVqCf3zoUusni1tOQRdc=;
        b=ZW6qq2WUACeUjIu/UbB3Vbi7AmUiIP9qd9cTN5N+zYdlmEWUqkVGqbJq3iFuREKxKn
         KIwHSXzuDiSjBsgkKnyJ4S6vRHgwi0bKh1SgOjvW51Lmnr+rOurxuAmJY2dPq2tQ0cjc
         c1buxpnBM0esNZ8S++ihocvrmmyRGFYBPg4E0plbQ/WL0JSJ6K0TOTCgPy4bhP+eK8Fq
         x3MYAlWgCm7aVAt4qiZ/REApeMyV+hIUi6CUPnGSWmtT+zEII+LsZ3AMkL7Cd4uE0F/0
         UHWAKVkt970bBHxhIoQQTB8DNyJ6aySO34WP6msF8zwTbdbDdwqipCGRH6OpC9gJtXOn
         Eqow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=sqGb5OpXeeCYXPr4iRQHVj4bVqCf3zoUusni1tOQRdc=;
        b=Y6Cuyqh/l9zK/IClTbH+zR9v3ldflYdLOHeqgkFf81Fmam1VQdwkDobCz6eh5SREWT
         8GdMEAHMUA1z9D2vFcNokAlyS3rsquI+yNYaTttMUR/FbbH2/Yidm2e2ZMHTC2ypSY9L
         CIilFPBD/cHfBtC7VrU8vzqFUqy/CW8ebE6Jj6UUcdQGOOufVuIdZkMiF/AyTJGcSnu8
         K6B2DK+a91glFj/U4O7d7UPvGk9qGolsNowzv+gL+Ef+BjXK9609cnXtIIE3ZglItrPG
         /2se/1UeF8ds8rGrpeyl8BJ/8E9lzeJKHGrvqV3jgtBmK4IePncXbVyVA+M7dlxp183S
         RwZw==
X-Gm-Message-State: AG10YOT8c/h0zGll0rdE7rm6A4IeZPKGB6K1Kr9GYZT0AmfjVsyjGvKl5ZF8OFSFSkrn0w==
X-Received: by 10.66.222.101 with SMTP id ql5mr63113535pac.144.1456406464918;
        Thu, 25 Feb 2016 05:21:04 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.179.114])
        by smtp.gmail.com with ESMTPSA id r68sm12416796pfb.51.2016.02.25.05.21.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 05:21:04 -0800 (PST)
Date: Thu, 25 Feb 2016 18:50:58 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: fbtft: Use devm_kcalloc instead of devm_kzalloc
Message-ID: <20160225132058.GA21212@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace devm_kzalloc with devm_kcalloc to ensure there are no integer
overflows from the multiplication of a number * sizeof

The following Coccinelle semantic patch was used to make this change:
//<smpl>
@@
expression dev,E1,E2,E3,E4;
@@

- devm_kzalloc(dev,E1*E2*sizeof(E3),E4)
+ devm_kcalloc(dev,E1*E2,sizeof(E3),E4)
//</smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/fbtft/fbtft-core.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index 574c148..0c1a77c 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -736,8 +736,11 @@ struct fb_info *fbtft_framebuffer_alloc(struct fbtft_display *display,
 		goto alloc_fail;
 
 	if (display->gamma_num && display->gamma_len) {
-		gamma_curves = devm_kzalloc(dev, display->gamma_num * display->gamma_len * sizeof(gamma_curves[0]),
-						GFP_KERNEL);
+		gamma_curves = devm_kcalloc(dev,
+					    display->gamma_num *
+					    display->gamma_len,
+					    sizeof(gamma_curves[0]),
+					    GFP_KERNEL);
 		if (!gamma_curves)
 			goto alloc_fail;
 	}
-- 
1.9.1


