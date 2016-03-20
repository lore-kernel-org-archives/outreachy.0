X-GM-THRID: 6264225267449856000
X-Received: by 10.98.64.141 with SMTP id f13mr20431690pfd.3.1458503601205;
        Sun, 20 Mar 2016 12:53:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.93.72 with SMTP id cs8ls786621igb.29.canary; Sun, 20 Mar
 2016 12:53:20 -0700 (PDT)
X-Received: by 10.50.87.7 with SMTP id t7mr8448489igz.11.1458503600666;
        Sun, 20 Mar 2016 12:53:20 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id sf5si3446741pac.1.2016.03.20.12.53.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 12:53:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id x3so26554072pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Mar 2016 12:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Nt3gOcBMLrwsMePNh0okquzj2BH0dqOvvuVtn50VX5A=;
        b=HeGaCrgrY8dLPwQN2r2+58HnZIihdHYyuCmkuKLeB45XprbRmyaFIoProFtwSa2Yzr
         /3DKWTe3P3iBkj4kItIWBcu+zbxOx2g9+5ATMOJEL+ilmiegMXZjSNG61HYx3MRVxXNR
         EmJBklYBuF7LMZMCGI0M1uDcCKpNU6q92e3CSDngF6yyOlay3CDNXNdB1HiAoFf6ZdIC
         RYIOVwqlxw88re12DIoMros7GKyE88AWDHrkdIsld7D88nI4pmUJXP5qqr7P/1zUnc1v
         cR5hN3nU4fpjd20JZh5DacfVzSDQ/jQZj4YGgxig4hlAMoOvAlkAuZ/z8k8myl2T88lV
         up5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Nt3gOcBMLrwsMePNh0okquzj2BH0dqOvvuVtn50VX5A=;
        b=LfqNH6QdM0YvPqcKek9xq0TMT1nRl4xPg1vwaBlai98YZLnwVT9bKVQkujPuObDF+T
         2Hhxz5b+EPwtfAkyMq7/2KyRzfcz5nAfGzlNmY88OSB8IusR3IAnh7OUch/RR6/9jIlM
         MgUP6rYkHBPRRWH1IjEgQMGu3p56OUsgv/qx0EEYj31mTcI8OW1M7AjB0DDtdRl9wjbe
         FXfA1U+fjtel64f3VNFCvowmV7/uafQl4RIXV1FXMa58JG9VH+mTr5pA05rnspuj61oq
         h4FXLNMysOaEUj/5f7S2u179UaLzepIrP66HLCCR7UaYMWvcQcBscEEpea6DdtFAnISD
         U8KQ==
X-Gm-Message-State: AD7BkJI9b5TVVrGS8cPyS/I+tHlAnGX4XAapruhjf0HiWYVBxpbLVvjW+P6eE24KbY0a1Q==
X-Received: by 10.66.102.104 with SMTP id fn8mr40230904pab.129.1458503600487;
        Sun, 20 Mar 2016 12:53:20 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id fa3sm35148037pab.45.2016.03.20.12.53.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 20 Mar 2016 12:53:20 -0700 (PDT)
Date: Mon, 21 Mar 2016 01:23:17 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8712: os_intfs: Change form of NULL comparisons
Message-ID: <20160320195317.GA15521@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Change null comparisons of the form x == NULL to !x.
This was done using Coccinelle.
@@ expression e;
@@
- e == NULL
+ !e

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8712/os_intfs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index ab19112..57211f7 100644
--- a/drivers/staging/rtl8712/os_intfs.c
+++ b/drivers/staging/rtl8712/os_intfs.c
@@ -389,7 +389,7 @@ static int netdev_open(struct net_device *pnetdev)
 		padapter->bup = true;
 		if (rtl871x_hal_init(padapter) != _SUCCESS)
 			goto netdev_open_error;
-		if (r8712_initmac == NULL)
+		if (!r8712_initmac)
 			/* Use the mac address stored in the Efuse */
 			memcpy(pnetdev->dev_addr,
 				padapter->eeprompriv.mac_addr, ETH_ALEN);
@@ -413,7 +413,7 @@ static int netdev_open(struct net_device *pnetdev)
 		}
 		if (start_drv_threads(padapter) != _SUCCESS)
 			goto netdev_open_error;
-		if (padapter->dvobjpriv.inirp_init == NULL)
+		if (!padapter->dvobjpriv.inirp_init)
 			goto netdev_open_error;
 		else
 			padapter->dvobjpriv.inirp_init(padapter);
--
2.1.4


