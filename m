X-GM-THRID: 6199997314749169664
X-Received: by 10.140.144.215 with SMTP id 206mr24362183qhq.6.1443549365671;
        Tue, 29 Sep 2015 10:56:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.110.200 with SMTP id ic8ls1290583obb.88.gmail; Tue, 29 Sep
 2015 10:56:05 -0700 (PDT)
X-Received: by 10.182.142.4 with SMTP id rs4mr1449017obb.2.1443549365148;
        Tue, 29 Sep 2015 10:56:05 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id el2si3563780pbb.0.2015.09.29.10.56.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 10:56:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id lk4so12163508pab.3
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Sep 2015 10:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=JCXde3IAQRGHdH2rC1Z8XGuGyFSIu0zAp78UvtTxje4=;
        b=pOSqvME5jOxIQfn8xSPNF4EHEbYpTY73dBu6WCSOB/x3bLzJuybLx5bmNjLiCe1uNb
         Sv3M3eDoKlhK9tZpuHAuHJ3O69a2DTb6z5ai90TnjEYkaBGZyk5WIljihR0ePzhKb0sR
         nWXNZ+GEUTEITBh26aCTz1Has5iIUjz/OlidZpJEcbB1FidQdb28AGCbXDViWj2qNpvz
         7KRqplY2InC6vyzW/Yo/JAosA9KNFYOdOdjeiTNUN7RFXvFsbQuRBtcvjXnLlawGTtZp
         Kmx+sqpRdXdLpKHc5uiKyWKV2owoB0v8qSZQ7tzkS9JhltqwGCt1aiWquvtOqiZxeQJD
         wFNw==
X-Received: by 10.68.135.136 with SMTP id ps8mr34358662pbb.123.1443549364979;
        Tue, 29 Sep 2015 10:56:04 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id pk2sm26767624pbb.21.2015.09.29.10.56.01
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 29 Sep 2015 10:56:04 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Cc: Shraddha Barke <shraddha.6596@gmail.com>
Subject: [PATCH] Staging: media: lirc: Use USB API functions rather than constants
Date: Tue, 29 Sep 2015 23:25:47 +0530
Message-Id: <1443549347-15879-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150206.560AD0B3.006A,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Introduce the use of the function usb_endpoint_type.

The Coccinelle semantic patch that makes these changes is as follows:

@@ struct usb_endpoint_descriptor *epd; @@

- (epd->bmAttributes & \(USB_ENDPOINT_XFERTYPE_MASK\|3\))
+ usb_endpoint_type(epd)

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/media/lirc/lirc_sasem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/lirc/lirc_sasem.c b/drivers/staging/media/lirc/lirc_sasem.c
index b247649a..4230c00 100644
--- a/drivers/staging/media/lirc/lirc_sasem.c
+++ b/drivers/staging/media/lirc/lirc_sasem.c
@@ -702,7 +702,7 @@ static int sasem_probe(struct usb_interface *interface,
 
 		ep = &iface_desc->endpoint [i].desc;
 		ep_dir = ep->bEndpointAddress & USB_ENDPOINT_DIR_MASK;
-		ep_type = ep->bmAttributes & USB_ENDPOINT_XFERTYPE_MASK;
+		ep_type = usb_endpoint_type(ep);
 
 		if (!ir_ep_found &&
 			ep_dir == USB_DIR_IN &&
-- 
2.1.4


