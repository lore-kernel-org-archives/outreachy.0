X-GM-THRID: 6393675902317756416
X-Received: by 10.129.112.83 with SMTP id l80mr3399108ywc.45.1488643687357;
        Sat, 04 Mar 2017 08:08:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.124.81 with SMTP id a78ls1434941itd.2.canary-gmail; Sat, 04
 Mar 2017 08:08:06 -0800 (PST)
X-Received: by 10.99.105.5 with SMTP id e5mr3290206pgc.0.1488643686702;
        Sat, 04 Mar 2017 08:08:06 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si559537pfz.1.2017.03.04.08.08.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 08:08:06 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 187so1906677pgb.2
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 08:08:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=j1OcxbNAUpwux4tIoZ5G66V5QPj27hVubwqgOymKa6A=;
        b=LyYLwjzsSt31BjDvP/lILptJmdN5Iq9qlxM5g38OvtJMyGXeGP43yoGPr6qnYL9Awp
         nOozlP2WCX0e5f2GsVO4sC/f6Kp9E6ASD5Jzcxg6GxahOwTGmR1K9CnDxP2UmcADVPmb
         NNx7DD1bCsCraB6yvgsE54kR94CFAXv/Jb5vzHcdYRnXfj/VyjyQyzIeGBeGEN34GFWj
         JOzQj2Q51vKzkbtbmGVWGfniJcgbncSS1W3csRwm2OBmM/B1Bvy8vMPSUQMyjtSeV39M
         VtdrVeBmGNh1rE5z1/Ido7lkwgw3QjyZsulQOdGidkFC/+hcvuU7iMOnuSKXPqIL5Y2U
         oCCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=j1OcxbNAUpwux4tIoZ5G66V5QPj27hVubwqgOymKa6A=;
        b=DZXPGRgp7PnsyLxYTsBGROEhxgz/Y1sMsvGCPZWJWwWANe/BdbQfTnPRiPIcIIC3YP
         tuKNpCYAh+LbAhdlltD9wwUGiX4+a8npORpUGZnFf5/DXe04pSJTSrvcawUVLAnR47Zz
         MDVlhhxWOj5lWxpirUnYskkh3vkd7jX+i7pXikDxSdbl3qha00F6pB5yqWq6OnbhrjFB
         yAYwTtKIMp7zSDA26PRK2k5vi/f2ioQmNLG403hdjCMkBH5lwaukt62NxcHhKheTDJXC
         aA1Ls0tp9cnvMk+eY5Rt7xr79EU5WdeY7HLC6qJa6GEKzPcLxECWaM420cxuLo/AQKg4
         +Khg==
X-Gm-Message-State: AMke39kaugxxNuoJrXsiIrMxyDFi8V57Zlxd13q/kUPjKqdxfomRolh1v3xamOylysfOcw==
X-Received: by 10.98.201.77 with SMTP id k74mr10571045pfg.74.1488643686503;
        Sat, 04 Mar 2017 08:08:06 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 90sm17671745pfl.24.2017.03.04.08.08.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 08:08:05 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: abbotti@mev.co.uk
Cc: hsweeten@visionengravers.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	johan@kernel.org,
	dtwlin@gmail.com,
	outreachy-kernel@googlegroups.com,
	greybus-dev@lists.linaro.org
Subject: [PATCH 3/3] staging: comedi: Replace "is is" with "is"
Date: Sat,  4 Mar 2017 21:37:51 +0530
Message-Id: <1488643671-24758-4-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488643671-24758-1-git-send-email-singhalsimran0@gmail.com>
References: <1488643671-24758-1-git-send-email-singhalsimran0@gmail.com>

This patch replace "is is " with "is". The replacement couldn't be
automated because sometimes the first "is" was meant to be another
word.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/comedi/drivers/ni_usb6501.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/ni_usb6501.c b/drivers/staging/comedi/drivers/ni_usb6501.c
index 5036eeb..9a0a963 100644
--- a/drivers/staging/comedi/drivers/ni_usb6501.c
+++ b/drivers/staging/comedi/drivers/ni_usb6501.c
@@ -45,7 +45,7 @@
  *	byte 3 is the total packet length
  *
  *	byte 4 is always 00
- *	byte 5 is is the total packet length - 4
+ *	byte 5 is the total packet length - 4
  *	byte 6 is always 01
  *	byte 7 is the command
  *
-- 
2.7.4


