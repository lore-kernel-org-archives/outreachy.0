X-GM-THRID: 6252308314150928384
X-Received: by 10.28.47.211 with SMTP id v202mr596135wmv.3.1455728969725;
        Wed, 17 Feb 2016 09:09:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.99.19 with SMTP id p19ls3056970qge.24.gmail; Wed, 17 Feb
 2016 09:09:29 -0800 (PST)
X-Received: by 10.129.25.212 with SMTP id 203mr2424510ywz.35.1455728969195;
        Wed, 17 Feb 2016 09:09:29 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id 79si343555pft.0.2016.02.17.09.09.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 09:09:29 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x232.google.com with SMTP id c10so15047089pfc.2
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 09:09:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=UlUHVWbhHaTEq0I0y4fVCtq2ipAQxumCT/seD5li8Zs=;
        b=fh2GLQ80O7ZRgNpBMVtirLZgHZY+m6qhJsu63iexKMv/eaYShVOsZDpCOjKMkyXYQX
         bgV4I65YsMEP7uRnM31U9y6X1GLGRwAR273SPngAN1A02CV2ljE8kZDL7oV/mMD/9iK0
         uoYTqqZM+rKhAlp+JQdFKqC0my7EYLzwTvDV6/5B7CdU7AjA/WcVUSilHWBMv9RPEhFg
         5RKd18PtNg0ympu2ykdkic+gNVw9Aauer4uajdIDBMP3ILBJUCZzsFxN86RAcfDCyhaP
         USnhVm+SJGepvbg5tcv5/tpa35UThDO6LzSZE+oeaedAWr+bXAZdqoQ8IpZ9i3NaGTgU
         kW6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=UlUHVWbhHaTEq0I0y4fVCtq2ipAQxumCT/seD5li8Zs=;
        b=h1xYKX2aw2Nos3Yc9phfNKRdODk6tGQi4/hm+rYTHmyWTbHnlCn8VRZ0/Fm/tj1d+r
         IKKoEAufFuZltWm+9EgehuaS7+vDQqMxwe5bHDIiuTyaKWs+jxm4bMmiTzjb/Izj9IbI
         I/vKSnYU5r4EDV5YK0q4KQ13enqQIgX8M4bUHyM6heNDmCZCE2DnK2KZ+1kXXnksZM7P
         JtXvQsKTsH9TrAPbdv8G8OU9Co8yyMWJxGhUxBm1fIrXQRH3i0XXWUamfeyommiL1Drg
         rWbYP2aUvjrwbtpFJ5cb2IsP5ezEUVnIdjEVM1ESrei1qJ/exUp5btiT8fzUYS4aeYAn
         bwvg==
X-Gm-Message-State: AG10YORHkk2YkF9opW2+NuEIcmX0HkP/KO1nwewox8KvkaXKv5t2RWK+sl/+WieUo89Lvw==
X-Received: by 10.98.70.80 with SMTP id t77mr3564094pfa.107.1455728969029;
        Wed, 17 Feb 2016 09:09:29 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-72-178.dhcp.embarqhsd.net. [67.232.72.178])
        by smtp.gmail.com with ESMTPSA id v75sm4024764pfa.39.2016.02.17.09.09.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 09:09:28 -0800 (PST)
Date: Wed, 17 Feb 2016 09:09:27 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vt6656: use 0 in test for successful urb status
Message-ID: <20160217170915.GA4387@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Replace STATUS_SUCCESS with 0 in urb->status test.

Successful usb status is simply 0.  STATUS_SUCCESS is defined
for NDIS status in this driver, but was being misused in this case.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/vt6656/usbpipe.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
index f27eb9a..5551b4f 100644
--- a/drivers/staging/vt6656/usbpipe.c
+++ b/drivers/staging/vt6656/usbpipe.c
@@ -116,7 +116,7 @@ static void vnt_start_interrupt_urb_complete(struct urb *urb)
 		break;
 	}
 
-	if (status != STATUS_SUCCESS) {
+	if (status != 0) {
 		priv->int_buf.in_use = false;
 
 		dev_dbg(&priv->usb->dev, "%s status = %d\n", __func__, status);
-- 
2.1.4


