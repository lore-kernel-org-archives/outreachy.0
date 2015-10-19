X-GM-THRID: 6207218463763595264
X-Received: by 10.68.131.104 with SMTP id ol8mr24261484pbb.4.1445230670757;
        Sun, 18 Oct 2015 21:57:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.216 with SMTP id 85ls630983ios.106.gmail; Sun, 18 Oct
 2015 21:57:50 -0700 (PDT)
X-Received: by 10.107.167.13 with SMTP id q13mr24441837ioe.12.1445230670401;
        Sun, 18 Oct 2015 21:57:50 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id fa8si326070pab.1.2015.10.18.21.57.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 21:57:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=navyasri.tech@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id hk11so17753660pad.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 21:57:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=+NbxpLOiCj/CZ7rHPMWV8rtVHHqQKkz0Blt1tjb9MMI=;
        b=Qh8v+MG/RJWN00e842tEyGGmNVjDCpUd7hpLr7g/jfrtkUiHqnk8aY85xT0uJ0o2Td
         MPd/4QGqXK0mMUCdQQY0WE28/ubIP5SOtI50CKI6xLXzvt1suP/0qEMOociCKUDBRLob
         ITrSRL5Rd6jYBOBDBWv8ji7k9S2cGmb/IpaNmpeH91Gl+b3Mx6PzUnrvtUGVKSxyXs3l
         DGDCvy9w7982gSnACbDrS6SR1O43NCs6nL2CpaPuaddLudZADZsD7/7RTQC1wW3KkKc6
         OeZ11T2LoP2co1ly82bRkiczDymuVBywy8guIzpU7/mCKI5WJ0+Um/MCdl9xBAqsseYX
         ogdg==
X-Received: by 10.66.100.166 with SMTP id ez6mr32370152pab.78.1445230670262;
        Sun, 18 Oct 2015 21:57:50 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from navya ([61.12.40.177])
        by smtp.gmail.com with ESMTPSA id ez1sm1110135pab.6.2015.10.18.21.57.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 18 Oct 2015 21:57:49 -0700 (PDT)
Date: Mon, 19 Oct 2015 10:27:46 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: emxx_udc: Add space around operator.
Message-ID: <20151019045746.GA4126@navya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the checkpatch.pl warning about
addition of space around the '>>' operator.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index 0492747..60604c8 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -211,7 +211,7 @@ static u32 _nbu2ss_get_begin_ram_address(struct nbu2ss_udc *udc)
 		}
 
 		if ((data >> 16) > last_ram_adr)
-			last_ram_adr = data>>16;
+			last_ram_adr = data >> 16;
 	}
 
 	return last_ram_adr + use_ram_size;
-- 
1.9.1


