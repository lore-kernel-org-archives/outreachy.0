X-GM-THRID: 6399916000486096896
X-Received: by 10.157.54.226 with SMTP id s31mr15848638otd.16.1490096612096;
        Tue, 21 Mar 2017 04:43:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.53.6 with SMTP id o6ls16377926otc.47.gmail; Tue, 21 Mar
 2017 04:43:31 -0700 (PDT)
X-Received: by 10.13.227.65 with SMTP id m62mr10526327ywe.27.1490096611797;
        Tue, 21 Mar 2017 04:43:31 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id y203si3392935pfb.0.2017.03.21.04.43.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 04:43:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id o126so21614821pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 04:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=+eBTjyKtrzFKQQbBUs5njc8dF6PsWrOdWdjCUGNxnBk=;
        b=tqF9xK2kKZSISFZT9j915TF16BBDo8AYHWFJL51udJKwIKoaPwExS1wPfQIQtsELFE
         CinJHMu7PL7byp2B1Mz6v/bncEGjH9nox0d2BtFseULnB8XogbWUgtKE4mxfDPDuXsfl
         cYG+MmztYVOmdRDzmxLMHrV3FUipHYHR943CygTHr8+xKrSwvfLB3Gc6SwhzjblTw+q7
         hXiJkMurq5rJJea9ALSygZsWMxVRdMAPYn8dI20DBa8iAyPG9plNvatD1icKgxZWJke9
         LMJ3nrs0G7LsebYerupcGEwRbVXJ62smCP3QXrbmGTiC90UJ4u6gc03PR6FoJcix+dCW
         gAdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=+eBTjyKtrzFKQQbBUs5njc8dF6PsWrOdWdjCUGNxnBk=;
        b=BdvbE+mYBISgt/CiHfPhfD2l7QESqPkMjRjyMphGTUCBrD3eCvRltz6hsbieNEsHrN
         6goXHqzKOSFHrkjVDjHzT11RU0EAGiXOQi+HfO45eco7KKx1OdXt6LQhs3SNYNIc+etC
         UoxjFQLNLJjse8j4fx7rcOmkASIUXh4cmtGGyk4xPwOa8eG7LvGxVKZ6fdsLst6ezxrF
         X4M6umCiPF8XYmTxz27ZU11/LMWeHtBXnstfZFcbn+ra/Pnq+N6Ixx9R/JrwEX/dCAgK
         xWUl3HdOGbx+2imE+P8iOfpeB86xrkxCI8lIEn1ge2deBX/4hWFYt/hZXu6JXg7dW7FV
         H++A==
X-Gm-Message-State: AFeK/H3GcT/5x9cQiu+sogHsCKn2d6rLuVZsBCqxoZgZIM17KDWQ0eNV1kjAJURQGHsRTQ==
X-Received: by 10.98.87.216 with SMTP id i85mr39149267pfj.151.1490096611516;
        Tue, 21 Mar 2017 04:43:31 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id y5sm39349531pgy.28.2017.03.21.04.43.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 04:43:30 -0700 (PDT)
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
Subject: [PATCH 10/11] staging: speakup: Match alignment with open parenthesis.
Date: Tue, 21 Mar 2017 17:12:34 +0530
Message-Id: <20170321114235.1638-11-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170321114235.1638-1-arushisinghal19971997@gmail.com>
References: <20170321114235.1638-1-arushisinghal19971997@gmail.com>

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


