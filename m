X-GM-THRID: 6343724675739156480
X-Received: by 10.129.85.209 with SMTP id j200mr4614927ywb.40.1477013499869;
        Thu, 20 Oct 2016 18:31:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.27.195 with SMTP id v3ls4376832otv.13.gmail; Thu, 20 Oct
 2016 18:31:39 -0700 (PDT)
X-Received: by 10.129.96.8 with SMTP id u8mr4809288ywb.90.1477013499455;
        Thu, 20 Oct 2016 18:31:39 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x242.google.com (mail-vk0-x242.google.com. [2607:f8b0:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id r142si14458vkf.2.2016.10.20.18.31.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Oct 2016 18:31:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) client-ip=2607:f8b0:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x242.google.com with SMTP id b186so4021888vkb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 20 Oct 2016 18:31:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=V7BF7NOthy1UPKrnMgdlW1aBTJ5wrBiQTlvdsnzF4lM=;
        b=U5anxmaUvTDuBvFKpO3BwsD0KGeoJcA0Y1Yn2z8oySCNiziPJ0h4WRGbXf7Xq65ogG
         lYHViMoLS0x1WIuXXZhYOHUnikQ5TGKQoogxz+uAzkfvySpV6U8eFu9v6rutI4W7AMWX
         IRvUIv/K4AE3g5JMooyzCYuVvAi7mj1RaHl+wUuijGDAmgitzXX2biTJnE7WstecNBva
         Xfc2szizu+YxmwrlHwBgrI+nFtM3i8vnFScV4uWqLJD5kXNktrWUfjsjyQYxr1r1WZit
         1PHYv4hLxR2pm+j+h+/fVwmBiVK1lL0QW2wdGgDXP6IdJYDCtCoQjv/IREwdCDUn027A
         NEWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=V7BF7NOthy1UPKrnMgdlW1aBTJ5wrBiQTlvdsnzF4lM=;
        b=k/ZuOYBBoRttIbOCPIKaHE5rEOwgxiFtPHPmMDA/kqiocOG2Ew+xKOMxceDF/z8xFM
         l7582Thfky3HuwuNx3rPg5INbPuUOkP5Eajd8nII1XaOhkQgVprO7WMejIss5xN1N8qm
         442DY8e4795gRXMChhJFAk60dNOb6vzvbXevVsDhkKVxjElBVdpCW2gPBHo1vvqDG5Uy
         twte1TjiIyBrshhHmQcglv3oQOXlyzcTiqUTMAC4JqKpet3DCn4SNGJ0ykFuxPI8JuYU
         2fuIVQDYmS1XY9WCoaAjb95F+11RS9NMfDitcOhy3HXwT0iiydo3Ca6iPBBeJ3pdhZx3
         PrSw==
X-Gm-Message-State: AA6/9RnTgiHTjtfgqalro2Wuj/K3erSwprZ2F9BjiUWADQJ4O1IEqelrOK2+56R9JNKfUQ==
X-Received: by 10.31.69.204 with SMTP id s195mr4980197vka.105.1477013499251;
        Thu, 20 Oct 2016 18:31:39 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id r85sm26794vke.27.2016.10.20.18.31.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Oct 2016 18:31:38 -0700 (PDT)
Date: Thu, 20 Oct 2016 23:31:33 -0200
From: Elise Lennion <elise.lennion@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] staging: rtl8192e: Standardize test for NULL.
Message-ID: <20161021013132.GA27656@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The test for NULL of the return variable of functions was changed from
(ret == NULL) to !ret to match the standard.

Coccinelle was used with semantic patch:
@@
expression e;
identifier id, f;
statement S;
@@

f(...) { <+...

id =
\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap
\|usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\) (...)

... when any
    when != id = e

+ if (!id)
- if (\(NULL == id\|id == NULL\))
S

...+> }

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/r8192E_cmdpkt.c | 2 +-
 drivers/staging/rtl8192e/rtllib_rx.c              | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_cmdpkt.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_cmdpkt.c
index f9003a2..757ffd4 100644
--- a/drivers/staging/rtl8192e/rtl8192e/r8192E_cmdpkt.c
+++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_cmdpkt.c
@@ -49,7 +49,7 @@ bool rtl92e_send_cmd_pkt(struct net_device *dev, u32 type, const void *data,
 		else
 			skb = dev_alloc_skb(frag_length + 4);
 
-		if (skb == NULL) {
+		if (!skb) {
 			rt_status = false;
 			goto Failed;
 		}
diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index c743182..93ebc26 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -130,7 +130,7 @@ rtllib_frag_cache_get(struct rtllib_device *ieee,
 				    ETH_ALEN /* WDS */ +
 				    /* QOS Control */
 				    (RTLLIB_QOS_HAS_SEQ(fc) ? 2 : 0));
-		if (skb == NULL)
+		if (!skb)
 			return NULL;
 
 		entry = &ieee->frag_cache[tid][ieee->frag_next_idx[tid]];
@@ -1430,7 +1430,7 @@ static int rtllib_rx_InfraAdhoc(struct rtllib_device *ieee, struct sk_buff *skb,
 	/* skb: hdr + (possible reassembled) full plaintext payload */
 	payload = skb->data + hdrlen;
 	rxb = kmalloc(sizeof(struct rtllib_rxb), GFP_ATOMIC);
-	if (rxb == NULL)
+	if (!rxb)
 		goto rx_dropped;
 
 	/* to parse amsdu packets */
-- 
2.7.4


