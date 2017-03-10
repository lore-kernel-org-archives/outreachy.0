X-GM-THRID: 6395538220161957888
X-Received: by 10.129.119.84 with SMTP id s81mr7924241ywc.6.1489141803474;
        Fri, 10 Mar 2017 02:30:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.26.142 with SMTP id a136ls2495892ioa.12.gmail; Fri, 10 Mar
 2017 02:30:02 -0800 (PST)
X-Received: by 10.107.137.228 with SMTP id t97mr5420354ioi.64.1489141802881;
        Fri, 10 Mar 2017 02:30:02 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id r66si1669745pfb.7.2017.03.10.02.30.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 02:30:02 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id j5so10362277pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 02:30:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Dqb+OUwdufFE1beakAYyUqPKm0kIY5v6xQOd4jjJi7I=;
        b=ajVbuQv136vL8uoVP6diTFwg43GcRkGgSAmWxuL3E7Ak4SFBDYDvaUBbT3GMqcjfCn
         m2Igh69u4PtYEB6KfQiPDt1zgdEEStzEwpOcv3/pk+4SOvm/18nwiVSRzpRJwAxxmjMi
         U45ok171+OfXsECqRBzBWA4IKeQH9RR9D+o3A0wXqDTQWuplBCH4JPP9CYzOFKXUOMJS
         vznytZiXuwb927QUy7QwtqcGfESmtN+HBPpt6BQSeREtDna9p479IVam2IeXooYQDL2/
         Zk9ggsU2+KIOY69gT1HPnKvmRCVTrkJc998nURmGeOHR0c70QKzd5K3hrPDx/+B/KzQU
         tkBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Dqb+OUwdufFE1beakAYyUqPKm0kIY5v6xQOd4jjJi7I=;
        b=ba/M3S/Epe9eWtBDLGlArF0uG2iSlXaofO3iUTVFmFWxx2C2cRwM9KZKlUj6c4C/Iw
         DpxxgjmJ3KqQhaPDhRhY0HASe9/sMg+KiNCSXLL74I3BLJ/d2KdqCZcLbyPm2dScRfmF
         kF7Oau2z3we53svn/rCkzao7XDoYDxEMfCr/WOZNCn+sGQg0YpoqmsDIlUrqyw2aSVdj
         ZworoQroCXJ/y7dehKusjSaPXCKn306ucA7S1qSadVH7qDzA+OaKJmPn5kf5uGJuZmU/
         TLzY2OtWVK3CxA08YfdjcEWDEW6L/u4wDysxK29LU9+EKqYWkvmhcuQQozLuzATcIaA8
         RPkA==
X-Gm-Message-State: AMke39l+YvCgW7YJ/eDtGeKNC8a60qIPXtGnqkhcU2PO2LXSSiwEw2FPc7vRKrtsrlGKEA==
X-Received: by 10.98.134.142 with SMTP id x136mr20110088pfd.64.1489141802557;
        Fri, 10 Mar 2017 02:30:02 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id y187sm17749527pfy.123.2017.03.10.02.30.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 02:30:01 -0800 (PST)
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
Subject: [PATCH 2/2] staging: speakup: spaces preferred around operator
Date: Fri, 10 Mar 2017 15:59:43 +0530
Message-Id: <20170310102943.1970-3-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170310102943.1970-1-arushisinghal19971997@gmail.com>
References: <20170310102943.1970-1-arushisinghal19971997@gmail.com>

Fixed the checkpatch.pl issues like:
CHECK: spaces preferred around that '&' (ctx:VxV)
CHECK: spaces preferred around that '|' (ctx:VxV)
CHECK: spaces preferred around that '-' (ctx:VxV)
CHECK: spaces preferred around that '+' (ctx:VxV)
etc.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/speakup/serialio.c       |  4 ++--
 drivers/staging/speakup/speakup.h        | 12 ++++++------
 drivers/staging/speakup/speakup_acntpc.c |  4 ++--
 drivers/staging/speakup/speakup_decpc.c  | 14 +++++++-------
 drivers/staging/speakup/speakup_dtlk.c   | 14 +++++++-------
 drivers/staging/speakup/speakup_keypc.c  | 12 ++++++------
 drivers/staging/speakup/speakup_ltlk.c   |  2 +-
 7 files changed, 31 insertions(+), 31 deletions(-)

diff --git a/drivers/staging/speakup/serialio.c b/drivers/staging/speakup/serialio.c
index 657a48b6f8d3..aade52ee15a0 100644
--- a/drivers/staging/speakup/serialio.c
+++ b/drivers/staging/speakup/serialio.c
@@ -120,8 +120,8 @@ static void start_serial_interrupt(int irq)
 	outb(UART_MCR_DTR | UART_MCR_RTS | UART_MCR_OUT2,
 			speakup_info.port_tts + UART_MCR);
 	/* Turn on Interrupts */
-	outb(UART_IER_MSI|UART_IER_RLSI|UART_IER_RDI,
-			speakup_info.port_tts + UART_IER);
+	outb(UART_IER_MSI | UART_IER_RLSI | UART_IER_RDI,
+	     speakup_info.port_tts + UART_IER);
 	inb(speakup_info.port_tts + UART_LSR);
 	inb(speakup_info.port_tts + UART_RX);
 	inb(speakup_info.port_tts + UART_IIR);
diff --git a/drivers/staging/speakup/speakup.h b/drivers/staging/speakup/speakup.h
index 0bc8d6afadfa..a654334c98b9 100644
--- a/drivers/staging/speakup/speakup.h
+++ b/drivers/staging/speakup/speakup.h
@@ -20,7 +20,7 @@
 #define A_CAP 0x0007
 #define B_NUM 0x0008
 #define NUM 0x0009
-#define ALPHANUM (B_ALPHA|B_NUM)
+#define ALPHANUM (B_ALPHA | B_NUM)
 #define SOME 0x0010
 #define MOST 0x0020
 #define PUNC 0x0040
@@ -30,14 +30,14 @@
 #define B_EXNUM 0x0100
 #define CH_RPT 0x0200
 #define B_CTL 0x0400
-#define A_CTL (B_CTL+SYNTH_OK)
+#define A_CTL (B_CTL + SYNTH_OK)
 #define B_SYM 0x0800
-#define B_CAPSYM (B_CAP|B_SYM)
+#define B_CAPSYM (B_CAP | B_SYM)
 
 /* FIXME: u16 */
-#define IS_WDLM(x) (spk_chartab[((u_char)x)]&B_WDLM)
-#define IS_CHAR(x, type) (spk_chartab[((u_char)x)]&type)
-#define IS_TYPE(x, type) ((spk_chartab[((u_char)x)]&type) == type)
+#define IS_WDLM(x) (spk_chartab[((u_char)x)] & B_WDLM)
+#define IS_CHAR(x, type) (spk_chartab[((u_char)x)] & type)
+#define IS_TYPE(x, type) ((spk_chartab[((u_char)x)] & type) == type)
 
 int speakup_thread(void *data);
 void spk_reset_default_chars(void);
diff --git a/drivers/staging/speakup/speakup_acntpc.c b/drivers/staging/speakup/speakup_acntpc.c
index 56ece087ff88..cde77b75d44a 100644
--- a/drivers/staging/speakup/speakup_acntpc.c
+++ b/drivers/staging/speakup/speakup_acntpc.c
@@ -281,7 +281,7 @@ static int synth_probe(struct spk_synth *synth)
 			if (port_val == 0x53fc) {
 				/* 'S' and out&input bits */
 				synth_port_control = synth_portlist[i];
-				speakup_info.port_tts = synth_port_control+1;
+				speakup_info.port_tts = synth_port_control + 1;
 				break;
 			}
 		}
@@ -304,7 +304,7 @@ static int synth_probe(struct spk_synth *synth)
 static void accent_release(void)
 {
 	if (speakup_info.port_tts)
-		synth_release_region(speakup_info.port_tts-1, SYNTH_IO_EXTENT);
+		synth_release_region(speakup_info.port_tts - 1, SYNTH_IO_EXTENT);
 	speakup_info.port_tts = 0;
 }
 
diff --git a/drivers/staging/speakup/speakup_decpc.c b/drivers/staging/speakup/speakup_decpc.c
index 4cd9730ee03d..afe2da34a3f7 100644
--- a/drivers/staging/speakup/speakup_decpc.c
+++ b/drivers/staging/speakup/speakup_decpc.c
@@ -249,7 +249,7 @@ static int dt_getstatus(void)
 static void dt_sendcmd(u_int cmd)
 {
 	outb_p(cmd & 0xFF, speakup_info.port_tts);
-	outb_p((cmd >> 8) & 0xFF, speakup_info.port_tts+1);
+	outb_p((cmd >> 8) & 0xFF, speakup_info.port_tts + 1);
 }
 
 static int dt_waitbit(int bit)
@@ -271,7 +271,7 @@ static int dt_wait_dma(void)
 	if (!dt_waitbit(STAT_dma_ready))
 		return 0;
 	while (--timeout > 0) {
-		if ((dt_getstatus()&STAT_dma_state) == state)
+		if ((dt_getstatus() & STAT_dma_state) == state)
 			return 1;
 		udelay(50);
 	}
@@ -317,8 +317,8 @@ udelay(50);
 			break;
 udelay(50);
 	}
-	outb_p(DMA_sync, speakup_info.port_tts+4);
-	outb_p(0, speakup_info.port_tts+4);
+	outb_p(DMA_sync, speakup_info.port_tts + 4);
+	outb_p(0, speakup_info.port_tts + 4);
 	udelay(100);
 	for (timeout = 0; timeout < 10; timeout++) {
 		if (!(dt_getstatus() & STAT_flushing))
@@ -336,8 +336,8 @@ static int dt_sendchar(char ch)
 		return -1;
 	if (!(dt_stat & STAT_rr_char))
 		return -2;
-	outb_p(DMA_single_in, speakup_info.port_tts+4);
-	outb_p(ch, speakup_info.port_tts+4);
+	outb_p(DMA_single_in, speakup_info.port_tts + 4);
+	outb_p(ch, speakup_info.port_tts + 4);
 	dma_state ^= STAT_dma_state;
 	return 0;
 }
@@ -353,7 +353,7 @@ static int testkernel(void)
 	dt_sendcmd(CMD_sync);
 	if (!dt_waitbit(STAT_cmd_ready))
 		status = -2;
-	else if (dt_stat&0x8000)
+	else if (dt_stat & 0x8000)
 		return 0;
 	else if (dt_stat == 0x0dec)
 		pr_warn("dec_pc at 0x%x, software not loaded\n",
diff --git a/drivers/staging/speakup/speakup_dtlk.c b/drivers/staging/speakup/speakup_dtlk.c
index de67288beb25..eede2d82183a 100644
--- a/drivers/staging/speakup/speakup_dtlk.c
+++ b/drivers/staging/speakup/speakup_dtlk.c
@@ -298,7 +298,7 @@ static struct synth_settings *synth_interrogate(struct spk_synth *synth)
 	t += 2;
 	for (i = 0; *t != '\r'; t++) {
 		status.rom_version[i] = *t;
-		if (i < sizeof(status.rom_version)-1)
+		if (i < sizeof(status.rom_version) - 1)
 			i++;
 	}
 	status.rom_version[i] = 0;
@@ -333,13 +333,13 @@ static int synth_probe(struct spk_synth *synth)
 				speakup_info.port_tts);
 		if ((port_forced & 0xf) != 0xf)
 			pr_info("warning: port base should probably end with f\n");
-		if (synth_request_region(speakup_info.port_tts-1,
-					SYNTH_IO_EXTENT)) {
+		if (synth_request_region(speakup_info.port_tts - 1,
+					 SYNTH_IO_EXTENT)) {
 			pr_warn("sorry, port already reserved\n");
 			return -EBUSY;
 		}
-		port_val = inw(speakup_info.port_tts-1);
-		synth_lpc = speakup_info.port_tts-1;
+		port_val = inw(speakup_info.port_tts - 1);
+		synth_lpc = speakup_info.port_tts - 1;
 	} else {
 		for (i = 0; synth_portlist[i]; i++) {
 			if (synth_request_region(synth_portlist[i],
@@ -348,7 +348,7 @@ static int synth_probe(struct spk_synth *synth)
 			port_val = inw(synth_portlist[i]) & 0xfbff;
 			if (port_val == 0x107f) {
 				synth_lpc = synth_portlist[i];
-				speakup_info.port_tts = synth_lpc+1;
+				speakup_info.port_tts = synth_lpc + 1;
 				break;
 			}
 			synth_release_region(synth_portlist[i],
@@ -375,7 +375,7 @@ static int synth_probe(struct spk_synth *synth)
 static void dtlk_release(void)
 {
 	if (speakup_info.port_tts)
-		synth_release_region(speakup_info.port_tts-1, SYNTH_IO_EXTENT);
+		synth_release_region(speakup_info.port_tts - 1, SYNTH_IO_EXTENT);
 	speakup_info.port_tts = 0;
 }
 
diff --git a/drivers/staging/speakup/speakup_keypc.c b/drivers/staging/speakup/speakup_keypc.c
index 7c24e088549c..862e20ea9596 100644
--- a/drivers/staging/speakup/speakup_keypc.c
+++ b/drivers/staging/speakup/speakup_keypc.c
@@ -141,9 +141,9 @@ static char *oops(void)
 	int s1, s2, s3, s4;
 
 	s1 = inb_p(synth_port);
-	s2 = inb_p(synth_port+1);
-	s3 = inb_p(synth_port+2);
-	s4 = inb_p(synth_port+3);
+	s2 = inb_p(synth_port + 1);
+	s3 = inb_p(synth_port + 2);
+	s4 = inb_p(synth_port + 3);
 	pr_warn("synth timeout %d %d %d %d\n", s1, s2, s3, s4);
 	return NULL;
 }
@@ -241,7 +241,7 @@ spin_lock_irqsave(&speakup_info.spinlock, flags);
 			delay_time_val = delay_time->u.n.value;
 			spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 			schedule_timeout(msecs_to_jiffies(delay_time_val));
-			jiff_max = jiffies+jiffy_delta_val;
+			jiff_max = jiffies + jiffy_delta_val;
 		}
 	}
 	timeout = 1000;
@@ -269,7 +269,7 @@ static int synth_probe(struct spk_synth *synth)
 		synth_port = port_forced;
 		pr_info("probe forced to %x by kernel command line\n",
 				synth_port);
-		if (synth_request_region(synth_port-1, SYNTH_IO_EXTENT)) {
+		if (synth_request_region(synth_port - 1, SYNTH_IO_EXTENT)) {
 			pr_warn("sorry, port already reserved\n");
 			return -EBUSY;
 		}
@@ -297,7 +297,7 @@ static int synth_probe(struct spk_synth *synth)
 		return -ENODEV;
 	}
 	pr_info("%s: %03x-%03x, driver version %s,\n", synth->long_name,
-		synth_port, synth_port+SYNTH_IO_EXTENT-1,
+		synth_port, synth_port+SYNTH_IO_EXTENT - 1,
 		synth->version);
 	synth->alive = 1;
 	return 0;
diff --git a/drivers/staging/speakup/speakup_ltlk.c b/drivers/staging/speakup/speakup_ltlk.c
index 9d22198a0339..c691382f9694 100644
--- a/drivers/staging/speakup/speakup_ltlk.c
+++ b/drivers/staging/speakup/speakup_ltlk.c
@@ -144,7 +144,7 @@ static void synth_interrogate(struct spk_synth *synth)
 		if (i > 2 && buf[i] == 0x7f)
 			break;
 	}
-	t = buf+2;
+	t = buf + 2;
 	for (i = 0; *t != '\r'; t++) {
 		rom_v[i] = *t;
 		if (++i >= 19)
-- 
2.11.0


