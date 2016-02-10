X-GM-THRID: 6249672760626249728
X-Received: by 10.194.21.99 with SMTP id u3mr4837206wje.0.1455115331340;
        Wed, 10 Feb 2016 06:42:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.19.167 with SMTP id 39ls84651lft.88.gmail; Wed, 10 Feb 2016
 06:42:10 -0800 (PST)
X-Received: by 10.112.16.34 with SMTP id c2mr4823161lbd.19.1455115330542;
        Wed, 10 Feb 2016 06:42:10 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wm0-x234.google.com (mail-wm0-x234.google.com. [2a00:1450:400c:c09::234])
        by gmr-mx.google.com with ESMTPS id 5si171073wmm.2.2016.02.10.06.42.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 06:42:10 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::234 as permitted sender) client-ip=2a00:1450:400c:c09::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::234 as permitted sender) smtp.mailfrom=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x234.google.com with SMTP id g62so28931604wme.0
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 06:42:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=o8FwTLjBj30/iDTmd5Jt3zzuFE7mIJtWxIG19xuY5Vs=;
        b=cf8ITAzCrc7fB8ZtQBJgSRCEEB8eJNwCHVFHJdQWEA4rxhSkMeiAemVBmjpPIixjDN
         O+VFNO3MGywAoAYWxvg+mDa6GI84oJiUeuayl0DT8bjWQrZOGQKdWj7hBH2RAd96Fk3/
         /GDCRltpzcT+H6xOXj4QI1HXg9pbZQ/4pTbycDRVPh+AVk39n9KDBeDwUYoNQ5ZsIXwS
         iD5k5nRlW4czxLEpIkZ8UXx6VRq1Fx1O9xAhnha8UNLSS/SZxXFgIqGuVOsc2B5AKUre
         /wCwbgrY5XtO/L9kvnZxfFAUaTxY9kFZY4YfGUolqn71tcS0CwkoZzK/WuR3pCoXjzN1
         dyfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=o8FwTLjBj30/iDTmd5Jt3zzuFE7mIJtWxIG19xuY5Vs=;
        b=l2+6Nay61ftD/ED3Spj7asbcRPsmB6uzK5CROpQDF6sWgjgYkOkJXrpeqcXz1Sy5ZX
         UyPmZ3Q8zylhqmakZ7Tg9eB3P+uXr7BnCFREyqJBov3b967aAtMvXUONZuvqTBJEOTP0
         IMM+7Y02HiC4JvND0V8skaaPA/zXmZaxEZOhQyzsGqvVJ+qJjr2uNp6/tWFak0212rLt
         IVO/UrRFthbLzPzIblHZdNmNJN/fT+oDxTwGPSTX8GhUPTLdMtq20noY+kNu9Ntje6vL
         Y6uiKPGlSq47FgScvnlmapGUL7jgNGBBFZ0No7JtZTWIIukjhFew3AmpHLy05ji4Y0kd
         GiAQ==
X-Gm-Message-State: AG10YOTI5VmoTupo9u1/yINVgoKJei4fmkyfpt7vE1XXw7E3TvCmNHLuPRIYWXy0jvgP6Q==
X-Received: by 10.28.174.72 with SMTP id x69mr11366347wme.68.1455115330381;
        Wed, 10 Feb 2016 06:42:10 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.176.249.213])
        by smtp.gmail.com with ESMTPSA id e194sm3740165wma.19.2016.02.10.06.42.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 10 Feb 2016 06:42:09 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: octeon: Use preferred kernel type
Date: Wed, 10 Feb 2016 16:42:00 +0200
Message-Id: <1455115320-3148-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch "int*_t" type instead of "s*" type was used.
checkpatch.pl issue in octeon driver.

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/octeon/ethernet-tx.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
index 9e2116f..a9cfa93 100644
--- a/drivers/staging/octeon/ethernet-tx.c
+++ b/drivers/staging/octeon/ethernet-tx.c
@@ -58,9 +58,9 @@ static DECLARE_TASKLET(cvm_oct_tx_cleanup_tasklet, cvm_oct_tx_do_cleanup, 0);
 /* Maximum number of SKBs to try to free per xmit packet. */
 #define MAX_SKB_TO_FREE (MAX_OUT_QUEUE_DEPTH * 2)
 
-static inline int32_t cvm_oct_adjust_skb_to_free(int32_t skb_to_free, int fau)
+static inline s32 cvm_oct_adjust_skb_to_free(s32 skb_to_free, int fau)
 {
-	int32_t undo;
+	s32 undo;
 
 	undo = skb_to_free > 0 ? MAX_SKB_TO_FREE : skb_to_free +
 						   MAX_SKB_TO_FREE;
@@ -83,7 +83,7 @@ static void cvm_oct_kick_tx_poll_watchdog(void)
 
 static void cvm_oct_free_tx_skbs(struct net_device *dev)
 {
-	int32_t skb_to_free;
+	s32 skb_to_free;
 	int qos, queues_per_port;
 	int total_freed = 0;
 	int total_remaining = 0;
@@ -150,8 +150,8 @@ int cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
 	enum {QUEUE_CORE, QUEUE_HW, QUEUE_DROP} queue_type;
 	struct octeon_ethernet *priv = netdev_priv(dev);
 	struct sk_buff *to_free_list;
-	int32_t skb_to_free;
-	int32_t buffers_to_free;
+	s32 skb_to_free;
+	s32 buffers_to_free;
 	u32 total_to_clean;
 	unsigned long flags;
 #if REUSE_SKBUFFS_WITHOUT_FREE
-- 
1.9.1


