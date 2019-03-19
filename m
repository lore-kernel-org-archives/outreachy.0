X-GM-THRID: 6670189254816038912
X-Received: by 2002:a6b:3115:: with SMTP id j21mr15060323ioa.33.1553024457633;
        Tue, 19 Mar 2019 12:40:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:90d:: with SMTP id 13ls25080itm.2.canary-gmail; Tue, 19
 Mar 2019 12:40:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwge3fP63to5/0kW5gAgmAy1DmUKgOG3q+3YT6GK6oFdjiNougXDVLJhepXK5LGMnTt9gEP
X-Received: by 2002:a05:660c:2c6:: with SMTP id j6mr1392495itd.9.1553024456727;
        Tue, 19 Mar 2019 12:40:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553024456; cv=none;
        d=google.com; s=arc-20160816;
        b=M/KRrNefSbErCQpMcY0KJ6tc1VdIVqi5foZJXL4nexdcnUc2zBiRwaoC7axFW+UTi8
         T+U35LLygFGtVldxDAuonahVduOei9sEX+eL12PKsWK+jOmzcZLkd+QOFIpQ3htO1v7W
         U+cAcfDJfamihBaxZepdQAXDDWk1NwQGjmvHXnq5t1LiWGaJydktLj9f74LhYqULQm1g
         ZjmpeMeNGTuWZFlElESJWW2Bk48/8r1esm6OLF5G9HiSY19XMQk5yg2jEqKcoKjl+bGP
         NCgUN/jm9ycAVc65YkncsHO0hwtsq08zNVgaxXLExL+TKJoVQbHCMQEY+7jDkjOKknPt
         xy4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=uJh+B8blP7ZP4N3Ke1I39msMfbk3ybvOyT7ItBS0S8A=;
        b=c7r5pDe5SvZchNeGk8LkV/FTNz5dEc0JsSiVEReZBbthEBoTShHLG6ZC5LucPOPCqv
         U/5y1jRCZqxmAEz1vWAN0OFFPqrHSQVDunjEv7Gms91n+y4sRI9xlPJ3NNp0OaNNNHW5
         o87JXXp9h2d2hwUoHxkmGzvmdQd+77L85yHW98T47MvFufqBM252nQlq/VX4qrHSngPO
         7UdustNAjnjG+42FYReA8Z3uRlSm3LT116s3jJ6vLq+AbgJJNS3QtAGV/bbsSgx++89i
         +DSZBBI82ZwTFFTwVxonglGrLJ0//YAjKgaPXeWnaDVCcxyQMmYp9yCoG0pg8+Ox0Mag
         fHDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GrGkHSzk;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id j6si155055itb.0.2019.03.19.12.40.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 12:40:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GrGkHSzk;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id i19so118020pfd.0
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Mar 2019 12:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=uJh+B8blP7ZP4N3Ke1I39msMfbk3ybvOyT7ItBS0S8A=;
        b=GrGkHSzkvhUO9jyMIU8h5z4JqMteZQ4R2Zu2dtNkookbQYyJw2fTKrWNNastKUhddn
         zsUuEb3UEVLl3vqXLxZe0GwS34IXResbrDBf+PBmM0BpQvJBsw/QdS3S7zqctsjI/1KO
         0EfzRezcrTY5LmgHW5Rmz+ywuhybEY99OKbrkElBXyLtKHTwx+0BuaoqOOhGZHqIKuFX
         /c9hwQrf+kXkOzDqrrljIeAJwybPaN2C35ASjOMhoEV7l96HSfRy2a2r6hYSdrBMpCC6
         FXA7noms5LET8bhpy10+1hnMywIZSTclRXXLJf4LUPbTOOrZogeJ9mN7oO4zYx7s7xdR
         1eXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=uJh+B8blP7ZP4N3Ke1I39msMfbk3ybvOyT7ItBS0S8A=;
        b=qGHVMy8CIJe3y+MJXsXAC7VrHP/tk7V+QKVcPv1zL13SFxstHYjIBzXmP7UT3qTX4y
         jXSXaCLQexMAoC7uQoHPX8W0M6c7h6weUGaNAIk5KyQrEn7GTalq129AI+wbmEOU9yD3
         WQoUoKYGiIX1IwiXSS4kZQCoHeFlBEFOTgmtqpEm149xpf48ZUJVNqVzz7gsS54D9klZ
         tV+t3DvxnauHynEQp27pNkUT5F0lPcNpv9JSQcI4RMgr5aEve1dJcCJVqqKidWo4VKES
         1PuXzABvJeC/lH/2tSj6nOFrbjqaWHJ20UsFtVz6N0h6yxJdk3l0F7VCE3Kr2ajbgAbu
         LWAA==
X-Gm-Message-State: APjAAAV/P+p0Lq3xw8DXPveUxWX9oKhRB3tpf6Z3UZPLWWzCehEFQJLV
	aOleWA+A7HZEpDrZ6EdUyKLfK7fHYrA=
X-Received: by 2002:a63:88c3:: with SMTP id l186mr3613071pgd.148.1553024455923;
        Tue, 19 Mar 2019 12:40:55 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.36])
        by smtp.gmail.com with ESMTPSA id a7sm19866396pff.54.2019.03.19.12.40.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 12:40:55 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH v2] staging:sm750fb:Eliminate camel case
Date: Wed, 20 Mar 2019 01:10:37 +0530
Message-Id: <20190319194037.18769-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Edit CamelCase function names
Issue found by checkpatch.pl

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
Changes in v2:
 -correction in subject line and log message.

 drivers/staging/sm750fb/ddk750_display.c | 10 +++++-----
 drivers/staging/sm750fb/ddk750_display.h |  2 +-
 drivers/staging/sm750fb/ddk750_power.h   |  2 +-
 drivers/staging/sm750fb/sm750_hw.c       |  2 +-
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
index f38051eedb6c..887ea8aef43f 100644
--- a/drivers/staging/sm750fb/ddk750_display.c
+++ b/drivers/staging/sm750fb/ddk750_display.c
@@ -85,7 +85,7 @@ static void primary_wait_vertical_sync(int delay)
 	}
 }
 
-static void swPanelPowerSequence(int disp, int delay)
+static void sw_panel_power_sequence(int disp, int delay)
 {
 	unsigned int reg;
 
@@ -111,7 +111,7 @@ static void swPanelPowerSequence(int disp, int delay)
 	primary_wait_vertical_sync(delay);
 }
 
-void ddk750_setLogicalDispOut(enum disp_output output)
+void ddk750_set_logical_disp_out(enum disp_output output)
 {
 	unsigned int reg;
 
@@ -147,12 +147,12 @@ void ddk750_setLogicalDispOut(enum disp_output output)
 
 	if (output & PNL_SEQ_USAGE) {
 		/* set  panel sequence */
-		swPanelPowerSequence((output & PNL_SEQ_MASK) >> PNL_SEQ_OFFSET,
-				     4);
+		sw_panel_power_sequence((output & PNL_SEQ_MASK) >> PNL_SEQ_OFFSET,
+		4);
 	}
 
 	if (output & DAC_USAGE)
-		setDAC((output & DAC_MASK) >> DAC_OFFSET);
+		set_DAC((output & DAC_MASK) >> DAC_OFFSET);
 
 	if (output & DPMS_USAGE)
 		ddk750_set_dpms((output & DPMS_MASK) >> DPMS_OFFSET);
diff --git a/drivers/staging/sm750fb/ddk750_display.h b/drivers/staging/sm750fb/ddk750_display.h
index 7fd101d98199..7f713906dc16 100644
--- a/drivers/staging/sm750fb/ddk750_display.h
+++ b/drivers/staging/sm750fb/ddk750_display.h
@@ -102,6 +102,6 @@ enum disp_output {
 	do_CRT_SEC = CRT_2_SEC | SEC_TP_ON | DPMS_ON | DAC_ON,
 };
 
-void ddk750_setLogicalDispOut(enum disp_output output);
+void ddk750_set_logical_disp_out(enum disp_output output);
 
 #endif
diff --git a/drivers/staging/sm750fb/ddk750_power.h b/drivers/staging/sm750fb/ddk750_power.h
index e48c74ecbbd1..7002567a47d2 100644
--- a/drivers/staging/sm750fb/ddk750_power.h
+++ b/drivers/staging/sm750fb/ddk750_power.h
@@ -9,7 +9,7 @@ enum dpms {
 	crtDPMS_OFF = 0x3,
 };
 
-#define setDAC(off) {							\
+#define set_DAC(off) {							\
 	poke32(MISC_CTRL,						\
 	       (peek32(MISC_CTRL) & ~MISC_CTRL_DAC_POWER_OFF) | (off)); \
 }
diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
index edeae9d06883..ea1d3d4efbc2 100644
--- a/drivers/staging/sm750fb/sm750_hw.c
+++ b/drivers/staging/sm750fb/sm750_hw.c
@@ -207,7 +207,7 @@ int hw_sm750_output_setMode(struct lynxfb_output *output,
 			if (output->paths & sm750_crt)
 				disp_set |= do_CRT_SEC;
 		}
-		ddk750_setLogicalDispOut(disp_set);
+		ddk750_set_logical_disp_out(disp_set);
 	} else {
 		/* just open DISPLAY_CONTROL_750LE register bit 3:0 */
 		u32 reg;
-- 
2.17.1


