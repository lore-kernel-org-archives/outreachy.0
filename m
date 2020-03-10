X-GM-THRID: 6802713893115265024
X-Received: by 2002:a17:90a:f50b:: with SMTP id cs11mr197015pjb.145.1583880254490;
        Tue, 10 Mar 2020 15:44:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:ff15:: with SMTP id f21ls90139plj.0.gmail; Tue, 10
 Mar 2020 15:44:13 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsSH9+i0625FP0I4MDxcaRSaP9n+Al091oP8x4Lr66nVaFXbZ4TscPU/QQmz+LFKEmxsZJi
X-Received: by 2002:a17:90b:194d:: with SMTP id nk13mr222604pjb.144.1583880252983;
        Tue, 10 Mar 2020 15:44:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583880252; cv=none;
        d=google.com; s=arc-20160816;
        b=jPt7hYNUtuJVByq0aoYIvGXOD3ySvRKSSiKUwszohLN7qwG29M0Bd0zuTvdv6SfHqy
         9WDDv/BEGildYxYj1glpQrUnROnjf/iTVVFFHiApwgGRqdIunpuah9fXNqeM7HivfreO
         fotJpvRzetuVsoqsctR4/IG37hLuTiguxY7VOIDUNsOhvhfi27Q6uxyrlzqemxer9ZEe
         S7CGS6HnPBbSYb2qhiH2sVNCr1r6a/SxfVFtRjXcyq1fU/R1z3c42afucLuFyHb/U589
         1i/x+bO5IOypoTkjlhpR5Eq7goqYMEHAMIIUSv81p4F/ILBIALCug/CMM50AWtFZwHuw
         j0Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=e3zpV9g8QxfTk2v8slC3BzwA0bsC/5UNJ7SMt9z/DCU=;
        b=EAUbyN7FLEuN9z4LNURltU/dEJbCRrx/Ku2/tG9fQQuXGFdLffsEuSJ+IfKFy6UblI
         hx6P9EAmGTG18CVBX+htwzVBcRklibVcv4ThWs4KECoG0G6O4zMWk9XMY36tFbGatWdv
         1I6AQhq4dQgIvwuUuYVq6oJ2KwMPHIJh0MSmEG9MtRI6RyoS0q/FnelgkqTZBPIVA9hD
         ZRncvPk52wRj7xB44yic5cgJOGLEWa8hvt0Tzl7168ok4kjTVJfPpyWvZ18Vm7y06tBw
         aUTnGKwrLzf0IU8wlK3cTdd+zyt2FPtmVXzqIiChIT/qetgP3SyR2PiUH1ZK5rS/LC/8
         Q7qA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HIqfuTPu;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id ng10si18903pjb.2.2020.03.10.15.44.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 15:44:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HIqfuTPu;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id z12so89453pgl.4
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 15:44:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=e3zpV9g8QxfTk2v8slC3BzwA0bsC/5UNJ7SMt9z/DCU=;
        b=HIqfuTPuBvgOXj/qP8yJpcWhrC+UFeuD7vt6guTAS+RpOiifzPd87N7kqOpleRW8KK
         CT0RUaWrZIBuEB9drpUTOa23EBdVbjhbOtfusQvMQxO9/LXicRuplKGhdqpvP6/6wyWG
         BG8BmOR5EYNjVQVJ+acB1WJTMa10+7rGhoeNc2TOyVoj+YJ+Oq+60cQEmyiIBqJR/FXQ
         xJM1mADh+bZHkVUG0Pq8/AD9T/+jspCzYCousRbsObDWZnL7hFojwkcztnbdRDMCWQzD
         FfFgV/xGcQ2K0flhs8gwIVoTKnBDMTooswMKsmuFnYxTtftD9UhOFoRMAD32xi2zaRgA
         LIzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=e3zpV9g8QxfTk2v8slC3BzwA0bsC/5UNJ7SMt9z/DCU=;
        b=Fjeg6k91RoMu2anhPi3CqD/YBvwY2rVw6WXqVZOVJbU4beV9pUrLFR1rsbiNiH0RQ+
         9iM5Q3Tjl9PBWU82yZrUaJs9ub31TTcNg11XofYhSqkUUnw9/od6X4VLutvbaGRqhUAx
         I+0lOF+nt2w8ebNJG0xCYwGpok6UPF33P/pNMDPckU23Yuop7MLn/qRkJmus4ImGARkg
         NTCQ/kQu3SstuWUQRMvv22UKtW46Z4foJ8Po8na1n/Vy/CLWhDunB/vk0kfRI++67xS4
         3p+bHfn0B9tzracRsS/8gQwT0Cs53Yf7JR6cGEXAQ/IZjqIjWRkUEamk/n96se4ND6a1
         46/A==
X-Gm-Message-State: ANhLgQ31zI1xO4Ddl/rxUFPMGY8cVtTkvbuECcD1nbOkKEa/4gtotUC+
	uE3dmQAft6hvF06MXk+5UxmCHbBr
X-Received: by 2002:a62:be04:: with SMTP id l4mr21639914pff.234.1583880252491;
        Tue, 10 Mar 2020 15:44:12 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.240.207.69])
        by smtp.gmail.com with ESMTPSA id x135sm31634942pgx.41.2020.03.10.15.44.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Mar 2020 15:44:12 -0700 (PDT)
Date: Wed, 11 Mar 2020 04:14:08 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: comedi: ni_pcimio: remove old unused code
Message-ID: <20200310224405.GA9838@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Found multiple #if 0 code blocks that appear to have never been used.
Additinal comments around intended functionality may be introduced
separately. As these commented code blocks do not appear to be
ever useful, they can be removed.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/comedi/drivers/ni_pcimio.c | 48 ----------------------
 1 file changed, 48 deletions(-)

diff --git a/drivers/staging/comedi/drivers/ni_pcimio.c b/drivers/staging/comedi/drivers/ni_pcimio.c
index 7c82d5f9778f..d8e34d2e1104 100644
--- a/drivers/staging/comedi/drivers/ni_pcimio.c
+++ b/drivers/staging/comedi/drivers/ni_pcimio.c
@@ -481,43 +481,6 @@ static const struct ni_board_struct ni_boards[] = {
 		.ao_speed	= 250,
 		.caldac		= { ad8804, ad8804 },
 	},
-#if 0
-	/* The 6115 boards probably need their own driver */
-	[BOARD_PCI6115] = {	/* .device_id = 0x2ed0, */
-		.name		= "pci-6115",
-		.n_adchan	= 4,
-		.ai_maxdata	= 0x0fff,
-		.ai_fifo_depth	= 8192,
-		.gainlkup	= ai_gain_611x,
-		.ai_speed	= 100,
-		.n_aochan	= 2,
-		.ao_maxdata	= 0xffff,
-		.ao_671x	= 1,
-		.ao_fifo_depth	= 2048,
-		.ao_speed	= 250,
-		.reg_611x	= 1,
-		/* XXX */
-		.caldac		= { ad8804_debug, ad8804_debug, ad8804_debug },
-	},
-#endif
-#if 0
-	[BOARD_PXI6115] = {	/* .device_id = ????, */
-		.name		= "pxi-6115",
-		.n_adchan	= 4,
-		.ai_maxdata	= 0x0fff,
-		.ai_fifo_depth	= 8192,
-		.gainlkup	= ai_gain_611x,
-		.ai_speed	= 100,
-		.n_aochan	= 2,
-		.ao_maxdata	= 0xffff,
-		.ao_671x	= 1,
-		.ao_fifo_depth	= 2048,
-		.ao_speed	= 250,
-		.reg_611x	= 1,
-		/* XXX */
-		.caldac		= { ad8804_debug, ad8804_debug, ad8804_debug },
-	},
-#endif
 	[BOARD_PCI6711] = {
 		.name = "pci-6711",
 		.n_aochan	= 4,
@@ -569,17 +532,6 @@ static const struct ni_board_struct ni_boards[] = {
 		.reg_type	= ni_reg_6711,
 		.caldac		= { ad8804_debug },
 	},
-#if 0
-	[BOARD_PXI6731] = {	/* .device_id = ????, */
-		.name		= "pxi-6731",
-		.n_aochan	= 4,
-		.ao_maxdata	= 0xffff,
-		.ao_fifo_depth	= 8192,
-		.ao_range_table	= &range_bipolar10,
-		.reg_type	= ni_reg_6711,
-		.caldac		= { ad8804_debug },
-	},
-#endif
 	[BOARD_PCI6733] = {
 		.name		= "pci-6733",
 		.n_aochan	= 8,
-- 
2.17.1


