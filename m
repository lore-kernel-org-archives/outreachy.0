X-GM-THRID: 6390391577465847808
X-Received: by 10.98.90.3 with SMTP id o3mr8728788pfb.6.1487878984261;
        Thu, 23 Feb 2017 11:43:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.230 with SMTP id z93ls4373786ota.44.gmail; Thu, 23 Feb
 2017 11:43:03 -0800 (PST)
X-Received: by 10.31.124.8 with SMTP id x8mr10015010vkc.10.1487878983874;
        Thu, 23 Feb 2017 11:43:03 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id f7si1075531pfk.5.2017.02.23.11.43.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 11:43:03 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id z128so111815pgb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Feb 2017 11:43:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=mfP1yHinUlVvF5B9xe2fLm0Ms0g9WMoSJ5UmL2X66BY=;
        b=Wz722XYW43rmT89fD0dSyThQMk9p2xtkxUafcY5hWFNFxpxRFqW6NlAy5NsWb1LRn+
         R1+/UaRW0vWRktSrHwHIHv7pGwL63zLuVDmxQn/tEU4oyN0c6r2EQdKrTtNrP8amDH8c
         mC7V1+toK2ts5iWwdH0JYzqw9xMyLfdFjPp7IR4DOIouIsvtoVio6F6WviLmeHy7gs4K
         rVDk9TmyttGlr34tCtufUxvzy08SsFSnNDWFGqyUUdKh4Cz9rSBzEPRXYmxIVppatoqY
         D7exkkjV0VIpzHpjsNgtMxaxsReg24PjBknrIsBGeZeilJ77cTpqxllo5QBjFn9jo9px
         ciQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=mfP1yHinUlVvF5B9xe2fLm0Ms0g9WMoSJ5UmL2X66BY=;
        b=UmaE1KXGc1vh6Xg/ibbeCoP42PFrI5uz3SH6DAe3UiKeJt1CXBpMh4iqqW1BvJFfwF
         JkN8MxvRPximg20n5/qn64SIhvLGZPo3zIUFTuaDp3M/NbR8Xo29LEAcm7aKgrM9R7bv
         eXxSVqlixR0qbiVLafMQ/O0C7uuIijdmTGsBTa3HCkyF7+XhMVQB5eYxCgefs7vhI38a
         yLdDUMy1IHI7/D5+hzuy8nRSGO5/VPUB1FRelTrVAPQYPxOSmW+G+oNnRnCEZOh2JB48
         ELIjah/SaNTcVkcX5/mWFwtqnJ27+ePZbDqoDqNkun3u+t05kPusDcGg1UBMKiLLhpxr
         KMyg==
X-Gm-Message-State: AMke39lS8eqX1ys0XdxC+QD2CqFf9Ul3FzMv545a/GU9nadYmqA+5MgtFi5bmwQ3xTdR7Q==
X-Received: by 10.99.150.10 with SMTP id c10mr50285673pge.160.1487878983481;
        Thu, 23 Feb 2017 11:43:03 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id g28sm11345397pgn.3.2017.02.23.11.43.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 23 Feb 2017 11:43:02 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: rtl8188eu: replace explicit NULL comparison
Date: Fri, 24 Feb 2017 01:10:51 +0530
Message-Id: <1487878851-27132-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Replace explicit NULL comparison with ! operator to
simplify code.

Found with Coccinelle script:
@@
expression ptr;
position p;
statement s0;
@@

ptr@p =
\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|usb_alloc_urb\|
alloc_netdev\|dev_alloc_skb\)(...)
... when != ptr

if (
(
+ !
ptr
- == NULL
)
) s0

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/xmit_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/xmit_linux.c b/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
index e097c61..8bf8248 100644
--- a/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
@@ -72,7 +72,7 @@ int rtw_os_xmit_resource_alloc(struct adapter *padapter, struct xmit_buf *pxmitb
 
 	for (i = 0; i < 8; i++) {
 		pxmitbuf->pxmit_urb[i] = usb_alloc_urb(0, GFP_KERNEL);
-		if (pxmitbuf->pxmit_urb[i] == NULL) {
+		if (!pxmitbuf->pxmit_urb[i]) {
 			DBG_88E("pxmitbuf->pxmit_urb[i]==NULL");
 			return _FAIL;
 		}
-- 
2.7.4


