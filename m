X-GM-THRID: 6399866946348646400
X-Received: by 10.129.182.81 with SMTP id h17mr6022314ywk.121.1490085156632;
        Tue, 21 Mar 2017 01:32:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.182.67 with SMTP id g64ls4192880iof.4.gmail; Tue, 21 Mar
 2017 01:32:36 -0700 (PDT)
X-Received: by 10.107.37.140 with SMTP id l134mr8452848iol.67.1490085156212;
        Tue, 21 Mar 2017 01:32:36 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 2si3333400pfx.8.2017.03.21.01.32.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 01:32:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id p189so15472829pfp.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 01:32:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=+eBTjyKtrzFKQQbBUs5njc8dF6PsWrOdWdjCUGNxnBk=;
        b=nDTDpad5H1rP40ZFAiTuk8hK4iLCeR/uwTU04eVDQ4e1nStwH+nztd/ZPdbsFAfEQv
         pI48gEk8sy663F5KRp9DND1E5Xy6OFgKHhZU9eJYQb7ajOTIqs5Ho/OGjOL6vxltXIev
         iDfoiMT0iZtkVQO/KcQGR9KQprLXbRVhWiISRDQluOZvinTMmdL1FkvkgzFJvPt9TlyO
         8CAwOgxseMKDZv0EHpDX2yesgnc8WGK3+fxJU6KD2Ko4wGreQr39UPhMU2fN4hS4oVV6
         1nVXL7fqs39XPcPpg4N6+5ZZ2/dJB5O6ikzzuW6qIbROalaOj55pTa1v/g0324Hl3No3
         Z9kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=+eBTjyKtrzFKQQbBUs5njc8dF6PsWrOdWdjCUGNxnBk=;
        b=pxbFEkEHZ2ykzp27e/nxHoqvw7fOne+LCP+txsjEmdlMNWv1mf9C0hIDO7Hj1gQPXY
         sTtaLhsSte3gYIA0EeQdQwrPEoY2aw3fUet5by1MheyaVG336SaoeYJVPRpRVJp87l+m
         MwXTPNv+BEaO2lqNadn2YuspCutvF8whhLrfFxawLudwuTrbbRhD1KF95WAuTG39kGrV
         H93z9FndGdy05N8yMZpleCAL1Qn/RXS2GgnWMsclwcL3fyxSVWBq6+X/Pu9qU4nhWj5J
         r8dPYyiwmtvYj7U7ZSlbkCTFGlN6mc74E6J4PYLhihvVC3mRm0VZAi4tiljQqUjzMSYL
         eicw==
X-Gm-Message-State: AFeK/H1tbsmO9Q4fMx580ATadzDYmXmZUXgpXCcCECdvjOt4JvDbcveIjc/HYrJJc8B1zg==
X-Received: by 10.84.132.97 with SMTP id 88mr6809611ple.61.1490085155947;
        Tue, 21 Mar 2017 01:32:35 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id b128sm13997645pfg.54.2017.03.21.01.32.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 01:32:34 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 3/4] staging: speakup: Match alignment with open parenthesis.
Date: Tue, 21 Mar 2017 14:02:14 +0530
Message-Id: <20170321083215.29209-4-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170321083215.29209-1-arushisinghal19971997@gmail.com>
References: <20170321083215.29209-1-arushisinghal19971997@gmail.com>

Fix checkpatch issues: "CHECK: Alignment should match open parenthesis".

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/speakup/main.c           | 2 +-
 drivers/staging/speakup/selection.c      | 2 +-
 drivers/staging/speakup/serialio.c       | 2 +-
 drivers/staging/speakup/speakup_acntpc.c | 6 +++---
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index 7568e8149613..55bf7af1d6ea 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -1160,7 +1160,7 @@ static void spkup_write(const u16 *in_buf, int count)
 		if (last_type & CH_RPT) {
 			synth_printf(" ");
 			synth_printf(spk_msg_get(MSG_REPEAT_DESC2),
-					++rep_count);
+				     ++rep_count);
 			synth_printf(" ");
 		}
 		rep_count = 0;
diff --git a/drivers/staging/speakup/selection.c b/drivers/staging/speakup/selection.c
index 4417c00e68a7..08f68fc2864e 100644
--- a/drivers/staging/speakup/selection.c
+++ b/drivers/staging/speakup/selection.c
@@ -75,7 +75,7 @@ int speakup_set_selection(struct tty_struct *tty)
 		speakup_clear_selection();
 		spk_sel_cons = vc_cons[fg_console].d;
 		dev_warn(tty->dev,
-			"Selection: mark console not the same as cut\n");
+			 "Selection: mark console not the same as cut\n");
 		return -EINVAL;
 	}
 
diff --git a/drivers/staging/speakup/serialio.c b/drivers/staging/speakup/serialio.c
index e860e48818a4..5e31acac19de 100644
--- a/drivers/staging/speakup/serialio.c
+++ b/drivers/staging/speakup/serialio.c
@@ -125,7 +125,7 @@ static void start_serial_interrupt(int irq)
 		pr_err("Unable to request Speakup serial I R Q\n");
 	/* Set MCR */
 	outb(UART_MCR_DTR | UART_MCR_RTS | UART_MCR_OUT2,
-			speakup_info.port_tts + UART_MCR);
+	     speakup_info.port_tts + UART_MCR);
 	/* Turn on Interrupts */
 	outb(UART_IER_MSI|UART_IER_RLSI|UART_IER_RDI,
 			speakup_info.port_tts + UART_IER);
diff --git a/drivers/staging/speakup/speakup_acntpc.c b/drivers/staging/speakup/speakup_acntpc.c
index b4058bd82e42..ad72f8e883fc 100644
--- a/drivers/staging/speakup/speakup_acntpc.c
+++ b/drivers/staging/speakup/speakup_acntpc.c
@@ -261,9 +261,9 @@ static int synth_probe(struct spk_synth *synth)
 	if (port_forced) {
 		speakup_info.port_tts = port_forced;
 		pr_info("probe forced to %x by kernel command line\n",
-				speakup_info.port_tts);
+			speakup_info.port_tts);
 		if (synth_request_region(speakup_info.port_tts - 1,
-					SYNTH_IO_EXTENT)) {
+					 SYNTH_IO_EXTENT)) {
 			pr_warn("sorry, port already reserved\n");
 			return -EBUSY;
 		}
@@ -272,7 +272,7 @@ static int synth_probe(struct spk_synth *synth)
 	} else {
 		for (i = 0; synth_portlist[i]; i++) {
 			if (synth_request_region(synth_portlist[i],
-						SYNTH_IO_EXTENT)) {
+						 SYNTH_IO_EXTENT)) {
 				pr_warn
 				    ("request_region: failed with 0x%x, %d\n",
 				     synth_portlist[i], SYNTH_IO_EXTENT);
-- 
2.11.0


