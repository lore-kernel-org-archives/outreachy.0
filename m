X-GM-THRID: 6803652137195667456
X-Received: by 2002:a65:6909:: with SMTP id s9mr12037191pgq.92.1584098706352;
        Fri, 13 Mar 2020 04:25:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a9c1:: with SMTP id b1ls4050417plr.11.gmail; Fri, 13
 Mar 2020 04:25:04 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu1JRoTH6w8+ZYlbRbUEgHoxZdXA0Le+2X3RN3nrsXQJeZmUuGrbwWybtPMwqQoFcDnW+tn
X-Received: by 2002:a17:902:7d94:: with SMTP id a20mr13314290plm.307.1584098704661;
        Fri, 13 Mar 2020 04:25:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584098704; cv=none;
        d=google.com; s=arc-20160816;
        b=zVqIV/q4EgJ5fMFHxYv4+HdYRWziClL/l6AJI5tLi2uiS4eqzNrFZuvj2eLzVQEDal
         0ieMKbEB40K2NZBykmEIWRRaOk36y8q8xTzpUXMmyvIi+odl4HHTv8bMQn1WCsA/SPWI
         ih/iUpwRdyo2+aCUrjMq+B/wmLDK0bAmEJJcwt/cTJL5x8qcWLNFYs5WkdzcCTXZBi6/
         df3rM58EiGGHkv7pXIGFVMYLEhL1n3X1bINwmySz0j9SeHYJUCHBviyrQIbJn6M6DzSi
         fqPf4MlqK0/DSgCQh4NQ6458RR56mM6xrIV6PnVgEx26rAJdGKzuoLBdDn5hSnXEeRDk
         DRZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:dkim-signature;
        bh=YSkGa2UvwX+1eAP/7tt1QNSs+cG/P3JEIi8YH4DrwtI=;
        b=OMWoJXBcRi9gU/fRo46FcviGGvIJ8COInoyWyyaDq1MKiilXgSF7pympWg27DWBUL0
         0ERQ1PEPPWywmIpZRAygiCXWypBS/stKizvN/s6/rhoDu8fWtkDUm3cyzPd6mgxS1TdA
         Zqe7XvMvY3eOxOQgMdbCMMZOs9deNcbVrJxMg38iqSFdcOvzuObSMMgF/uszZhdYgV2q
         mNyGOQ+7/aPAFiKj8F3ZPHEGdhpbIlun03S0XlX7xf9NmmBHfFfe55HEaOzAUMW9UP19
         HRcEarZ+wM+aPYDRP3DmpayI7zBtCRTDFBXqz/hSG+pr6ZAc+HzK8xrVQas7tu/gueU/
         XnJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ds12Pbz5;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id ng10si159728pjb.2.2020.03.13.04.25.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 04:25:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ds12Pbz5;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id 37so4811725pgm.11
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 04:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=YSkGa2UvwX+1eAP/7tt1QNSs+cG/P3JEIi8YH4DrwtI=;
        b=ds12Pbz56P3HtbbsNiP4zu8oLtv3DjT0vb9zDsJp975Z7iWT+UKql7Bn1CkRWx/e+Z
         lhHdDYzzewJ0hOIL29hwJcGLYEwZXnsQQ7j/8DWWJiZ0fq3dt7T5IFczsndvW2IAKj56
         6wVOm9bWVjGqxkNIZGRpKm4PXbyb9TyJxux37s3ASVI2BmtOMyvWRtqFSgnRbJZK4xW5
         lpGgT5PBTw0HyO559MN+VBkV+5rIvXlP91pA4yLTkQESr8+XQ0zIVB6nhjvlzO9UQ3Wh
         7Gjt4KQnntaCUkE/cQ/e0nDuF3SPxxKH0T9EZ5QQhrzMXqJs1JFaJJpz0uJoN+P4YEWM
         fxjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=YSkGa2UvwX+1eAP/7tt1QNSs+cG/P3JEIi8YH4DrwtI=;
        b=JWxIxeIBhW5RtSS8bRfwLaFztOBLB5mhBAG4+Bc391N5bjONS4smsoRiodgwmVy6Mn
         YIkv//V4blJsqVGhzHfpMurliVZJgxn8ybpwcPIBLsnO9ToikLKbY06vMalXTiBRBJqn
         rnAHG47bfD0ImlrD8wpDXmqTYzP9G+V+tbsISWD0qPlRYB7inrSVOQWCrbANzksp9wKQ
         zPspmH0hNIX4U6lHLj9l78Jchr4x/vUGrCslwLIYkO7HqsyrfYEFp5XZhc2YKW63jSzT
         PAKp9K5oiOnEHm+HLbH8GGVraHX7RWFsrGx6rdrihyCazSGzmancWwTgmEO8ncngGLJ1
         bDzQ==
X-Gm-Message-State: ANhLgQ0WkFAm8xewDn3ffIkDd6FrtTT/9Xn80gall3BUTPT9ATEc2SVe
	HeBQPNfblqBpePULO8bqwwVolLn6UHw=
X-Received: by 2002:a63:6944:: with SMTP id e65mr13251443pgc.406.1584098704226;
        Fri, 13 Mar 2020 04:25:04 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from localhost.localdomain ([2405:204:22f:d418:f8a5:7ca8:f99b:fa30])
        by smtp.gmail.com with ESMTPSA id q26sm2094820pff.63.2020.03.13.04.24.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 04:25:03 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: adham.abozaeid@microchip.com,
	ajay.kathat@microchip.com,
	linux-wireless@vger.kernel.org,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	sbrivio@redhat.com,
	daniel.baluta@gmail.com,
	nramas@linux.microsoft.com,
	hverkuil@xs4all.nl,
	shreeya.patel23498@gmail.com
Subject: [Outreachy kernel] [PATCH] Staging: wilc1000: cfg80211: Use kmemdup instead of kmalloc and memcpy
Date: Fri, 13 Mar 2020 16:54:51 +0530
Message-Id: <20200313112451.25610-1-shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.17.1

Replace calls to kmalloc followed by a memcpy with a direct call to
kmemdup.

The Coccinelle semantic patch used to make this change is as follows:
@@
expression from,to,size,flag;
statement S;
@@

-  to = \(kmalloc\|kzalloc\)(size,flag);
+  to = kmemdup(from,size,flag);
   if (to==NULL || ...) S
-  memcpy(to, from, size);

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---
 drivers/staging/wilc1000/cfg80211.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/cfg80211.c b/drivers/staging/wilc1000/cfg80211.c
index 54e02807cebf..4bdcbc5fd2fd 100644
--- a/drivers/staging/wilc1000/cfg80211.c
+++ b/drivers/staging/wilc1000/cfg80211.c
@@ -1142,14 +1142,13 @@ static int mgmt_tx(struct wiphy *wiphy,
 		goto out;
 	}
 
-	mgmt_tx->buff = kmalloc(len, GFP_KERNEL);
+	mgmt_tx->buff = kmemdup(buf, len, GFP_KERNEL);
 	if (!mgmt_tx->buff) {
 		ret = -ENOMEM;
 		kfree(mgmt_tx);
 		goto out;
 	}
 
-	memcpy(mgmt_tx->buff, buf, len);
 	mgmt_tx->size = len;
 
 	if (ieee80211_is_probe_resp(mgmt->frame_control)) {
-- 
2.17.1


