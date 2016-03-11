X-GM-THRID: 6260894981838340096
X-Received: by 10.25.160.207 with SMTP id j198mr1642083lfe.4.1457728208683;
        Fri, 11 Mar 2016 12:30:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.43.67 with SMTP id r64ls499446lfr.10.gmail; Fri, 11 Mar
 2016 12:30:08 -0800 (PST)
X-Received: by 10.112.130.42 with SMTP id ob10mr1654998lbb.2.1457728208086;
        Fri, 11 Mar 2016 12:30:08 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x234.google.com (mail-wm0-x234.google.com. [2a00:1450:400c:c09::234])
        by gmr-mx.google.com with ESMTPS id s141si157208wmd.1.2016.03.11.12.30.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 12:30:08 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::234 as permitted sender) client-ip=2a00:1450:400c:c09::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::234 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x234.google.com with SMTP id p65so31603809wmp.0
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 12:30:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=z4PCVXGxU9zfiSsdkbOtZJWRtafX77QREdP1Khqwb3M=;
        b=xl6bIakJqgdBDZVCxjRoutF6ga8/N679uU1VBPNEm612dtjBzR0orUkFAfGDFjCvUO
         ippUG71Hx4QTIi7EBLaqpQYW8jIgTGlwH4aMiAgedZMuqQJ+wH/2HZQyC1rejcEQs1dV
         f9VAUrD7NUQ5MzaB46Yz1fDZKF1vd/HWFN5JvLHl8qx5QvGvkn/sUe+6Lmy3nQUHU09T
         bxr+wlW/mSttNRaVehfvSfRFSfvgL3InoOd2SB4OnnxPpK9VkcKaviplaztwIlAHmYT5
         2of2lKk2zYyFCNl//3/6F0JWYtuchglK6CNVJNUMzDjjvwzBsKR5sraafB++uQchythE
         Q1KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=z4PCVXGxU9zfiSsdkbOtZJWRtafX77QREdP1Khqwb3M=;
        b=XerZL5XS+AGwPPrOsvnvLaodGS6g2gcMa0L+96DJcI9MVjJJ8j0ymeN7TjQBwzU48Q
         JKBEIwXjGTA8wdp7OEHSqsTpNLe3ucAZa3ElaTbHU3ARczJwez4DU5zsCaOwLDyHaZmM
         EsujEiQzGvGcfnUoI315CMogMBwRlegIq2E0k6H4iJKWbhzZr4IVmShC1pJuu0T17kaX
         k3BGmM3b4O5r17wsBd33GyxspaX7EV3gMabk9BSIr2E0PJV1pzlafkrgcugAy6zvUTR5
         +lJuFU5KJU8VURUF8hKP0xLwvki6UBiBsWHuCeDFRl9NfsC218rYsvaESAVzuPPqff/T
         qqLw==
X-Gm-Message-State: AD7BkJJIIcp8or6rWL18sbs6TpmEVNHvx43wfxWvy56scLkoXFm3ZSlkrysIl2fI9lk7aA==
X-Received: by 10.194.236.170 with SMTP id uv10mr13163125wjc.32.1457728207921;
        Fri, 11 Mar 2016 12:30:07 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv ([213.143.50.101])
        by smtp.gmail.com with ESMTPSA id p191sm4351210wmb.0.2016.03.11.12.30.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 11 Mar 2016 12:30:07 -0800 (PST)
Date: Fri, 11 Mar 2016 21:30:04 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCHv2] staging: octeon: Use type int instead of int32_t
Message-ID: <20160311203000.GA4609@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Prefer the use of type int instead of int32_t. Checkpatch detected these
issues.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
v2:
	- Use int instead of s32, as Greg suggested

 drivers/staging/octeon/ethernet-tx.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
index ffe9bd7..103e01b 100644
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
@@ -148,8 +148,8 @@ int cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
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
2.7.0


