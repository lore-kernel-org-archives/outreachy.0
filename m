X-GM-THRID: 6254854084926373888
X-Received: by 10.140.104.72 with SMTP id z66mr9029735qge.22.1456321702096;
        Wed, 24 Feb 2016 05:48:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.41.85 with SMTP id y79ls2949651qgy.63.gmail; Wed, 24 Feb
 2016 05:48:21 -0800 (PST)
X-Received: by 10.140.30.99 with SMTP id c90mr8967188qgc.2.1456321701498;
        Wed, 24 Feb 2016 05:48:21 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id ff2si416133pad.2.2016.02.24.05.48.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 05:48:21 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id y7so936744paa.0
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 05:48:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=XPrM914G81+9mHkmmcTH4x3NcYYIoSnXDKH8QdMgF3s=;
        b=D9/sMBU5DI+UP6dhdW4KHNmpDV/XNrP9ivuv3CZndg6gJ4fqI+JcVOkv47v7jFv1eR
         l/GJqFJ1XuZsAoIgGF4ZuhUEVyIPK0o6lA1bczzX1tMtYG5sSB+cJ8zyD3lxt7KvbXmS
         S+hpxdlND4ExMXY5HiIWHTxqfcZvONd+/dA+tG0IGjVKj0KKiIdUu4Wha+t/urWYLrxM
         P+EkE77S8olAlchx7GikeWTfx+I5VrBNbYFhN3RpuP2JPaNAXCiTpoom8DLOI5mE9CaV
         Z7bqMIvW4qWfZx0s8s24W9mZB0hSOmBIfTfz3epTISQ7Ui9K2eb0NbjnM3+wHYXVVSw7
         kGww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=XPrM914G81+9mHkmmcTH4x3NcYYIoSnXDKH8QdMgF3s=;
        b=eJ1xXBHI8EhNp1zFskD2KQmN4ZYesZOA7VUjB96HMljpequPBLFRil8YXIeUzPE4Ab
         taahq8EdOQ7/u3s3bL79lvMXXLv7Bbb/RFcNRtjEQEIarPhxo2NOEQR84jAbsDrtuSZC
         QJITUOUPCEdbVp6T7uvnlHo53hVJn3rtTcLrBDbBhIHMYWBg/8AIxFrauJbo0KJ2P7Zu
         Ay2Pc7jRd+uydx3R/mSM58hIOU2xeZ8P6wig99EPeX1t+YWyeS9x9cGznYj2VuAFwK0g
         7RMqYnysicRZIkrfQTjlg/SnGoTSHHe7lZXjxvrSMzBIWyWIEkJKdwNUvGS8nzN783hp
         HP1g==
X-Gm-Message-State: AG10YORmd2+hlTTjgOYHRxo11P69MSYabw4BUnhLBntO+SBrjlysX7tX3fcR2l6sLa3cuQ==
X-Received: by 10.66.167.237 with SMTP id zr13mr55425717pab.85.1456321701325;
        Wed, 24 Feb 2016 05:48:21 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.154])
        by smtp.gmail.com with ESMTPSA id qh8sm5331541pac.40.2016.02.24.05.48.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 05:48:20 -0800 (PST)
Date: Wed, 24 Feb 2016 11:17:49 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: slicoss: Use !x instead of x == NULL.
Message-ID: <20160224054659.GA3980@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use !x instead of x == NULL.This patch is found by checkpatch.pl script.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/slicoss/slicoss.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
index ea6b7b5..ed1c067 100644
--- a/drivers/staging/slicoss/slicoss.c
+++ b/drivers/staging/slicoss/slicoss.c
@@ -1807,7 +1807,7 @@ static int slic_mcast_add_list(struct adapter *adapter, char *address)
 
 	/* Doesn't already exist.  Allocate a structure to hold it */
 	mcaddr = kmalloc(sizeof(*mcaddr), GFP_ATOMIC);
-	if (mcaddr == NULL)
+	if (!mcaddr)
 		return 1;
 
 	ether_addr_copy(mcaddr->address, address);
@@ -1888,7 +1888,7 @@ static void slic_xmit_fail(struct adapter *adapter,
 {
 	if (adapter->xmitq_full)
 		netif_stop_queue(adapter->netdev);
-	if ((cmd == NULL) && (status <= XMIT_FAIL_HOSTCMD_FAIL)) {
+	if (!cmd && (status <= XMIT_FAIL_HOSTCMD_FAIL)) {
 		switch (status) {
 		case XMIT_FAIL_LINK_STATE:
 			dev_err(&adapter->netdev->dev,
@@ -2999,7 +2999,7 @@ static u32 slic_card_locate(struct adapter *adapter)
 	/* Initialize a new card structure if need be */
 	if (card_hostid == SLIC_HOSTID_DEFAULT) {
 		card = kzalloc(sizeof(struct sliccard), GFP_KERNEL);
-		if (card == NULL)
+		if (!card)
 			return -ENOMEM;
 
 		card->next = slic_global.slic_card;
-- 
1.8.3.4


