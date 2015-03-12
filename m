X-GM-THRID: 7882005282816
X-Received: by 10.50.55.102 with SMTP id r6mr66093228igp.1.1426169847723;
        Thu, 12 Mar 2015 07:17:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.32.99 with SMTP id g90ls1208565qgg.53.gmail; Thu, 12 Mar
 2015 07:17:27 -0700 (PDT)
X-Received: by 10.140.235.83 with SMTP id g80mr43063850qhc.5.1426169847574;
        Thu, 12 Mar 2015 07:17:27 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x231.google.com (mail-pd0-x231.google.com. [2607:f8b0:400e:c02::231])
        by gmr-mx.google.com with ESMTPS id ri9si1360880pdb.1.2015.03.12.07.17.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 07:17:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::231 as permitted sender) client-ip=2607:f8b0:400e:c02::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::231 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x231.google.com with SMTP id v10so20545436pde.0
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 07:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=AGCKyM7jWWwR2qV1wj11MY0IEOz3erlkEKIfT8hAOX8=;
        b=GfJVsuayf1vfsc8JTq8WnMSpbLEBYrXqHreR9gMBoJTyiyfFTMQ1maECZyMEA11ylP
         /jbVN8RDuEkg88ixtRYOVb3rJgKUTTzxgulgEujzKNCkdJqYG0BKK2juKAF2ps8v9s3N
         3hCV3yMCtQCdQTmBEsMNtgq4AMkdVGpz1lHvnlip5gYAeq3zu0HUSeakJsr72I5A/CHZ
         5KMwNIPU0VEAG7+3YOM5elq6XEUDv2gnAjjQ99MOox+Ql6uyxLPUR4m6gYQoAqr+Yay0
         iFwl0FTLXJo1pVaHA3QyZJEgRk0qNsbSOXSZWUGSslPvtI9SfBRiENj8zvjoC9pRjKMk
         Ztgg==
X-Received: by 10.66.62.137 with SMTP id y9mr91025823par.87.1426169847411;
        Thu, 12 Mar 2015 07:17:27 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id fr13sm11243033pdb.55.2015.03.12.07.17.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 12 Mar 2015 07:17:26 -0700 (PDT)
Date: Thu, 12 Mar 2015 19:45:38 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: fbtbt: Fix style error
Message-ID: <20150312141538.GA25575@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Split function call to two lines improve code style and 
increase readability.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/fbtft/fb_pcd8544.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fb_pcd8544.c b/drivers/staging/fbtft/fb_pcd8544.c
index b13162c..0228f4f 100644
--- a/drivers/staging/fbtft/fb_pcd8544.c
+++ b/drivers/staging/fbtft/fb_pcd8544.c
@@ -94,7 +94,8 @@ static int init_display(struct fbtft_par *par)
 
 static void set_addr_win(struct fbtft_par *par, int xs, int ys, int xe, int ye)
 {
-	fbtft_par_dbg(DEBUG_SET_ADDR_WIN, par, "%s(xs=%d, ys=%d, xe=%d, ye=%d)\n", __func__, xs, ys, xe, ye);
+	fbtft_par_dbg(DEBUG_SET_ADDR_WIN, par, "%s(xs=%d, ys=%d, xe=%d, ye=%d)\n",
+			__func__, xs, ys, xe, ye);
 
 	/* H=0 Set X address of RAM */
 	write_reg(par, 0x80); /* 7:1  1
-- 
1.9.1


