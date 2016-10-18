X-GM-THRID: 6342588192307281920
X-Received: by 10.157.49.20 with SMTP id e20mr68699otc.22.1476748891666;
        Mon, 17 Oct 2016 17:01:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.178.27 with SMTP id u27ls2797603ite.13.gmail; Mon, 17 Oct
 2016 17:01:31 -0700 (PDT)
X-Received: by 10.66.228.42 with SMTP id sf10mr57566pac.132.1476748891144;
        Mon, 17 Oct 2016 17:01:31 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x241.google.com (mail-vk0-x241.google.com. [2607:f8b0:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id x14si4559814vkd.3.2016.10.17.17.01.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 17:01:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) client-ip=2607:f8b0:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x241.google.com with SMTP id b186so8831032vkb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 17 Oct 2016 17:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=APg44HxpA6XBxNF+2M7Qj1f5Dor86hq50zZ3qmsYCS4=;
        b=wQJLianC0MQTOlB56Hc8NNQ7pJp2qoy/I+geIc4TNbQLgrtB8IIlyGafBbHQ152xe7
         EjjzycCIx2XH7zKOnoyJfwSxrtt2TVmAr8s9spWqI8RvwzdfueazvQqeqnz9MoYq2Byz
         W2SScFXzz7xq56YfQTTanJetV0jDszk33N93RSm8xlqHhAJeWgYWOn5XlKFFqTZ+5I2e
         ZP07X7zajWiFjyRFXesYhzKMwZtnzhAb2KI3nRm1NaXbEjYy2bbrO8na6eJ849kmc6fJ
         M8QGfMjeD5i/9GRiqnL01CcIVIOSs0BaSjz4w/hOBH4tzjtKHc2mudU47gwax/oMxahJ
         LpZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=APg44HxpA6XBxNF+2M7Qj1f5Dor86hq50zZ3qmsYCS4=;
        b=mWGRunFqjcG+nBLBkvTYaMcpEo5ovAP+KYJFR3TcheVHvqZOut7kBdJ1DEZT9ps+S/
         CKvDjfo7gbm4BjGDLS1AeylN9zi+TL5bp9p/Eo5EJCSmVLiUjIREaM5uvWHiq8OwCbqe
         C7S2B0KJ2mkU+9qTuDW9uNgwjHlAywqguhccOg9lV107mH3XpGa3abzWLt59l28HlglU
         Pf9jIG9Q6YxmY5UxsAolRb62cjLtqF40btLcUNV7hGdxIT1/veqdxAuMKYOkaDIMSBIT
         NlXGnRpVQHB3oM9nTWV38XKd9C1TJz4aQPeABDdVP7Xb3xuZn6vV6XDnPOpujTRHb53S
         YzjA==
X-Gm-Message-State: AA6/9RknQqLgbWPrjSKweWkQt2tilmwSn0NNmjsk1a67w5IwO4iBwd/zu0tDORMdwyrTaw==
X-Received: by 10.31.169.20 with SMTP id s20mr59585vke.21.1476748890825;
        Mon, 17 Oct 2016 17:01:30 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id n73sm12900604vkf.24.2016.10.17.17.01.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 17:01:30 -0700 (PDT)
Date: Mon, 17 Oct 2016 22:01:26 -0200
From: Elise Lennion <elise.lennion@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] staging: vt6656: Remove unnecessary parentheses.
Message-ID: <20161018000126.GA27177@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The removed parentheses are unnecessary and don't add readability.

Found using Coccinelle semantic patch:
@@ expression e, e1, e2; @@
e +=
(
        (e1 == e2)
|
-       (e1)
+       e1
)

@@ expression e, e1, e2; @@
e =
(
        (e1 == e2)
|
-       (e1)
+       e1
)

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/vt6656/mac.c | 2 +-
 drivers/staging/vt6656/rf.c  | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6656/mac.c b/drivers/staging/vt6656/mac.c
index eeed16e..611da49 100644
--- a/drivers/staging/vt6656/mac.c
+++ b/drivers/staging/vt6656/mac.c
@@ -121,7 +121,7 @@ void vnt_mac_set_keyentry(struct vnt_private *priv, u16 key_ctl, u32 entry_idx,
 	u16 offset;
 
 	offset = MISCFIFO_KEYETRY0;
-	offset += (entry_idx * MISCFIFO_KEYENTRYSIZE);
+	offset += entry_idx * MISCFIFO_KEYENTRYSIZE;
 
 	set_key.u.write.key_ctl = cpu_to_le16(key_ctl);
 	ether_addr_copy(set_key.u.write.addr, addr);
diff --git a/drivers/staging/vt6656/rf.c b/drivers/staging/vt6656/rf.c
index 79a3108..8b72479 100644
--- a/drivers/staging/vt6656/rf.c
+++ b/drivers/staging/vt6656/rf.c
@@ -800,8 +800,8 @@ int vnt_rf_set_txpower(struct vnt_private *priv, u8 power, u32 rate)
 /* Convert rssi to dbm */
 void vnt_rf_rssi_to_dbm(struct vnt_private *priv, u8 rssi, long *dbm)
 {
-	u8 idx = (((rssi & 0xc0) >> 6) & 0x03);
-	long b = (rssi & 0x3f);
+	u8 idx = ((rssi & 0xc0) >> 6) & 0x03;
+	long b = rssi & 0x3f;
 	long a = 0;
 	u8 airoharf[4] = {0, 18, 0, 40};
 
-- 
2.7.4


