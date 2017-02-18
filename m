X-GM-THRID: 6388469372118106112
X-Received: by 10.36.6.15 with SMTP id 15mr4295670itv.12.1487443439885;
        Sat, 18 Feb 2017 10:43:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.19.154 with SMTP id 26ls2007564iot.4.gmail; Sat, 18 Feb
 2017 10:43:59 -0800 (PST)
X-Received: by 10.107.171.196 with SMTP id u187mr4628472ioe.30.1487443439218;
        Sat, 18 Feb 2017 10:43:59 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id u12si1506870pfd.3.2017.02.18.10.43.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 10:43:59 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id a123so5036888pgc.3
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Feb 2017 10:43:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=GwuR8QHzNxfUXUIsLTVM/ZcRARAKTi4vlCEwFFbHJjQ=;
        b=D7Vx1HUEZGjcYYf9Y5bHEyXHiQgomG9LLqsLkPtz4VyO1fF6LLYnj8btAlM4vjieQn
         bKhfEO/nCp154+9n0UeSbY55p9sBFy8+nx1IgGFUFmTMxzwI5rZNwKOgVI23j9KMCgoi
         NTKkyMa67a8fQrHXX6n9SFQtq6oc3PnnYuu1wlhodwm3xArXPb0nfOPNtqinjGYO2RWn
         Wv2unRHPfI5bJSjdTF+y4gBCAqR23QFrOcR0uhb+DL8Nr0/bd5HVKnekdSlQtwGchQ7H
         NMtBiuEO3O70Q2bAhnmxGFlqIQiP6D5gLziUSyoSiJyPuX63sYjzIPgVEPjOxc61mPpX
         qyhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=GwuR8QHzNxfUXUIsLTVM/ZcRARAKTi4vlCEwFFbHJjQ=;
        b=WCn+7Pvk+CEGYAbApkTE6bMn1ohF6e7No7im/o2iDgnfL5vWN+bkTRPSr17V6+IEO3
         4dT1A62/zGm2BnvnCkH+eZKj7xy87CoK5tlpT0CEx8dpaoLVo/z4kxHaM4vJqjr17wIK
         xLL4K5KBYoYqSc30CxKBVhvlKI+pghRK0CVbSHopsKSqhj44yhjzjI2nyi4UeP1oakkS
         zNqMFQCcegehNXxSKNRWs37NVfZo39I5tjZ1TxXhdEpgJqj2q7oD5QiQ9H5nQe/oTIq7
         gqt0/UHpqKrL5/4c4ex3xK9Hubi2oq5OrWdYxrd1ddNW32o2Z8hc24JasTvomZR8KebZ
         idGA==
X-Gm-Message-State: AMke39m0sqQX2aTpXMM86ZAZg81Ps4lO90cYxuS6FX4guqiVa74FlQDLIskkW8nyL1TiRA==
X-Received: by 10.84.216.15 with SMTP id m15mr20086728pli.22.1487443439027;
        Sat, 18 Feb 2017 10:43:59 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id f78sm26455985pfe.116.2017.02.18.10.43.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Feb 2017 10:43:57 -0800 (PST)
Date: Sun, 19 Feb 2017 00:13:56 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/6] staging: rtl8192e: Fix block comments warning
Message-ID: <20170218184356.GA7367@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Align * on last line, to conform to the kernal coding
style for block comments.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---

 v2:
   -Modified commit message

 drivers/staging/rtl8192e/rtl819x_HT.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HT.h b/drivers/staging/rtl8192e/rtl819x_HT.h
index 6eb018f..48d101a 100644
--- a/drivers/staging/rtl8192e/rtl819x_HT.h
+++ b/drivers/staging/rtl8192e/rtl819x_HT.h
@@ -11,7 +11,7 @@
  *
  * Contact Information:
  * wlanfae <wlanfae@realtek.com>
-******************************************************************************/
+ ******************************************************************************/
 #ifndef _RTL819XU_HTTYPE_H_
 #define _RTL819XU_HTTYPE_H_
 
-- 
2.7.4


