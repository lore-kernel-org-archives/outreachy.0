X-GM-THRID: 6395576564216496128
X-Received: by 10.107.165.193 with SMTP id o184mr3980939ioe.99.1489086221565;
        Thu, 09 Mar 2017 11:03:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.3 with SMTP id a3ls6504932ota.23.gmail; Thu, 09 Mar
 2017 11:03:41 -0800 (PST)
X-Received: by 10.200.33.136 with SMTP id 8mr2933379qty.26.1489086221126;
        Thu, 09 Mar 2017 11:03:41 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id u12si1373767pfd.3.2017.03.09.11.03.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 11:03:41 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 25so7699109pgy.3
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 11:03:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=XyjwVNeDiRakA099Gp3YR5DiuI2wRub2hht69H36luE=;
        b=VP/aHvF6pGdXkHiIZpA03SfzIfs6y/G+oIVTKAGe9/dhjOothDLMq67CX4TMhZOWe/
         yeDWPvNvN3HA0TrJ1B0A4rsMDJEW8SYuqr62jbs2cUczFknc01I4Tw9oqn4m0OcQG1HO
         T4HaEMVTczd3J8doBqnTMQQBml9Y9wMByb3kDNevfPwEhK2QhYiGg7KceYu45InvLJ8+
         EHkJhD2b5tUUGEiOwEtdq9q5irpXbmqCMtlU6piT7Sh5eqMc2BH8gRt1txVjA4DMBz/F
         5GEtuRN7nwhhB06o00W0SbtSI8pIM1kRjUjbm7OwCwlNI4N53ZC8nxErWtYqRmj2H0j1
         B3Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=XyjwVNeDiRakA099Gp3YR5DiuI2wRub2hht69H36luE=;
        b=hYxW6vzJnvbwU8ctEKKOc9JtZJQC1jxUEeD3xLCCoEJN84eIclBY97208Em0LIAD8A
         xPmmgKgS/CAp0PLt3CawNOfAVbbsIQyf/wnR3DIcNk/ez+VTaZyhgIFNO3xTfjb5tFjH
         Rf+dzvLB9sB2fQLKac9EyUQ3t64cMe/KwNPlu/tdEw9DPGeafuX36USLTW/kKDVDmjRh
         a+tYRnWGH4rHJcgUk+KtF0M0p/SOHeq91OgVN6YTsHhyC3nq39uLdQ5EQ2fADLeEIgfA
         Y8e/sjVtRo634fMUQn1gKqRaYRpsxqQBiRhCwkUH/0xBslPWD5jOAIEgIBb4Y3sIdyTS
         e4Aw==
X-Gm-Message-State: AMke39mo5UONeRQf/tpZxu/dihg0krwrTPQouZy2fi6Gs8uTJHx+7U5XbzkKO+FyslrAww==
X-Received: by 10.98.41.5 with SMTP id p5mr16230471pfp.183.1489086220754;
        Thu, 09 Mar 2017 11:03:40 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id g85sm13921633pfd.89.2017.03.09.11.03.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 11:03:39 -0800 (PST)
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
Subject: [PATCH 3/6] staging: speakup: spaces preferred around operator
Date: Fri, 10 Mar 2017 00:33:17 +0530
Message-Id: <20170309190320.25681-4-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170309190320.25681-1-arushisinghal19971997@gmail.com>
References: <20170309190320.25681-1-arushisinghal19971997@gmail.com>

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
 drivers/staging/speakup/speakup_decpc.c  | 22 +++++++++++-----------
 drivers/staging/speakup/speakup_dtlk.c   | 16 ++++++++--------
 drivers/staging/speakup/speakup_keypc.c  | 12 ++++++------
 drivers/staging/speakup/speakup_ltlk.c   |  2 +-
 7 files changed, 36 insertions(+), 36 deletions(-)

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
index b203f0f883a9..7a2c3e5ad564 100644
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
@@ -30,13 +30,13 @@
 #define B_EXNUM 0x0100
 #define CH_RPT 0x0200
 #define B_CTL 0x0400
-#define A_CTL (B_CTL+SYNTH_OK)
+#define A_CTL (B_CTL + SYNTH_OK)
 #define B_SYM 0x0800
-#define B_CAPSYM (B_CAP|B_SYM)
+#define B_CAPSYM (B_CAP | B_SYM)
 
-#define IS_WDLM(x) (spk_chartab[((u_char)x)]&B_WDLM)
-#define IS_CHAR(x, type) (spk_chartab[((u_char)x)]&type)
-#define IS_TYPE(x, type) ((spk_chartab[((u_char)x)]&type) == type)
+#define IS_WDLM(x) (spk_chartab[((u_char)x)] & B_WDLM)
+#define IS_CHAR(x, type) (spk_chartab[((u_char)x)] & type)
+#define IS_TYPE(x, type) ((spk_chartab[((u_char)x)] & type) == type)
 
 int speakup_thread(void *data);
 void spk_reset_default_chars(void);
diff --git a/drivers/staging/speakup/speakup_acntpc.c b/drivers/staging/speakup/speakup_acntpc.c
index cf6fcd63498d..bca386d9fbd1 100644
--- a/drivers/staging/speakup/speakup_acntpc.c
+++ b/drivers/staging/speakup/speakup_acntpc.c
@@ -280,7 +280,7 @@ static int synth_probe(struct spk_synth *synth)
 			if (port_val == 0x53fc) {
 				/* 'S' and out&input bits */
 				synth_port_control = synth_portlist[i];
-				speakup_info.port_tts = synth_port_control+1;
+				speakup_info.port_tts = synth_port_control + 1;
 				break;
 			}
 		}
@@ -303,7 +303,7 @@ static int synth_probe(struct spk_synth *synth)
 static void accent_release(void)
 {
 	if (speakup_info.port_tts)
-		synth_release_region(speakup_info.port_tts-1, SYNTH_IO_EXTENT);
+		synth_release_region(speakup_info.port_tts - 1, SYNTH_IO_EXTENT);
 	speakup_info.port_tts = 0;
 }
 
diff --git a/drivers/staging/speakup/speakup_decpc.c b/drivers/staging/speakup/speakup_decpc.c
index 6bf38e49a96d..600eb057f830 100644
--- a/drivers/staging/speakup/speakup_decpc.c
+++ b/drivers/staging/speakup/speakup_decpc.c
@@ -251,7 +251,7 @@ static int dt_getstatus(void)
 static void dt_sendcmd(u_int cmd)
 {
 	outb_p(cmd & 0xFF, speakup_info.port_tts);
-	outb_p((cmd >> 8) & 0xFF, speakup_info.port_tts+1);
+	outb_p((cmd >> 8) & 0xFF, speakup_info.port_tts + 1);
 }
 
 static int dt_waitbit(int bit)
@@ -273,7 +273,7 @@ static int dt_wait_dma(void)
 	if (!dt_waitbit(STAT_dma_ready))
 		return 0;
 	while (--timeout > 0) {
-		if ((dt_getstatus()&STAT_dma_state) == state)
+		if ((dt_getstatus() & STAT_dma_state) == state)
 			return 1;
 		udelay(50);
 	}
@@ -287,11 +287,11 @@ static int dt_ctrl(u_int cmd)
 
 	if (!dt_waitbit(STAT_cmd_ready))
 		return -1;
-	outb_p(0, speakup_info.port_tts+2);
-	outb_p(0, speakup_info.port_tts+3);
+	outb_p(0, speakup_info.port_tts + 2);
+	outb_p(0, speakup_info.port_tts + 3);
 	dt_getstatus();
-	dt_sendcmd(CMD_control|cmd);
-	outb_p(0, speakup_info.port_tts+6);
+	dt_sendcmd(CMD_control | cmd);
+	outb_p(0, speakup_info.port_tts + 6);
 	while (dt_getstatus() & STAT_cmd_ready) {
 		udelay(20);
 		if (--timeout == 0)
@@ -319,8 +319,8 @@ udelay(50);
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
@@ -338,8 +338,8 @@ static int dt_sendchar(char ch)
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
@@ -355,7 +355,7 @@ static int testkernel(void)
 	dt_sendcmd(CMD_sync);
 	if (!dt_waitbit(STAT_cmd_ready))
 		status = -2;
-	else if (dt_stat&0x8000)
+	else if (dt_stat & 0x8000)
 		return 0;
 	else if (dt_stat == 0x0dec)
 		pr_warn("dec_pc at 0x%x, software not loaded\n",
diff --git a/drivers/staging/speakup/speakup_dtlk.c b/drivers/staging/speakup/speakup_dtlk.c
index e2bf20806d8d..1ebe5012ec0b 100644
--- a/drivers/staging/speakup/speakup_dtlk.c
+++ b/drivers/staging/speakup/speakup_dtlk.c
@@ -297,7 +297,7 @@ static struct synth_settings *synth_interrogate(struct spk_synth *synth)
 	t += 2;
 	for (i = 0; *t != '\r'; t++) {
 		status.rom_version[i] = *t;
-		if (i < sizeof(status.rom_version)-1)
+		if (i < sizeof(status.rom_version) - 1)
 			i++;
 	}
 	status.rom_version[i] = 0;
@@ -332,13 +332,13 @@ static int synth_probe(struct spk_synth *synth)
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
@@ -347,7 +347,7 @@ static int synth_probe(struct spk_synth *synth)
 			port_val = inw(synth_portlist[i]) & 0xfbff;
 			if (port_val == 0x107f) {
 				synth_lpc = synth_portlist[i];
-				speakup_info.port_tts = synth_lpc+1;
+				speakup_info.port_tts = synth_lpc + 1;
 				break;
 			}
 			synth_release_region(synth_portlist[i],
@@ -365,7 +365,7 @@ static int synth_probe(struct spk_synth *synth)
 		cpu_relax(); /* wait until it's ready */
 	sp = synth_interrogate(synth);
 	pr_info("%s: %03x-%03x, ROM ver %s, s/n %u, driver: %s\n",
-		synth->long_name, synth_lpc, synth_lpc+SYNTH_IO_EXTENT - 1,
+		synth->long_name, synth_lpc, synth_lpc + SYNTH_IO_EXTENT - 1,
 		sp->rom_version, sp->serial_number, synth->version);
 	synth->alive = 1;
 	return 0;
@@ -374,7 +374,7 @@ static int synth_probe(struct spk_synth *synth)
 static void dtlk_release(void)
 {
 	if (speakup_info.port_tts)
-		synth_release_region(speakup_info.port_tts-1, SYNTH_IO_EXTENT);
+		synth_release_region(speakup_info.port_tts - 1, SYNTH_IO_EXTENT);
 	speakup_info.port_tts = 0;
 }
 
diff --git a/drivers/staging/speakup/speakup_keypc.c b/drivers/staging/speakup/speakup_keypc.c
index 10f4964782e2..d675ce006ff8 100644
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
@@ -240,7 +240,7 @@ spin_lock_irqsave(&speakup_info.spinlock, flags);
 			delay_time_val = delay_time->u.n.value;
 			spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 			schedule_timeout(msecs_to_jiffies(delay_time_val));
-			jiff_max = jiffies+jiffy_delta_val;
+			jiff_max = jiffies + jiffy_delta_val;
 		}
 	}
 	timeout = 1000;
@@ -268,7 +268,7 @@ static int synth_probe(struct spk_synth *synth)
 		synth_port = port_forced;
 		pr_info("probe forced to %x by kernel command line\n",
 				synth_port);
-		if (synth_request_region(synth_port-1, SYNTH_IO_EXTENT)) {
+		if (synth_request_region(synth_port - 1, SYNTH_IO_EXTENT)) {
 			pr_warn("sorry, port already reserved\n");
 			return -EBUSY;
 		}
@@ -296,7 +296,7 @@ static int synth_probe(struct spk_synth *synth)
 		return -ENODEV;
 	}
 	pr_info("%s: %03x-%03x, driver version %s,\n", synth->long_name,
-		synth_port, synth_port+SYNTH_IO_EXTENT-1,
+		synth_port, synth_port + SYNTH_IO_EXTENT - 1,
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


