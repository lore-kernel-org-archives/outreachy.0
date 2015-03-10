X-GM-THRID: 7460820615168
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,95d5e58ffe370867
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.8.73 with SMTP id p9mr503438laa.6.1426007269603;
        Tue, 10 Mar 2015 10:07:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.11.97 with SMTP id p1ls127929wib.51.gmail; Tue, 10 Mar
 2015 10:07:49 -0700 (PDT)
X-Received: by 10.180.101.101 with SMTP id ff5mr8049281wib.5.1426007269175;
        Tue, 10 Mar 2015 10:07:49 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id gj20si1119539wic.1.2015.03.10.10.07.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 10:07:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x229.google.com with SMTP id r20so4779534wiv.3
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 10:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=R3TVU26eIT2fOJU3xYFcv33+Z/7BjN1rP/t+r+8lUFE=;
        b=SFGldQtbUQuhn3R9b1Zt154/m3g0x7hBEQzuWeSPKreNkMXG4/E0JHAXt5Ej4fcCvL
         3oWhqAH50hZ3c6U6SMVomRBAsEqXBc0vkJuRvLBkQDbVZ5cP5Zm4ICbP3UglCcrRNpV/
         oq+oRvbV+GUEJRyCYMKksaGyQdL3rJ25JwUASZg5R77B0FACgyn7v4y/On1MsRWbxQ9y
         gClDAt1zDfPjl4GVWA1/dFy0wPaKq1i4e4KHQG0un+2BFjnmLR09HnlwegFY0T4QFaaP
         viDtobsZ0P+6gTIDhymCTG0PdwTzbq1ZwYhZwVC20AQziCoYdhDqQkULjuQA412kgFzI
         YCkw==
X-Received: by 10.180.76.178 with SMTP id l18mr70042457wiw.36.1426007269092;
        Tue, 10 Mar 2015 10:07:49 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.233.194])
        by mx.google.com with ESMTPSA id hw7sm1718550wjb.24.2015.03.10.10.07.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 10:07:48 -0700 (PDT)
Date: Tue, 10 Mar 2015 19:07:44 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 17/20] staging: fbtft: remove unnecessary pointer to pointer
 cast
Message-ID: <b602b9ecff3d141e982f687cdd9fba290ce01931.1426004643.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1426004643.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426004643.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Removes unnecessary pointer to pointer cast since the
address is already of type char** and will be implicitly
treated as a constant. Issue detected and resolved using
the following coccinelle script:

@@
expression e;
type t;
identifier f;
@@

f(...,
-(t *)
e
,...)

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/fbtft/fbtft-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index 16c7260..1f8d73e 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -1331,7 +1331,7 @@ static struct fbtft_platform_data *fbtft_probe_dt(struct device *dev)
 	pdata->fps = fbtft_of_value(node, "fps");
 	pdata->txbuflen = fbtft_of_value(node, "txbuflen");
 	pdata->startbyte = fbtft_of_value(node, "startbyte");
-	of_property_read_string(node, "gamma", (const char **)&pdata->gamma);
+	of_property_read_string(node, "gamma", &pdata->gamma);
 
 	if (of_find_property(node, "led-gpios", NULL))
 		pdata->display.backlight = 1;
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

