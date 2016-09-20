X-GM-THRID: 6332416567252353024
X-Received: by 10.98.131.137 with SMTP id h131mr5861090pfe.23.1474380625449;
        Tue, 20 Sep 2016 07:10:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.234 with SMTP id y97ls2027560ota.3.gmail; Tue, 20 Sep
 2016 07:10:24 -0700 (PDT)
X-Received: by 10.13.252.199 with SMTP id m190mr6466496ywf.156.1474380624900;
        Tue, 20 Sep 2016 07:10:24 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id h124si7882860pfe.0.2016.09.20.07.10.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 07:10:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id n24so1028487pfb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 07:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=q9g99XRJWMr5ghYtY+qbHweF1dotW9P20+yuVhGH30c=;
        b=ZgZtT2YICN5Bg4eSDcDgGzbnGTZVeXbh3+rdBvaP0CDHz+ucF6MZBhUes5kxFYTw47
         H3Lv3TB//VF90QkLA1kl7HQZz+5GnfN9zoFWCUx3/ireeEuezfHZWbfaQznx0a0IqAGC
         EGeuTnKoU7lnnPszMqqQPN6oYDSxkv4o3wpqF3CEQVVVv/o6+uZJWncs8xdR0bjzy6S3
         kSSNIlw4JTM8qBgnmgSxFFNL5WxQObg4T8WzxxufAGKSncjCnzk3cYpyF0Tn51xN6aVj
         swnF/6yB/3Fit4TjPXhO0Dsni8VHLRNQlp/S9w625Znk6ilh0T9QxOX8UPU2w26MX1Fo
         W3MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=q9g99XRJWMr5ghYtY+qbHweF1dotW9P20+yuVhGH30c=;
        b=UaIM0uHU2MmroOW8JDAo4UHJc3jbr1DWi0cRAtYCViVcFecdhOo+/3rLSLitOrI9xX
         qsls2oZ3n9jbT0znfZAHTpxjWBQVzRnqv26IIzO013M7jWKbWwS9R8htJEQFEOGf90dv
         SONvel91toxBoK6mj6vDd/m1UsFglpRy/fmI7eHV4jez7xHrvb24efp/AN+X/zEnlnGg
         bJzDMXsifl/yd0cXFYG7mRYwAoqLrd9EqNKCdDc5IuQ6ME78xMHhRT17+aq6PcL3TYn1
         hDvOLE2XicjWFNRB33r8oOrP1Ro7BSsFSklMTZRjf/ygnzXX5tHwsXdDl9Rrhpnsr0E3
         OX4A==
X-Gm-Message-State: AE9vXwNdG2UiLIt2FfV0t3HeITAgZri9nJY1OQ/pddlqKBd+OyzoR0iSXe6STyLlw8dmHA==
X-Received: by 10.98.80.136 with SMTP id g8mr42479696pfj.185.1474380624467;
        Tue, 20 Sep 2016 07:10:24 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id b88sm79675998pfe.66.2016.09.20.07.10.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 07:10:23 -0700 (PDT)
Date: Tue, 20 Sep 2016 19:40:14 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Arnaud Patard <arnaud.patard@rtp-net.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: xgifb: Remove unused variable and if statement
Message-ID: <20160920141014.GA17221@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Setting the variable 'refresh_rate = 60;' has no use to the rest of the
function. Hence the if statement setting it and the variable itself can be
removed. This was detected using the following Coccinelle semantic patch:

@@
type T;
identifier i;
constant C;
@@
(
extern T i;
|
- T i;
  <+... when != i
- i = C;
  ...+>
)

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/xgifb/XGI_main_26.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
index a58983f..0c78491 100644
--- a/drivers/staging/xgifb/XGI_main_26.c
+++ b/drivers/staging/xgifb/XGI_main_26.c
@@ -1224,7 +1224,7 @@ static int XGIfb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
 	unsigned int vtotal = 0;
 	unsigned int drate = 0, hrate = 0;
 	int found_mode = 0;
-	int refresh_rate, search_idx;
+	int search_idx;
 
 	if ((var->vmode & FB_VMODE_MASK) == FB_VMODE_NONINTERLACED) {
 		vtotal = var->upper_margin + var->yres + var->lower_margin
@@ -1260,10 +1260,6 @@ static int XGIfb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
 		xgifb_info->refresh_rate = 60;
 	}
 
-	/* Calculation wrong for 1024x600 - force it to 60Hz */
-	if ((var->xres == 1024) && (var->yres == 600))
-		refresh_rate = 60;
-
 	search_idx = 0;
 	while ((XGIbios_mode[search_idx].mode_no != 0) &&
 		(XGIbios_mode[search_idx].xres <= var->xres)) {
-- 
2.7.4


