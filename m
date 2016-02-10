X-GM-THRID: 6249397284630429696
X-Received: by 10.50.50.208 with SMTP id e16mr6644668igo.12.1455057488801;
        Tue, 09 Feb 2016 14:38:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.153.70 with SMTP id ve6ls17692obb.99.gmail; Tue, 09 Feb
 2016 14:38:08 -0800 (PST)
X-Received: by 10.182.92.226 with SMTP id cp2mr34888781obb.19.1455057488445;
        Tue, 09 Feb 2016 14:38:08 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id y131si25082ywc.0.2016.02.09.14.38.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 14:38:08 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id q184so59328qkb.0
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 14:38:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=5kchB0TAPFskWQuH+VsC0MxPctFHzJAG5poEN6u8k88=;
        b=0FE+WTRs1+97pHOwXzUfkhkBwHNwXJ0nIYlgPIB371QlWm8pE1tKNQFnybRVkWw/IW
         W8U/0TQi2eo+hiBtSi2zVJj1P9aPaTnmJ6PExT92MvKxP0ff81sZmt04swevAAppk6Hv
         tBYEjlAOs0vhBb2o7lg1+DsdpmXCTgx3IZVx+3NMdmWeeW2uYPEYHFdxSovKOwVQSSYQ
         s21vy34LUJ5WtD79e+vtbD7/lw5XHheDYVGNiJ9NzfF49+81gXnDPqdKMJQxNRmqb+hz
         7ROrp0zpC7IbqWRRYLDZxHAG3GZkZRfzf6Lc9RGaruayMNMJV8bqVUJAfS/s5XurpNtE
         yHNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=5kchB0TAPFskWQuH+VsC0MxPctFHzJAG5poEN6u8k88=;
        b=myhmojQJ3INLnkizZlc/5YbjmBoQa9TlBx23dxtsU6D65/AOI5tpAcCQcjdaO+FzGg
         fCQsBYMsCSJIrdGZAYLegVNBoCCk5TLkd6+LIgLJo5h3Sf0d7JSnGfay+aKcN6eqd18N
         U4ZRXHnCoKzEEvdGDZSnz9lfKWqpfA2LwBLKrhXMcTyIA8jiF+u66eJCYzymNqgTjA2f
         qqrv3tBTYbdFZOIIb5Z1wiJ41Gs2S3hgkMWqfDyLXoiTEgsHx7ntoVLRfoXKcpwYZBRC
         BhsJBMUE2sVD1dh7UP/OCd1FD91CYbW29bDSwOAuCLXSIy5uiYn0XTr366mlV1PNsl5o
         PCcg==
X-Gm-Message-State: AG10YOThF7j63FFXFvDlzu4qqaofdG9YkS7Iy7/MD5fAp9xSOyWbtTVKxG4AzYbnXm8/Fg==
X-Received: by 10.55.82.214 with SMTP id g205mr44549203qkb.72.1455057488270;
        Tue, 09 Feb 2016 14:38:08 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id 197sm76578qhr.36.2016.02.09.14.38.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 14:38:07 -0800 (PST)
Date: Tue, 9 Feb 2016 22:37:29 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: xgifb: Rename local variable
Message-ID: <20160210033729.GA2677@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

As one of the global variables and a local variable share the same name,
change the name of the local variable to avoid confusion.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
Changes since v1:
 * Changed the name of the variable to something more meaningful

 drivers/staging/xgifb/XGI_main_26.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
index f11cea1..0091d8d 100644
--- a/drivers/staging/xgifb/XGI_main_26.c
+++ b/drivers/staging/xgifb/XGI_main_26.c
@@ -1230,7 +1230,7 @@ static int XGIfb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
 	unsigned int vtotal = 0;
 	unsigned int drate = 0, hrate = 0;
 	int found_mode = 0;
-	int refresh_rate, search_idx;
+	int local_refresh_rate, search_idx;
 
 	if ((var->vmode & FB_VMODE_MASK) == FB_VMODE_NONINTERLACED) {
 		vtotal = var->upper_margin + var->yres + var->lower_margin
@@ -1268,7 +1268,7 @@ static int XGIfb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
 
 	/* Calculation wrong for 1024x600 - force it to 60Hz */
 	if ((var->xres == 1024) && (var->yres == 600))
-		refresh_rate = 60;
+		local_refresh_rate = 60;
 
 	search_idx = 0;
 	while ((XGIbios_mode[search_idx].mode_no != 0) &&
-- 
2.5.0


