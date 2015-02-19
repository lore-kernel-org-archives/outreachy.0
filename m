X-GM-THRID: 260132831232
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,a7312e608237771f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.25.7 with SMTP id y7mr784246lbf.21.1424372800682;
        Thu, 19 Feb 2015 11:06:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.11.198 with SMTP id ek6ls342950wid.27.gmail; Thu, 19 Feb
 2015 11:06:40 -0800 (PST)
X-Received: by 10.180.105.129 with SMTP id gm1mr922103wib.3.1424372800458;
        Thu, 19 Feb 2015 11:06:40 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x22f.google.com (mail-we0-x22f.google.com. [2a00:1450:400c:c03::22f])
        by gmr-mx.google.com with ESMTPS id i7si6473036wif.0.2015.02.19.11.06.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 11:06:40 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) client-ip=2a00:1450:400c:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesw62 with SMTP id w62so1542549wes.12
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 11:06:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=WI9BY9/t9Scs/5ev8L8hQPXXvGoPnrhwOLFmd4RCkSo=;
        b=ISEKBgdo6vglMC9XR9L00rSpa4SExONNDN8urfQgRmThh+/BNEBNl6KlaykOpo5+GX
         PwFW9cTap6I/G5vZKLtKgMGVQaOJfgwPPSrFqb3QqACurSPKb0R5A1oekjbVHQzOWdvn
         jrqfbs5Vf/+nel1Rl3I/1eZqHHTm3OqhllCcaTno6sxcUYW83OnxBkuEOQyeJftmnm3k
         voQkAM6zJBtVCwEu/V8QwOi1o9FnVRmjmYbcEInxYYCq7o1d07ti7V84qx21LvOIZxsR
         +ws9mJ+pVGR/T8ikIxVbDUV1NtTu0d/u8twF2H7r1MmJMjmG1EaSNs1dqg2RTX2o/Tx8
         /yow==
X-Received: by 10.194.122.71 with SMTP id lq7mr12198883wjb.5.1424372800372;
        Thu, 19 Feb 2015 11:06:40 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.232.173])
        by mx.google.com with ESMTPSA id dj4sm38650540wjc.13.2015.02.19.11.06.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 11:06:39 -0800 (PST)
Date: Thu, 19 Feb 2015 21:06:34 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4] staging: line6: replace init_timer by setup_timer
Message-ID: <20150219190633.GA25908@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch replaces init_timer and 2 step initialization of function and
data by setup_timer to make the code  more concise.

The issue was discovered using the following coccinelle script:

@@
expression ds, e1, e2;
@@

-init_timer (&ds);
+setup_timer (&ds, e1, e2);
...
-ds.function = e1;
...
-ds.data = e2;

Acked-by: Julia Lawall <julia.lawall@lip6.fr>
Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
v2: changed commit message and picked Julia'a ack.
v3: changed commit message again but forgot to update the changelog.
v4: placed the changelog missed in v3.

 drivers/staging/line6/toneport.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/line6/toneport.c b/drivers/staging/line6/toneport.c
index 6943715..f6035ce 100644
--- a/drivers/staging/line6/toneport.c
+++ b/drivers/staging/line6/toneport.c
@@ -396,10 +396,9 @@ static int toneport_try_init(struct usb_interface *interface,
 
 	toneport_setup(toneport);
 
-	init_timer(&toneport->timer);
+	setup_timer(&toneport->timer, toneport_start_pcm,
+		    (unsigned long)toneport);
 	toneport->timer.expires = jiffies + TONEPORT_PCM_DELAY * HZ;
-	toneport->timer.function = toneport_start_pcm;
-	toneport->timer.data = (unsigned long)toneport;
 	add_timer(&toneport->timer);
 
 	return 0;
-- 
1.9.3


