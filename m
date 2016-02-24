X-GM-THRID: 6254962790992183296
X-Received: by 10.129.70.86 with SMTP id t83mr36874924ywa.22.1456347012758;
        Wed, 24 Feb 2016 12:50:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.34.98 with SMTP id k89ls3148642qgk.69.gmail; Wed, 24 Feb
 2016 12:50:12 -0800 (PST)
X-Received: by 10.140.94.103 with SMTP id f94mr10943943qge.15.1456347012093;
        Wed, 24 Feb 2016 12:50:12 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id ui7si703333pab.0.2016.02.24.12.50.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 12:50:12 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id ho8so19377757pac.2
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 12:50:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=x9udre/ZP8ycZ/OHPyx6inm9clzTO3RaHL/M0cIFfSg=;
        b=e8c6LoYdpRpA1ygpIz3vrT8iqISBvKhyAELYknTne25I4sAvCwCB127o2cswCADpZY
         fiRs07icKS0zSJjfiJqCn8/mjZaLRTNrL88VU2QfBH9JHz4fehztEAOo1QDJLwLZmBaP
         oLSf3ASvM+E94xz/CVeiu5OUo96xsYlo79prgybd1usNDan0GOTkcQG2Jgwu61453Hyq
         eSOqu3PJ5eCG1HFJhkj3CR1LwWmb7Vt1hC1PN4GmZoMVCosIsWpcehPB+ww7pNktzxGw
         YSOSnTHdz/17lgiEbXntHQ9Vdd24U3CU9FFLO8V/63nIJnraqu3ds70pnfHt+exqx5Hj
         zTtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=x9udre/ZP8ycZ/OHPyx6inm9clzTO3RaHL/M0cIFfSg=;
        b=bq7mGzG+7LowP4OKlCUP1MaSgx/1gcV18urZ3+9o5L52AbUmcy0UqmAIrxNWZXvqS+
         J0WM3BtTo4NVm5eylo1dyfVeMclSzdhcPzmvl+wxzS+duH5v3LkmPa6MJxQuuO/g8JvX
         8jkULVZX4ekwrqQpVvhQBsNs8X+gMxokAoQIA+7Lhx/JV33y0LZ7SVQWcHmH/STRzIk9
         YdhN+9DwKRB0R9zqMSuB7khUhVyR756YSuVpboPv0IQUd3qsFk1IKixY1yVvbiJPZUqE
         Cwn2SE5XoygsACHh3S1cMOVTmjNjNjy7V7NWbwWTUDeSWk4bQyFtkrHw9pwGNNgVOUKd
         Ob1w==
X-Gm-Message-State: AG10YORjEjUw7lzc8NoBayJl22tfYGKtz4BLVxv2uKIHcKLffF+AqXkwc/YcT5YNtqcN0Q==
X-Received: by 10.67.5.9 with SMTP id ci9mr57849175pad.101.1456347011912;
        Wed, 24 Feb 2016 12:50:11 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id tn5sm7029227pac.32.2016.02.24.12.50.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 12:50:11 -0800 (PST)
Date: Thu, 25 Feb 2016 02:20:44 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8712: Make return of 0 explicit
Message-ID: <20160224205043.GA23454@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Delete unnecessary local variable whose value is always 0 and that hides
the fact that the result is always 0.

The following Coccinelle script was used:

@@
identifier ret; expression e;
type T;
@@
(
- T ret;
|
- T ret = 0;
)
...
-ret = 0;
... when != ret = e
return
- ret
+ 0
;

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8712/xmit_linux.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/xmit_linux.c b/drivers/staging/rtl8712/xmit_linux.c
index adb51f0..9d6fa6b 100644
--- a/drivers/staging/rtl8712/xmit_linux.c
+++ b/drivers/staging/rtl8712/xmit_linux.c
@@ -163,19 +163,15 @@ int r8712_xmit_entry(_pkt *pkt, struct  net_device *pnetdev)
 	struct xmit_frame *pxmitframe = NULL;
 	struct _adapter *padapter = netdev_priv(pnetdev);
 	struct xmit_priv *pxmitpriv = &(padapter->xmitpriv);
-	int ret = 0;

 	if (!r8712_if_up(padapter)) {
-		ret = 0;
 		goto _xmit_entry_drop;
 	}
 	pxmitframe = r8712_alloc_xmitframe(pxmitpriv);
 	if (!pxmitframe) {
-		ret = 0;
 		goto _xmit_entry_drop;
 	}
 	if ((!r8712_update_attrib(padapter, pkt, &pxmitframe->attrib))) {
-		ret = 0;
 		goto _xmit_entry_drop;
 	}
 	padapter->ledpriv.LedControlHandler(padapter, LED_CTL_TX);
@@ -193,5 +189,5 @@ _xmit_entry_drop:
 		r8712_free_xmitframe(pxmitpriv, pxmitframe);
 	pxmitpriv->tx_drop++;
 	dev_kfree_skb_any(pkt);
-	return ret;
+	return 0;
 }
--
2.1.4


