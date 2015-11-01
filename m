X-GM-THRID: 6212095586717401088
X-Received: by 10.66.221.42 with SMTP id qb10mr14104521pac.35.1446371618472;
        Sun, 01 Nov 2015 01:53:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.40.241 with SMTP id x104ls2137859qgx.34.gmail; Sun, 01 Nov
 2015 01:53:37 -0800 (PST)
X-Received: by 10.129.95.6 with SMTP id t6mr14969992ywb.7.1446371617930;
        Sun, 01 Nov 2015 01:53:37 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id el2si1488455pbb.0.2015.11.01.01.53.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 01:53:37 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id hy1so111218644pad.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 01:53:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=84dX3qFHdiDCsJDaY3Q6lb9mfuivg1paZ3nuVdk3dZc=;
        b=MUFPyGliTEkhZN8SLaO6hac+EWuAg1NUdIgzFkANqk0QnjtFsSQo8F21+d1gQDi2f/
         qD6C9XLGPZ/L8028VLXhxzRlg40DHoxp+U4m5qtvbYsF2v/X6kf1dmquI06IuDfBm8sE
         aIahvWN5QjtSTEeHSmTExTqnIgB4zmhoyXMS3BogHjMsgRky8zep+QDxmebumsIIeG66
         vgwM9ao7uR/2y70jvsZ8zoIhHsYSu+suUUD9DYHy2POZhW1XnPmQgPsaj5XUOfcQtAvm
         S05eI/Sz31Ra8WOf0OE45Dl3fiOxiIb4ND+22d0LezO84pO3Ln/qAyK5bPkoQ30T+8I8
         UZ2g==
X-Received: by 10.68.137.161 with SMTP id qj1mr19883187pbb.154.1446371617748;
        Sun, 01 Nov 2015 01:53:37 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.108.132])
        by smtp.gmail.com with ESMTPSA id a5sm16836470pbu.55.2015.11.01.01.53.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 01 Nov 2015 01:53:37 -0800 (PST)
Date: Sun, 1 Nov 2015 15:23:24 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/3] staging: rdma: hfi1: sdma: Remove wrapper functions
Message-ID: <20151101095324.GA17611@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Drop wrapper functions sdma_start_err_halt_wait() and
sdma_start_sw_clean_up() that can be replaced by a direct call to 
schedule_work() and tasklet_hi_schedule() respectively.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Improved commit message

 drivers/staging/rdma/hfi1/sdma.c | 40 ++++++++++++++--------------------------
 1 file changed, 14 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/sdma.c b/drivers/staging/rdma/hfi1/sdma.c
index 63ab721..4e44ac7 100644
--- a/drivers/staging/rdma/hfi1/sdma.c
+++ b/drivers/staging/rdma/hfi1/sdma.c
@@ -230,7 +230,6 @@ static void sdma_hw_clean_up_task(unsigned long);
 static void sdma_put(struct sdma_state *);
 static void sdma_set_state(struct sdma_engine *, enum sdma_states);
 static void sdma_start_hw_clean_up(struct sdma_engine *);
-static void sdma_start_sw_clean_up(struct sdma_engine *);
 static void sdma_sw_clean_up_task(unsigned long);
 static void sdma_sendctrl(struct sdma_engine *, unsigned);
 static void init_sdma_regs(struct sdma_engine *, u32, uint);
@@ -454,12 +453,6 @@ static void sdma_err_halt_wait(struct work_struct *work)
 	sdma_process_event(sde, sdma_event_e15_hw_halt_done);
 }
 
-static void sdma_start_err_halt_wait(struct sdma_engine *sde)
-{
-	schedule_work(&sde->err_halt_worker);
-}
-
-
 static void sdma_err_progress_check_schedule(struct sdma_engine *sde)
 {
 	if (!is_bx(sde->dd) && HFI1_CAP_IS_KSET(SDMA_AHG)) {
@@ -666,11 +659,6 @@ static void sdma_start_hw_clean_up(struct sdma_engine *sde)
 	tasklet_hi_schedule(&sde->sdma_hw_clean_up_task);
 }
 
-static void sdma_start_sw_clean_up(struct sdma_engine *sde)
-{
-	tasklet_hi_schedule(&sde->sdma_sw_clean_up_task);
-}
-
 static void sdma_set_state(struct sdma_engine *sde,
 	enum sdma_states next_state)
 {
@@ -2291,7 +2279,7 @@ static void __sdma_process_event(struct sdma_engine *sde,
 		case sdma_event_e50_hw_cleaned:
 			break;
 		case sdma_event_e60_hw_halted:
-			sdma_start_err_halt_wait(sde);
+			schedule_work(&sde->err_halt_worker);
 			break;
 		case sdma_event_e70_go_idle:
 			ss->go_s99_running = 0;
@@ -2372,7 +2360,7 @@ static void __sdma_process_event(struct sdma_engine *sde,
 			break;
 		case sdma_event_e60_hw_halted:
 			sdma_set_state(sde, sdma_state_s50_hw_halt_wait);
-			sdma_start_err_halt_wait(sde);
+			schedule_work(&sde->err_halt_worker);
 			break;
 		case sdma_event_e70_go_idle:
 			break;
@@ -2435,7 +2423,7 @@ static void __sdma_process_event(struct sdma_engine *sde,
 		switch (event) {
 		case sdma_event_e00_go_hw_down:
 			sdma_set_state(sde, sdma_state_s00_hw_down);
-			sdma_start_sw_clean_up(sde);
+			tasklet_hi_schedule(&sde->sdma_sw_clean_up_task);
 			break;
 		case sdma_event_e10_go_hw_start:
 			break;
@@ -2477,13 +2465,13 @@ static void __sdma_process_event(struct sdma_engine *sde,
 		switch (event) {
 		case sdma_event_e00_go_hw_down:
 			sdma_set_state(sde, sdma_state_s00_hw_down);
-			sdma_start_sw_clean_up(sde);
+			tasklet_hi_schedule(&sde->sdma_sw_clean_up_task);
 			break;
 		case sdma_event_e10_go_hw_start:
 			break;
 		case sdma_event_e15_hw_halt_done:
 			sdma_set_state(sde, sdma_state_s30_sw_clean_up_wait);
-			sdma_start_sw_clean_up(sde);
+			tasklet_hi_schedule(&sde->sdma_sw_clean_up_task);
 			break;
 		case sdma_event_e25_hw_clean_up_done:
 			break;
@@ -2495,7 +2483,7 @@ static void __sdma_process_event(struct sdma_engine *sde,
 		case sdma_event_e50_hw_cleaned:
 			break;
 		case sdma_event_e60_hw_halted:
-			sdma_start_err_halt_wait(sde);
+			schedule_work(&sde->err_halt_worker);
 			break;
 		case sdma_event_e70_go_idle:
 			ss->go_s99_running = 0;
@@ -2518,13 +2506,13 @@ static void __sdma_process_event(struct sdma_engine *sde,
 		switch (event) {
 		case sdma_event_e00_go_hw_down:
 			sdma_set_state(sde, sdma_state_s00_hw_down);
-			sdma_start_sw_clean_up(sde);
+			tasklet_hi_schedule(&sde->sdma_sw_clean_up_task);
 			break;
 		case sdma_event_e10_go_hw_start:
 			break;
 		case sdma_event_e15_hw_halt_done:
 			sdma_set_state(sde, sdma_state_s30_sw_clean_up_wait);
-			sdma_start_sw_clean_up(sde);
+			tasklet_hi_schedule(&sde->sdma_sw_clean_up_task);
 			break;
 		case sdma_event_e25_hw_clean_up_done:
 			break;
@@ -2536,7 +2524,7 @@ static void __sdma_process_event(struct sdma_engine *sde,
 		case sdma_event_e50_hw_cleaned:
 			break;
 		case sdma_event_e60_hw_halted:
-			sdma_start_err_halt_wait(sde);
+			schedule_work(&sde->err_halt_worker);
 			break;
 		case sdma_event_e70_go_idle:
 			ss->go_s99_running = 0;
@@ -2558,7 +2546,7 @@ static void __sdma_process_event(struct sdma_engine *sde,
 		switch (event) {
 		case sdma_event_e00_go_hw_down:
 			sdma_set_state(sde, sdma_state_s00_hw_down);
-			sdma_start_sw_clean_up(sde);
+			tasklet_hi_schedule(&sde->sdma_sw_clean_up_task);
 			break;
 		case sdma_event_e10_go_hw_start:
 			break;
@@ -2582,7 +2570,7 @@ static void __sdma_process_event(struct sdma_engine *sde,
 			break;
 		case sdma_event_e81_hw_frozen:
 			sdma_set_state(sde, sdma_state_s82_freeze_sw_clean);
-			sdma_start_sw_clean_up(sde);
+			tasklet_hi_schedule(&sde->sdma_sw_clean_up_task);
 			break;
 		case sdma_event_e82_hw_unfreeze:
 			break;
@@ -2597,7 +2585,7 @@ static void __sdma_process_event(struct sdma_engine *sde,
 		switch (event) {
 		case sdma_event_e00_go_hw_down:
 			sdma_set_state(sde, sdma_state_s00_hw_down);
-			sdma_start_sw_clean_up(sde);
+			tasklet_hi_schedule(&sde->sdma_sw_clean_up_task);
 			break;
 		case sdma_event_e10_go_hw_start:
 			break;
@@ -2641,7 +2629,7 @@ static void __sdma_process_event(struct sdma_engine *sde,
 		switch (event) {
 		case sdma_event_e00_go_hw_down:
 			sdma_set_state(sde, sdma_state_s00_hw_down);
-			sdma_start_sw_clean_up(sde);
+			tasklet_hi_schedule(&sde->sdma_sw_clean_up_task);
 			break;
 		case sdma_event_e10_go_hw_start:
 			break;
@@ -2664,7 +2652,7 @@ static void __sdma_process_event(struct sdma_engine *sde,
 			* progress check
 			*/
 			sdma_set_state(sde, sdma_state_s50_hw_halt_wait);
-			sdma_start_err_halt_wait(sde);
+			schedule_work(&sde->err_halt_worker);
 			break;
 		case sdma_event_e70_go_idle:
 			sdma_set_state(sde, sdma_state_s60_idle_halt_wait);
-- 
1.9.1


