X-GM-THRID: 7842685779968
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,95c6bc05e947b07,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.246.37 with SMTP id xt5mr42103241obc.25.1426152197852;
        Thu, 12 Mar 2015 02:23:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.149.197 with SMTP id uc5ls457223obb.70.gmail; Thu, 12 Mar
 2015 02:23:17 -0700 (PDT)
X-Received: by 10.182.5.104 with SMTP id r8mr42488000obr.19.1426152197655;
        Thu, 12 Mar 2015 02:23:17 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id l3si451681pdo.0.2015.03.12.02.23.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 02:23:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padet14 with SMTP id et14so19124065pad.0
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 02:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=y5LBTOspo3qQw+lKot6TmHtF3qtyhztmafKvNRVrpiM=;
        b=PvAIxGF3Dp6ymAaGg+iUkWIQsAZXytC4byFwBYMi8wbSWNaSq+XjUwCssngJeSgbdd
         6ov+73pRRUbvQuQzFd00LwB8AI9ptgsOUfzwVH1QAI0Sl8/Xg3bot78ZGOAPJILQYoaw
         ik5jsXfzWzcdRLlctfPV0yHeytBxz5kpps0eS8hhIIBdOUD7/mhJ3AIESYazzRpWxOkQ
         eGMr8WJwgZIcsXS+NSx53z0+EE+v1p5RdOKm6e+rxKOqZhEY1HV/qYGuftoNN5WxNH/x
         qgrU8Lt0MupQd/+Y+vZpC5OA+kx0YJRIqRDdFNdELPM3Ym8sc0qtgd6gFHPFUQne8ABV
         q/fQ==
X-Received: by 10.70.26.129 with SMTP id l1mr86785562pdg.163.1426152197428;
        Thu, 12 Mar 2015 02:23:17 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id ow2sm10004949pdb.14.2015.03.12.02.23.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 12 Mar 2015 02:23:16 -0700 (PDT)
Date: Thu, 12 Mar 2015 14:51:28 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: fbtbt: Move variable declarations
Message-ID: <20150312092128.GA7207@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Move variable declarations so as to follow kernel coding
conventions.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/fbtft/fb_agm1264k-fl.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
index 2ec607d..acf5acb 100644
--- a/drivers/staging/fbtft/fb_agm1264k-fl.c
+++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
@@ -410,15 +410,14 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 
 static int write(struct fbtft_par *par, void *buf, size_t len)
 {
+	u8 i, data;
+
 	fbtft_par_dbg_hex(DEBUG_WRITE, par, par->info->device, u8, buf, len,
 		"%s(len=%d): ", __func__, len);
 
 	gpio_set_value(par->RW, 0); /* set write mode */
 
-
 	while (len--) {
-		u8 i, data;
-
 		data = *(u8 *) buf++;
 
 		/* set data bus */
-- 
1.9.1


