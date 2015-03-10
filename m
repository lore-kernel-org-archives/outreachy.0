X-GM-THRID: 7460820615168
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,95d5e58ffe370867
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.87.141 with SMTP id ay13mr792552lab.3.1426007225373;
        Tue, 10 Mar 2015 10:07:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.14.135 with SMTP id p7ls218627wic.45.canary; Tue, 10 Mar
 2015 10:07:05 -0700 (PDT)
X-Received: by 10.180.13.195 with SMTP id j3mr8047666wic.2.1426007225085;
        Tue, 10 Mar 2015 10:07:05 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x22d.google.com (mail-we0-x22d.google.com. [2a00:1450:400c:c03::22d])
        by gmr-mx.google.com with ESMTPS id el6si668397wib.0.2015.03.10.10.07.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 10:07:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) client-ip=2a00:1450:400c:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22d.google.com with SMTP id x3so3338503wes.1
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 10:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=9xgPOd2pwFFu4z0tShkCM5OrwVJP/tKUgVktnIJVCKE=;
        b=NWTG9eyuzixjqFqjD7MR8+XAKXtjlfTDhl1Z3ajDNxEV1WzGNRb6OecMmFY7KqqPt2
         GNQF5wBR7YRYa3UltyEAj73UvQ3TzcZzRr5IChCEeJdcTvZcvo6acvkK/sxnyFWYSCyg
         b2Ee8RA6OTcHaZxA432AaThv/WlLN77qNvxUUQXV/WaIc536qImv1uRfAbLsIjXhcA/x
         OOIDxURQQA6NFy9gnyEqu4sNVKah2iGRpILoaotP3UyXF7qKscnDeH6oTK9lcS8lGGkz
         fwlqtwol61TDXbHz3YORzrpxs+YZ14r7dyubd6rqY1IP2PygFUr3XX74A/6gJIlgo52s
         0Hfg==
X-Received: by 10.180.184.230 with SMTP id ex6mr70659216wic.73.1426007225014;
        Tue, 10 Mar 2015 10:07:05 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.233.194])
        by mx.google.com with ESMTPSA id dq1sm4828903wib.20.2015.03.10.10.07.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 10:07:04 -0700 (PDT)
Date: Tue, 10 Mar 2015 19:07:01 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 16/20] staging: fbtft: fb_st7735r.c: remove extra parentheses
 around function arguments
Message-ID: <113bc4cd574dd19fb6d508bcad0e40f7aa4a5484.1426004643.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1426004643.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426004643.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Removes extra parentheses around function arguments. Issue
detected and resolved using the following coccinelle script:

@@
expression e;
identifier f;
@@

f(...,
-(
e
-)
,...)

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/fbtft/fb_st7735r.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fb_st7735r.c b/drivers/staging/fbtft/fb_st7735r.c
index 078f502..eb3af1d 100644
--- a/drivers/staging/fbtft/fb_st7735r.c
+++ b/drivers/staging/fbtft/fb_st7735r.c
@@ -130,7 +130,7 @@ static int set_var(struct fbtft_par *par)
 		write_reg(par, 0x36, MY | MV | (par->bgr << 3));
 		break;
 	case 180:
-		write_reg(par, 0x36, (par->bgr << 3));
+		write_reg(par, 0x36, par->bgr << 3);
 		break;
 	case 90:
 		write_reg(par, 0x36, MX | MV | (par->bgr << 3));
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

