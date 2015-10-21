X-GM-THRID: 6208143559134019584
X-Received: by 10.140.165.83 with SMTP id l80mr8525379qhl.14.1445446135533;
        Wed, 21 Oct 2015 09:48:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.226 with SMTP id 95ls496527iok.1.gmail; Wed, 21 Oct
 2015 09:48:55 -0700 (PDT)
X-Received: by 10.50.110.6 with SMTP id hw6mr2620098igb.7.1445446135186;
        Wed, 21 Oct 2015 09:48:55 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id el2si1178144pbb.0.2015.10.21.09.48.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 09:48:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=navyasri.tech@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id fv9so61901375pac.3
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 09:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=s4avXzrMwsSDtzJ7S+L38xuYxyhLJDO810rJtQ2HAUI=;
        b=U31JHYrxHbenP7H3Vzi+o5HvwFCgAfAYecdMjdJ2XcfJXFNmq056WHe69W3Ks2v/8X
         ciigD6DFv15I2cZGkVRcWJPw+WY/l/KnlOr5wvwqWRsljQucxYZZghwwU37eb+tM6wMQ
         16MpqS9ld8oosePIjazOZCDEBOv+R5OTU8VWorRJdwmmOHijiQOAB5zv7Nw5kp7szWBu
         HbDwguJWR+Tg4hbEih7YZNeC6fvVHel465G6gx08edOkFL83az81v+oLqolZ+nQiXZLl
         1EDVRpUzgB+jOUlZgFvZV6E+hnR0MUKaaVidFU4MnjvOIPOFFiqy7oh7Nny68GQcS9f0
         fL0g==
X-Received: by 10.68.240.2 with SMTP id vw2mr11579590pbc.41.1445446135067;
        Wed, 21 Oct 2015 09:48:55 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from navya ([27.6.33.173])
        by smtp.gmail.com with ESMTPSA id ip7sm3277932pbd.49.2015.10.21.09.48.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 21 Oct 2015 09:48:54 -0700 (PDT)
Date: Wed, 21 Oct 2015 22:18:57 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/5] Staging: xgifb: Add space between ; and variable name
Message-ID: <b2831ecccc09c2e69d330c453f911d8a0ae61e0f.1445445320.git.navyasri.tech@gmail.com>
References: <cover.1445445320.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445445320.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the checkpatch.pl error:

ERROR: space required after that ';'

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/xgifb/vb_init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/xgifb/vb_init.c b/drivers/staging/xgifb/vb_init.c
index ea358a0..6204a98 100644
--- a/drivers/staging/xgifb/vb_init.c
+++ b/drivers/staging/xgifb/vb_init.c
@@ -10,7 +10,7 @@ static const unsigned short XGINew_DDRDRAM_TYPE340[4][2] = {
 	{ 16, 0x45},
 	{  8, 0x35},
 	{  4, 0x31},
-	{  2, 0x21} };e
+	{  2, 0x21} }; e
 
 static const unsigned short XGINew_DDRDRAM_TYPE20[12][2] = {
 	{ 128, 0x5D},
-- 
1.9.1


