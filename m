X-GM-THRID: 6612482196656619520
X-Received: by 2002:a62:1f41:: with SMTP id f62-v6mr8020033pff.59.1539588485647;
        Mon, 15 Oct 2018 00:28:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:4b16:: with SMTP id y22-v6ls1060222pfa.1.gmail; Mon, 15
 Oct 2018 00:28:04 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61az6gd9ZJrNf6CVVKQOkVhjpkkfH57gIy2PuPC4qcc5ZEuOhJPvWqBLWKv0aeoeqcRzrWR
X-Received: by 2002:a63:84c1:: with SMTP id k184-v6mr7622699pgd.42.1539588484909;
        Mon, 15 Oct 2018 00:28:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539588484; cv=none;
        d=google.com; s=arc-20160816;
        b=bL56wnPUhT0UTN+b5xo2PvnwDXZkbqfHBsSU2tBuk/aMyOJDDs0mEZIrC9cywpV2x4
         Ba99GK7z7f3njizSlzDR6FIutjzN7SYMSpVBNqC+i0emsOdAm8N4VGkx2DR+wsj5ZxON
         aTC9bvqEiFd/8j9gxdu0sZRIMsKz9nFZFQ7CC/EETh2ZdAotFkmjz2jsMDfRyZnDhtwF
         CeM8W7mlWWraibvkzTpsrQKOPbU1u6DZpjvwIyRpfqd+MW9+oBHw40hMXCNiJS2zoyXI
         /k+x2NWXonwKtEMJcr5diodUz3i9TrIiFdPrO+AWbgRCTLmIXx5/Le+5llFa+H1BDiNB
         APwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=laN4czfZGnGK4QR6cF9WDK7fznQRXp9iQ1NawZPdeoI=;
        b=OknCVPTOej8fQfRwaDGf2TqOR2Kix3+qs4MWjyL9dblZkI6lgr3/E9dSmiZ+qfFRJw
         Mn+sg0p6CEfGqanMjipLeHIQJoY627E+H5p8YZOBmPzRa2PwLB98ZV0IkN7UG954hkC+
         //qwEggQOFEqY7WWDaH9WdrSJrawhSSVgej7vii61bMmPNQ8Jey3AIAfFfuG11qqigqQ
         EoH9YlSt4A6ItZ0DJMMeM/MgvgW7C8RXufOXplLcX5+pReflfjkYYzqF/wwohSZ1GbQR
         mxZbLjKKBDhWT576259ayykVAY1o4lGh+sl7Qt5wqZDGqD4CE803g1OQ1rwZp3QN4HKB
         xvFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DZ02rY8I;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id 193-v6si258924pgc.3.2018.10.15.00.28.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Oct 2018 00:28:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DZ02rY8I;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x531.google.com with SMTP id i4-v6so8728912pgq.9
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Oct 2018 00:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=laN4czfZGnGK4QR6cF9WDK7fznQRXp9iQ1NawZPdeoI=;
        b=DZ02rY8Igp43v6fDzltXvnA0Fo2X9tGV03xzTQHRY2pIuFc3GcYXPO+LjxMh0AcBRP
         JrqPsLQngIp6TngMCUtbuUHLpnLflhNCdBeaX3L793Ty3Pe7mdWyBU43qkOnHnlNorb3
         Vs5+CdyIsQjBfRbj6gum965dO63Btc0ucYUEf4J4kKMPXnOsbwDOUJrQJBfkeBBpxgj7
         fmvh9XKFxWd0YUJpAZoHp9FYrofF8+f7slkWuZItFAKFSqJihu3OrQuUei8koojo3s8c
         q7AgSEAWi89KA15jUKQDkaEq5TVCG9/j/wPJVFTf9bZR6J24pY2376tqc1NnJcX6UuO4
         g9zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=laN4czfZGnGK4QR6cF9WDK7fznQRXp9iQ1NawZPdeoI=;
        b=L0f++vCRXPau3hwLCCSKOEZtiO+CstZWTKHZq8wBxfaHNcJVw9ko75rV4pk/zHaouz
         j/+Ethv/A52BgZJY/QlisfsGaaHXhvpy7mmcUXDmeGs6PoDye7S9FqXjPjyM5wBZaZlW
         4gvuw3WAqKDZ7qE3cBL1EHsoUG0QHssORDd9HnxKQ9sEuDtzsJcma4iG0LyK7G6iPnoZ
         Wic9xtIATz0lrcBkXf1t1Bi77BBXnwZCxmpBkhWVjEArlAIE7EThxgZAOqShCTG+Eib8
         UijsXCUax8WTYrdGWvaP6ACC2ZKJ49trz2g3JBV0iBNFOTgSsK1SA1ga7B03vCvQeHTx
         QK1g==
X-Gm-Message-State: ABuFfogaeYqLS+xGdBx437Phl1DJcfF93tFq2GzIxiNlKl/48kE4mykR
	FeYwSoshIgfjle8anPTnJJY=
X-Received: by 2002:a63:5816:: with SMTP id m22-v6mr14850847pgb.332.1539588484461;
        Mon, 15 Oct 2018 00:28:04 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from aakashd-VirtualBox ([183.82.102.247])
        by smtp.gmail.com with ESMTPSA id b62-v6sm17800112pfa.159.2018.10.15.00.28.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 15 Oct 2018 00:28:03 -0700 (PDT)
Date: Mon, 15 Oct 2018 12:56:53 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eric Anholt <eric@anholt.net>, Stefan Wahren <stefan.wahren@i2se.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Subject: [Outreachy kernel][PATCH] staging: bcm2835-camera: Remove 'ret'
 variable
Message-ID: <20181015072653.GA14133@aakashd-VirtualBox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

return value to be returned without using extra variable 'ret'.
use coccinelli semantic patch ret.cocci

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index c04bdf0..a124f51 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -1510,7 +1510,6 @@ static int set_camera_parameters(struct vchiq_mmal_instance *instance,
 				 struct vchiq_mmal_component *camera,
 				 struct bm2835_mmal_dev *dev)
 {
-	int ret;
 	struct mmal_parameter_camera_config cam_config = {
 		.max_stills_w = dev->max_width,
 		.max_stills_h = dev->max_height,
@@ -1526,10 +1525,9 @@ static int set_camera_parameters(struct vchiq_mmal_instance *instance,
 		.use_stc_timestamp = MMAL_PARAM_TIMESTAMP_MODE_RAW_STC
 	};
 
-	ret = vchiq_mmal_port_parameter_set(instance, &camera->control,
+	return vchiq_mmal_port_parameter_set(instance, &camera->control,
 					    MMAL_PARAMETER_CAMERA_CONFIG,
 					    &cam_config, sizeof(cam_config));
-	return ret;
 }
 
 #define MAX_SUPPORTED_ENCODINGS 20
-- 
2.7.4


