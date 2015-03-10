X-GM-THRID: 7460820615168
X-Received: by 10.112.199.69 with SMTP id ji5mr4818626lbc.0.1426007199069;
        Tue, 10 Mar 2015 10:06:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.7.105 with SMTP id db9ls44416lad.87.gmail; Tue, 10 Mar
 2015 10:06:38 -0700 (PDT)
X-Received: by 10.112.35.135 with SMTP id h7mr4803302lbj.23.1426007198396;
        Tue, 10 Mar 2015 10:06:38 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id cl5si113842wib.3.2015.03.10.10.06.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 10:06:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x231.google.com with SMTP id h11so21613936wiw.1
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 10:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Exap60pG5fOtRuwgCcJWUgWSBIWbGfrAuKw7KMyKElI=;
        b=bDrhduL0SLS/Nq4NIL110TMMmnhpZ1sUqTB39C/0dF03vg7b3TFFVyq54A9TKA0xAP
         pNyX740PpyMdatJtWVJrZybwCkwNjI0IYyAylR83lRCicwFGnraFXvYagH+QKusaQ9e2
         2+hqOZoJuIY7Nnkf4s3+QLoOmBAfuwHXJyI5BAmz9yNzSfD0mD17vuH/jgXgkX0uP/tq
         b6hQ5Wdy+7j8lMMR/S2hBJB6LFav4Z4H1e3VsGVcKmHHZMGUxXiwnnQ/yr2sSQLkmfbS
         +YqBefX7aQ65Gy1ttlT2BL8sjWXDnEnReyXV4WAumePUq9/IatS5gwWY+azfhiolTFjM
         R/qw==
X-Received: by 10.194.216.34 with SMTP id on2mr72271764wjc.24.1426007198322;
        Tue, 10 Mar 2015 10:06:38 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.233.194])
        by mx.google.com with ESMTPSA id ha5sm21118429wib.1.2015.03.10.10.06.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 10:06:37 -0700 (PDT)
Date: Tue, 10 Mar 2015 19:06:24 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 15/20] staging: fbtft: fb_s6d02a1.c: remove extra parentheses
 around function arguments
Message-ID: <432e67f05c4de8e602354bf71792e0354af64b59.1426004643.git.mahfouz.saif.elyazal@gmail.com>
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
 drivers/staging/fbtft/fb_s6d02a1.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fb_s6d02a1.c b/drivers/staging/fbtft/fb_s6d02a1.c
index e412a42..c87aa25 100644
--- a/drivers/staging/fbtft/fb_s6d02a1.c
+++ b/drivers/staging/fbtft/fb_s6d02a1.c
@@ -136,7 +136,7 @@ static int set_var(struct fbtft_par *par)
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

