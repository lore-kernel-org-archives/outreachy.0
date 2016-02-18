X-GM-THRID: 6252706345988915200
X-Received: by 10.182.79.134 with SMTP id j6mr8554989obx.4.1455821643158;
        Thu, 18 Feb 2016 10:54:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.139 with SMTP id m11ls5643699qge.62.gmail; Thu, 18 Feb
 2016 10:54:02 -0800 (PST)
X-Received: by 10.129.102.215 with SMTP id a206mr8832191ywc.40.1455821642489;
        Thu, 18 Feb 2016 10:54:02 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id 79si1153565pft.0.2016.02.18.10.54.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 10:54:02 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id e127so36055959pfe.3
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 10:54:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=2uQHkfSSzGqRTYfeAXCw5xCPJTrqwKklcy70Ez6dFxM=;
        b=FNB+ZzqjhiTbiy2UFbVpdcZNn2sXR00JYtXdw7VoYsxQcTQlrmuGVIS1F3zbS5F/Oo
         sM2h6aODpE8dvZSY9RoMlnOs9HY2ltXLNlqfLFBRos1tBuXyEi/11YUQ4h668XnQ6V4N
         xcjQoGYLdGGsdbpJIut8T79XWgXmTluhWVKiZxpBtvH56xl32T8VEDBdeOeXccAFLu4/
         wG6g05jOo7CaiJ11otqqE+F9nM88CIC2hcBaBR8oho83tBphlVLUoV4VpisQVR0XzbBV
         YhjUz5E5kq+8une49jVj7yfV4vnyOUfpEjBNRcj451xuc8oJf2lRFwqT9lEOitm9W28U
         2N/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=2uQHkfSSzGqRTYfeAXCw5xCPJTrqwKklcy70Ez6dFxM=;
        b=S3u7NHNjFXzSIq1AXa+PxHWc5Sti309XucTGPG1LIYGz7AOXshfo2Ezx1h/gTmj8wl
         1rfGuS76McD6xK1Isd3e2x1/SP1ueXHd+dODchsa53EVaQS05leTGFdY/csAdIP6xYrd
         KI/QK5ge06t2dVUeTjDwohtJnNXK/u0mDcr6ZdPsPCxbO3E9ieHZnLZU6IinARsNatLk
         wDXh5v58IF4hG62r3m5SiAbgsWnUaCNIDtAysO/LTxP5rVZSw/Fx/U+8mgKZS73qvjun
         dA9ollA++0vgzSZme6ghZfkrNfqmf+VFIhdkpWqYHkkxaLPoZjw1726+a/iGK/1aBnAR
         O9kQ==
X-Gm-Message-State: AG10YOSxMqRfRJSR+MAoMGAxqp4p2UMrgYp1AgwbynyQMMxWRkhqlJaaIPaDHUFa3gbf7g==
X-Received: by 10.98.64.4 with SMTP id n4mr12362115pfa.58.1455821642305;
        Thu, 18 Feb 2016 10:54:02 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id by3sm11922961pab.39.2016.02.18.10.54.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 10:54:01 -0800 (PST)
Date: Fri, 19 Feb 2016 00:24:30 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8712: Replace explicit NULL comparison
Message-ID: <20160218185430.GA3067@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Replace explicit NULL comparison with ! operator.
Found with Coccinelle.

@@
expression e;
@@
- e == NULL
+ !e

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8712/xmit_linux.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/xmit_linux.c b/drivers/staging/rtl8712/xmit_linux.c
index d398183..f8866d7 100644
--- a/drivers/staging/rtl8712/xmit_linux.c
+++ b/drivers/staging/rtl8712/xmit_linux.c
@@ -131,7 +131,7 @@ int r8712_xmit_resource_alloc(struct _adapter *padapter,

 	for (i = 0; i < 8; i++) {
 		pxmitbuf->pxmit_urb[i] = usb_alloc_urb(0, GFP_KERNEL);
-		if (pxmitbuf->pxmit_urb[i] == NULL) {
+		if (!pxmitbuf->pxmit_urb[i]) {
 			netdev_err(padapter->pnetdev, "pxmitbuf->pxmit_urb[i] == NULL\n");
 			return _FAIL;
 		}
@@ -171,7 +171,7 @@ int r8712_xmit_entry(_pkt *pkt, struct  net_device *pnetdev)
 		goto _xmit_entry_drop;
 	}
 	pxmitframe = r8712_alloc_xmitframe(pxmitpriv);
-	if (pxmitframe == NULL) {
+	if (!pxmitframe) {
 		ret = 0;
 		goto _xmit_entry_drop;
 	}
--
2.1.4


