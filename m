X-GM-THRID: 6253642223906193408
X-Received: by 10.66.146.193 with SMTP id te1mr20748255pab.17.1456039544914;
        Sat, 20 Feb 2016 23:25:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.130.229 with SMTP id oh5ls487887obb.74.gmail; Sat, 20 Feb
 2016 23:25:44 -0800 (PST)
X-Received: by 10.182.247.97 with SMTP id yd1mr21736553obc.9.1456039544550;
        Sat, 20 Feb 2016 23:25:44 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id ui7si2537665pab.0.2016.02.20.23.25.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 23:25:44 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id fl4so73770595pad.0
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 23:25:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=8sFt4Bep7XNxqW6ceHYlAFjaenU6htus+Fg3RZNqgEY=;
        b=c0J3ho2SxcEn23Hn25lD5PgKeFIKwfW2aOknsBrWU5txXZrG1WVpeCqO7By5kxpjH8
         3JRDy04Y6p9O+3suDFpUdvdf7+q+wU9xnjv7T5kusHKJdrwuTK+dzVh8kAlK0b16q7S4
         eVLeo2M1DuCe4u+d2fTKCwbvfLp1tDD9Yl3LQ+fZkehBYftLZ8BEqgX+ht70T+hisnE7
         EPOLw3HnaHEQ6u83jA2WeORoZW5JNxUDAkP9K9SoZ5uio5GDOmd50HLbViYiRJI0K6Ds
         DkSO6Ria3ZPyp8SSmkjm0Z6JGvvjamCP1hXmsqKJMf0vfkUuF1S0S54XpPNqiZz/KyyK
         oBEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=8sFt4Bep7XNxqW6ceHYlAFjaenU6htus+Fg3RZNqgEY=;
        b=YgmA8+BMoU8zLPbzlkoYg8w/ZtdHATMliRgqgO4cjqvn3BZb1yk+wxxgIUFthuvWKS
         AH11RGqS/8EUNslfcv3LthfJtFxZISHEmdPOamyCk4J4vtdR8Uolzg16sZ1Q9VlAHeUn
         qqmEPt7gUFcgYnibBBrhsvj16RVMFE9b9FSKJnWRLZGCZX8hnr6Vl32YRE26gNoxfZ5+
         Cwru2hmv4Xv/RwwRjBrZOrZ6gV7hhzzcyZeR4rrOXoeY8D/nVgRFoY0kHBG8JIUOL5Oc
         KPrM8sMpwQml61rLUU58hbP79iFcCDbKZNlMqErDTwaZ6yqv0dBd0s0YWRRu8AFHzibk
         epVw==
X-Gm-Message-State: AG10YOQ6Qw2HcZjLuoUKzsyoD+m1e7iPYAtpJBJALCYONLekwaT4EnBmpZQM5Uz0u3mAww==
X-Received: by 10.66.146.196 with SMTP id te4mr29696916pab.125.1456039544434;
        Sat, 20 Feb 2016 23:25:44 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id g25sm28417214pfg.35.2016.02.20.23.25.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 23:25:44 -0800 (PST)
Date: Sun, 21 Feb 2016 12:56:16 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8712: Remove unnecessary cast on void pointer
Message-ID: <20160221072616.GA14914@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The following Coccinelle script was used to detect this:
@r@
expression x;
void* e;
type T;
identifier f;
@@
(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T*)x)->f
|
- (T*)
  e
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8712/usb_ops_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/usb_ops_linux.c b/drivers/staging/rtl8712/usb_ops_linux.c
index c2ac581..454cdf6 100644
--- a/drivers/staging/rtl8712/usb_ops_linux.c
+++ b/drivers/staging/rtl8712/usb_ops_linux.c
@@ -334,7 +334,7 @@ void r8712_usb_read_port_cancel(struct _adapter *padapter)
 void r8712_xmit_bh(void *priv)
 {
 	int ret = false;
-	struct _adapter *padapter = (struct _adapter *)priv;
+	struct _adapter *padapter = priv;
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;

 	if (padapter->bDriverStopped ||
--
2.1.4


