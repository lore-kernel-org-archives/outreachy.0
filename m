X-GM-THRID: 6669793876600946688
X-Received: by 2002:a02:6a1c:: with SMTP id l28mr11200438jac.8.1552932401743;
        Mon, 18 Mar 2019 11:06:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:4203:: with SMTP id i3ls152396itb.1.canary-gmail; Mon,
 18 Mar 2019 11:06:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwr39yxfezcUY4z2sVS0AgE+BZJhFkiHjrruVVPVein/cEte5KlljuNsCnqXuzCBnFXilQb
X-Received: by 2002:a05:660c:2c6:: with SMTP id j6mr64648itd.9.1552932400809;
        Mon, 18 Mar 2019 11:06:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552932400; cv=none;
        d=google.com; s=arc-20160816;
        b=PfQ9+/gItUa1yArKCzAazyOX4lvV/kTnLsoRFamK76pNayBFEz9Pr/sryYr/qNz84G
         R+5rq8AYmAnUx3T+PNzyQEvfHyEr7CL84IG/4x1m2g7GTwsMyBB2CG3CHrrVu1N7vp7L
         q6/SoyE1KOgRZOWszcpJfgtL6B12meY/becG0U4b7n+xF6n68vEiX2oLyoJk0hWkgIyv
         U5Ca+uZ10qRJEgyAz4E2geEuD0XdaMYGBgpsyLzYAYx/yiMigKDhJa6ljcDRiU9LXm6U
         fFJ/pWJZ94V2kU+/7HMZ7H24SLgRGJEwhTXGfPVzA5Z34On63eQSqja2jSslx7XFTZjt
         YM1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Jq4OLHtiu2ZZdk1cZL/Z1IRzWtBR3bjLOmkJ4HKaU+4=;
        b=i8cq8HW77OOThIHzu7Hqwa295Bu8vAGRcjgWxIwya86EuC/V6vSehkSnx95ptjVFPX
         bpLEmnDYs1xRBV+4MSskouytelC6V72BD8OhJn0E3jRAXdMhs6Rmx6+QpNY/Ik5LjDy6
         2bhl1/CcaQF6tfxkTXoV+NdX2U9h1LMHGFt322MuIkgflRzWSSpzfXhBbQBuswxddTrm
         K9zgIMd1YJwiUa+y2Oq610lS29HDFonaOmdGoqw6xewYkz+siq91yHN3R39+Jlh6jQ22
         S31AGGIGfvOEbVrYFUg53N2nTzbg2CoB2Re72cF7lR5/ROKVLYRdIA7RJfZa83aZf8oA
         poVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SFyXAHG2;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id j2si625770iop.0.2019.03.18.11.06.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 11:06:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SFyXAHG2;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x430.google.com with SMTP id v21so11779309pfm.12
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Mar 2019 11:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Jq4OLHtiu2ZZdk1cZL/Z1IRzWtBR3bjLOmkJ4HKaU+4=;
        b=SFyXAHG2JMeljgXV3G/drWOpJQvD9gkox//zvIghGKhWY7qJYHiCs1sCa/kLmJnAZY
         Wdeor6Xir4dAm1Qt9hRw3iDBJ3/fhxdDDO2wkfeRrjw7A0hUzfDe7YQX452zcorv4SW1
         wckpsRjpJULFKxJJSvEoI2Q1n0a4XDJkELPjQObvm1Rm4V7YHbFdtpavNu1I7+jsF497
         m6wY0lnx2ThEGsB8zGBOFksMMMRGagJg+I5d6IqJXjic++sG6d4HIp8pmMe8YUTystQq
         Xve/aVEjN3GZNBOSbclpidaBmB4A+nuaEZxoY+j0TFwYYm5FKxUet0esW0gkxr8Flt6k
         CjwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Jq4OLHtiu2ZZdk1cZL/Z1IRzWtBR3bjLOmkJ4HKaU+4=;
        b=CB2pU02s8BSZKSzYJQMt5oCFaDRVfkIBNqxglipN/WoP1j60lbBt4pO4+iw/BHVOXu
         TXK2yLBI3g0/M0Q4IA99ZDhAWC62BGaDy3Wq17nAUJN+LO5nl38ddtfwJOU8UK0TcDPw
         NLLnRCqzR8SSNX8Gr5gXDRELy/e62Cr7E9aDv+A82WgnGYCMDLrG1dwzYbqma7maeBXa
         iC1HFxxvTSSx7zi82z+YMU5LOOGkwOkSc1C+8g3tLEsBCa5VASqtlHkf7GIhS+DNJEsZ
         e6xGzcpOVDU4h6tq/nkjs1RCeIl2+XuWZisLXQuzgMynfem2NzanCeV5NsOZ1HiBjalO
         3FAw==
X-Gm-Message-State: APjAAAU+YqsFggrres9yoFy7/P3oaWv77mKUauWoZT+QIvbgZj4EDvX9
	x4cUbNTxbISuIOr+B+vl555F/52d
X-Received: by 2002:a17:902:a612:: with SMTP id u18mr20768924plq.145.1552932400134;
        Mon, 18 Mar 2019 11:06:40 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.121.125])
        by smtp.gmail.com with ESMTPSA id g15sm18434693pfg.157.2019.03.18.11.06.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 18 Mar 2019 11:06:39 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: speakup: prefer usleep_range over udelay
Date: Mon, 18 Mar 2019 23:36:24 +0530
Message-Id: <1552932384-11028-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Since usleep_range is built on top of hrtimers, the
wakeup will be very precise (ish), thus a simple
usleep function would likely introduce a large number
of undesired interrupts.
Thus udelay replaced with usleep_range.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/speakup/speakup_decpc.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/speakup/speakup_decpc.c b/drivers/staging/speakup/speakup_decpc.c
index 798c42d..10ca19b 100644
--- a/drivers/staging/speakup/speakup_decpc.c
+++ b/drivers/staging/speakup/speakup_decpc.c
@@ -251,7 +251,7 @@ static int dt_waitbit(int bit)
 	while (--timeout > 0) {
 		if ((dt_getstatus() & bit) == bit)
 			return 1;
-		udelay(50);
+		usleep_range(50, 50 + 10);
 	}
 	return 0;
 }
@@ -265,7 +265,7 @@ static int dt_wait_dma(void)
 	while (--timeout > 0) {
 		if ((dt_getstatus() & STAT_dma_state) == state)
 			return 1;
-		udelay(50);
+		usleep_range(50, 50 + 10);
 	}
 	dma_state = dt_getstatus() & STAT_dma_state;
 	return 1;
@@ -283,7 +283,7 @@ static int dt_ctrl(u_int cmd)
 	dt_sendcmd(CMD_control | cmd);
 	outb_p(0, speakup_info.port_tts + 6);
 	while (dt_getstatus() & STAT_cmd_ready) {
-		udelay(20);
+		usleep_range(20, 20 + 10);
 		if (--timeout == 0)
 			break;
 	}
@@ -302,20 +302,20 @@ static void synth_flush(struct spk_synth *synth)
 	while (dt_ctrl(CTRL_flush)) {
 		if (--timeout == 0)
 			break;
-		udelay(50);
+		usleep_range(50, 50 + 10);
 	}
 	for (timeout = 0; timeout < 10; timeout++) {
 		if (dt_waitbit(STAT_dma_ready))
 			break;
-		udelay(50);
+		usleep_range(50, 50 + 10);
 	}
 	outb_p(DMA_sync, speakup_info.port_tts + 4);
 	outb_p(0, speakup_info.port_tts + 4);
-	udelay(100);
+	usleep_range(100, 100 + 10);
 	for (timeout = 0; timeout < 10; timeout++) {
 		if (!(dt_getstatus() & STAT_flushing))
 			break;
-		udelay(50);
+		usleep_range(50, 50 + 10);
 	}
 	dma_state = dt_getstatus() & STAT_dma_state;
 	dma_state ^= STAT_dma_state;
-- 
2.7.4


