X-GM-THRID: 6466031542191783936
X-Received: by 10.13.236.151 with SMTP id v145mr817267ywe.173.1505490285275;
        Fri, 15 Sep 2017 08:44:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.81.11 with SMTP id f11ls6599841iob.45.gmail; Fri, 15 Sep
 2017 08:44:41 -0700 (PDT)
X-Received: by 10.200.35.43 with SMTP id a40mr13731501qta.33.1505490281323;
        Fri, 15 Sep 2017 08:44:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505490281; cv=none;
        d=google.com; s=arc-20160816;
        b=g9rQlq82vVdGdcQD7Mwo/4Y633XtxJSS74BTQ9R+lTPirQF+qJX4oqjSfCt5xqKBcV
         0gxSU+iIS1RPNBl6goCENuFHgRT1rRHLpek8dgNszH2PFgaPz988goaU6Gm1AsNx0jAS
         0J+80bVNeAGBJwGKnX5c9Wy33XuWtsDMJZ0hTnb5gHAcJ2bIrN+HnnZnyr8uvVmWiIHH
         IF9pQ6T1zaqGzs2Kv25LXfi1DOHw950Q1Nm/weIQ8xEsqBzBdiTLaWPXahQK9jcC3N9b
         pTe/06Q0J76gXI8UuT7zeImD5nB1Okdl2Mjx3e8hWK4GUATFdByN4j2FcJ4K1lqbzWgc
         M5aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=OU6F/qt5FxtOAw+kdwccCevLvFJ6yXTnq+hgaGNP0qc=;
        b=q3ma/PWteP3wfDHokRcz9RtIBkfZcbIE7SirAiMgFgUSxMJF2DfNc1QLa9Xw+PSglN
         XWITEcLBoNcTigc1G/GazYTby8rQYQMLzLUFlTrY9wElE/M65pHkoxHIfhvEKaNVI1vv
         R3FOjTp70qLfoKH8Kbknz07py8S4PR5cdwqjwH2CHFvhz5Nxy5sGcqOpICZO/iOMJfuE
         vw5lonb3kI5tU4XvfSlJ2iJqWzi1iw272ybWl/Dp0fjPac3rmzWd7/Gb8HgyxlPLTUpd
         Mw1q36qsWP0rHKRbyy7K3Kryi9N9Jr2hmgO56o2ZWruyauW1j1h2Nj2MJ7wa6jaVkzIC
         wmfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sTUnjTxx;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id a17si112227pfk.15.2017.09.15.08.44.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 08:44:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sTUnjTxx;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id f84so1399536pfj.3
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Sep 2017 08:44:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=OU6F/qt5FxtOAw+kdwccCevLvFJ6yXTnq+hgaGNP0qc=;
        b=sTUnjTxxmQ89wuasA38uodMaNNHevoy1HX+yfycM+KHH4OigPTvNdwk560Qa7sYDmH
         PTrC/KmFsbSwJCwwO44MSgBj9kKDIieE5uOkzs2pWs10URDDTqoEXaRjR7MW/mY0vQrD
         ISvBxVYM8s4jsL25tINgJymwvwc6u6AMJOW4CzWYWFT7eO+kcf6JvLNPYVHIqhQO7gun
         LYEJwMwX+jv+zN2G5SvXXX9jMtowoFeBz/wvjrjE+7EPsQ7Ga2zjxBMYlJzGx2vgR5KL
         sFmpaOUo8f9s0T/vxmaMZ9p+cszhnBzRyHx6/dEzXSyMjob/g92Z34cLdVB17YcPzMcp
         W3nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=OU6F/qt5FxtOAw+kdwccCevLvFJ6yXTnq+hgaGNP0qc=;
        b=G93Sj/Deu6D9T2C2QsTH8XjToJzonI86XUOb4MSS+vxgAR4sRG6KUW3TIb9ZF8dBa5
         N/u0sK58YzUlysTs97xhuZlrk2DoNb0HLB8rvnYAZeKPRx0KKCf1zqE948esKm2XbxCt
         FGQi5ROmFi+iWPZYcJEO+m1A1k/QvKghPbC4CrwYUDnOfRNW0I4zWGUXJgM+JceYMiOL
         Ksjkr0YWBE4Tly1+P47psXkHdAoreZdJzrlbAJ/vf0yXISDRpW8JxCRChbaoKqPXkTlK
         ZXOJBBCCHsfSdY2mpxPpsL3dKK8qgzWr/lEAQxi4QeUv2fJVajlNPVGsyBPpUE/IZmCL
         TKkA==
X-Gm-Message-State: AHPjjUjti6SzFIPImY1UghltCYyQfyrx4sEzO+tHlQDMMOISV2spNGP9
	tSYg85YhCMTsfw==
X-Google-Smtp-Source: AOwi7QCFU0ug/5TmIlO4uonVxP959IOCphzzjUjGkdN0tQDWX1QUmRyaN5WGMXqnKo1nnUF9kVLPjA==
X-Received: by 10.99.110.12 with SMTP id j12mr8300812pgc.163.1505490280880;
        Fri, 15 Sep 2017 08:44:40 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([14.139.122.139])
        by smtp.gmail.com with ESMTPSA id t125sm3348845pgc.50.2017.09.15.08.44.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 08:44:40 -0700 (PDT)
Date: Fri, 15 Sep 2017 21:14:34 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: Dgnc: Remove unnecessary comments around control
 statements.
Message-ID: <20170915154434.GA15633@manoharreddy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove Un necessary comments around control statements

Checked with checkpatch.pl.

With this changes, I am also able to compile the code.

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
 drivers/staging/dgnc/dgnc_cls.c | 16 ++++++++--------
 drivers/staging/dgnc/dgnc_neo.c | 22 +++++++++++-----------
 drivers/staging/dgnc/dgnc_tty.c | 34 +++++++++++++++++-----------------
 3 files changed, 36 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
index 9639035..870ae3d 100644
--- a/drivers/staging/dgnc/dgnc_cls.c
+++ b/drivers/staging/dgnc/dgnc_cls.c
@@ -706,7 +706,7 @@ static void cls_param(struct tty_struct *tty)
 		 * unit is NOT open
 		 */
 		if (!(ch->ch_tun.un_flags & UN_ISOPEN) &&
-		    (un->un_type == DGNC_PRINT))
+		    un->un_type == DGNC_PRINT)
 			baud = C_BAUD(ch->ch_pun.un_tty) & 0xff;
 		else
 			baud = C_BAUD(ch->ch_tun.un_tty) & 0xff;
@@ -719,8 +719,8 @@ static void cls_param(struct tty_struct *tty)
 
 		jindex = baud;
 
-		if ((iindex >= 0) && (iindex < 4) && (jindex >= 0) &&
-		    (jindex < 16)) {
+		if (iindex >= 0 && iindex < 4 && jindex >= 0 &&
+		    jindex < 16) {
 			baud = bauds[iindex][jindex];
 		} else {
 			baud = 0;
@@ -820,8 +820,8 @@ static void cls_param(struct tty_struct *tty)
 	if (ch->ch_digi.digi_flags & CTSPACE || ch->ch_c_cflag & CRTSCTS) {
 		cls_set_cts_flow_control(ch);
 	} else if (ch->ch_c_iflag & IXON) {
-		if ((ch->ch_startc == _POSIX_VDISABLE) ||
-		    (ch->ch_stopc == _POSIX_VDISABLE))
+		if (ch->ch_startc == _POSIX_VDISABLE ||
+		    ch->ch_stopc == _POSIX_VDISABLE)
 			cls_set_no_output_flow_control(ch);
 		else
 			cls_set_ixon_flow_control(ch);
@@ -832,8 +832,8 @@ static void cls_param(struct tty_struct *tty)
 	if (ch->ch_digi.digi_flags & RTSPACE || ch->ch_c_cflag & CRTSCTS) {
 		cls_set_rts_flow_control(ch);
 	} else if (ch->ch_c_iflag & IXOFF) {
-		if ((ch->ch_startc == _POSIX_VDISABLE) ||
-		    (ch->ch_stopc == _POSIX_VDISABLE))
+		if (ch->ch_startc == _POSIX_VDISABLE ||
+		    ch->ch_stopc == _POSIX_VDISABLE)
 			cls_set_no_input_flow_control(ch);
 		else
 			cls_set_ixoff_flow_control(ch);
@@ -870,7 +870,7 @@ static void cls_tasklet(unsigned long data)
 	 */
 	spin_lock_irqsave(&bd->bd_intr_lock, flags);
 
-	if ((state == BOARD_READY) && (ports > 0)) {
+	if (state == BOARD_READY && ports > 0) {
 		for (i = 0; i < ports; i++) {
 			ch = bd->channels[i];
 
diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
index 1943e66..c7cc490 100644
--- a/drivers/staging/dgnc/dgnc_neo.c
+++ b/drivers/staging/dgnc/dgnc_neo.c
@@ -651,7 +651,7 @@ static void neo_param(struct tty_struct *tty)
 		 * is NOT open
 		 */
 		if (!(ch->ch_tun.un_flags & UN_ISOPEN) &&
-		    (un->un_type == DGNC_PRINT))
+		    un->un_type == DGNC_PRINT)
 			baud = C_BAUD(ch->ch_pun.un_tty) & 0xff;
 		else
 			baud = C_BAUD(ch->ch_tun.un_tty) & 0xff;
@@ -664,8 +664,8 @@ static void neo_param(struct tty_struct *tty)
 
 		jindex = baud;
 
-		if ((iindex >= 0) && (iindex < 4) &&
-		    (jindex >= 0) && (jindex < 16))
+		if (iindex >= 0 && iindex < 4 &&
+		    jindex >= 0 && jindex < 16)
 			baud = bauds[iindex][jindex];
 		else
 			baud = 0;
@@ -767,8 +767,8 @@ static void neo_param(struct tty_struct *tty)
 	if (ch->ch_digi.digi_flags & CTSPACE || ch->ch_c_cflag & CRTSCTS) {
 		neo_set_cts_flow_control(ch);
 	} else if (ch->ch_c_iflag & IXON) {
-		if ((ch->ch_startc == _POSIX_VDISABLE) ||
-		    (ch->ch_stopc == _POSIX_VDISABLE))
+		if (ch->ch_startc == _POSIX_VDISABLE ||
+		    ch->ch_stopc == _POSIX_VDISABLE)
 			neo_set_no_output_flow_control(ch);
 		else
 			neo_set_ixon_flow_control(ch);
@@ -779,8 +779,8 @@ static void neo_param(struct tty_struct *tty)
 	if (ch->ch_digi.digi_flags & RTSPACE || ch->ch_c_cflag & CRTSCTS) {
 		neo_set_rts_flow_control(ch);
 	} else if (ch->ch_c_iflag & IXOFF) {
-		if ((ch->ch_startc == _POSIX_VDISABLE) ||
-		    (ch->ch_stopc == _POSIX_VDISABLE))
+		if (ch->ch_startc == _POSIX_VDISABLE ||
+		    ch->ch_stopc == _POSIX_VDISABLE)
 			neo_set_no_input_flow_control(ch);
 		else
 			neo_set_ixoff_flow_control(ch);
@@ -827,7 +827,7 @@ static void neo_tasklet(unsigned long data)
 	 */
 	spin_lock_irqsave(&bd->bd_intr_lock, flags);
 
-	if ((state == BOARD_READY) && (ports > 0)) {
+	if (state == BOARD_READY && ports > 0) {
 		for (i = 0; i < ports; i++) {
 			ch = bd->channels[i];
 			if (!ch)
@@ -1680,9 +1680,9 @@ static void neo_vpd(struct dgnc_board *brd)
 	 * 0x10 : long resource name tage (PCI-66 files)
 	 * 0x7F : small resource end tag
 	 */
-	if  (((brd->vpd[0x08] != 0x82) &&
-	      (brd->vpd[0x10] != 0x82)) ||
-	     (brd->vpd[0x7F] != 0x78)) {
+	if  ((brd->vpd[0x08] != 0x82 &&
+	      brd->vpd[0x10] != 0x82) ||
+	     brd->vpd[0x7F] != 0x78) {
 		memset(brd->vpd, '\0', NEO_VPD_IMAGESIZE);
 	} else {
 		/* Search for the serial number */
diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index d3736da..3de1473 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -525,7 +525,7 @@ void dgnc_carrier(struct channel_t *ch)
 
 	/* Test for a VIRTUAL carrier transition to HIGH. */
 
-	if (((ch->ch_flags & CH_FCAR) == 0) && (virt_carrier == 1)) {
+	if (((ch->ch_flags & CH_FCAR) == 0) && virt_carrier == 1) {
 		/*
 		 * When carrier rises, wake any threads waiting
 		 * for carrier in the open routine.
@@ -536,7 +536,7 @@ void dgnc_carrier(struct channel_t *ch)
 
 	/* Test for a PHYSICAL carrier transition to HIGH. */
 
-	if (((ch->ch_flags & CH_CD) == 0) && (phys_carrier == 1)) {
+	if (((ch->ch_flags & CH_CD) == 0) && phys_carrier == 1) {
 		/*
 		 * When carrier rises, wake any threads waiting
 		 * for carrier in the open routine.
@@ -554,8 +554,8 @@ void dgnc_carrier(struct channel_t *ch)
 	 *  matter... it really only means "ignore carrier state", not
 	 *  "make pretend that carrier is there".
 	 */
-	if ((virt_carrier == 0) && ((ch->ch_flags & CH_CD) != 0) &&
-	    (phys_carrier == 0)) {
+	if (virt_carrier == 0 && ((ch->ch_flags & CH_CD) != 0) &&
+	    phys_carrier == 0) {
 		/*
 		 *   When carrier drops:
 		 *
@@ -759,7 +759,7 @@ void dgnc_wakeup_writes(struct channel_t *ch)
 		 * the queue AND FIFO are both empty.
 		 */
 		if (ch->ch_tun.un_flags & UN_EMPTY) {
-			if ((qlen == 0) &&
+			if (qlen == 0 &&
 			    (ch->ch_bd->bd_ops->get_uart_bytes_left(ch) == 0)) {
 				ch->ch_tun.un_flags &= ~(UN_EMPTY);
 
@@ -790,7 +790,7 @@ void dgnc_wakeup_writes(struct channel_t *ch)
 		 * the queue AND FIFO are both empty.
 		 */
 		if (ch->ch_pun.un_flags & UN_EMPTY) {
-			if ((qlen == 0) &&
+			if (qlen == 0 &&
 			    (ch->ch_bd->bd_ops->get_uart_bytes_left(ch) == 0))
 				ch->ch_pun.un_flags &= ~(UN_EMPTY);
 		}
@@ -1162,7 +1162,7 @@ static void dgnc_tty_close(struct tty_struct *tty, struct file *file)
 	 * Determine if this is the last close or not - and if we agree about
 	 * which type of close it is with the Line Discipline
 	 */
-	if ((tty->count == 1) && (un->un_open_count != 1)) {
+	if (tty->count == 1 && un->un_open_count != 1) {
 		/*
 		 * Uh, oh.  tty->count is 1, which means that the tty
 		 * structure will be freed.  un_open_count should always
@@ -1199,13 +1199,13 @@ static void dgnc_tty_close(struct tty_struct *tty, struct file *file)
 	 * Only officially close channel if count is 0 and
 	 * DIGI_PRINTER bit is not set.
 	 */
-	if ((ch->ch_open_count == 0) &&
+	if (ch->ch_open_count == 0 &&
 	    !(ch->ch_digi.digi_flags & DIGI_PRINTER)) {
 		ch->ch_flags &= ~(CH_STOPI | CH_FORCED_STOPI);
 
 		/* turn off print device when closing print device. */
 
-		if ((un->un_type == DGNC_PRINT) && (ch->ch_flags & CH_PRON)) {
+		if (un->un_type == DGNC_PRINT && (ch->ch_flags & CH_PRON)) {
 			dgnc_wmove(ch, ch->ch_digi.digi_offstr,
 				   (int)ch->ch_digi.digi_offlen);
 			ch->ch_flags &= ~CH_PRON;
@@ -1250,7 +1250,7 @@ static void dgnc_tty_close(struct tty_struct *tty, struct file *file)
 	} else {
 		/* turn off print device when closing print device. */
 
-		if ((un->un_type == DGNC_PRINT) && (ch->ch_flags & CH_PRON)) {
+		if (un->un_type == DGNC_PRINT && (ch->ch_flags & CH_PRON)) {
 			dgnc_wmove(ch, ch->ch_digi.digi_offstr,
 				   (int)ch->ch_digi.digi_offlen);
 			ch->ch_flags &= ~CH_PRON;
@@ -1474,7 +1474,7 @@ static int dgnc_tty_write(struct tty_struct *tty,
 	 * Output the printer ON string, if we are in terminal mode, but
 	 * need to be in printer mode.
 	 */
-	if ((un->un_type == DGNC_PRINT) && !(ch->ch_flags & CH_PRON)) {
+	if (un->un_type == DGNC_PRINT && !(ch->ch_flags & CH_PRON)) {
 		dgnc_wmove(ch, ch->ch_digi.digi_onstr,
 			   (int)ch->ch_digi.digi_onlen);
 		head = (ch->ch_w_head) & tmask;
@@ -1485,7 +1485,7 @@ static int dgnc_tty_write(struct tty_struct *tty,
 	 * On the other hand, output the printer OFF string, if we are
 	 * currently in printer mode, but need to output to the terminal.
 	 */
-	if ((un->un_type != DGNC_PRINT) && (ch->ch_flags & CH_PRON)) {
+	if (un->un_type != DGNC_PRINT && (ch->ch_flags & CH_PRON)) {
 		dgnc_wmove(ch, ch->ch_digi.digi_offstr,
 			   (int)ch->ch_digi.digi_offlen);
 		head = (ch->ch_w_head) & tmask;
@@ -1521,8 +1521,8 @@ static int dgnc_tty_write(struct tty_struct *tty,
 	}
 
 	/* Update printer buffer empty time. */
-	if ((un->un_type == DGNC_PRINT) && (ch->ch_digi.digi_maxcps > 0) &&
-	    (ch->ch_digi.digi_bufsize > 0)) {
+	if ((un->un_type == DGNC_PRINT && ch->ch_digi.digi_maxcps > 0) &&
+	    ch->ch_digi.digi_bufsize > 0) {
 		ch->ch_cpstime += (HZ * count) / ch->ch_digi.digi_maxcps;
 	}
 
@@ -2221,7 +2221,7 @@ static int dgnc_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
 
 		spin_lock_irqsave(&ch->ch_lock, flags);
 
-		if (((cmd == TCSBRK) && (!arg)) || (cmd == TCSBRKP))
+		if ((cmd == TCSBRK && !arg) || cmd == TCSBRKP)
 			ch_bd_ops->send_break(ch, 250);
 
 		spin_unlock_irqrestore(&ch->ch_lock, flags);
@@ -2323,14 +2323,14 @@ static int dgnc_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
 		if (rc)
 			goto err_unlock;
 
-		if ((arg == TCIFLUSH) || (arg == TCIOFLUSH)) {
+		if (arg == TCIFLUSH || arg == TCIOFLUSH) {
 			ch->ch_r_head = ch->ch_r_tail;
 			ch_bd_ops->flush_uart_read(ch);
 			/* Force queue flow control to be released, if needed */
 			dgnc_check_queue_flow_control(ch);
 		}
 
-		if ((arg == TCOFLUSH) || (arg == TCIOFLUSH)) {
+		if (arg == TCOFLUSH || arg == TCIOFLUSH) {
 			if (!(un->un_type == DGNC_PRINT)) {
 				ch->ch_w_head = ch->ch_w_tail;
 				ch_bd_ops->flush_uart_write(ch);
-- 
2.7.4


