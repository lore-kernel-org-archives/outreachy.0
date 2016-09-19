X-GM-THRID: 6332051289282707456
X-Received: by 10.157.16.101 with SMTP id o34mr4456868oto.114.1474295577572;
        Mon, 19 Sep 2016 07:32:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.1.202 with SMTP id e68ls10924223ote.47.gmail; Mon, 19 Sep
 2016 07:32:57 -0700 (PDT)
X-Received: by 10.129.145.5 with SMTP id i5mr13237166ywg.55.1474295577291;
        Mon, 19 Sep 2016 07:32:57 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id m19si1524192itb.0.2016.09.19.07.32.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 07:32:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q2so4712503pfj.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 07:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=fiZ8XdVHaQ8RvWr9AjTm9IGsowOQ2SCZNIvLrGxDklY=;
        b=KqSDnXNFpmCpmNMSIS4aBuqwfu0ROhc90mtu/+XPBteHSxSUiJ5oTn8EkoWOVjod7+
         84j0dwBqGPZT6HDQl5WITMkfoyFZcp5sPhxtRRzQgGWHmAaovcysuPv2+xrZDenTvoI+
         39ZM9bKcs1022LgLqh2fSES40c9QpexizYkZCrSYrRr7IwjJOIwRTXs6hQzKLXN7mIaA
         gmebwwQSVyZUncIBXB6uVXvWtnb2js6HsAhWQPLBeBqgM1j1Gv7fNGeIQ/aqoWynIaxJ
         W6T2YheR0FBRsMkHacUIFyrxrureXHxAZcuW8uyI4nvsWQql9BIF7UuMTt4LpXazxEBv
         M49g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=fiZ8XdVHaQ8RvWr9AjTm9IGsowOQ2SCZNIvLrGxDklY=;
        b=DzMNEbbK+v8YfvTGtWfNzdCv4qPCYgReWgG9br3VDI8UlknwRhhkZPWAWLutsU7lU8
         ajZ8+K+VMpzPoIjTgsdBf1+a8x7tzUySRy17uPCPS5IrWLSj3iuq/sMDC85/UoQqln94
         hx3O0Yb7dZuk3Wyg5/MdNDUjd+7ZrcoTccx1tiSjxTlzvX99jvTLP96zWd7TwssWihVr
         ZUsKrkW1HRFSbkTUvfHSnLC1YJizeDhYNHmgoMtpQfoZAyrDYh9huQtungoTLtdo1ek0
         PSfA6GKJo/+PCvxKOcwn2kkHZ5CAUsldujRDQ+RNBAOnsOmeqrfSdawFeNXVu/21ElYG
         hEFw==
X-Gm-Message-State: AE9vXwP62CLXOWMuVqcVaLzNoQv/iP1YaAVDNVZDoOvylx2gaASVS9NQyxzg+ljcmVmCpg==
X-Received: by 10.98.158.90 with SMTP id s87mr47309595pfd.117.1474295576639;
        Mon, 19 Sep 2016 07:32:56 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.170.35])
        by smtp.gmail.com with ESMTPSA id r7sm9791547pfk.49.2016.09.19.07.32.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 07:32:56 -0700 (PDT)
Date: Mon, 19 Sep 2016 20:02:40 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: i4l: act2000: Move assignment out of if statement
Message-ID: <20160919143240.GA30690@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch places assignments which are inside the if condition, above it.
Done using coccinelle:

@@
statement s;
expression e;
identifier id;
@@
- if ((id = e))
+ id = e;
+ if (id)
        s

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/i4l/act2000/module.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/i4l/act2000/module.c b/drivers/staging/i4l/act2000/module.c
index 68073d0..b862be5 100644
--- a/drivers/staging/i4l/act2000/module.c
+++ b/drivers/staging/i4l/act2000/module.c
@@ -289,7 +289,8 @@ act2000_command(act2000_card *card, isdn_ctrl *c)
 			if (copy_from_user(tmp, arg,
 					   sizeof(tmp)))
 				return -EFAULT;
-			if ((ret = act2000_set_msn(card, tmp)))
+			ret = act2000_set_msn(card, tmp);
+			if (ret)
 				return ret;
 			if (card->flags & ACT2000_FLAGS_RUNNING)
 				return (actcapi_manufacturer_req_msn(card));
-- 
2.7.4


