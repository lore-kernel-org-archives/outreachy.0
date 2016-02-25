X-GM-THRID: 6255196435658047488
X-Received: by 10.107.184.195 with SMTP id i186mr2047942iof.24.1456401446988;
        Thu, 25 Feb 2016 03:57:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.17.215 with SMTP id 84ls335127ior.97.gmail; Thu, 25 Feb
 2016 03:57:26 -0800 (PST)
X-Received: by 10.66.221.100 with SMTP id qd4mr40876282pac.0.1456401446705;
        Thu, 25 Feb 2016 03:57:26 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id ui7si1167068pab.0.2016.02.25.03.57.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 03:57:26 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id c10so2708796pfc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 03:57:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=ByRcfO84HwJF0yIxMNLw7SiVtRVbc3KVuEH9iSg6Qww=;
        b=w8+EkSdKuWqGQU6iNrS6nOrRHIFKSdksS33FwJBEDPbSR0TPu73Fir3X4WoOieCXIj
         A7AN/9DMPoiTCfn+NvKgBq6x3UpdSGz0vbrv5NZCPemVxAkTFehjykc/pXYJ3iM3n33x
         oqkuh+rkfSG+ibMGYx2P/JfVo+fVCV5X+jn12aGC+3wehe07GucABPBT8w1pIX4ygims
         NZJqwAVsK4p5X1LbvQnbth6E8alA6XmtVthqPyk72ouNBgGG7o9iMC9VODWuU8+jQF5G
         sSm6LM4Aydhvc9jzk8yV6osVkvqM6PH3qccNbbau6C5qMd6MqXYdFvJoHSGO79yv4ZSC
         Y3PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=ByRcfO84HwJF0yIxMNLw7SiVtRVbc3KVuEH9iSg6Qww=;
        b=ZNEI8byesnZ7uOKAZYbb0UaJbZQHKcaVWzN7UNhtGMvaupbQRF3g3OTliQikvJngmx
         7ozg0cJYcf2kKLoAVGqicjc3Qd0RbXW+V/lkW7QDJzIQUKjLDt0ux4zs4p1Gs2+6WJW1
         zeDoxybsD5JfX4XNNroZHr7rI1ccVzd5NBZnn06sk+HHAWfbPH85y58vC7kh0Hl6utVa
         1ksHhR69N7X999usLnUrNlmwlnn2CceSxYsANpHnrN0gwCkWsWHyBg12xm3OEPisfYfd
         qe5+HrtdsX4tkt5K2+aLjPIQEc0pBtXs+gYZyuI3V2oGgCdakZsKGQqlMgs+szdxYAbO
         f2CA==
X-Gm-Message-State: AG10YOTL+rsdVdTtAZ28RWHUfUOgWsOBIEloPGKJom1q+z5m398aVOKkoYhQ9AEDfA3/bg==
X-Received: by 10.98.71.210 with SMTP id p79mr62331472pfi.4.1456401446544;
        Thu, 25 Feb 2016 03:57:26 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.170.98])
        by smtp.gmail.com with ESMTPSA id b2sm11870872pfd.24.2016.02.25.03.57.22
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 03:57:26 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Thu, 25 Feb 2016 17:27:16 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 3/3] Staging: rdma: Remove wrapper sdma_start_hw_clean_up
Date: Thu, 25 Feb 2016 17:25:58 +0530
Message-Id: <a065f9a17e7716720dbf0505dfdbfeaed90b234f.1456390351.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456390351.git.bhumirks@gmail.com>
References: <cover.1456390351.git.bhumirks@gmail.com>
In-Reply-To: <cover.1456390351.git.bhumirks@gmail.com>
References: <cover.1456390351.git.bhumirks@gmail.com>

The function sdma_start_hw_clean_up can be replaced with direct call to
tasklet_hi_schedule. So drop the function definition and prototype of
sdma_start_hw_clean_up and replace the calls with tasklet_hi_schedule.
Done using coccinelle:

@@
expression e;
@@
- sdma_start_hw_clean_up(e);
+ tasklet_hi_schedule(&sde->sdma_hw_clean_up_task);

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rdma/hfi1/sdma.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/sdma.c b/drivers/staging/rdma/hfi1/sdma.c
index 9a15f1f..d833a00 100644
--- a/drivers/staging/rdma/hfi1/sdma.c
+++ b/drivers/staging/rdma/hfi1/sdma.c
@@ -235,7 +235,6 @@ static void sdma_get(struct sdma_state *);
 static void sdma_hw_clean_up_task(unsigned long);
 static void sdma_put(struct sdma_state *);
 static void sdma_set_state(struct sdma_engine *, enum sdma_states);
-static void sdma_start_hw_clean_up(struct sdma_engine *);
 static void sdma_sw_clean_up_task(unsigned long);
 static void sdma_sendctrl(struct sdma_engine *, unsigned);
 static void init_sdma_regs(struct sdma_engine *, u32, uint);
@@ -670,11 +669,6 @@ static void sdma_sw_tear_down(struct sdma_engine *sde)
 	wake_up_interruptible(&sde->dd->sdma_unfreeze_wq);
 }
 
-static void sdma_start_hw_clean_up(struct sdma_engine *sde)
-{
-	tasklet_hi_schedule(&sde->sdma_hw_clean_up_task);
-}
-
 static void sdma_set_state(struct sdma_engine *sde,
 	enum sdma_states next_state)
 {
@@ -2293,7 +2287,7 @@ static void __sdma_process_event(struct sdma_engine *sde,
 		case sdma_event_e15_hw_halt_done:
 			sdma_set_state(sde,
 				sdma_state_s15_hw_start_up_clean_wait);
-			sdma_start_hw_clean_up(sde);
+			tasklet_hi_schedule(&sde->sdma_hw_clean_up_task);
 			break;
 		case sdma_event_e25_hw_clean_up_done:
 			break;
@@ -2422,7 +2416,7 @@ static void __sdma_process_event(struct sdma_engine *sde,
 			break;
 		case sdma_event_e40_sw_cleaned:
 			sdma_set_state(sde, sdma_state_s40_hw_clean_up_wait);
-			sdma_start_hw_clean_up(sde);
+			tasklet_hi_schedule(&sde->sdma_hw_clean_up_task);
 			break;
 		case sdma_event_e50_hw_cleaned:
 			break;
-- 
1.9.1


