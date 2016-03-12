X-GM-THRID: 6260894981838340096
X-Received: by 10.112.136.35 with SMTP id px3mr1916151lbb.8.1457795033896;
        Sat, 12 Mar 2016 07:03:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.234.18 with SMTP id i18ls280726wmh.53.gmail; Sat, 12 Mar
 2016 07:03:53 -0800 (PST)
X-Received: by 10.194.119.66 with SMTP id ks2mr1967925wjb.6.1457795033273;
        Sat, 12 Mar 2016 07:03:53 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x236.google.com (mail-wm0-x236.google.com. [2a00:1450:400c:c09::236])
        by gmr-mx.google.com with ESMTPS id a126si206351wmd.2.2016.03.12.07.03.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 07:03:53 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::236 as permitted sender) client-ip=2a00:1450:400c:c09::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::236 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x236.google.com with SMTP id n186so53896423wmn.1
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 07:03:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=4AKvDof2z0v18Lt0m9UkkvZcNkevQWw1+Y/oIORbEVA=;
        b=M8K4pBqLOMqrUaINhoTPJq3UGGfY+OsB3gnzpO5D0qQQ9CMNfMeeLPZ2UcGJn8wMTc
         NrTlGlQrIkindy21nbuc6E6q+J0Z41gHsehdEWmd7PeSSkbqFWSc0UTOF+T7CSABwB8j
         xxrt41zuMnJNgmyEgXqDKmO9p2OqDohUU2Q5fv8icbOfrmiJHP4IfkadR/CT3vhGpEKj
         QMQ8lp7TP/+3o3k/32vOssRqIG5dFYjfjrtEhzfn2YPrWCAZcP5K4zQsNixuooWOWpUY
         OlctO5NSozrdxOb6SYrsHtyDEEqho9CNoSLkoc16V3PF5DcoMJ8Mm9wXvhlPhLfePhxD
         Cwaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=4AKvDof2z0v18Lt0m9UkkvZcNkevQWw1+Y/oIORbEVA=;
        b=UNJhNH8f/cEnEDzQKHlAN1CeLptO4MNqr5cgl9q1pRX7cRdJuJe55D/fgFlHI8nfgJ
         TVL05ijC/vBsEofVILSZXFkboyfP03En6FATduJyO5zrF3X0pJeDH72VbKMMPSBuxefx
         JtFynuXEhZocDHRbTTaUTSmYCrCsfBwoAT5aaSPXwNN3nB/DfVb3wB2o2moRhzVDDE7C
         lrI1PeftHdP4KCqclSWT+KyI/Fhrbbl4kXsn3Ly95ovvHVTUwkawm/Hv7JELJqosUHcv
         G/xynpYRWKEbMATF3lHjqI4OnO8S+UKpZVQO/Eu34ORqMW7seDnW4tu0sL6DMm0fP/DH
         SySA==
X-Gm-Message-State: AD7BkJLyAu5+NTfgNVYrIfNzhvuaF860vfRGA209/CPsHOiNmkKwrO1HZi64cdpqJ4t1Xg==
X-Received: by 10.28.128.80 with SMTP id b77mr8950793wmd.42.1457795033122;
        Sat, 12 Mar 2016 07:03:53 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id gk4sm13541559wjd.7.2016.03.12.07.03.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 07:03:52 -0800 (PST)
Date: Sat, 12 Mar 2016 16:03:50 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCHv3] staging: octeon: Use type int instead of int32_t
Message-ID: <20160312150347.GA2112@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Prefer the use of type int instead of int32_t. Checkpatch detected these
issues.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
v2:
	- Use int instead of s32, as Greg suggested.
v3:
	- Fix apply patch.

 drivers/staging/octeon/ethernet-tx.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
index ffe9bd7..93f6558 100644
--- a/drivers/staging/octeon/ethernet-tx.c
+++ b/drivers/staging/octeon/ethernet-tx.c
@@ -58,9 +58,9 @@ static DECLARE_TASKLET(cvm_oct_tx_cleanup_tasklet, cvm_oct_tx_do_cleanup, 0);
 /* Maximum number of SKBs to try to free per xmit packet. */
 #define MAX_SKB_TO_FREE (MAX_OUT_QUEUE_DEPTH * 2)
 
-static inline int32_t cvm_oct_adjust_skb_to_free(int32_t skb_to_free, int fau)
+static inline int cvm_oct_adjust_skb_to_free(int skb_to_free, int fau)
 {
-	int32_t undo;
+	int undo;
 
 	undo = skb_to_free > 0 ? MAX_SKB_TO_FREE : skb_to_free +
 						   MAX_SKB_TO_FREE;
@@ -83,7 +83,7 @@ static void cvm_oct_kick_tx_poll_watchdog(void)
 
 static void cvm_oct_free_tx_skbs(struct net_device *dev)
 {
-	int32_t skb_to_free;
+	int skb_to_free;
 	int qos, queues_per_port;
 	int total_freed = 0;
 	int total_remaining = 0;
@@ -148,8 +148,8 @@ int cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
 	enum {QUEUE_CORE, QUEUE_HW, QUEUE_DROP} queue_type;
 	struct octeon_ethernet *priv = netdev_priv(dev);
 	struct sk_buff *to_free_list;
-	int32_t skb_to_free;
-	int32_t buffers_to_free;
+	int skb_to_free;
+	int buffers_to_free;
 	u32 total_to_clean;
 	unsigned long flags;
 #if REUSE_SKBUFFS_WITHOUT_FREE
-- 
2.7.0


