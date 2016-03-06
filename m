X-GM-THRID: 6256318835401424896
X-Received: by 10.182.110.163 with SMTP id ib3mr13926177obb.43.1457288413305;
        Sun, 06 Mar 2016 10:20:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.106.139 with SMTP id e11ls1642671qgf.48.gmail; Sun, 06 Mar
 2016 10:20:12 -0800 (PST)
X-Received: by 10.140.29.75 with SMTP id a69mr14020910qga.0.1457288412647;
        Sun, 06 Mar 2016 10:20:12 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id y20si2575100pfa.2.2016.03.06.10.20.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 10:20:12 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id q6so2146912pav.0
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 10:20:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=12BMPP9yJ+Ee6TwVKYgj9S0ebV/k6LYEAc9ZgqQK3Kc=;
        b=m72g+Vflmvq9w9uPmSEMv5pikAnwRNoU0Iij6rsnYUq+XVlsoLxLwOWk9dHqY/vjX8
         69SKXA3s+Dj1/FHBptSKoWzRPUxRhBkJg7JWCkDt1sWSe5/HLsfFKf/glER5ACVb7Hns
         T45WuScCimQazEhCS9RIiT5HGj4bvNEIce97zCwYJmDJbUi/WXkxBMpz/nsGaThtsimy
         yvLFzz9BQnp9eMY+uymLqFaEPMuD4Lvd4YoS+oBAgQfTsuYr/COM0YvsLkpd6cUUV28u
         xp5LPgJu3IHj3AHVKiec9tWr7yYd7Ife/xe7h6M5NDQAuS+h6UA11ameDglVJLbCowGG
         gJtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=12BMPP9yJ+Ee6TwVKYgj9S0ebV/k6LYEAc9ZgqQK3Kc=;
        b=C5HuRQsdRJW0of04eaYdNeWhzDN4CxWtJ2bB629oUNCuZQzw+waeKXpNpjby/C243O
         sT5xRQCc56jNfs9u7DaJEtOjQOqyOqZJ5sdK8mLb6rY5kmBAFnYZlmqYl9HRVvUDe5l2
         TGK7pCOzTG4VoOjJCQ47vuS78oeVDFESvua08BOwbloftPpJVtQ8dZRJDuyLmpV1agZA
         azwWl1/aFK57U8lBM3ognmqigdvEp99yMCpOMbvC9yO4p0GGCxjHmmw4euYYHh5s/ZhT
         LMMIB8M2mtvn8Y6e6qditMH6Qev/1YNIRFfKKz8wAxoXdXAPFpSRIKJ6QlgbM7nMY/24
         LQXA==
X-Gm-Message-State: AD7BkJISn97IwvcI0hx9Q3mQpYU4wjUBPmCsorW2i5JNytahp8FH3AhVi4T890+Ki++pvA==
X-Received: by 10.66.193.161 with SMTP id hp1mr27936145pac.9.1457288412459;
        Sun, 06 Mar 2016 10:20:12 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.154])
        by smtp.gmail.com with ESMTPSA id 90sm8517239pfh.48.2016.03.06.10.20.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 10:20:11 -0800 (PST)
Date: Sun, 6 Mar 2016 15:50:35 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: most: Use usb_endpoint_dir_in(endpoint) instead
 of (endpoint->bEndpointAddress & USB_DIR_IN).
Message-ID: <20160306102035.GA4590@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use usb_endpoint_dir_in(endpoint) instead of (endpoint->bEndpointAddress & USB_DIR_IN) to check if the endpoint has IN direction.
This correction is based on following semantic patch,

@@
struct usb_endpoint_descriptor *endpoint;
expression E;
@@

(
- endpoint->bEndpointAddress & USB_DIR_IN
+ usb_endpoint_dir_in(endpoint)
|
- endpoint->bEndpointAddress == USB_DIR_IN
+ usb_endpoint_dir_in(endpoint)
|
- (endpoint->bEndpointAddress & E) == USB_DIR_IN
+ usb_endpoint_dir_in(endpoint)
)

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v2:
* No change.
*Compile this patch to check nothing is broken.

 drivers/staging/most/hdm-usb/hdm_usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/hdm-usb/hdm_usb.c b/drivers/staging/most/hdm-usb/hdm_usb.c
index 9d5555d..78031ab 100644
--- a/drivers/staging/most/hdm-usb/hdm_usb.c
+++ b/drivers/staging/most/hdm-usb/hdm_usb.c
@@ -1299,7 +1299,7 @@ hdm_probe(struct usb_interface *interface, const struct usb_device_id *id)
 		tmp_cap->num_buffers_streaming = BUF_CHAIN_SIZE;
 		tmp_cap->data_type = MOST_CH_CONTROL | MOST_CH_ASYNC |
 				     MOST_CH_ISOC_AVP | MOST_CH_SYNC;
-		if (ep_desc->bEndpointAddress & USB_DIR_IN)
+		if (usb_endpoint_dir_in(ep_desc))
 			tmp_cap->direction = MOST_CH_RX;
 		else
 			tmp_cap->direction = MOST_CH_TX;
-- 
1.8.3.4


