X-GM-THRID: 6255238152853651456
X-Received: by 10.31.153.75 with SMTP id b72mr41352437vke.0.1456411125130;
        Thu, 25 Feb 2016 06:38:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.4.2 with SMTP id 2ls447533ioe.10.gmail; Thu, 25 Feb 2016
 06:38:44 -0800 (PST)
X-Received: by 10.67.30.161 with SMTP id kf1mr41903956pad.21.1456411124747;
        Thu, 25 Feb 2016 06:38:44 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x235.google.com (mail-ig0-x235.google.com. [2607:f8b0:4001:c05::235])
        by gmr-mx.google.com with ESMTPS id xh11si248944igb.0.2016.02.25.06.38.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:38:44 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::235 as permitted sender) client-ip=2607:f8b0:4001:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::235 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x235.google.com with SMTP id y8so14537845igp.1
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 06:38:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=0dlIp+INYMQOrWtIgbCh3ouvPukr+umSfHkhTlNfIT8=;
        b=ebodHLeHgS2RGFQ4j5NxRz2rLsBbTppEdV20o0GL4JETTDXkoUdlWKMzX8HXG4sIwF
         1vAKNtlE09LaQjYW/e92pO3tVRD6De9PECY3fnjzbOrJ/syEG/t7Nk7OuQLAKYxvS9lB
         03RdERIbUufkeiiK5GCLzS/vWkQTjnFtqg1erUxsNzyrLqRnVtRIQ9SjcPfwae0vZejp
         fF1BbM9GcusdxkJjr6nwaWCBBXtBmxwYsiti7s1MuIi4hkxH9PgmSi/6qN8ZSvT7GRuW
         r10U3++uA3/D30x4EV0uJjSfx7c2/zRT+UyQtJVfmcSF/RR0QW9Yz4k+t0+whhI0FQTR
         zDKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0dlIp+INYMQOrWtIgbCh3ouvPukr+umSfHkhTlNfIT8=;
        b=YcRPTaP4Pi5Ig5eorG5OgA2oKjENNzEiOJnIjnoISiP4iMM0jxo8aLGQ8lkE9Ihrv8
         6Q8egmdLTOGPWhpsV3Knyt0SPkyjJ6gBPQBSSmfVzLnDOobWLj9sCBSVOVDSRY3r0rR9
         MVv+IUugAQkzAUDhaMX4RZoC8sSJ7v/MVhVJieRMoJQKrAGrYYvRB53K+JJ8LOBXQIfI
         zAWVyETqCJ7+kd4wAGdjOJyIXO6bPq5y/0zejUvFmwWNdAzf5l33VBWJHIuy90kBtUW8
         b3njF8V6JvBrdklrVlJ/pF9FRDbYbICy5hTPGZtYYnwhcXL1VwkB0AGpeTgkYoydaxL1
         oEjQ==
X-Gm-Message-State: AG10YORE0DhABpt9SI0NuToJtAasMAdYYQFp2PKbuYpedbiFxt2Xazlgf3fVZZ6kcfpkUw==
X-Received: by 10.50.141.164 with SMTP id rp4mr3458387igb.89.1456411124582;
        Thu, 25 Feb 2016 06:38:44 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id qs10sm1355281igb.7.2016.02.25.06.38.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:38:44 -0800 (PST)
Date: Thu, 25 Feb 2016 14:37:56 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rts5208: rtsx.c: Drop unneeded void pointer cast
Message-ID: <20160225193756.GA7305@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Void pointers need not be cast to other pointer types. 
Semantic patch used:

@r@
expression x;
void *e;
type T;
identifier f;
@@

(
  *((T *)e)
| 
  ((T *)x) [...]
|   
  ((T *)x)->f
| 
- (T *) 
  e
)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/rts5208/rtsx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
index 5dfcdfb..024d8fe 100644
--- a/drivers/staging/rts5208/rtsx.c
+++ b/drivers/staging/rts5208/rtsx.c
@@ -713,7 +713,7 @@ static void release_everything(struct rtsx_dev *dev)
 /* Thread to carry out delayed SCSI-device scanning */
 static int rtsx_scan_thread(void *__dev)
 {
-	struct rtsx_dev *dev = (struct rtsx_dev *)__dev;
+	struct rtsx_dev *dev = __dev;
 	struct rtsx_chip *chip = dev->chip;
 
 	/* Wait for the timeout to expire or for a disconnect */
-- 
2.5.0


