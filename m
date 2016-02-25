X-GM-THRID: 6254962790992183296
X-Received: by 10.140.102.69 with SMTP id v63mr13185700qge.14.1456395870744;
        Thu, 25 Feb 2016 02:24:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.7 with SMTP id rs7ls164246igb.14.gmail; Thu, 25 Feb
 2016 02:24:30 -0800 (PST)
X-Received: by 10.66.136.71 with SMTP id py7mr40896933pab.7.1456395870414;
        Thu, 25 Feb 2016 02:24:30 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id ui7si1126067pab.0.2016.02.25.02.24.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 02:24:30 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 71so2598740pfv.1
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 02:24:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=QcbZa3WV/WOPoiXYIy+d5/rQm2+l9CuzklkrQL/Q2jU=;
        b=Pw4JdnyAvB/1XjOoaC3Za5msMKULuXjlq/Bdb/t2LQlC6rAqlhtPy56BOhUZyXifD6
         si01wxBOYa0NYbrN61UIuaL5FvTb7xg6wCGENMwgz43zJ9BJosKWBXv6SWFxl/RO65BA
         sAZK6juzAl3qSMiqRhg+JmSfh2gEpPMxl/6RDGJrHWa+mSHZ576B868HSS4ZceqgFsfl
         cpe4MwXRGc8W5hxr7GEEhM8XuRsxlJNQrEs+QIaML41HpzQZiTEniJvhDr77VqlLP0aM
         jIRlyGtRJlGdcJ91S7fPdrpF7yTL57HEp63q3TMrgqp0Z3GIHO2Z0KIpBZFe+K0hXPU3
         kEyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=QcbZa3WV/WOPoiXYIy+d5/rQm2+l9CuzklkrQL/Q2jU=;
        b=WbtpH4gnTBfgqWRqEVrMrbs5Ye6BMr2q04dLStue/vcAlBY+ULerIE4auIvLjUNVR3
         5QXlL060+apMBwLeSUrgd7SZsGrzztmmu3wi8CpLrWDdQNUNMkubawmBQY2/UU98IySG
         y699NY1zZpGQQJdybBbnT9qzPYKbu8JGpFODbXF+aFAmuYLkv8TgfOPHuSseiJfFVbE+
         SXT/Jf8N/2Y3r7a5uuHEYrBNorhQkchSQRYFRj5fikQKP0SyAo5tURZHB+e6LwGfZg2v
         0uCJG593giclYabsmX57nYI6qJmNDaxd0RGnHAXpPavOMluIwcsn1h7OJVQizUq6Ukib
         nvxw==
X-Gm-Message-State: AG10YOQ/f/e2bUXWy4Zke29Lf0SbmRLp8q3gOpwnionCDGSFYQkiuTQVLrHxFYxf6iDN+Q==
X-Received: by 10.98.93.205 with SMTP id n74mr61547735pfj.99.1456395870258;
        Thu, 25 Feb 2016 02:24:30 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id xm10sm11180629pab.12.2016.02.25.02.24.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 02:24:29 -0800 (PST)
Date: Thu, 25 Feb 2016 15:55:05 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8712: Make return of 0 explicit
Message-ID: <20160225102505.GA27359@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Delete unnecessary local variable whose value is always 0 and
return 0 as the result.
The following Coccinelle script was used:

@@
identifier ret; expression E;
type T;
@@
(
- T ret;
|
- T ret = 0;
)

... when != \(ret=E
\|ret--\|ret++\|--ret\|++ret\|ret-=E\|ret+=E\|ret|=E\|ret&=E\)
(
?-ret = 0;
)
... when != \(ret=E
\|ret--\|ret++\|--ret\|++ret\|ret-=E\|ret+=E\|ret|=E\|ret&=E\)
(
return
- ret
+ 0
;
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v2:
 -Changed Coccinelle script to remove all occurrences of the variable
 and replace every return associated with the variable with return 0
 drivers/staging/rtl8712/xmit_linux.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/xmit_linux.c b/drivers/staging/rtl8712/xmit_linux.c
index adb51f0..8c15308 100644
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
@@ -187,11 +183,11 @@ int r8712_xmit_entry(_pkt *pkt, struct  net_device *pnetdev)
 	}
 	pxmitpriv->tx_pkts++;
 	pxmitpriv->tx_bytes += pxmitframe->attrib.last_txcmdsz;
-	return ret;
+	return 0;
 _xmit_entry_drop:
 	if (pxmitframe)
 		r8712_free_xmitframe(pxmitpriv, pxmitframe);
 	pxmitpriv->tx_drop++;
 	dev_kfree_skb_any(pkt);
-	return ret;
+	return 0;
 }
--
2.1.4


