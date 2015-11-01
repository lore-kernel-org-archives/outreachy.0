X-GM-THRID: 6212095586717401088
X-Received: by 10.129.116.136 with SMTP id p130mr10864549ywc.4.1446374804943;
        Sun, 01 Nov 2015 02:46:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.86.38 with SMTP id o35ls1893252qgd.47.gmail; Sun, 01 Nov
 2015 02:46:44 -0800 (PST)
X-Received: by 10.140.129.204 with SMTP id 195mr14048939qhb.1.1446374804397;
        Sun, 01 Nov 2015 02:46:44 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id fa8si1459188pab.1.2015.11.01.02.46.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 02:46:44 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id ec8so8761787pad.1
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 02:46:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=SVMr2lyJuP+SV0Coggoa3DNp3+s4I1bt9eGz9moC2yw=;
        b=l5ITbuhVz0jvCsaDKp1OK1ZKyGFUyC+eXunSWccCUw7CCcQc2/ALYK2SwC9Kr7K5Yl
         +kBw2x5TPiHEi8Kj7/d8LAPm5GayLxEOk02ttQwLoxyDHbb8L317tH/fpRnD4tCqWTRT
         nngYoF/37na5fMXfCmahaCcSsauHbGHhQGlTGiDLw0r025obrFSp+G+70WdzZYi9M8Z7
         cgKpCBTiizJtITp4MCPJWVDCbbZPcsQvg+Xx6aSXywU286DXgOJ8E/NQxKk09WsCnN/b
         GZGmq+vIyLVBpzO2kY1IlI5ncDy+9Sbjso0AumDVhiYgE0Y1FmEVUOcBuObNjmE3hpeK
         j8kQ==
X-Received: by 10.68.142.129 with SMTP id rw1mr19635934pbb.149.1446374804211;
        Sun, 01 Nov 2015 02:46:44 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.108.132])
        by smtp.gmail.com with ESMTPSA id ey2sm17963334pbd.77.2015.11.01.02.46.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 01 Nov 2015 02:46:43 -0800 (PST)
Date: Sun, 1 Nov 2015 16:16:40 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/3] staging: rdma: hfi1: sdma: Remove wrapper functions
Message-ID: <e9a27c28a3c6872b4da49a0cbf58f520d42b9f89.1446373894.git.amitoj1606@gmail.com>
References: <cover.1446373894.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446373894.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Drop wrapper functions sdma_start_err_halt_wait() and
sdma_start_sw_clean_up() that can be replaced by a direct call to
schedule_work() and tasklet_hi_schedule() respectively both of which
are standard kernel functions.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Improved commit message
Changes in v3:
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


