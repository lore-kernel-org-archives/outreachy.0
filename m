X-GM-THRID: 6340399787457642496
X-Received: by 10.157.45.161 with SMTP id g30mr1928997otb.116.1476239363717;
        Tue, 11 Oct 2016 19:29:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.37.162 with SMTP id q31ls2731806ota.44.gmail; Tue, 11 Oct
 2016 19:29:23 -0700 (PDT)
X-Received: by 10.237.37.113 with SMTP id w46mr1846480qtc.4.1476239363335;
        Tue, 11 Oct 2016 19:29:23 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id a143si1027264pfa.2.2016.10.11.19.29.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Oct 2016 19:29:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 190so1693944pfv.0
        for <outreachy-kernel@googlegroups.com>; Tue, 11 Oct 2016 19:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=WAqExUI/VQKbi6w5i4FLZ3woqod4gklPUZ+WssifphY=;
        b=kkICewF1F8w2UaelsLIj6xSfc7OeZU8ua9keZl0sjEbhV/FHSzTVr9xT/82J1MFbKV
         dS3vv9iDNZb9K82+GTwnqzXEwrbi/p6zAeHvty1cOopiLiYo3aOCdKepMS1AlnM8W6hd
         IFrZsrJ3rERzNeHclYiqqkHw2k1QOnjWaQsxDnaDRF3WYzp5HfrvXC1vD7V02SYb4EjS
         bLlRbWnj7hDnup57dttoJNrYqjSXeOOfTdNWtBhB6bfRv0Xnso1Nj5I9SjfRhZUzQTXZ
         5RJW8u8bscKfZ6enI0eX2ZmrZ8MI7OTclQCpgYstmUTKX1NaXIEJVfmzPcuZI0D+hD8o
         Atcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=WAqExUI/VQKbi6w5i4FLZ3woqod4gklPUZ+WssifphY=;
        b=eadW0OCCTPkNWQZQS4x3dLrNTPatteIqBwZ3+p6aTIg4kx/qoBYBxxha11l1FGiQ7i
         x3rx718JTPggXzA6pD2ec8G0IAgc1tqxRpezU3IpeWACxN34fMU/gzrWTsVz6p+SLfzF
         lx7l2mNkIRr07+3LrbBkaTDkMi/LiI4QJW7E4MZhx1Y43mFwiJbLOFE87Un37T3lVE+X
         CFyVDzgHGdyUkm45+sr3zjMBtG4TUEr0vGFJVtomHeBqlqTYOhXccq7qOcD7CPf4aTx+
         BvZCZzCRj07uX+AcaZ9J+26m/cdTQ4lZ+JzaIMW/la7exy5aylEcDuPsbfqOO5BxhzLE
         nelg==
X-Gm-Message-State: AA6/9RnCM/UwdKe8yZH2hAfneKThi83Iu7fMI2TffMpU5oUDaMZCfgCYN0KkqoXw83p0Xw==
X-Received: by 10.98.217.135 with SMTP id b7mr1641815pfl.103.1476239363150;
        Tue, 11 Oct 2016 19:29:23 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id l2sm7436664pav.7.2016.10.11.19.29.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Oct 2016 19:29:22 -0700 (PDT)
Date: Tue, 11 Oct 2016 19:29:20 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: sm750fb: compress return logic
Message-ID: <20161012022918.GA14974@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Using Coccinelle script, compress return logic to return a value
directly rather than doing an assignment and returning the variable.
Remove unnecessary variable declaration by hand.

Coccinelle script: 

@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 8770a46..b094492 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -1209,7 +1209,6 @@ static struct pci_driver lynxfb_driver = {
 static int __init lynxfb_init(void)
 {
 	char *option;
-	int ret;
 
 #ifdef MODULE
 	option = g_option;
@@ -1219,8 +1218,7 @@ static int __init lynxfb_init(void)
 #endif
 
 	lynxfb_setup(option);
-	ret = pci_register_driver(&lynxfb_driver);
-	return ret;
+	return pci_register_driver(&lynxfb_driver);
 }
 module_init(lynxfb_init);
 
-- 
2.1.4


