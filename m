X-GM-THRID: 6256120108487278592
X-Received: by 10.112.17.37 with SMTP id l5mr851548lbd.21.1456616756334;
        Sat, 27 Feb 2016 15:45:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.194.4 with SMTP id s4ls117246wmf.54.canary; Sat, 27 Feb
 2016 15:45:55 -0800 (PST)
X-Received: by 10.28.158.216 with SMTP id h207mr412625wme.4.1456616755913;
        Sat, 27 Feb 2016 15:45:55 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id 141si402718wmy.2.2016.02.27.15.45.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 15:45:55 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id w11so473211wmd.2
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 15:45:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=pibLWWz6jI+Nibtonj2OnqBRk32JzyF6gXFKSbe1eNU=;
        b=RNtNrsofcskTMCfEH49fqGhBSr2fbFStdfnNdyb/g68dYw00bI3aU958X1e92VNe8D
         88xFSDpkpvEHRcpfGsJ+wSem6qeNGnd8HLOR2tno86YqYnsjORr1oGWDco5Y2kw45Ni1
         +2WbU+ulMYQdjRGfg7dZWBzu3uC+5C2ViBWq/FiFtalnmwmFowaNoNXnK/ynnVYP1SCc
         RbCGqrIycjiPNOWtdEvw4zLNOHY5VNOMHABICIgeRbOAs4BmVeAQD7D2dzEU8U/edzdZ
         7aPt4UI+Jhq0FbP5we2CyATGw1UCIY9ounJAt9IXX4aoHSnTfAm3iNUi46spCmb7Aagw
         SuQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=pibLWWz6jI+Nibtonj2OnqBRk32JzyF6gXFKSbe1eNU=;
        b=b1mWwm+aq1ZIiJ8rvdFavdLyYiMZTekpNKU4+Oztll1XWzLpBacrhMl+sCth4nvMal
         zMV9iwsZCiQUNBRox6IgKWApQFdO5RWp5+DtDBUNGACMjrJpQoWKXNBOZXeHqqdjjfDx
         BOh9deqrN4X88clQcI44NNYIT0K2EBptOT5MyqmVBYuQ3kljH6/ReQJ+yUjq+90Nr3hx
         N5uAzXfiFVQNmuV4i6GoLIzBnyxULzymBHApMPiImibxiHm8aO0BwwATHmzYkHpAMoOF
         YOQAKRUxgbwVjmjp4OUrYxnR/uGm5RD2xOQIpwQw+mAEeyOebVBOexDKYhWCI1ijw/A/
         pAOw==
X-Gm-Message-State: AD7BkJIYJYOm0CgXLEUWJF7WmevjbCT3/CFVAh8udgh18+3oSqlXs5bi3z+fgimHzTEcBQ==
X-Received: by 10.195.12.113 with SMTP id ep17mr7705098wjd.102.1456616755793;
        Sat, 27 Feb 2016 15:45:55 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id js8sm18796217wjc.37.2016.02.27.15.45.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 15:45:55 -0800 (PST)
Date: Sun, 28 Feb 2016 00:45:53 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 08/10] staging: octeon: Use type s32 instead of int32_t
Message-ID: <c0ddbba2fc4769b30c523dda526098e063576d1f.1456615452.git.nevola@gmail.com>
References: <cover.1456615452.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456615452.git.nevola@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Prefer the use of type s32 instead of int32_t. Checkpatch detected these
issues.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/octeon/ethernet-tx.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
index 024263d4..db04388 100644
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
2.7.0


