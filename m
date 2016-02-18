X-GM-THRID: 6252691807610601472
X-Received: by 10.182.27.101 with SMTP id s5mr8058501obg.35.1455818258687;
        Thu, 18 Feb 2016 09:57:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.170.155 with SMTP id g27ls2429576ioj.78.gmail; Thu, 18 Feb
 2016 09:57:38 -0800 (PST)
X-Received: by 10.66.246.165 with SMTP id xx5mr8100627pac.31.1455818258390;
        Thu, 18 Feb 2016 09:57:38 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x22c.google.com (mail-ig0-x22c.google.com. [2607:f8b0:4001:c05::22c])
        by gmr-mx.google.com with ESMTPS id p10si312604igg.1.2016.02.18.09.57.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 09:57:38 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::22c as permitted sender) client-ip=2607:f8b0:4001:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::22c as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x22c.google.com with SMTP id g6so19784695igt.1
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 09:57:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=BoIwnttr2rNjtZCGsQlUFg4HDOJbETuG48VKyh0PmYg=;
        b=ljYVPRvIHpxNCtC4lCZ3K0SK8r8BpEyJtEiBIcH+hME56cmvHWWc1s8rXQR4OVygu/
         7puDHgFVaCbt/bXmvJ1yoNy1xHG1A83HibTl+9hJrIuSU2XWVswIePrTmOBqlJFrZt33
         TcX9D9jczofjEP80UHy0MBVqH2AWR86EUOQSpnQbGoGHF/0cyr+6KEe4aQEBNP7rOg8B
         /+NUsNuq/3vvi9g10+b7GQXRjFUncaW7B2mNOenUr6lXJ9TXURRczz54sDi1TmTxLMxO
         8z4OgyyQWYNb6X/47aUNh6GsoYHYRrnzxKxzOSORzhMIP15KJwHp0XadtHGdCExSxeZD
         MAlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=BoIwnttr2rNjtZCGsQlUFg4HDOJbETuG48VKyh0PmYg=;
        b=mxZncZGw+/jZg/WjhKtp32AuT6IahefDzgHULB2h1Cl6a0gr8qfY9BaIKdHtj33w7c
         RFUcRtsBKxsxOi2C5SvaZp9N9wJli1Ys+bf0vESdgZ4rbYJvAyNX4LwzUn7nWudIpT7z
         4jTB8BR6KJ6YEcfapXKSlZBuFLxUW2BJFsmS1sDmZqDSsbyqvqNP1X8i9Z3qd9N05Cwu
         S9f3rddVTaOv1hiyqzJSWhbOuGx9UmW/g3agajkhmXCrog+ZpYI83mV3M7StzTCXfahy
         iYseMNkOzo0jSoZu2Lo7pmXxmfp+5EKa48k78fJhpN6ygZcw+GTYp5X5J2sdJZeNlnqB
         TXNA==
X-Gm-Message-State: AG10YOQRW7vgnt0N1mvX4OQZY8uuADmtUdQX/dBa20L/XzW0Vi/T9AWVyQ9ulh9fCpCCJg==
X-Received: by 10.50.157.68 with SMTP id wk4mr4966824igb.0.1455818258230;
        Thu, 18 Feb 2016 09:57:38 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id o7sm1834773igv.0.2016.02.18.09.57.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 09:57:37 -0800 (PST)
Date: Thu, 18 Feb 2016 17:56:53 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723au: Remove unnecessary else following return
Message-ID: <20160218225653.GA8166@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove unnecessary else when there is a return statement in the 
corresponding if block.
Coccinelle patch used:

@rule1@ 
expression e1; 
@@ 

	if (e1) { ... return ...; } 
-       else{ 
	        ... 
-            } 


@rule2@ 
expression e2; 
statement s1; 
@@ 

	if(e2) { ... return ...; } 
-       else 
		s1

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/rtl8723au/hal/hal_com.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723au/hal/hal_com.c b/drivers/staging/rtl8723au/hal/hal_com.c
index 530db57..9d7b11b 100644
--- a/drivers/staging/rtl8723au/hal/hal_com.c
+++ b/drivers/staging/rtl8723au/hal/hal_com.c
@@ -328,7 +328,7 @@ int c2h_evt_read23a(struct rtw_adapter *adapter, u8 *buf)
 
 	if (trigger == C2H_EVT_HOST_CLOSE)
 		goto exit;	/* Not ready */
-	else if (trigger != C2H_EVT_FW_CLOSE)
+	if (trigger != C2H_EVT_FW_CLOSE)
 		goto clear_evt;	/* Not a valid value */
 
 	c2h_evt = (struct c2h_evt_hdr *)buf;
-- 
2.5.0


