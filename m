X-GM-THRID: 6256318835401424896
X-Received: by 10.66.146.193 with SMTP id te1mr8684140pab.17.1456662741941;
        Sun, 28 Feb 2016 04:32:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.219.198 with SMTP id pq6ls907658obc.13.gmail; Sun, 28 Feb
 2016 04:32:21 -0800 (PST)
X-Received: by 10.182.53.233 with SMTP id e9mr8846295obp.28.1456662741381;
        Sun, 28 Feb 2016 04:32:21 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id 12si3042445pfb.1.2016.02.28.04.32.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 04:32:21 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id t66so10290744pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 04:32:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=OMzOTt4CazSigiLNxeXx5J4mqyOgAgt5Pi14Kwsv1X0=;
        b=zwzVt9adKNGNSLv75yQMQKrxsDMKBuMoolDFsD0MeiXsf4qxqFtf0B8vVeTpk6It9m
         8aLnyRiB8HV8drvrjju/Wm9yaW8t2fgs8RkigWNUw33PSBaIGUNDhJIMiTbzyFjrg+FA
         OkzBKYAglcH7u8a4iZf0Geqj6yt58P2BYOeF/zPkZHytIg4Q46Ed55zmouOVjRtglvbE
         dL6ltZlOo6ShX+EHgsO5I1+hPVpBTjvm5axHOcDj0vTEC1B3A1ZNRJ05vxJ6y0KMk0FQ
         aQYXzQaQN7o5Zxa19J6FUhVs+NwLQ3OW5qGSwsdLvnw7Tn4LMGAtweBPuv/syPoPBcYc
         RakA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=OMzOTt4CazSigiLNxeXx5J4mqyOgAgt5Pi14Kwsv1X0=;
        b=UGF8FucIyzdf01qyMaD8KZtxOjTqV6N4jBDUdy7+k+anKRTKf5PvGUCjvZuO1ruXiq
         Ry7KXst+yALtgsljsGHycGePhj6a+9hDogT2k1/ee+KlWVKnoQ5FqHMyF31qVQuTVOtv
         d8S44aKWe6ktKI85fRm+W5g5cyVD26Fu5wWFN5qZPnoQhPawr5i6FGCeqfYgTYP5YXPt
         Ozf6fYXlD2oHt0nk6lxCyBqv0XX1RTW643mi1fzVzHnycyrzjbJ0Mx5nK3iX9y0jbSS6
         7bYipHi6+ajSOmP37ywfgmYcAFdbcvzXX//2Zx936bFBLI8/si22DYulrLNug6B1MsXZ
         azpw==
X-Gm-Message-State: AD7BkJIle1nUry0dDhsz95KnLZRN2Vu62YOIrPerHWa0CXvOHcyDweSW2BpSTK57sDI4YA==
X-Received: by 10.98.67.67 with SMTP id q64mr15445302pfa.44.1456662741219;
        Sun, 28 Feb 2016 04:32:21 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.134])
        by smtp.gmail.com with ESMTPSA id dg12sm31245142pac.47.2016.02.28.04.32.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 04:32:20 -0800 (PST)
Date: Sun, 28 Feb 2016 10:02:19 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: most: Use usb_endpoint_dir_in(endpoint) instead of
 (endpoint->bEndpointAddress & USB_DIR_IN).
Message-ID: <20160228043218.GA8192@sandhya>
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


