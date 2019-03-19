X-GM-THRID: 6669776681791651840
X-Received: by 2002:a62:6545:: with SMTP id z66mr8028316pfb.22.1552988707870;
        Tue, 19 Mar 2019 02:45:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:5081:: with SMTP id r1ls7650649pgp.9.gmail; Tue, 19 Mar
 2019 02:45:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyEFKgv6FZMjvffc2uYkVFb6PI5H8mrIxz4uW5ru24Rza+bO8ghq4lRDYWBdYIJXezi7UpH
X-Received: by 2002:aa7:8185:: with SMTP id g5mr8167368pfi.74.1552988707182;
        Tue, 19 Mar 2019 02:45:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552988707; cv=none;
        d=google.com; s=arc-20160816;
        b=lsg1IO+BOasLSJImh2qB3yZXf5ZC4f2Io++LN5+ryw4NwBgbj3lN6smyJ8YDmajhkG
         3gZnrtD3AXvfsR7qDFBaOH+9QN1LT7nJPh56GlK9P0T38gTL5ZQiLI7bKiHWY1EnZbRq
         6AS1kimgKkkRoya1zuFaSaVh2G+qC2zfl+RJDqslGatP424+k01vM7pgzg6P+gzDM7VU
         crcPg4f1MRS6KeTEt//YQK2QGeprqHap5dxpa+ky9IdL9MQRl4ZN7lX0WkHgBWK8d/dC
         Ct/1ORiHm7HxLXThfLZspvFAulO5dYOB9JLboiN5Jgz3R0g+uOJ0B7rHwd5XnL26ZdQ7
         Pu6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=XpWFPwur0v8zuY1SZ2hwoxXOx+JyTJx0Ao02VYJA/A0=;
        b=peYLXv0KzP9pKMZkt9X4kBlfUm1GHJKIiFTgUuGYaSi7UAB5cq8RgBTNUwkqyC2AIs
         5zluwBLkzKl5juBCwgVWjUVbE7rIBgepUyQIHwheiXY4kMl2/U6H+FkTILDr3K1qQUIH
         IQPlzUJFsdmu+2pYCmfjIa5Nkm2yxm5xaUjm3fBvN6A0dPVbN5SoOQX90aCRegToeRoH
         1rObuzM4OujuYQjPD3rY6iocP/W3kMe1qjB8gTXjlY2ep5JfHA9MoT3beguEyOC9ZcCS
         wdC4Jg/SFxEmNzygqctjbz07ydMjSkdqUULleoWgJenS/oldFvZJELgJhRaL9TYCgqKe
         3B/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F8LA+Ulc;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id b38si495853plb.1.2019.03.19.02.45.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 02:45:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F8LA+Ulc;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id r124so13490168pgr.3
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Mar 2019 02:45:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=XpWFPwur0v8zuY1SZ2hwoxXOx+JyTJx0Ao02VYJA/A0=;
        b=F8LA+UlcWQmD0z9yB5qgM0PSTw0z/P7ToJ0ogwG4pvBQGGScdi1wHHr3XSiezF8mnV
         I3kuaQau1+sWGaJfJaN1VQoVhluuK6x24k+N65Wqg6HOosHBNBjelz0RBDaC08Mb4Wo9
         zDNCa1ZJSZ9WKS/k2L5AtFWnkBF2pAzShbbdz8wWKzBqmnYKAcih3+I6X79UIg4kJ75X
         ITFMQ4EXo3lGqdul+5lmOLILgO7G7VreFpVs+gH/W/myBXbC+qMBQMePm6tjVDjikLZx
         jL9feF/7F5E/hwemHji/dG2xS6qEcUNDExWqQM4jiasCGDNQRiwlMBfIiFKKMGFIRd2h
         FJiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=XpWFPwur0v8zuY1SZ2hwoxXOx+JyTJx0Ao02VYJA/A0=;
        b=G68+rcQRZCng9AUjSWLhiZ6DLzEgqNRFYn5qXpZ46Pik043EeJM/BBnIYDo2NDGbak
         Oq2XwLAxgzF0Hphbtem1at39cr25zhiXVRU0EYehBjjpD9i0oMxEZMyOxQtYzIRry6UI
         8Y6zZVIhKNMvYGm8N2ZGMt2ZHAXKT9ZBQB5FEvxR2mPYEio6VOUFUbDVHmC+X4REY/Rp
         i4mToT6QEVe59pDCzUyjZaTHFl4Wf8jvtKMsLtbIqDt+betEIph6V7/Gi+kO6bIGsZAM
         45DF3XMPONdvfpChaBmKDY9VqkDAIgCcDpEs5jbo0Jtx35eg07iox603w5tfBtvU30gg
         Xqcg==
X-Gm-Message-State: APjAAAXoAZipas67oLvUsDRWs5Hc+3tnkFt//hJ5LbsdnfruirsUdKFU
	Py6n5383wlD5leAma4vYjnehCDmz8hRQMg==
X-Received: by 2002:a63:f905:: with SMTP id h5mr930084pgi.223.1552988706609;
        Tue, 19 Mar 2019 02:45:06 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.9])
        by smtp.gmail.com with ESMTPSA id g67sm28763931pfg.13.2019.03.19.02.45.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 02:45:05 -0700 (PDT)
From: vatsalanarang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH] Eliminate camel case
Date: Tue, 19 Mar 2019 15:14:49 +0530
Message-Id: <20190319094449.11640-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

From: Vatsala Narang <vatsalanarang@gmail.com>

Issue reported by checkpatch.pl tool

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
drivers/staging/sm750fb/ddk750_display.c | 8 ++++----
drivers/staging/sm750fb/ddk750_display.h | 2 +-
drivers/staging/sm750fb/ddk750_power.h   | 2 +-
drivers/staging/sm750fb/sm750_hw.c       | 2 +-
4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
index f38051eedb6c..44a605584d17 100644
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
+		sw_panel_power_sequence((output & PNL_SEQ_MASK) >> PNL_SEQ_OFFSET,
 				     4);
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


