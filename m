X-GM-THRID: 6249397284630429696
X-Received: by 10.13.192.134 with SMTP id b128mr34870412ywd.43.1455051192848;
        Tue, 09 Feb 2016 12:53:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.42.164 with SMTP id p4ls1806257obl.13.gmail; Tue, 09 Feb
 2016 12:53:11 -0800 (PST)
X-Received: by 10.182.236.4 with SMTP id uq4mr35580681obc.3.1455051191838;
        Tue, 09 Feb 2016 12:53:11 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x235.google.com (mail-qg0-x235.google.com. [2607:f8b0:400d:c04::235])
        by gmr-mx.google.com with ESMTPS id w126si2320393ywe.6.2016.02.09.12.53.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 12:53:11 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::235 as permitted sender) client-ip=2607:f8b0:400d:c04::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::235 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x235.google.com with SMTP id y9so145619824qgd.3
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 12:53:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=7P+FqYLa4eTdywhKTxViKRh6+dBjPekrqUAJ+lbcGkw=;
        b=pMpxhLi49nwXzbrokxcUUadiya9alEp+vaQ57bbbquioIhUzyUqJQUhtib7puMqP5W
         Rh4bHdxSKaWnjTr/I5XVYZ8o2QiryfR9ixikqGA6LZsvEYJxGQib2ImF3KnQQRoeGTYN
         XSja52BG/JPRSTJr5Atum4hv7iAi83QO2Ca9FvY6kz5oIWE7bQUnIzsMa6ojG3zcYqka
         96dVPVwsSml/xX7gD1/V1mxkEWI6EdhE3DwCrZ4trKJYg8TjOTgfJHQty8Ypf70j2VGB
         3nsXk/Ks0zwfsuTeUJm6AU4zI2d4z1UdzmXdpI2ZBrkjH5fIb7PBKGIMVZq44c4EQD6v
         HtTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=7P+FqYLa4eTdywhKTxViKRh6+dBjPekrqUAJ+lbcGkw=;
        b=KgcYjTqZeehrsz31xux/OtrcUCQpfe+K1htm1Djdei5VihjOPkouO8Mqvp/s6ouaKP
         Btr7PXn/QRzHy1oO/AvjeUlhuEK7GjprWTwV/uiE4i8jPfRticjqv7p5oJ3eomMA6Nbk
         pwLuG3yjeUJ2uIzvY7Kvt6Uol2/4+RRDKgv+bfm9bhglMraRY0LNQw60UKIQ4QMl0fcC
         Mt3EAj4X1hiMCNKwqyPOA0mVwOr+Q9oneOfCWkp+Btvr8DUXmhgICAHiGNuwenZceUHK
         xruXR6B7ROTBrYdBQC3G8s/WFfQJqLbdY1TJg1bOkL019PamIe6oIZFern1KjfGoXo3j
         fsmg==
X-Gm-Message-State: AG10YOTy6iH4lOT4iOFHLkq5fT9IrXLVY5Es6R2GU8oEQSphA/zuEztEukqRbrzCJstCfw==
X-Received: by 10.140.151.4 with SMTP id 4mr45300308qhx.16.1455051191695;
        Tue, 09 Feb 2016 12:53:11 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id v65sm16328671qhc.46.2016.02.09.12.53.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 12:53:11 -0800 (PST)
Date: Tue, 9 Feb 2016 20:52:34 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: xgifb: Rename local variable
Message-ID: <20160210015234.GA12338@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

As one of the global variables and a local variable share the same name,
change the name of the local variable to avoid confusion.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/xgifb/XGI_main_26.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
index f11cea1..ad8aaa2 100644
--- a/drivers/staging/xgifb/XGI_main_26.c
+++ b/drivers/staging/xgifb/XGI_main_26.c
@@ -1230,7 +1230,7 @@ static int XGIfb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
 	unsigned int vtotal = 0;
 	unsigned int drate = 0, hrate = 0;
 	int found_mode = 0;
-	int refresh_rate, search_idx;
+	int ref_rate, search_idx;
 
 	if ((var->vmode & FB_VMODE_MASK) == FB_VMODE_NONINTERLACED) {
 		vtotal = var->upper_margin + var->yres + var->lower_margin
@@ -1268,7 +1268,7 @@ static int XGIfb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
 
 	/* Calculation wrong for 1024x600 - force it to 60Hz */
 	if ((var->xres == 1024) && (var->yres == 600))
-		refresh_rate = 60;
+		ref_rate = 60;
 
 	search_idx = 0;
 	while ((XGIbios_mode[search_idx].mode_no != 0) &&
-- 
2.5.0


