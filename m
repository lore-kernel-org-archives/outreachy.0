X-GM-THRID: 6205781635135176704
X-Received: by 10.107.160.72 with SMTP id j69mr6832251ioe.7.1444896694700;
        Thu, 15 Oct 2015 01:11:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.91.71 with SMTP id y65ls669080qgd.35.gmail; Thu, 15 Oct
 2015 01:11:34 -0700 (PDT)
X-Received: by 10.129.102.4 with SMTP id a4mr6347897ywc.30.1444896694268;
        Thu, 15 Oct 2015 01:11:34 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id vy6si1266788pbc.1.2015.10.15.01.11.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 01:11:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id rc13so80602159pab.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 01:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ePs5i0aENfAUVTkn8DzArufbpkK2FlL/uNy42j2hIt4=;
        b=H+vMAJCT0WGUlHo6/dGxrYqICZmr8nzQUjnqUzN33Vr3dY5t9ruJh+/D2NQtLC1Ib9
         V/OgKqMBUJNHF38YF17G1n2TZV/Z5YLFc3YrXuZJdcdonI6tVuNmvG2GRipnHr94ArFv
         UCO2NC52yRloKPWoR8lZRI4bQKkBpTfBgVrsJBj6UE2DksK7yqVUUyltISfDLSws/9rb
         ySNHpPvrm3UQQjwoZ/+TqILtNb3NkF3ju4aFtK1WT8fzQ4k262ORjtkHmJICrytCZCrq
         jq7zXjqS/iWbK3CtPenevpUp1WfXYKVRzT+PolFKqUoCX0Ij0UBSp3P57WhkIKVl6+jk
         INKg==
X-Received: by 10.68.65.37 with SMTP id u5mr8632268pbs.76.1444896694083;
        Thu, 15 Oct 2015 01:11:34 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.84.71])
        by smtp.gmail.com with ESMTPSA id rk2sm13747015pbc.75.2015.10.15.01.11.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 15 Oct 2015 01:11:33 -0700 (PDT)
Date: Thu, 15 Oct 2015 13:41:30 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 06/18] staging: media: davinci_vpfe: Remove useless
 intialisation
Message-ID: <c1b1eda1c4e1a56055c51b9523cc7d51aea91345.1444895819.git.amitoj1606@gmail.com>
References: <cover.1444895817.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444895817.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove intialisation of a variable that is immediately reassigned.

The semantic patch used to find this is:

// <smpl>
@@
type T;
identifier x;
constant C;
expression e;
@@

T x
- = C
 ;
x = e;
// </smpl>


Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
index 5742619..01df068 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
+++ b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
@@ -294,7 +294,7 @@ static void vpfe_detach_irq(struct vpfe_device *vpfe_dev)
  */
 static int vpfe_attach_irq(struct vpfe_device *vpfe_dev)
 {
-	int ret = 0;
+	int ret;
 
 	ret = request_irq(vpfe_dev->ccdc_irq0, vpfe_isr, 0,
 			  "vpfe_capture0", vpfe_dev);
-- 
1.9.1


