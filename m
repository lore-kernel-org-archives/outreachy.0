X-GM-THRID: 6249405968751263744
X-Received: by 10.182.137.193 with SMTP id qk1mr35789345obb.50.1455094976943;
        Wed, 10 Feb 2016 01:02:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.102.3 with SMTP id fk3ls127987obb.64.gmail; Wed, 10 Feb
 2016 01:02:56 -0800 (PST)
X-Received: by 10.182.92.226 with SMTP id cp2mr36698963obb.19.1455094976604;
        Wed, 10 Feb 2016 01:02:56 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x241.google.com (mail-qg0-x241.google.com. [2607:f8b0:400d:c04::241])
        by gmr-mx.google.com with ESMTPS id l85si122204ywb.2.2016.02.10.01.02.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 01:02:56 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::241 as permitted sender) client-ip=2607:f8b0:400d:c04::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::241 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x241.google.com with SMTP id y89so878411qge.0
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 01:02:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=JK1CZ8H78z7H45NDTdQrJlcAAL1C2UGdCzfiMUUxakQ=;
        b=YNdkm2B1Km/W8mznDmK6qsOQrakyAAa3B5EnbQC6PpJvCBnAuWUmRNCt641USDe1OC
         8qVVymtDoUyKcHSusvyg1RgDhmQ+Q4NksD3wW5v+KDVcBqcVGxf3SZn3SF4teszme0s3
         4c8FRy18EZKzw1OFrnDyKsscZbGZenVVHyy3WenHAzGKQ1KgNXWXwOVe+zuAJ82LdIGm
         D8lbxwufPMiUtFNtkjEzG/vEWbAFMOcMWkUHzq6CS/eFMBsXIyRoQsTOTnTunvyhVti1
         Vfk6O1xKgT4JVUIMR5MCivskbDCGhIq9EXsg3HStPZkUXbPub2jTBggEfgGsqWC8/Y1S
         C0Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=JK1CZ8H78z7H45NDTdQrJlcAAL1C2UGdCzfiMUUxakQ=;
        b=NWk1KbzJfrABD24zzFmWx+HmC2t6uIXhU440VxNcUkr5k6ypR0leNi0BxoWakveD41
         xgROknEVyfkPV1fQ/1JLBsC+VB+8L4qsdU6J+nL3bFCGrbQYzVTzi9/ChCaxvLghcm+l
         18tf6zqyNxVVXfydUU0gLTrE2Fg0NeN4nKelrp9IlPpcSDpNOfoHSsGG5OEEbF0rQ/EO
         rzALQ7kttRr/DdKp2rW1K925DOTJXyRTAmpdMTiqtwDK88E6XA+s/6AUDN7KUH9d2fbM
         cn1o4NQakB1HA/dw8MgECvWTwSqgB1v7EkFfPd45UF3D3y1lpzZLi2FV2omK7owln/58
         rJQA==
X-Gm-Message-State: AG10YOSKnHl/6LC0nh89T8s4MeI7ix1uyBvk0nGGo+EV1M78IIOen5rbY2qEEM83D/4xbQ==
X-Received: by 10.141.0.212 with SMTP id b203mr47906574qhd.104.1455094976450;
        Wed, 10 Feb 2016 01:02:56 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id v185sm917649qka.10.2016.02.10.01.02.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 01:02:55 -0800 (PST)
Date: Wed, 10 Feb 2016 09:02:17 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: octeon: Add spaces around operators
Message-ID: <20160210140217.GA3026@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Add spaces around operators for better readability. Change suggested by
checkpatch.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
Changes since v1:
 * Applied a similar change to one more line.
 * Resolved the extra space issue created in the previous patch.

 drivers/staging/octeon/ethernet-tx.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
index 82abaec..e229ebf 100644
--- a/drivers/staging/octeon/ethernet-tx.c
+++ b/drivers/staging/octeon/ethernet-tx.c
@@ -95,10 +95,10 @@ static void cvm_oct_free_tx_skbs(struct net_device *dev)
 	for (qos = 0; qos < queues_per_port; qos++) {
 		if (skb_queue_len(&priv->tx_free_list[qos]) == 0)
 			continue;
-		skb_to_free = cvmx_fau_fetch_and_add32(priv->fau+qos*4,
+		skb_to_free = cvmx_fau_fetch_and_add32(priv->fau + qos * 4,
 						       MAX_SKB_TO_FREE);
 		skb_to_free = cvm_oct_adjust_skb_to_free(skb_to_free,
-							 priv->fau+qos*4);
+							 priv->fau + qos * 4);
 
 
 		total_freed += skb_to_free;
@@ -419,7 +419,8 @@ dont_put_skbuff_in_hw:
 		    cvmx_fau_fetch_and_add32(FAU_NUM_PACKET_BUFFERS_TO_FREE, 0);
 	}
 
-	skb_to_free = cvm_oct_adjust_skb_to_free(skb_to_free, priv->fau+qos*4);
+	skb_to_free = cvm_oct_adjust_skb_to_free(skb_to_free,
+						priv->fau + qos * 4);
 
 	/*
 	 * If we're sending faster than the receive can free them then
@@ -430,7 +431,7 @@ dont_put_skbuff_in_hw:
 
 	if (pko_command.s.dontfree) {
 		queue_type = QUEUE_CORE;
-		pko_command.s.reg0 = priv->fau+qos*4;
+		pko_command.s.reg0 = priv->fau + qos * 4;
 	} else {
 		queue_type = QUEUE_HW;
 	}
-- 
2.5.0


