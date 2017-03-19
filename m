X-GM-THRID: 6399197627083128832
X-Received: by 10.129.50.12 with SMTP id y12mr13397086ywy.111.1489929313394;
        Sun, 19 Mar 2017 06:15:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.1.17 with SMTP id 17ls10905496otu.16.gmail; Sun, 19 Mar
 2017 06:15:13 -0700 (PDT)
X-Received: by 10.157.66.1 with SMTP id q1mr10998765ote.47.1489929313041;
        Sun, 19 Mar 2017 06:15:13 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id g82si2123711pfb.5.2017.03.19.06.15.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 06:15:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id b5so16039904pgg.1
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 06:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=u4v1tEploXPQo2lvmxuSUgpvnapeoX/1PE5yXggPyKc=;
        b=aswxS/3MkYtaiMiw8zhKeBAY3Asjf3Nq7QNfbC5WqyANwVhxcw+CIA3km4bfJiiPPt
         Bh95TXLpCn/ncztTDn9mBApAvWSFn2cSi7dOdpHiq3Fth7BtEIme4YT6q3X9C59ETRSR
         6nLw6HUvAJATH+9OxD28WrBW2+snURaD+AfC/RYNaia/KwayI/K3gUMvnFn/cmaq61qE
         zMKAinR+JjsQgufxjLyu4QQA8ZkHEfrqlDhHxfqOkU6g4B6AFCof62ZtyCAQpMLK6wg2
         xXymYH+koRn9mRtgeib/iEKgTZgGRfVh08gVepTuYtvefaVgvkExmenWdNyAWcmR2Kz/
         rqxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=u4v1tEploXPQo2lvmxuSUgpvnapeoX/1PE5yXggPyKc=;
        b=GKWDdu3vHwrcY7TBy/j7fg2h9FYaEI8bxoBH6i9NrzljWUcR9IAxtM1ze4Zhbg9qiY
         a0qhzzEbXRRQUsZoL5EpsEs1TdJVwVNZ0Ewi3yrtR8XbBM4VVy2C3I9oBnt0sId+D3ua
         GbWF/gG3RT3R0ybTGlfEwEHJnJDMWxBJ3Ynaty1Tbb4F5igX0d4NbFeRamGgPwUeGpXP
         uMMobnt0z1d844naoKzeUf3Zn2f8vph98c9HxMPkCEkYWbgzEKNOl2SpQWV85TWtHQFs
         kLNQvSnCUXLFvBjAWMbTMHYO0CmhN0LnbMCelgRNJa0ImSlZUGIcItZm0zy3ddkdyNa8
         KFdw==
X-Gm-Message-State: AFeK/H3CCD1+TMD/7XqEAFkoZOBaQqJxPn0Y22y0RHKrnihR7mUVpRjry+s3ZF/wcZWwvQ==
X-Received: by 10.98.59.151 with SMTP id w23mr27114405pfj.235.1489929312740;
        Sun, 19 Mar 2017 06:15:12 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id q4sm9162622pgc.63.2017.03.19.06.15.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Mar 2017 06:15:11 -0700 (PDT)
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
Subject: [PATCH v2 2/2] staging: speakup: spaces preferred around operator
Date: Sun, 19 Mar 2017 18:44:55 +0530
Message-Id: <20170319131455.25007-3-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170319131455.25007-1-arushisinghal19971997@gmail.com>
References: <20170319131455.25007-1-arushisinghal19971997@gmail.com>

Fixed the checkpatch.pl issues like:
CHECK: spaces preferred around that '&' (ctx:VxV)
CHECK: spaces preferred around that '|' (ctx:VxV)
CHECK: spaces preferred around that '-' (ctx:VxV)
CHECK: spaces preferred around that '+' (ctx:VxV)
etc.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
changes in v2
 -no change.

 drivers/staging/speakup/speakup.h        | 12 ++++++------
 drivers/staging/speakup/speakup_acntpc.c |  2 +-
 drivers/staging/speakup/speakup_decpc.c  | 20 ++++++++++----------
 drivers/staging/speakup/speakup_dtlk.c   |  2 +-
 drivers/staging/speakup/speakup_keypc.c  |  6 +++---
 drivers/staging/speakup/speakup_ltlk.c   |  2 +-
 6 files changed, 22 insertions(+), 22 deletions(-)

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
index c5beb5602c42..b4058bd82e42 100644
--- a/drivers/staging/speakup/speakup_acntpc.c
+++ b/drivers/staging/speakup/speakup_acntpc.c
@@ -282,7 +282,7 @@ static int synth_probe(struct spk_synth *synth)
 			if (port_val == 0x53fc) {
 				/* 'S' and out&input bits */
 				synth_port_control = synth_portlist[i];
-				speakup_info.port_tts = synth_port_control+1;
+				speakup_info.port_tts = synth_port_control + 1;
 				break;
 			}
 		}
diff --git a/drivers/staging/speakup/speakup_decpc.c b/drivers/staging/speakup/speakup_decpc.c
index 5e35d7e11361..5d22c3b7edd4 100644
--- a/drivers/staging/speakup/speakup_decpc.c
+++ b/drivers/staging/speakup/speakup_decpc.c
@@ -250,7 +250,7 @@ static int dt_getstatus(void)
 static void dt_sendcmd(u_int cmd)
 {
 	outb_p(cmd & 0xFF, speakup_info.port_tts);
-	outb_p((cmd >> 8) & 0xFF, speakup_info.port_tts+1);
+	outb_p((cmd >> 8) & 0xFF, speakup_info.port_tts + 1);
 }
 
 static int dt_waitbit(int bit)
@@ -286,11 +286,11 @@ static int dt_ctrl(u_int cmd)
 
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
@@ -318,8 +318,8 @@ udelay(50);
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
@@ -337,8 +337,8 @@ static int dt_sendchar(char ch)
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
@@ -354,7 +354,7 @@ static int testkernel(void)
 	dt_sendcmd(CMD_sync);
 	if (!dt_waitbit(STAT_cmd_ready))
 		status = -2;
-	else if (dt_stat&0x8000)
+	else if (dt_stat & 0x8000)
 		return 0;
 	else if (dt_stat == 0x0dec)
 		pr_warn("dec_pc at 0x%x, software not loaded\n",
diff --git a/drivers/staging/speakup/speakup_dtlk.c b/drivers/staging/speakup/speakup_dtlk.c
index 693fac4365c3..5973acc0a006 100644
--- a/drivers/staging/speakup/speakup_dtlk.c
+++ b/drivers/staging/speakup/speakup_dtlk.c
@@ -300,7 +300,7 @@ static struct synth_settings *synth_interrogate(struct spk_synth *synth)
 	t += 2;
 	for (i = 0; *t != '\r'; t++) {
 		status.rom_version[i] = *t;
-		if (i < sizeof(status.rom_version)-1)
+		if (i < sizeof(status.rom_version) - 1)
 			i++;
 	}
 	status.rom_version[i] = 0;
diff --git a/drivers/staging/speakup/speakup_keypc.c b/drivers/staging/speakup/speakup_keypc.c
index 6649fa4c0ad2..ba7901178e0b 100644
--- a/drivers/staging/speakup/speakup_keypc.c
+++ b/drivers/staging/speakup/speakup_keypc.c
@@ -142,9 +142,9 @@ static char *oops(void)
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
diff --git a/drivers/staging/speakup/speakup_ltlk.c b/drivers/staging/speakup/speakup_ltlk.c
index cb4f2958c318..11275f49bea4 100644
--- a/drivers/staging/speakup/speakup_ltlk.c
+++ b/drivers/staging/speakup/speakup_ltlk.c
@@ -145,7 +145,7 @@ static void synth_interrogate(struct spk_synth *synth)
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


