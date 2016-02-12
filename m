X-GM-THRID: 6250228823501045760
X-Received: by 10.182.29.41 with SMTP id g9mr46463646obh.27.1455244799766;
        Thu, 11 Feb 2016 18:39:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.251.202 with SMTP id zm10ls782730obc.51.gmail; Thu, 11 Feb
 2016 18:39:59 -0800 (PST)
X-Received: by 10.182.87.2 with SMTP id t2mr46634795obz.20.1455244799286;
        Thu, 11 Feb 2016 18:39:59 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id u66si1369489pfa.2.2016.02.11.18.39.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 18:39:59 -0800 (PST)
Received-SPF: pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=rakhish1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x232.google.com with SMTP id x65so39556743pfb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 18:39:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=q9KsJjS0Q1IAMKYN6PGhAGEtssnuBEOR0y/90YmjhZk=;
        b=f2M1xfLKsonZN2n/POXQ8JQnwZvxK3NPYBcj48EoT9E24PUVTiX+357R0ZOmQP4LvH
         ouOh8Lq1h7i4giccSS94W18Mmh3Knttql2KdG+kprK+5F1Jt2lTaOATygux6JSzIRTEW
         QbPfYwtOuE55tUCggoU0R9XQ8UEoEnNl4psPDBqhALXjceuUwOElzR8M6vLcXE2PleIY
         HfkxYk5wzyc4h5fpoThohvEfSwdqIGC/Q+alNodFKhB2S/Zu30tKAtGfh5eAsxfRFbO1
         54KuMedjZ4fCHHyhtGOG4V09spvLa2Oi2pwGjWeiIvfCCM6+1kGVUZbkjTAs1u8ZDoRV
         YL8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=q9KsJjS0Q1IAMKYN6PGhAGEtssnuBEOR0y/90YmjhZk=;
        b=Bga5jiATDEdPbNd+PB3hRwsJIBDQ6RUlOEJJGTGT6nOjf9JC/NTujFov6vraLvNXoc
         pVqHvp4IJCZH3kbPvlPVpQ4jvmWvHDieO68RIMJk+0h63IYrfNRPgJCW1LROnzc8P4D8
         i5YmDp+/XTjhGDTA6T+lMdObikhElBRHOS26WO5U8T8YnpdCjNqZwW1PeJ2CGkObG9Xn
         td06sBfQB053kwy2YY4VzSyu99Rf6ZvWbDTM7xAf2rqmJGz0j0M3vpQM2Ax9NO/duX/4
         AAsL+OBeb24XoVCpuFOuviVQZBTh9rIA+jX1q2W1C4ItRru0wrvDvaixNF0LtZbSYLzP
         2rMw==
X-Gm-Message-State: AG10YOTphCtNpcN9QpJxV1NBt3AN2qnsGsQxkkoIBiPe9p5zv/1sUxqJTljnqC7fN03dCw==
X-Received: by 10.98.16.150 with SMTP id 22mr41759461pfq.128.1455244799131;
        Thu, 11 Feb 2016 18:39:59 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from rakhi-Inspiron-3542.4.2.2.2 ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id ah10sm15199093pad.23.2016.02.11.18.39.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 11 Feb 2016 18:39:58 -0800 (PST)
From: Rakhi Sharma <rakhish1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: julia.lawall@lip6.fr,
	daniel.baluta@gmail.com,
	Rakhi Sharma <rakhish1994@gmail.com>
Subject: [PATCH 3/3] staging: rtl8712: Replace kmalloc by kzalloc.
Date: Fri, 12 Feb 2016 08:09:46 +0530
Message-Id: <1455244786-6824-1-git-send-email-rakhish1994@gmail.com>
X-Mailer: git-send-email 1.9.1

Mainly the issue is that bool variables can have invalid values.
So as memory allocated with kmalloc() is essentially random, any struct
that contains bools, is allocated with kmalloc() and doesn't have the
bools explicitly set might have invalid values.
This is easily fixed by allocating it with kzalloc().

Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_io.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl871x_io.c b/drivers/staging/rtl8712/rtl871x_io.c
index fbbc635..2891b82 100644
--- a/drivers/staging/rtl8712/rtl871x_io.c
+++ b/drivers/staging/rtl8712/rtl871x_io.c
@@ -60,7 +60,7 @@ static uint _init_intf_hdl(struct _adapter *padapter,
 	set_intf_funs = &(r8712_usb_set_intf_funs);
 	set_intf_ops = &r8712_usb_set_intf_ops;
 	init_intf_priv = &r8712_usb_init_intf_priv;
-	pintf_priv = pintf_hdl->pintfpriv = kmalloc(sizeof(struct intf_priv),
+	pintf_priv = pintf_hdl->pintfpriv = kzalloc(sizeof(struct intf_priv),
 						    GFP_ATOMIC);
 	if (pintf_priv == NULL)
 		goto _init_intf_hdl_fail;
-- 
1.9.1


