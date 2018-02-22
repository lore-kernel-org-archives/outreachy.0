X-GM-THRID: 6525272592807362560
X-Received: by 10.28.50.4 with SMTP id y4mr519214wmy.1.1519283417734;
        Wed, 21 Feb 2018 23:10:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.26.6 with SMTP id a6ls51949wma.2.gmail; Wed, 21 Feb 2018
 23:10:16 -0800 (PST)
X-Google-Smtp-Source: AH8x227RMbp7/67EDM52xw6S9PmndBRcw7b++J1U1M6TD+x4Gk8P7Xb4MtpPztUqU7QGTvbwVDBq
X-Received: by 10.28.66.202 with SMTP id k71mr304488wmi.5.1519283416805;
        Wed, 21 Feb 2018 23:10:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519283416; cv=none;
        d=google.com; s=arc-20160816;
        b=O46QSeUSATETKz1RdBHPawOjw5WcjVgBhNJjYOLEHl/1vcxIWxruhUxAe8AFS+rttC
         AZ34ZX8y+sNn5IjRQZXoSKS2tprpXBUxe0+wD6vjdkNLui+9h4QV+rqR54HFb/Jn6OFY
         PetVO8bnmtBdiTwmrSuiZrG4YTHIVTNuhmOeYax39tdNXRq5v6mBDHZNpGn28Y7EyKRX
         aRBNrm8DSDAVFomK/TL2NWG1+pr9RAbEaSqYOhZR4Rd9DTjxYyjazivhOCgG4HmtW9Lw
         BDqAyBqdOmGqugsnBNaERpR8FLfjs52p9bYoldrjJna897ZmjYHc/kNBymrmDZ6hlKnX
         BhiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=9xu0r96W9mHJK3UfDuIfrP0wjJRjqm20zu9uzdaGhN0=;
        b=LmgnsNCPw0i6U9L5VK/E7PDuNy+t8ya9O6XaNlQTumYiephIv7Qmmj9POP2taQjVt5
         O2bW7/JeksUSmXLhXCDzOMGOMYFd8+W+m4jGtT/aRTf9WGoH+BqMYSjvnQs4zUiULS6n
         jk/MXpPzse55GiCMbC+7JyKADUiiADP5f3gzQ+JZqASVlzVa7+ZD+nCy1TnWXj5qLp9h
         L7KfdrtyCoIS6BXVta4cZS0bpjgOMwpTSm1vKGonFEMuc3qWW6j41Qb2f35+XEh9bpXW
         VzD5ST7EgTvRS5hLTbnNOjpCeQBZMML20EclfWuUFaiSZt7CawsK8cvO7BYs/HneKDqQ
         A69A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Sq0cTyRp;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::233 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm0-x233.google.com (mail-wm0-x233.google.com. [2a00:1450:400c:c09::233])
        by gmr-mx.google.com with ESMTPS id f137si43005wme.0.2018.02.21.23.10.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 23:10:16 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::233 as permitted sender) client-ip=2a00:1450:400c:c09::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Sq0cTyRp;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::233 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x233.google.com with SMTP id t82so1620275wmt.5
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Feb 2018 23:10:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=9xu0r96W9mHJK3UfDuIfrP0wjJRjqm20zu9uzdaGhN0=;
        b=Sq0cTyRpFMLP6dWPDS14kHed3VT3AQlAU6ECWDhMOCyYvlARvhjLzNF98wlIOZFsla
         skejlQQEzUNVtDh9qxY+aBrxGDzxhbRxHrq84In51ASNjg8po4mJctdbmiW98A8oreeN
         QV3RXHejVF0CAybfYdZdSqWXa0OVp5zPRMKCOkYmomuCXWwBhq0Qvy9S1zBDJTqhxE/v
         Xr8fUrmSrL/Aa2J2iNymZo7ipXBTt9X0el5zK14PXBuxwUp2VfuKAalZRDmgR/z/jxkT
         4ec49GSUGo3fYPLCf4UcZlCsc/jsHtok39VXFrfo2XjE1zFwZjws+TnlTTj9wmW4Rrjv
         HigQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=9xu0r96W9mHJK3UfDuIfrP0wjJRjqm20zu9uzdaGhN0=;
        b=idFSx/YEUkoz3mNvVwFu1CXm5YoiBJM4FXFx9KkDpCpp5sPK7Nnvmr1fYzAKDFAfTX
         uOIaLBVv8rJYaEU7E6bcnHEBI4XvXW3FncxIhyz36arT6F5Hr8E1arU35hoQ8jyGB3PF
         5Qb/f7AWXqCYCVlzzyZwjBQos8tZ3iroC1CJHTHlJ0yyZTHr/qbvK0UuxasPpfsvOUK9
         GrEG4Hl1yiyTbBh8G8qx6reFQS358zNSeFaGO2wYm0bPSB8KMAAzBXXvU0xHtzc9rPhJ
         C7YG3MNNjUo5tHKEWlAaNWfP4gUAnjnoVVqXZ9pCG/mScwq7zbcF+fFfj0gCZdElIAKK
         caRA==
X-Gm-Message-State: APf1xPBFtz9amrkAQTGYQMGp9sobOgIHzXtfxKYL/wOMfZU8u1gRUz9o
	nyJ4zBhyBRljSIX8ydbTMJXNoA==
X-Received: by 10.28.97.139 with SMTP id v133mr4130309wmb.9.1519283416456;
        Wed, 21 Feb 2018 23:10:16 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from gmail.com ([87.71.142.168])
        by smtp.gmail.com with ESMTPSA id s18sm4218822wrg.3.2018.02.21.23.10.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 23:10:15 -0800 (PST)
Date: Thu, 22 Feb 2018 09:10:12 +0200
From: Dafna Hirschfeld <dafna3@gmail.com>
To: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: remove 'if' on field address
Message-ID: <20180222071009.GA4082@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove 'if' statements testing struct's field address.
Since such statements always return true, they are redundant.

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/staging/wilc1000/linux_wlan.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
index d9725ef..cf746f2 100644
--- a/drivers/staging/wilc1000/linux_wlan.c
+++ b/drivers/staging/wilc1000/linux_wlan.c
@@ -628,8 +628,7 @@ void wilc1000_wlan_deinit(struct net_device *dev)
 			wl->hif_func->disable_interrupt(wl);
 			mutex_unlock(&wl->hif_cs);
 		}
-		if (&wl->txq_event)
-			complete(&wl->txq_event);
+		complete(&wl->txq_event);
 
 		wlan_deinitialize_threads(dev);
 		deinit_irq(dev);
@@ -677,11 +676,8 @@ static int wlan_deinit_locks(struct net_device *dev)
 	vif = netdev_priv(dev);
 	wilc = vif->wilc;
 
-	if (&wilc->hif_cs)
-		mutex_destroy(&wilc->hif_cs);
-
-	if (&wilc->rxq_cs)
-		mutex_destroy(&wilc->rxq_cs);
+	mutex_destroy(&wilc->hif_cs);
+	mutex_destroy(&wilc->rxq_cs);
 
 	return 0;
 }
@@ -716,8 +712,7 @@ static void wlan_deinitialize_threads(struct net_device *dev)
 
 	wl->close = 1;
 
-	if (&wl->txq_event)
-		complete(&wl->txq_event);
+	complete(&wl->txq_event);
 
 	if (wl->txq_thread) {
 		kthread_stop(wl->txq_thread);
-- 
2.7.4


