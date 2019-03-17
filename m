X-GM-THRID: 6669317820815245312
X-Received: by 2002:a6b:251:: with SMTP id 78mr8211374ioc.39.1552821560688;
        Sun, 17 Mar 2019 04:19:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:458f:: with SMTP id c15ls171434itd.1.experimental-gmail;
 Sun, 17 Mar 2019 04:19:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwmwNz1d61wSFbsGlATnwfIt/8+6Jua3JiiY9f/lUtEB0NhAM8n5bo+Jcsw8FraRefjnc0I
X-Received: by 2002:a24:4748:: with SMTP id t69mr7224845itb.10.1552821558311;
        Sun, 17 Mar 2019 04:19:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552821558; cv=none;
        d=google.com; s=arc-20160816;
        b=GpEOC2xGi1YjaFbx/qlV7q8Gh6PUCSs2tIsqJhlQR+9kU92n6YqfIsRTsLcZvLfOdA
         IgZXA4cs/e91KBuial6WXKFQEguJhWcLXnNgZFHhJLvMZv9A/Atcy2cT83yNE24TgwVb
         wOmeQVVgSCtHlHOmAB3JZGvU5IemsXyHyf/Jvp8eSadHX/TMmdp3D080JmX6Y9IBZOXP
         9lJ8/O8yiOkHF2tm3/1s2SgirZN1Uy7CLbw2ACtaUtej4odLJ5Vbt2xQEpwRkaD5JLNI
         ET59EMIkWEk8DTN8Dhme2aA4RU8Yov2JTP31cFKsNjtRKC8ygON6M4Qpcj+tJDvLl97z
         msyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=RnD8dLhejf9l7wjuGCDp4/j1qBkalFGpfgtDGAlqrVA=;
        b=to4xkBAldMwVyIH7ZBXazZcH8g0g8UFHKmCHmIR8/I/8sWzuujxQq1r2Z9QvP9HvWZ
         W/9Y5AZHkHT8PEn6+gCbGuuNSoYfly4+NRk/1mKGrGrkWSIN41CJZFqbwOi9bB55PEoZ
         40T8/rEE0uRpHb7AnmQBkjhVukDMwjsGNXawKbvjCQHyDsZ6GZ6bNzOqW+ywdR+EJf/+
         q3Rihyq1O5UMCVD/AjxpKAzoQPV78enqIvoorTWLE1RTizPEE9h5gJITS6Z5Y/9zSMFL
         Acv2o7pC33Ay33sJ058BU6bdoNevqUaBVIeG2UoJPKq2DOFfdTJvJ30pZKshxtQ59wAI
         N9Sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gVCIoAVP;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id j6si860243itb.0.2019.03.17.04.19.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 04:19:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gVCIoAVP;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id y3so200814pgk.12
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 04:19:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=RnD8dLhejf9l7wjuGCDp4/j1qBkalFGpfgtDGAlqrVA=;
        b=gVCIoAVPM/p6Rtnm9vxJL+bfiKKTEoYPoFBBmhiU+oq87WIukt5Oq1o3+zhNfYN122
         8htgo/xgBqhLaJ7oKCmoCuug85tK25UOXiNySSltX+prIJLxoz1zZDGXwGpKHACCLb5i
         7CSMFcYSXovdKNr7tpCV7/I8/QpdjDzQK7sgbYuLI4NnBMeRuS84KKRqW4JWlaXx8TOK
         aDnFt31cwLknsDe9j5VsngVVfTBeZccnvJou9Rogti5JLNsPWK+QHlIs8lkEsGGg26p9
         6s1SIPN4khDYk2qZ85mRg+GTB3O43Ih6fHSqXZC9sdXzXWj+qWNv9I35rQma//DAbZlr
         t8Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=RnD8dLhejf9l7wjuGCDp4/j1qBkalFGpfgtDGAlqrVA=;
        b=g69Ej4hwjIdftBmJN4sWtySEl9oXmfnMAhjkkfM9T+Xd6Avi7akod3uzhsv/lpM6kX
         w5aImiiykxWBODPcRNr7N0zZtVQ4hxTbcJS4GkUuFStEov/0BmxrxbI2VceTTsm6W7gN
         Gc7fN94UxmjsCsNE4ipW6WS/ozu/MYRhV74Ar7D6nQasbVTDe5bvdd3pXLTSCcEWORFD
         GpBPYaGkLfPnADTG/jmtGXgMu9uolfkcjmUEvObUzM/ecNlUeHdjgMpqQ60OPnNfdLW3
         aw9MjwnYM3Br4rSHOQqyu9Jd8QY+BYH38giAYL/nveCt2J9+0fFk2WvRVi+k6AoV8B8S
         t65g==
X-Gm-Message-State: APjAAAWLspNbL1u238SPQvgGlRkGAHUygx3LC2k+Zy9+78yPH9UaJqYV
	xbfRIyp/HdSHf4hQgY7F8kWOsbDgokQ=
X-Received: by 2002:a17:902:7242:: with SMTP id c2mr13894009pll.245.1552821557506;
        Sun, 17 Mar 2019 04:19:17 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id v15sm14240853pfa.75.2019.03.17.04.19.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 04:19:16 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Eric Anholt <eric@anholt.net>,
	Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH] Staging: vc04_services: Remove useless parentheses
Date: Sun, 17 Mar 2019 16:49:01 +0530
Message-Id: <20190317111901.5858-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove the parentheses which are not required.
Issue found using coccinelle.
The semantic patch that fixes the problem is as follows

// <smpl>
@disable paren@
expression value,e;
@@
(
- value = (e)
+ value = e
)

@disable paren@
identifier fn;
expression e;
@@

- fn((e))
+ fn(e)

@disable paren@
expression e;
@@

- return (e);
+ return e;
// </smpl>

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 .../vc04_services/interface/vchiq_arm/vchiq_core.c   | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 53f5a1cb4636..92a4630e57a7 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -1355,7 +1355,7 @@ static void
 abort_outstanding_bulks(struct vchiq_service *service,
 			struct vchiq_bulk_queue *queue)
 {
-	int is_tx = (queue == &service->bulk_tx);
+	int is_tx = queue == &service->bulk_tx;
 
 	vchiq_log_trace(vchiq_core_log_level,
 		"%d: aob:%d %cx - li=%x ri=%x p=%x",
@@ -2371,7 +2371,7 @@ vchiq_add_service_internal(struct vchiq_state *state,
 			}
 		}
 	} else {
-		for (i = (state->unused_service - 1); i >= 0; i--) {
+		for (i = state->unused_service - 1; i >= 0; i--) {
 			struct vchiq_service *srv = state->services[i];
 
 			if (!srv)
@@ -2389,7 +2389,7 @@ vchiq_add_service_internal(struct vchiq_state *state,
 	}
 
 	if (pservice) {
-		service->localport = (pservice - state->services);
+		service->localport = pservice - state->services;
 		if (!handle_seq)
 			handle_seq = VCHIQ_MAX_STATES *
 				 VCHIQ_MAX_SERVICES;
@@ -2552,14 +2552,14 @@ do_abort_bulks(struct vchiq_service *service)
 	if (status == VCHIQ_SUCCESS)
 		status = notify_bulks(service, &service->bulk_rx,
 			0/*!retry_poll*/);
-	return (status == VCHIQ_SUCCESS);
+	return status == VCHIQ_SUCCESS;
 }
 
 static VCHIQ_STATUS_T
 close_service_complete(struct vchiq_service *service, int failstate)
 {
 	VCHIQ_STATUS_T status;
-	int is_server = (service->public_fourcc != VCHIQ_FOURCC_INVALID);
+	int is_server = service->public_fourcc != VCHIQ_FOURCC_INVALID;
 	int newstate;
 
 	switch (service->srvstate) {
@@ -2622,7 +2622,7 @@ vchiq_close_service_internal(struct vchiq_service *service, int close_recvd)
 {
 	struct vchiq_state *state = service->state;
 	VCHIQ_STATUS_T status = VCHIQ_SUCCESS;
-	int is_server = (service->public_fourcc != VCHIQ_FOURCC_INVALID);
+	int is_server = service->public_fourcc != VCHIQ_FOURCC_INVALID;
 
 	vchiq_log_info(vchiq_core_log_level, "%d: csi:%d,%d (%s)",
 		service->state->id, service->localport, close_recvd,
-- 
2.17.1


