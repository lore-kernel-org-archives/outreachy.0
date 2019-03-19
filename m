X-GM-THRID: 6670189254816038912
X-Received: by 2002:a9d:6448:: with SMTP id m8mr1239602otl.66.1553026935982;
        Tue, 19 Mar 2019 13:22:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:7591:: with SMTP id s17ls3996444otk.9.gmail; Tue, 19 Mar
 2019 13:22:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwv20+GQ3HCguOHtec9TDHEWe7nL30OZCo/2cRukQ/67AFvfv3gxJMgJXr8mm5/MUtq+COq
X-Received: by 2002:a9d:5e11:: with SMTP id d17mr1400706oti.62.1553026935052;
        Tue, 19 Mar 2019 13:22:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553026935; cv=none;
        d=google.com; s=arc-20160816;
        b=h4vapNyDJ8kXSDfytt4kdCFTMBxwlhBE21ytLtwJ4l188oi16V27HxZWD9SlzeDP97
         X6mt+C5nDjsSMRC6Q4SToOr93zUN4WBfMBr54+i2O6gJfJlGYnCjmISp7Jtj5J9NRHPs
         1KYsWAWZaTw3LazuFBL5JkAlgbqb+5KhlIE+gMR/bdj9EF4E/484zoSgKQsGcBnX/gA/
         e5CYiX08cSY9lgMemyxudcWwWg9tze3p7wbhIKZ0t8/mJaXKzdR4wjDttoRMHSdGMCVS
         8YEBD/CsJTiYI4rA4D/8JvVZPCiWj1Naf4wstOcXNjOwRWta41WfJr1qOnLGUdacxw3f
         iSHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=nJEPknljoLAY0k5GvuyiOzUL6KXMplmyE07Uf+LR7PE=;
        b=P79XLtJuMzeHLW318JOh9O6nYSFpB98MKhLjLQuvEi1Ua9NQE6MWngid6jiR58vQp4
         MC9h8/n/5Lz9lB83CQMeGOwpoXCysa0UIyiVYZA6TaZV/vJPOqKafHk1wkcKGfFoA4YJ
         PzoFO4vWMDFYzvQ5AZ9vT2Ue6kLsAba887okapu07fqWx39e7cBgF6gZI6Gk1PMa+ccI
         H9hCnszAe6iOA/BW16WSdXaWz1Kd/OqnRTggPzSNQiQtbu65TcCNhM0rRdyGVe8T7bbi
         weyT2LRmayI+YpMTiMGTA0/d16gtR4PYQmq+4OCduhdhER0VEJmKbulYsJjLEV9U0gSa
         A6Mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="f/P7+2iT";
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id u185si614035oib.2.2019.03.19.13.22.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 13:22:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="f/P7+2iT";
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id l11so14613581pgq.10
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Mar 2019 13:22:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=nJEPknljoLAY0k5GvuyiOzUL6KXMplmyE07Uf+LR7PE=;
        b=f/P7+2iTYT3cOWXdHyno7qSYk4/AHRrRPrM5TRwYXrEMyDZG8vaFlaXDwNY1hxgPt5
         APihT8EMM7GAs2uf0LDYOVU9CgjRjEXa/F6H4aNCh5Uiv4yQFoCURG9Z/4WVqU3hvkRo
         fIcV+ToVJPqBXjhL4H5zsaFgurcn1FzahF4nkSPfsKjUy49snP4UegOSW9Dhk0x/H3tS
         ZWS7WhHebEmj1UgvxVKeqF0S+6W9Sc91QSqPNpVmrM+J6AfBOvoPK85dN6gih3qYNmSt
         Q0GAt73c7LrfgVQucTYyJy1ceZZq69PFtWVQPHHDUtDqrmeULmaudh0tL0z3V7vNpjeV
         CXQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=nJEPknljoLAY0k5GvuyiOzUL6KXMplmyE07Uf+LR7PE=;
        b=YDFnMcdxEtQ3Q/EKfopeujgMup08qHa/zktdAlMIwcptJFDTmS0POvtNAV6FTAhS50
         UyYTffuJ8jq1A+kOB7wTFslD6opLAJKJewmARRCr3C2sLSDjmmXjKl7MpVXkyrVjLnif
         U/rHnlmzMjogpmcz6aVPjWXz5ovc/bqNJcUGVri0Riylu3RcYUfRnaxR3kObdNYKi20r
         Dt75RNfqmJiANS7/0GEAxph2E9UzgMiNgu+nXFfGWDmHfvJZQrJEru8TxAtxxN3ipoFY
         NUaTR39i2ftIM6ERTMv5H+kMFosuWyhqQRX1f8ZDwvug2Py7BOz3tjQkuCzgIBUovI7I
         +Rsw==
X-Gm-Message-State: APjAAAUnSlQeCFMHFX+q9bgHc98nAVPjiGcSaeu7iMJzAMrHuPv9Vo5c
	htcyFmO4gU3qODOg9Th+EI4QNDuKQro=
X-Received: by 2002:a63:c00c:: with SMTP id h12mr3589897pgg.423.1553026934152;
        Tue, 19 Mar 2019 13:22:14 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.36])
        by smtp.gmail.com with ESMTPSA id k3sm44747402pfc.59.2019.03.19.13.22.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 13:22:13 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH v3] staging: sm750fb: Eliminate camel case
Date: Wed, 20 Mar 2019 01:51:57 +0530
Message-Id: <20190319202157.19406-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Edit CamelCase function name
Issue found by checkpatch.pl

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
Changes in v3:
 -correction in subject line.

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


