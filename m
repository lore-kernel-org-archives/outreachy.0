X-GM-THRID: 7460820615168
X-Received: by 10.180.80.132 with SMTP id r4mr1531179wix.4.1426007079910;
        Tue, 10 Mar 2015 10:04:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.133 with SMTP id gu5ls128263wib.33.gmail; Tue, 10 Mar
 2015 10:04:39 -0700 (PDT)
X-Received: by 10.180.80.132 with SMTP id r4mr1531172wix.4.1426007079455;
        Tue, 10 Mar 2015 10:04:39 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x234.google.com (mail-we0-x234.google.com. [2a00:1450:400c:c03::234])
        by gmr-mx.google.com with ESMTPS id sf8si115877wic.2.2015.03.10.10.04.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 10:04:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) client-ip=2a00:1450:400c:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x234.google.com with SMTP id k48so3281740wev.5
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 10:04:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Zmleh/JqYX8VgosLDvTsKV04sq3gdTuqjG9TfxMjIu0=;
        b=Toeo6jUPJvBvXHfKFBfwvFAESbJLsOl7cjLUfE9pMmeam25VSE1acDNiDIcqymE49e
         1xQ3V38cFzigceorJuNeRFpAQBlox+TvWKlaPctJdET3cBnhGks8zoVUGBcq6amBH171
         4UmYaovHFjIggPdzgD/PkmJd4k/eJS2Q3Pxy/+hBEXr6T4KqU7+qWVcsTzfNwWZbwHzE
         v7NF9fhcj+QD6lDKSs1k57ds0EqARbzJYj3hXzjIgVqGsntsH+peN0roZ7ul/dGgfMjX
         kzI8TmeWnhD5j/NfR9fgULx+bE81zLFfQHZ94FswLKYx3RLvsTVjuWohtXnbzE+SBs+T
         oWGw==
X-Received: by 10.180.171.35 with SMTP id ar3mr73137579wic.24.1426007079378;
        Tue, 10 Mar 2015 10:04:39 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.233.194])
        by mx.google.com with ESMTPSA id dj4sm1726206wjc.13.2015.03.10.10.04.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 10:04:38 -0700 (PDT)
Date: Tue, 10 Mar 2015 19:04:35 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 12/20] staging: fbtft: fb_agm1264k-fl.c: remove extra
 parentheses around function arguments
Message-ID: <865a36482a77c44e8cb39c8da02a1bef3d8bdba9.1426004643.git.mahfouz.saif.elyazal@gmail.com>
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
 drivers/staging/fbtft/fb_agm1264k-fl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
index 7aa9e8c..578fdbe 100644
--- a/drivers/staging/fbtft/fb_agm1264k-fl.c
+++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
@@ -390,7 +390,7 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 			/* select right side (sc1)
 			 * set addr
 			 */
-			write_reg(par, 0x01, (1 << 6));
+			write_reg(par, 0x01, 1 << 6);
 			write_reg(par, 0x01, (0x17 << 3) | (u8)y);
 
 			/* write bitmap */
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

