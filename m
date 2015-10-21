X-GM-THRID: 6207871882034675712
X-Received: by 10.112.173.170 with SMTP id bl10mr2677191lbc.7.1445458701107;
        Wed, 21 Oct 2015 13:18:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.206.211 with SMTP id e202ls267719lfg.109.gmail; Wed, 21 Oct
 2015 13:18:20 -0700 (PDT)
X-Received: by 10.112.209.73 with SMTP id mk9mr2659252lbc.14.1445458700482;
        Wed, 21 Oct 2015 13:18:20 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x242.google.com (mail-wi0-x242.google.com. [2a00:1450:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id cm6si3846wib.1.2015.10.21.13.18.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 13:18:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::242 as permitted sender) client-ip=2a00:1450:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::242 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x242.google.com with SMTP id vt6so14949033wib.3
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 13:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=mBFFvWRHjB/v2kquoE12dKtAZlpuA+7YgKQVEfrdNag=;
        b=iCLylBe4l3PXYLL/HAQ7a8s9ycSDmu0P1iSsyN25k3AmXB51Mlmz2IjNGn/xuVbUmB
         oMHln19LiPwxrhfrHsjVVaXXXuZkPcU5w8w5YzARZPt7sHOxnD0lfCvIFuopkkHBdC7E
         VhbTTuxDoqDJn3xc93vlfumHVywSthk8UlGIYxBn35k1E57i5IvaU5ci4v54QIcZ5Yn+
         JKr5AYGZoA4dx/0bw5jPion0dmp2VK/AMbGxt2ckKiSwLnByRgxuodPOs4dVq2c5FVo6
         3Kcs5OpbHhUswHc2dckBm0a3R7LM6MqB5h6+A3DijARtm6m/pK/hZtJSWobgDrwplcIN
         eF5w==
X-Received: by 10.180.11.37 with SMTP id n5mr12525175wib.20.1445458700352;
        Wed, 21 Oct 2015 13:18:20 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id m6sm8703173wif.11.2015.10.21.13.18.18
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Oct 2015 13:18:19 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2 1/5] staging: dgap: remove unnecessary blank lines
Date: Wed, 21 Oct 2015 23:17:52 +0300
Message-Id: <23fe9b72274a527eccd9a7f2d479be0818ab878e.1445458023.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1445458023.git.ciorneiioana@gmail.com>
References: <cover.1445458023.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1445458023.git.ciorneiioana@gmail.com>
References: <cover.1445458023.git.ciorneiioana@gmail.com>

This patch removes the unnecessary blank lines before a closed
bracket and after an open bracket.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---

Changes in v2:
    - nothing

 drivers/staging/dgap/dgap.c | 44 --------------------------------------------
 1 file changed, 44 deletions(-)

diff --git a/drivers/staging/dgap/dgap.c b/drivers/staging/dgap/dgap.c
index ca64126..2d36ea5 100644
--- a/drivers/staging/dgap/dgap.c
+++ b/drivers/staging/dgap/dgap.c
@@ -514,7 +514,6 @@ static uint dgap_config_get_num_prts(struct board_t *bd)
 		return 0;
 
 	for (p = bd->bd_config; p; p = p->next) {
-
 		switch (p->type) {
 		case BNODE:
 			/*
@@ -547,7 +546,6 @@ static char *dgap_create_config_string(struct board_t *bd, char *string)
 	}
 
 	for (p = bd->bd_config; p; p = p->next) {
-
 		switch (p->type) {
 		case LNODE:
 			*ptr = '\0';
@@ -1446,7 +1444,6 @@ static void dgap_parity_scan(struct channel_t *ch, unsigned char *cbuf,
 			*cout++ = c;
 
 			if (ch->pscan_savechar == 0x0) {
-
 				if (c == 0x0) {
 					ch->ch_err_break++;
 					*fout++ = TTY_BREAK;
@@ -1536,7 +1533,6 @@ static void dgap_input(struct channel_t *ch)
 	    !(ch->ch_tun.un_flags & UN_ISOPEN) ||
 	    !(tp->termios.c_cflag & CREAD) ||
 	    (ch->ch_tun.un_flags & UN_CLOSING)) {
-
 		writew(head, &(bs->rx_tail));
 		writeb(1, &(bs->idata));
 		spin_unlock_irqrestore(&ch->ch_lock, lock_flags2);
@@ -1618,7 +1614,6 @@ static void dgap_input(struct channel_t *ch)
 	 * of data the card actually has pending...
 	 */
 	while (n) {
-
 		s = ((head >= tail) ? head : ch->ch_rsize) - tail;
 		s = min(s, n);
 
@@ -1668,7 +1663,6 @@ static void dgap_input(struct channel_t *ch)
 
 	if (ld)
 		tty_ldisc_deref(ld);
-
 }
 
 static void dgap_write_wakeup(struct board_t *bd, struct channel_t *ch,
@@ -1739,7 +1733,6 @@ static void dgap_carrier(struct channel_t *ch)
 	 * Test for a VIRTUAL carrier transition to HIGH.
 	 */
 	if (((ch->ch_flags & CH_FCAR) == 0) && (virt_carrier == 1)) {
-
 		/*
 		 * When carrier rises, wake any threads waiting
 		 * for carrier in the open routine.
@@ -1753,7 +1746,6 @@ static void dgap_carrier(struct channel_t *ch)
 	 * Test for a PHYSICAL carrier transition to HIGH.
 	 */
 	if (((ch->ch_flags & CH_CD) == 0) && (phys_carrier == 1)) {
-
 		/*
 		 * When carrier rises, wake any threads waiting
 		 * for carrier in the open routine.
@@ -1775,7 +1767,6 @@ static void dgap_carrier(struct channel_t *ch)
 	if ((virt_carrier == 0) &&
 	    ((ch->ch_flags & CH_CD) != 0) &&
 	    (phys_carrier == 0)) {
-
 		/*
 		 *   When carrier drops:
 		 *
@@ -1867,7 +1858,6 @@ static int dgap_event(struct board_t *bd)
 	 * Loop to process all the events in the buffer.
 	 */
 	while (tail != head) {
-
 		/*
 		 * Get interrupt information.
 		 */
@@ -1910,7 +1900,6 @@ static int dgap_event(struct board_t *bd)
 		 * Process received data.
 		 */
 		if (reason & IFDATA) {
-
 			/*
 			 * ALL LOCKS *MUST* BE DROPPED BEFORE CALLING INPUT!
 			 * input could send some data to ld, which in turn
@@ -1949,7 +1938,6 @@ static int dgap_event(struct board_t *bd)
 		 * Process break.
 		 */
 		if (reason & IFBREAK) {
-
 			if (ch->ch_tun.un_tty) {
 				/* A break has been indicated */
 				ch->ch_err_break++;
@@ -2025,7 +2013,6 @@ static void dgap_poll_tasklet(unsigned long data)
 	 * If board is ready, parse deeper to see if there is anything to do.
 	 */
 	if (bd->state == BOARD_READY) {
-
 		struct ev_t __iomem *eaddr;
 
 		if (!bd->re_map_membase) {
@@ -2269,7 +2256,6 @@ static void dgap_poll_handler(ulong dummy)
 	 */
 	if ((dgap_numboards == 1) || (num_online_cpus() <= 1)) {
 		for (i = 0; i < dgap_numboards; i++) {
-
 			brd = dgap_board[i];
 
 			if (brd->state == BOARD_FAILED)
@@ -2413,7 +2399,6 @@ static void dgap_cmdb(struct channel_t *ch, u8 cmd, u8 byte1,
 	 * is outlandish, declare the FEP dead.
 	 */
 	for (count = dgap_count ;;) {
-
 		head = readw(&(cm_addr->cm_head));
 		tail = readw(&(cm_addr->cm_tail));
 
@@ -2496,7 +2481,6 @@ static void dgap_cmdw(struct channel_t *ch, u8 cmd, u16 word, uint ncmds)
 	 * is outlandish, declare the FEP dead.
 	 */
 	for (count = dgap_count ;;) {
-
 		head = readw(&(cm_addr->cm_head));
 		tail = readw(&(cm_addr->cm_tail));
 
@@ -2591,7 +2575,6 @@ static void dgap_cmdw_ext(struct channel_t *ch, u16 cmd, u16 word, uint ncmds)
 	 * is outlandish, declare the FEP dead.
 	 */
 	for (count = dgap_count ;;) {
-
 		head = readw(&(cm_addr->cm_head));
 		tail = readw(&(cm_addr->cm_tail));
 
@@ -2711,7 +2694,6 @@ static int dgap_param(struct channel_t *ch, struct board_t *bd, u32 un_type)
 	 * If baud rate is zero, flush queues, and set mval to drop DTR.
 	 */
 	if ((ch->ch_c_cflag & (CBAUD)) == 0) {
-
 		/* flush rx */
 		head = readw(&(ch->ch_bs->rx_head));
 		writew(head, &(ch->ch_bs->rx_tail));
@@ -3042,7 +3024,6 @@ static int dgap_block_til_ready(struct tty_struct *tty, struct file *file,
 
 	/* Loop forever */
 	while (1) {
-
 		sleep_on_un_flags = 0;
 
 		/*
@@ -3069,7 +3050,6 @@ static int dgap_block_til_ready(struct tty_struct *tty, struct file *file,
 		 */
 		if (!((ch->ch_tun.un_flags | ch->ch_pun.un_flags) &
 		      UN_CLOSING)) {
-
 			/*
 			 * Our conditions to leave cleanly and happily:
 			 * 1) NONBLOCKING on the tty is set.
@@ -3353,7 +3333,6 @@ static int dgap_wait_for_drain(struct tty_struct *tty)
 
 	/* Loop until data is drained */
 	while (count != 0) {
-
 		count = dgap_tty_chars_in_buffer(tty);
 
 		if (count == 0)
@@ -3632,7 +3611,6 @@ static int dgap_tty_write(struct tty_struct *tty, const unsigned char *buf,
 	}
 
 	if (n > 0) {
-
 		/*
 		 * Move rest of data.
 		 */
@@ -3641,7 +3619,6 @@ static int dgap_tty_write(struct tty_struct *tty, const unsigned char *buf,
 
 		memcpy_toio(vaddr, (u8 *) buf, remain);
 		head += remain;
-
 	}
 
 	if (count) {
@@ -4227,7 +4204,6 @@ static int dgap_tty_digisetcustombaud(struct channel_t *ch, struct board_t *bd,
 		return -EFAULT;
 
 	if (bd->bd_flags & BD_FEP5PLUS) {
-
 		spin_lock_irqsave(&bd->bd_lock, lock_flags);
 		spin_lock_irqsave(&ch->ch_lock, lock_flags2);
 
@@ -4319,7 +4295,6 @@ static void dgap_tty_throttle(struct tty_struct *tty)
 
 	spin_unlock_irqrestore(&ch->ch_lock, lock_flags2);
 	spin_unlock_irqrestore(&bd->bd_lock, lock_flags);
-
 }
 
 static void dgap_tty_unthrottle(struct tty_struct *tty)
@@ -4478,7 +4453,6 @@ static int dgap_tty_open(struct tty_struct *tty, struct file *file)
 	 * Initialize if neither terminal or printer is open.
 	 */
 	if (!((ch->ch_tun.un_flags | ch->ch_pun.un_flags) & UN_ISOPEN)) {
-
 		ch->ch_mforce = 0;
 		ch->ch_mval = 0;
 
@@ -4595,7 +4569,6 @@ static void dgap_tty_close(struct tty_struct *tty, struct file *file)
 	 */
 	if ((ch->ch_open_count == 0) &&
 	    !(ch->ch_digi.digi_flags & DIGI_PRINTER)) {
-
 		ch->ch_flags &= ~(CH_RXBLOCK);
 
 		spin_unlock_irqrestore(&ch->ch_lock, lock_flags);
@@ -4635,7 +4608,6 @@ static void dgap_tty_close(struct tty_struct *tty, struct file *file)
 		ch->pscan_state = 0;
 		ch->pscan_savechar = 0;
 		ch->ch_baud_info = 0;
-
 	}
 
 	/*
@@ -4814,9 +4786,7 @@ static int dgap_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
 	}
 
 	switch (cmd) {
-
 	/* Here are all the standard ioctl's that we MUST implement */
-
 	case TCSBRK:
 		/*
 		 * TCSBRK is SVID version: non-zero arg --> no break
@@ -5066,7 +5036,6 @@ static int dgap_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
 		}
 
 		switch (arg) {
-
 		case TCOON:
 			spin_unlock_irqrestore(&ch->ch_lock, lock_flags2);
 			spin_unlock_irqrestore(&bd->bd_lock, lock_flags);
@@ -5104,7 +5073,6 @@ static int dgap_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
 
 		/* set information for ditty */
 		if (cmd == (DIGI_SETAW)) {
-
 			spin_unlock_irqrestore(&ch->ch_lock, lock_flags2);
 			spin_unlock_irqrestore(&bd->bd_lock, lock_flags);
 			rc = dgap_wait_for_drain(tty);
@@ -5839,14 +5807,12 @@ static ssize_t dgap_tty_name_show(struct device *d,
 	cn = ch->ch_portnum;
 
 	for (cptr = bd->bd_config; cptr; cptr = cptr->next) {
-
 		if ((cptr->type == BNODE) &&
 		    ((cptr->u.board.type == APORT2_920P) ||
 		     (cptr->u.board.type == APORT4_920P) ||
 		     (cptr->u.board.type == APORT8_920P) ||
 		     (cptr->u.board.type == PAPORT4) ||
 		     (cptr->u.board.type == PAPORT8))) {
-
 			found = TRUE;
 			if (cptr->u.board.v_start)
 				starto = cptr->u.board.start;
@@ -5875,7 +5841,6 @@ static ssize_t dgap_tty_name_show(struct device *d,
 		}
 
 		if (cptr->type == CNODE) {
-
 			for (i = 0; i < cptr->u.conc.nport; i++) {
 				if (cn != (i + ncount))
 					continue;
@@ -5892,7 +5857,6 @@ static ssize_t dgap_tty_name_show(struct device *d,
 		}
 
 		if (cptr->type == MNODE) {
-
 			for (i = 0; i < cptr->u.module.nport; i++) {
 				if (cn != (i + ncount))
 					continue;
@@ -6082,7 +6046,6 @@ static void dgap_do_fep_load(struct board_t *brd, const u8 *ufep, int len)
 
 	writel(0xbfc01004, (addr + 0xc34));
 	writel(0x3, (addr + 0xc30));
-
 }
 
 /*
@@ -6157,7 +6120,6 @@ static void dgap_do_reset_board(struct board_t *brd)
 		if (check == FEPRST)
 			break;
 		udelay(10);
-
 	}
 	if (i > 1000) {
 		dev_warn(&brd->pdev->dev,
@@ -6254,7 +6216,6 @@ static void dgap_get_vpd(struct board_t *brd)
 	 * the first 2 bytes (header) should be 0x55, 0xAA
 	 */
 	if (byte1 == 0x55 && byte2 == 0xAA) {
-
 		base_offset = 0;
 
 		/*
@@ -6262,7 +6223,6 @@ static void dgap_get_vpd(struct board_t *brd)
 		 * for the VPD offset.
 		 */
 		while (base_offset <= EXPANSION_ROM_SIZE) {
-
 			/*
 			 * Lots of magic numbers here.
 			 *
@@ -6406,7 +6366,6 @@ static void dgap_create_tty_sysfs(struct un_t *un, struct device *c)
 		return;
 
 	dev_set_drvdata(c, un);
-
 }
 
 static void dgap_remove_tty_sysfs(struct device *c)
@@ -6442,7 +6401,6 @@ static int dgap_tty_register_ports(struct board_t *brd)
 
 	ch = brd->channels[0];
 	for (i = 0; i < brd->nasync; i++, ch = brd->channels[i]) {
-
 		struct device *classp;
 
 		classp = tty_port_register_device(&brd->serial_ports[i],
@@ -6546,7 +6504,6 @@ static int dgap_request_irq(struct board_t *brd)
 	 * Set up our interrupt handler if we are set to do interrupts.
 	 */
 	if (dgap_config_get_useintr(brd) && brd->irq) {
-
 		rc = request_irq(brd->irq, dgap_intr, IRQF_SHARED, "DGAP", brd);
 
 		if (!rc)
@@ -6770,7 +6727,6 @@ static int dgap_tty_init(struct board_t *brd)
 
 	/* Set up channel variables */
 	for (i = 0; i < brd->nasync; i++, ch = brd->channels[i], bs++) {
-
 		spin_lock_init(&ch->ch_lock);
 
 		/* Store all our magic numbers */
-- 
2.1.4


