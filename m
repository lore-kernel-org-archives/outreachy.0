X-GM-THRID: 8902822330368
X-Received: by 10.182.199.66 with SMTP id ji2mr74416862obc.14.1426661323783;
        Tue, 17 Mar 2015 23:48:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.115.41 with SMTP id jl9ls969664igb.9.canary; Tue, 17 Mar
 2015 23:48:43 -0700 (PDT)
X-Received: by 10.66.150.41 with SMTP id uf9mr28187905pab.14.1426661323245;
        Tue, 17 Mar 2015 23:48:43 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-x231.google.com (mail-pd0-x231.google.com. [2607:f8b0:400e:c02::231])
        by gmr-mx.google.com with ESMTPS id ni4si2939984pdb.2.2015.03.17.23.48.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 23:48:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::231 as permitted sender) client-ip=2607:f8b0:400e:c02::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::231 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdnc3 with SMTP id c3so34004818pdn.0
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2015 23:48:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=CF4Ha2emxKc/wg7LuP2QJTgcZ9LsQ4Ha+8qTNpiRa4U=;
        b=sTL92tUXQHPOEdB+o72V6LTpSM4CJdCeuL5j5ZIy06NfmgBXLUkzIi27ZuoxoUtxtQ
         rsZh8pGgBfbwFnrnAhJiiA1+QLngrJ4fgnCP/zgLmx12D+9v5siICgg7x2DHW8DXYh2G
         uHqXJG2t8F33uUQKlzVVpZCrTnrJrbxJ4dN86OTHU5X6MZS156KMK52GnGCqnI6iyvwt
         6PwKAUDdfgTBLtZvU5p5MkxSvP6lLh5xPB/xdjTrZy1q8VCNESrHJTR6SLx9tKtiwALX
         JI/CO9jVusEmMX4jOWK5U06MDrOzo/Q9tehK0SQmn/YCNY1YNwu7i4Q3R8NaMyWKuaPn
         DWjw==
X-Received: by 10.66.138.46 with SMTP id qn14mr82263947pab.34.1426661323155;
        Tue, 17 Mar 2015 23:48:43 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([150.107.241.95])
        by mx.google.com with ESMTPSA id n10sm25657742pdp.18.2015.03.17.23.48.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 17 Mar 2015 23:48:42 -0700 (PDT)
Date: Wed, 18 Mar 2015 12:18:38 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Remove timer handler macros
Message-ID: <20150318064838.GA8490@vaishali-Ideapad-Z570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

After the commit 28af7ea81e16 ("Staging: rtl8188eu:
Eliminate use of _init_timer"), macros
(RTW_TIMER_HDL_ARGS, RTW_TIMER_HDL_NAME,
RTW_DECLARE_TIMER_HDL) are no longer needed. So,
remove them.

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
 drivers/staging/rtl8188eu/include/osdep_service.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/osdep_service.h b/drivers/staging/rtl8188eu/include/osdep_service.h
index 08c4d5d..515e949 100644
--- a/drivers/staging/rtl8188eu/include/osdep_service.h
+++ b/drivers/staging/rtl8188eu/include/osdep_service.h
@@ -76,11 +76,6 @@ static inline int _enter_critical_mutex(struct mutex *pmutex,
 	return ret;
 }
 
-#define RTW_TIMER_HDL_ARGS void *FunctionContext
-#define RTW_TIMER_HDL_NAME(name) rtw_##name##_timer_hdl
-#define RTW_DECLARE_TIMER_HDL(name) \
-	void RTW_TIMER_HDL_NAME(name)(RTW_TIMER_HDL_ARGS)
-
 static inline int rtw_netif_queue_stopped(struct net_device *pnetdev)
 {
 	return  netif_tx_queue_stopped(netdev_get_tx_queue(pnetdev, 0)) &&
-- 
1.9.1


