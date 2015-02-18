X-GM-THRID: 481953841152
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3670496578bb9b0b,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.126.196 with SMTP id na4mr1956880obb.18.1424301726047;
        Wed, 18 Feb 2015 15:22:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.152.131 with SMTP id a125ls240209ioe.3.gmail; Wed, 18 Feb
 2015 15:22:05 -0800 (PST)
X-Received: by 10.68.197.137 with SMTP id iu9mr1779867pbc.5.1424301725787;
        Wed, 18 Feb 2015 15:22:05 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pd0-f178.google.com (mail-pd0-f178.google.com. [209.85.192.178])
        by gmr-mx.google.com with ESMTPS id xj4si2325922pbc.2.2015.02.18.15.22.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 15:22:05 -0800 (PST)
Received-SPF: none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) client-ip=209.85.192.178;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) smtp.mail=kdunne@mail.ccsf.edu
Received: by pdbfl12 with SMTP id fl12so4568742pdb.4
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 15:22:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=cTfJjmOdOCBjBOLA/Ov465fl2ZPtMossVCCDzUIlcSQ=;
        b=Yod6i0meXmMsgKg16MOaUvtvbaKL6rfASbcQguyILit3rQltFL5STC0FqtNspuiMVS
         ZApwfM+67z9OiBrvFvSMszoBLj35Lm3nQcSXn8gYL56s+GzAb05S1zjtlB64POJT/Lmd
         91lfDkqBVVJ71bdBfSPkTmhznrLh8o/e8CiMwJnbh6tIpKt/AeAVCf6wOiOWeVlFCoRz
         +o4SoJStArIghOoXO061797SMLpP1Vl7G2nUXuHy6nI7bSTHJlZ6wANIiVROnT4od1No
         RLyu7dOnmu4p+Y+u7Vll36OczYRvC6EUgA9qlC+DkWMcNlgoDwUFCP54WZIixUPXkmTM
         ga6w==
X-Gm-Message-State: ALoCoQk8O0+VYeLEY0rAW2GLp/Z7zDiIgXIPP4VzD+iV19wuMH5m5lmYFG+Eu9ODdiY8LvZQpwYQ
X-Received: by 10.66.102.99 with SMTP id fn3mr2675695pab.19.1424301725668;
        Wed, 18 Feb 2015 15:22:05 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 ([2601:9:8340:b6:d5fc:2cb:c39:1901])
        by mx.google.com with ESMTPSA id iv1sm21603672pbc.87.2015.02.18.15.22.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 15:22:05 -0800 (PST)
Date: Wed, 18 Feb 2015 15:22:03 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: comedi: Remove blank line
Message-ID: <20150218232203.GA6207@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Multiple blank lines are to be avoided per linux kernel conventions.

This patch fixes the checkpatch.pl check:
CHECK: Please don't use multiple blank lines

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


