X-GM-THRID: 6394004878761394176
X-Received: by 10.98.50.5 with SMTP id y5mr2501205pfy.4.1488720271178;
        Sun, 05 Mar 2017 05:24:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.19.69 with SMTP id 66ls1854409itz.0.gmail; Sun, 05 Mar 2017
 05:24:30 -0800 (PST)
X-Received: by 10.99.119.78 with SMTP id s75mr5148436pgc.124.1488720270252;
        Sun, 05 Mar 2017 05:24:30 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y90si896834pfa.6.2017.03.05.05.24.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 05:24:30 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 67so10344187pfg.2
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 05:24:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=oYggp1+3EDdhSpky9/R36sf04a/FmX+S4G+jxa8g7Gg=;
        b=ePXmZa8DWrc7kKA5Cq35WjDAoAazXW6+LW931bxA8xZELiIdHuC7iX1SqvQITgMnpI
         VyGltr+35D7MCMRDxGYJs4tGtylPSKUfBHUAInUD4piQYd+c+mKHMXdB/AmbfscTM9t1
         Q8r2YCjg35ZQ6TS01jIDwoDEDh6UwYAfGzFOJ0PatBuB7ud0/Dym0KnI/WkSpkQwkrGR
         FgnVJAX2WjGYUt4vbCUuPZnwPesBKEST4iMArkjD/rPoc2/wWlKvYgaobBdtvP/O9rPP
         R72N65dfG7zATQwaM7wmpwI4p5MYszo0mlW3Ic065UO89VrTfTCymHj7jYEDQo5bPb/9
         gJOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=oYggp1+3EDdhSpky9/R36sf04a/FmX+S4G+jxa8g7Gg=;
        b=nHjmTnJ7ZBEiqfGOXtXEpPPdU5vzzy615xUiJMRsjxdhXAL148rEl8z4MDBM0X8WKx
         zeCirK6f+EW6Lw8p0/1jMVyCmLnbHHT7M14k5v70FynUHJZ/MJqvcocZuee1SwuqQF51
         se1/FuDzdwfi/L/5MyBY/unqSF7yHIJPNP/vAjme6m8C0KZQP5hrmv6AR1eK/WHpt6Tl
         TiCgcpIBP7ttImTZfnVaFvtN1yoE6pK+Pe8eyhqJ+/sgxREbUoOP4hPxA8BXsYi5LFGr
         VLkPJfsK8OXD1XLyKtwZEMzgkK8YMscja6Qv4Io/b+F5ExqqGFIPJUA4IW1jNIvaNbP4
         CFnQ==
X-Gm-Message-State: AMke39l8Oe7jba0Xy/zUu92n6lVWTZ8dsydWeLnjHM5ZWyP4Taytr8LggEFWjys2BVNLrg==
X-Received: by 10.98.94.2 with SMTP id s2mr14921696pfb.133.1488720270041;
        Sun, 05 Mar 2017 05:24:30 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e70sm29030227pfl.105.2017.03.05.05.24.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 05 Mar 2017 05:24:28 -0800 (PST)
Date: Sun, 5 Mar 2017 18:54:27 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192u: Remove unnecessary function and its call
Message-ID: <20170305132426.GA19802@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The function ieee80211_tkip_null on being called, simply returns
back. The function hasn't been mentioned in the TODO and doesn't have
FIXME code around. Hence, ieee80211_tkip_null and its calls have
been removed.

This was done using Coccinelle.

@@
identifier f;
@@

void f(...) {

-return;

}

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h            | 3 ---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c | 5 -----
 drivers/staging/rtl8192u/ieee80211/ieee80211_module.c     | 1 -
 3 files changed, 9 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 176083e..1babc37 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -236,8 +236,6 @@ struct cb_desc {
 
 #define ieee80211_ccmp_null		ieee80211_ccmp_null_rsl
 
-#define ieee80211_tkip_null		ieee80211_tkip_null_rsl
-
 #define free_ieee80211			free_ieee80211_rsl
 #define alloc_ieee80211			alloc_ieee80211_rsl
 
@@ -2266,7 +2264,6 @@ void ieee80211_ps_tx_ack(struct ieee80211_device *ieee, short success);
 void softmac_mgmt_xmit(struct sk_buff *skb, struct ieee80211_device *ieee);
 
 /* ieee80211_crypt_ccmp&tkip&wep.c */
-void ieee80211_tkip_null(void);
 
 int ieee80211_crypto_init(void);
 void ieee80211_crypto_deinit(void);
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
index df94021..54ca69e 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
@@ -785,8 +785,3 @@ void __exit ieee80211_crypto_tkip_exit(void)
 	ieee80211_unregister_crypto_ops(&ieee80211_crypt_tkip);
 }
 
-void ieee80211_tkip_null(void)
-{
-//    printk("============>%s()\n", __func__);
-	return;
-}
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
index a791175..bb52eee 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
@@ -176,7 +176,6 @@ struct net_device *alloc_ieee80211(int sizeof_priv)
 	}
 
 /* These function were added to load crypte module autoly */
-	ieee80211_tkip_null();
 
 	return dev;
 
-- 
2.7.4


