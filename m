X-GM-THRID: 789825191936
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,304d4453e67f1b9,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.207.230 with SMTP id n66mr5421509yho.30.1424370903970;
        Thu, 19 Feb 2015 10:35:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.149 with SMTP id s21ls434893ioi.58.gmail; Thu, 19 Feb
 2015 10:35:03 -0800 (PST)
X-Received: by 10.42.240.11 with SMTP id ky11mr5978404icb.31.1424370903811;
        Thu, 19 Feb 2015 10:35:03 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com. [209.85.220.47])
        by gmr-mx.google.com with ESMTPS id pc4si3004048pac.0.2015.02.19.10.35.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 10:35:03 -0800 (PST)
Received-SPF: none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) client-ip=209.85.220.47;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) smtp.mail=kdunne@mail.ccsf.edu
Received: by padfb1 with SMTP id fb1so1601491pad.8
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 10:35:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=LLYr3hSsGjuV4ksk1eoy+I2FPyRx8lnGuH5c7gyWkEE=;
        b=jGp05AG/SVGF0Vld/jsxGjUwJBFpWK0PtiiOwgBM4XWPxoXCpNL1uaPw54pd9OIU2w
         ATrlzNN0ygDQi86AYdbXbu79oKoYZ66Y94TllIEz9vztqGLmSP9a6pzEO4G9BaYKipx4
         SQhGj8wkLkb875OATRlP5lMpYE8yZd9+OwYwCpfmkDpB3Xvla5tQCP3nc5FA2DRu2Zdg
         NoVCc+Y7rqdziItFkExdcci0i0//F/g8LsXiwrgE4FtlgljZ6NbPIfX5jMPk7eD0ti1z
         Kpp0iK8N+0IOurJMNBZGtuUvBbvtWuq0zcFHx3q3R31M0yCc7OIOa31TPrKUXKVNNh8w
         vH3A==
X-Gm-Message-State: ALoCoQkhbnY3iYnV14M7cK87qgu5ERjYtMSysaKx0hCC1r2GZxNM7csnK7YfwGaM+LRo4H/J3hwe
X-Received: by 10.70.38.37 with SMTP id d5mr9944686pdk.120.1424370903642;
        Thu, 19 Feb 2015 10:35:03 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 ([2601:9:8340:b6:4de2:180e:ccf2:60e5])
        by mx.google.com with ESMTPSA id or4sm24493050pdb.66.2015.02.19.10.35.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 10:35:03 -0800 (PST)
Date: Thu, 19 Feb 2015 10:35:02 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH V2] Staging: comedi: Update commit description
Message-ID: <20150219183502.GA3123@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Multiple blank lines are to be avoided per linux kernel conventions.

This patch fixes the checkpatch.pl check:
CHECK: Please don't use multiple blank lines

Deletes an extra blank line

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
 drivers/staging/netlogic/platform_net.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/netlogic/platform_net.c b/drivers/staging/netlogic/platform_net.c
index 77c3c35..0e1cc72 100644
--- a/drivers/staging/netlogic/platform_net.c
+++ b/drivers/staging/netlogic/platform_net.c
@@ -209,7 +209,6 @@ static void xlr_gmac_init(void)
 		.gpio_addr	= NULL,
 	};
 
-
 	static struct platform_device xlr_net_dev0 = {
 		.name		= "xlr-net",
 		.id		= 0,
-- 
1.9.1


