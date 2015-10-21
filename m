X-GM-THRID: 6207871882034675712
X-Received: by 10.194.118.65 with SMTP id kk1mr2679388wjb.5.1445458706619;
        Wed, 21 Oct 2015 13:18:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.164.77 with SMTP id n74ls238518lfe.94.gmail; Wed, 21 Oct
 2015 13:18:25 -0700 (PDT)
X-Received: by 10.112.190.74 with SMTP id go10mr2693462lbc.9.1445458705933;
        Wed, 21 Oct 2015 13:18:25 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id m4si400615wib.0.2015.10.21.13.18.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 13:18:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id ll6so90987745wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 13:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=H29/d2rhbmmRihPtbsbHLSAkyAc1uXuA8/6JJ+W7H4w=;
        b=pTDwliqtp0d78jMmrF9eIr+9Bf+lE6wHiARh9Hq8kvNPGXjCxnWuZ41n2lGOWntSuB
         wJmDLyBibsypvj0w0YFlhu7+WtlJo2tTldNGyEl3788DQfSzbOoSPLJQBo2q8KbC858y
         +3K8/WMtNBONWu7CdaHrq01PA350gQJqw/RV0J/WoXAx/tBCISn5C9gjy7Hr3V2hCANb
         coyDcuSMiuBxByyvQsXoF3eY5sdW43kVoWAJrgtoP4O18qOHKFizAZTNkBXA2DLjCU+a
         3J+Z/l8AeZcGpOFHtQ8l8RmRcHy6YuMr9sR5MXe/l+nZKUE8egPakMXcL+YlCh7TAfF6
         /doQ==
X-Received: by 10.180.86.165 with SMTP id q5mr35742729wiz.52.1445458705831;
        Wed, 21 Oct 2015 13:18:25 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id m6sm8703173wif.11.2015.10.21.13.18.24
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Oct 2015 13:18:25 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2 4/5] staging: dgap: remove unnecessary brackets
Date: Wed, 21 Oct 2015 23:17:55 +0300
Message-Id: <2c296d49ace925f3ce49f6b1e9a2efbe18f7a8e0.1445458023.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1445458023.git.ciorneiioana@gmail.com>
References: <cover.1445458023.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1445458023.git.ciorneiioana@gmail.com>
References: <cover.1445458023.git.ciorneiioana@gmail.com>

This patch removes unnecessary brackets when dealing with
unary operators like '&'.
Done with coccinelle semantic patch:

@@
expression e;
@@

(
- &(e)
+ &e
)

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---

Changes in v2:
    - nothing

 drivers/staging/dgap/dgap.c | 190 ++++++++++++++++++++++----------------------
 1 file changed, 95 insertions(+), 95 deletions(-)

diff --git a/drivers/staging/dgap/dgap.c b/drivers/staging/dgap/dgap.c
index 3cda302..5fb4554 100644
--- a/drivers/staging/dgap/dgap.c
+++ b/drivers/staging/dgap/dgap.c
@@ -1509,15 +1509,15 @@ static void dgap_input(struct channel_t *ch)
 
 	rmask = ch->ch_rsize - 1;
 
-	head = readw(&(bs->rx_head));
+	head = readw(&bs->rx_head);
 	head &= rmask;
-	tail = readw(&(bs->rx_tail));
+	tail = readw(&bs->rx_tail);
 	tail &= rmask;
 
 	data_len = (head - tail) & rmask;
 
 	if (data_len == 0) {
-		writeb(1, &(bs->idata));
+		writeb(1, &bs->idata);
 		spin_unlock_irqrestore(&ch->ch_lock, lock_flags2);
 		spin_unlock_irqrestore(&bd->bd_lock, lock_flags);
 		return;
@@ -1532,8 +1532,8 @@ static void dgap_input(struct channel_t *ch)
 	    !(ch->ch_tun.un_flags & UN_ISOPEN) ||
 	    !(tp->termios.c_cflag & CREAD) ||
 	    (ch->ch_tun.un_flags & UN_CLOSING)) {
-		writew(head, &(bs->rx_tail));
-		writeb(1, &(bs->idata));
+		writew(head, &bs->rx_tail);
+		writeb(1, &bs->idata);
 		spin_unlock_irqrestore(&ch->ch_lock, lock_flags2);
 		spin_unlock_irqrestore(&bd->bd_lock, lock_flags);
 		return;
@@ -1543,7 +1543,7 @@ static void dgap_input(struct channel_t *ch)
 	 * If we are throttled, simply don't read any data.
 	 */
 	if (ch->ch_flags & CH_RXBLOCK) {
-		writeb(1, &(bs->idata));
+		writeb(1, &bs->idata);
 		spin_unlock_irqrestore(&ch->ch_lock, lock_flags2);
 		spin_unlock_irqrestore(&bd->bd_lock, lock_flags);
 		return;
@@ -1552,10 +1552,10 @@ static void dgap_input(struct channel_t *ch)
 	/*
 	 *      Ignore oruns.
 	 */
-	tmpchar = readb(&(bs->orun));
+	tmpchar = readb(&bs->orun);
 	if (tmpchar) {
 		ch->ch_err_overrun++;
-		writeb(0, &(bs->orun));
+		writeb(0, &bs->orun);
 	}
 
 	/* Decide how much data we can send into the tty layer */
@@ -1590,13 +1590,13 @@ static void dgap_input(struct channel_t *ch)
 		 * space to put the data right now.
 		 */
 		if (!ld->ops->receive_buf) {
-			writew(head, &(bs->rx_tail));
+			writew(head, &bs->rx_tail);
 			len = 0;
 		}
 	}
 
 	if (len <= 0) {
-		writeb(1, &(bs->idata));
+		writeb(1, &bs->idata);
 		spin_unlock_irqrestore(&ch->ch_lock, lock_flags2);
 		spin_unlock_irqrestore(&bd->bd_lock, lock_flags);
 		if (ld)
@@ -1629,8 +1629,8 @@ static void dgap_input(struct channel_t *ch)
 		tail &= rmask;
 	}
 
-	writew(tail, &(bs->rx_tail));
-	writeb(1, &(bs->idata));
+	writew(tail, &bs->rx_tail);
+	writeb(1, &bs->idata);
 	ch->ch_rxcount += len;
 
 	/*
@@ -1839,8 +1839,8 @@ static int dgap_event(struct board_t *bd)
 	eaddr = (struct ev_t __iomem *)(vaddr + EVBUF);
 
 	/* Get our head and tail */
-	head = readw(&(eaddr->ev_head));
-	tail = readw(&(eaddr->ev_tail));
+	head = readw(&eaddr->ev_head);
+	tail = readw(&eaddr->ev_tail);
 
 	/*
 	 * Forget it if pointers out of range.
@@ -1915,7 +1915,7 @@ static int dgap_event(struct board_t *bd)
 			if (ch->ch_flags & CH_RACTIVE)
 				ch->ch_flags |= CH_RENABLE;
 			else
-				writeb(1, &(bs->idata));
+				writeb(1, &bs->idata);
 
 			if (ch->ch_flags & CH_RWAIT) {
 				ch->ch_flags &= ~CH_RWAIT;
@@ -1982,7 +1982,7 @@ next:
 		tail = (tail + 4) & (EVMAX - EVSTART - 4);
 	}
 
-	writew(tail, &(eaddr->ev_tail));
+	writew(tail, &eaddr->ev_tail);
 	spin_unlock_irqrestore(&bd->bd_lock, lock_flags);
 
 	return 0;
@@ -2029,8 +2029,8 @@ static void dgap_poll_tasklet(unsigned long data)
 		eaddr = (struct ev_t __iomem *)(vaddr + EVBUF);
 
 		/* Get our head and tail */
-		head = readw(&(eaddr->ev_head));
-		tail = readw(&(eaddr->ev_tail));
+		head = readw(&eaddr->ev_head);
+		tail = readw(&eaddr->ev_tail);
 
 		/*
 		 * If there is an event pending. Go service it.
@@ -2369,7 +2369,7 @@ static void dgap_cmdb(struct channel_t *ch, u8 cmd, u8 byte1,
 		return;
 
 	cm_addr = (struct cm_t __iomem *)(vaddr + CMDBUF);
-	head = readw(&(cm_addr->cm_head));
+	head = readw(&cm_addr->cm_head);
 
 	/*
 	 * Forget it if pointers out of range.
@@ -2389,7 +2389,7 @@ static void dgap_cmdb(struct channel_t *ch, u8 cmd, u8 byte1,
 
 	head = (head + 4) & (CMDMAX - CMDSTART - 4);
 
-	writew(head, &(cm_addr->cm_head));
+	writew(head, &cm_addr->cm_head);
 
 	/*
 	 * Wait if necessary before updating the head
@@ -2398,8 +2398,8 @@ static void dgap_cmdb(struct channel_t *ch, u8 cmd, u8 byte1,
 	 * is outlandish, declare the FEP dead.
 	 */
 	for (count = dgap_count ;;) {
-		head = readw(&(cm_addr->cm_head));
-		tail = readw(&(cm_addr->cm_tail));
+		head = readw(&cm_addr->cm_head);
+		tail = readw(&cm_addr->cm_tail);
 
 		n = (head - tail) & (CMDMAX - CMDSTART - 4);
 
@@ -2452,7 +2452,7 @@ static void dgap_cmdw(struct channel_t *ch, u8 cmd, u16 word, uint ncmds)
 		return;
 
 	cm_addr = (struct cm_t __iomem *)(vaddr + CMDBUF);
-	head = readw(&(cm_addr->cm_head));
+	head = readw(&cm_addr->cm_head);
 
 	/*
 	 * Forget it if pointers out of range.
@@ -2471,7 +2471,7 @@ static void dgap_cmdw(struct channel_t *ch, u8 cmd, u16 word, uint ncmds)
 
 	head = (head + 4) & (CMDMAX - CMDSTART - 4);
 
-	writew(head, &(cm_addr->cm_head));
+	writew(head, &cm_addr->cm_head);
 
 	/*
 	 * Wait if necessary before updating the head
@@ -2480,8 +2480,8 @@ static void dgap_cmdw(struct channel_t *ch, u8 cmd, u16 word, uint ncmds)
 	 * is outlandish, declare the FEP dead.
 	 */
 	for (count = dgap_count ;;) {
-		head = readw(&(cm_addr->cm_head));
-		tail = readw(&(cm_addr->cm_tail));
+		head = readw(&cm_addr->cm_head);
+		tail = readw(&cm_addr->cm_tail);
 
 		n = (head - tail) & (CMDMAX - CMDSTART - 4);
 
@@ -2534,7 +2534,7 @@ static void dgap_cmdw_ext(struct channel_t *ch, u16 cmd, u16 word, uint ncmds)
 		return;
 
 	cm_addr = (struct cm_t __iomem *)(vaddr + CMDBUF);
-	head = readw(&(cm_addr->cm_head));
+	head = readw(&cm_addr->cm_head);
 
 	/*
 	 * Forget it if pointers out of range.
@@ -2565,7 +2565,7 @@ static void dgap_cmdw_ext(struct channel_t *ch, u16 cmd, u16 word, uint ncmds)
 
 	head = (head + 8) & (CMDMAX - CMDSTART - 4);
 
-	writew(head, &(cm_addr->cm_head));
+	writew(head, &cm_addr->cm_head);
 
 	/*
 	 * Wait if necessary before updating the head
@@ -2574,8 +2574,8 @@ static void dgap_cmdw_ext(struct channel_t *ch, u16 cmd, u16 word, uint ncmds)
 	 * is outlandish, declare the FEP dead.
 	 */
 	for (count = dgap_count ;;) {
-		head = readw(&(cm_addr->cm_head));
-		tail = readw(&(cm_addr->cm_tail));
+		head = readw(&cm_addr->cm_head);
+		tail = readw(&cm_addr->cm_tail);
 
 		n = (head - tail) & (CMDMAX - CMDSTART - 4);
 
@@ -2613,7 +2613,7 @@ static void dgap_wmove(struct channel_t *ch, char *buf, uint cnt)
 	 * Check parameters.
 	 */
 	bs   = ch->ch_bs;
-	head = readw(&(bs->tx_head));
+	head = readw(&bs->tx_head);
 
 	/*
 	 * If pointers are out of range, just return.
@@ -2645,7 +2645,7 @@ static void dgap_wmove(struct channel_t *ch, char *buf, uint cnt)
 	memcpy_toio(taddr, buf, n);
 	head += cnt;
 
-	writew(head, &(bs->tx_head));
+	writew(head, &bs->tx_head);
 }
 
 /*
@@ -2694,12 +2694,12 @@ static int dgap_param(struct channel_t *ch, struct board_t *bd, u32 un_type)
 	 */
 	if ((ch->ch_c_cflag & (CBAUD)) == 0) {
 		/* flush rx */
-		head = readw(&(ch->ch_bs->rx_head));
-		writew(head, &(ch->ch_bs->rx_tail));
+		head = readw(&ch->ch_bs->rx_head);
+		writew(head, &ch->ch_bs->rx_tail);
 
 		/* flush tx */
-		head = readw(&(ch->ch_bs->tx_head));
-		writew(head, &(ch->ch_bs->tx_tail));
+		head = readw(&ch->ch_bs->tx_head);
+		writew(head, &ch->ch_bs->tx_tail);
 
 		ch->ch_flags |= (CH_BAUD0);
 
@@ -2965,7 +2965,7 @@ static int dgap_param(struct channel_t *ch, struct board_t *bd, u32 un_type)
 	/*
 	 * Read modem signals, and then call carrier function.
 	 */
-	ch->ch_mistat = readb(&(ch->ch_bs->m_stat));
+	ch->ch_mistat = readb(&ch->ch_bs->m_stat);
 	dgap_carrier(ch);
 
 	/*
@@ -3157,7 +3157,7 @@ static void dgap_tty_flush_buffer(struct tty_struct *tty)
 	spin_lock_irqsave(&ch->ch_lock, lock_flags2);
 
 	ch->ch_flags &= ~CH_STOP;
-	head = readw(&(ch->ch_bs->tx_head));
+	head = readw(&ch->ch_bs->tx_head);
 	dgap_cmdw(ch, FLUSHTX, (u16)head, 0);
 	dgap_cmdw(ch, RESUMETX, 0, 0);
 	if (ch->ch_tun.un_flags & (UN_LOW|UN_EMPTY)) {
@@ -3251,15 +3251,15 @@ static int dgap_tty_chars_in_buffer(struct tty_struct *tty)
 	tmask = (ch->ch_tsize - 1);
 
 	/* Get Transmit queue pointers */
-	thead = readw(&(bs->tx_head)) & tmask;
-	ttail = readw(&(bs->tx_tail)) & tmask;
+	thead = readw(&bs->tx_head) & tmask;
+	ttail = readw(&bs->tx_tail) & tmask;
 
 	/* Get tbusy flag */
-	tbusy = readb(&(bs->tbusy));
+	tbusy = readb(&bs->tbusy);
 
 	/* Get Command queue pointers */
-	chead = readw(&(ch->ch_cm->cm_head));
-	ctail = readw(&(ch->ch_cm->cm_tail));
+	chead = readw(&ch->ch_cm->cm_head);
+	ctail = readw(&ch->ch_cm->cm_tail);
 
 	spin_unlock_irqrestore(&ch->ch_lock, lock_flags2);
 	spin_unlock_irqrestore(&bd->bd_lock, lock_flags);
@@ -3295,7 +3295,7 @@ static int dgap_tty_chars_in_buffer(struct tty_struct *tty)
 			if (tbusy != 0) {
 				spin_lock_irqsave(&ch->ch_lock, lock_flags);
 				un->un_flags |= UN_EMPTY;
-				writeb(1, &(bs->iempty));
+				writeb(1, &bs->iempty);
 				spin_unlock_irqrestore(&ch->ch_lock,
 						       lock_flags);
 			}
@@ -3340,7 +3340,7 @@ static int dgap_wait_for_drain(struct tty_struct *tty)
 		/* Set flag waiting for drain */
 		spin_lock_irqsave(&ch->ch_lock, lock_flags);
 		un->un_flags |= UN_EMPTY;
-		writeb(1, &(bs->iempty));
+		writeb(1, &bs->iempty);
 		spin_unlock_irqrestore(&ch->ch_lock, lock_flags);
 
 		/* Go to sleep till we get woken up */
@@ -3419,13 +3419,13 @@ static inline void dgap_set_firmware_event(struct un_t *un, unsigned int event)
 	if ((event & UN_LOW) != 0) {
 		if ((un->un_flags & UN_LOW) == 0) {
 			un->un_flags |= UN_LOW;
-			writeb(1, &(bs->ilow));
+			writeb(1, &bs->ilow);
 		}
 	}
 	if ((event & UN_LOW) != 0) {
 		if ((un->un_flags & UN_EMPTY) == 0) {
 			un->un_flags |= UN_EMPTY;
-			writeb(1, &(bs->iempty));
+			writeb(1, &bs->iempty);
 		}
 	}
 }
@@ -3462,8 +3462,8 @@ static int dgap_tty_write_room(struct tty_struct *tty)
 	spin_lock_irqsave(&ch->ch_lock, lock_flags);
 
 	tmask = ch->ch_tsize - 1;
-	head = readw(&(bs->tx_head)) & tmask;
-	tail = readw(&(bs->tx_tail)) & tmask;
+	head = readw(&bs->tx_head) & tmask;
+	tail = readw(&bs->tx_tail) & tmask;
 
 	ret = tail - head - 1;
 	if (ret < 0)
@@ -3575,7 +3575,7 @@ static int dgap_tty_write(struct tty_struct *tty, const unsigned char *buf,
 	if ((un->un_type == DGAP_PRINT) && !(ch->ch_flags & CH_PRON)) {
 		dgap_wmove(ch, ch->ch_digi.digi_onstr,
 			   (int)ch->ch_digi.digi_onlen);
-		head = readw(&(bs->tx_head)) & tmask;
+		head = readw(&bs->tx_head) & tmask;
 		ch->ch_flags |= CH_PRON;
 	}
 
@@ -3586,7 +3586,7 @@ static int dgap_tty_write(struct tty_struct *tty, const unsigned char *buf,
 	if ((un->un_type != DGAP_PRINT) && (ch->ch_flags & CH_PRON)) {
 		dgap_wmove(ch, ch->ch_digi.digi_offstr,
 			   (int)ch->ch_digi.digi_offlen);
-		head = readw(&(bs->tx_head)) & tmask;
+		head = readw(&bs->tx_head) & tmask;
 		ch->ch_flags &= ~CH_PRON;
 	}
 
@@ -3623,7 +3623,7 @@ static int dgap_tty_write(struct tty_struct *tty, const unsigned char *buf,
 	if (count) {
 		ch->ch_txcount += count;
 		head &= tmask;
-		writew(head, &(bs->tx_head));
+		writew(head, &bs->tx_head);
 	}
 
 	dgap_set_firmware_event(un, UN_LOW | UN_EMPTY);
@@ -3636,15 +3636,15 @@ static int dgap_tty_write(struct tty_struct *tty, const unsigned char *buf,
 	 * Otherwise turn it off right now.
 	 */
 	if ((un->un_type == DGAP_PRINT) && (ch->ch_flags & CH_PRON)) {
-		tail = readw(&(bs->tx_tail)) & tmask;
+		tail = readw(&bs->tx_tail) & tmask;
 
 		if (tail != head) {
 			un->un_flags |= UN_EMPTY;
-			writeb(1, &(bs->iempty));
+			writeb(1, &bs->iempty);
 		} else {
 			dgap_wmove(ch, ch->ch_digi.digi_offstr,
 				   (int)ch->ch_digi.digi_offlen);
-			head = readw(&(bs->tx_head)) & tmask;
+			head = readw(&bs->tx_head) & tmask;
 			ch->ch_flags &= ~CH_PRON;
 		}
 	}
@@ -3700,7 +3700,7 @@ static int dgap_tty_tiocmget(struct tty_struct *tty)
 
 	spin_lock_irqsave(&ch->ch_lock, lock_flags);
 
-	mstat = readb(&(ch->ch_bs->m_stat));
+	mstat = readb(&ch->ch_bs->m_stat);
 	/* Append any outbound signals that might be pending... */
 	mstat |= ch->ch_mostat;
 
@@ -3911,7 +3911,7 @@ static int dgap_get_modem_info(struct channel_t *ch, unsigned int __user *value)
 
 	spin_lock_irqsave(&ch->ch_lock, lock_flags);
 
-	mstat = readb(&(ch->ch_bs->m_stat));
+	mstat = readb(&ch->ch_bs->m_stat);
 	/* Append any outbound signals that might be pending... */
 	mstat |= ch->ch_mostat;
 
@@ -4123,7 +4123,7 @@ static int dgap_tty_digigetedelay(struct tty_struct *tty, int __user *retinfo)
 	memset(&tmp, 0, sizeof(tmp));
 
 	spin_lock_irqsave(&ch->ch_lock, lock_flags);
-	tmp = readw(&(ch->ch_bs->edelay));
+	tmp = readw(&ch->ch_bs->edelay);
 	spin_unlock_irqrestore(&ch->ch_lock, lock_flags);
 
 	if (copy_to_user(retinfo, &tmp, sizeof(*retinfo)))
@@ -4458,8 +4458,8 @@ static int dgap_tty_open(struct tty_struct *tty, struct file *file)
 		/*
 		 * Flush input queue.
 		 */
-		head = readw(&(bs->rx_head));
-		writew(head, &(bs->rx_tail));
+		head = readw(&bs->rx_head);
+		writew(head, &bs->rx_tail);
 
 		ch->ch_flags = 0;
 		ch->pscan_state = 0;
@@ -4943,9 +4943,9 @@ static int dgap_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
 
 		if ((arg == TCIFLUSH) || (arg == TCIOFLUSH)) {
 			if (!(un->un_type == DGAP_PRINT)) {
-				head = readw(&(ch->ch_bs->rx_head));
-				writew(head, &(ch->ch_bs->rx_tail));
-				writeb(0, &(ch->ch_bs->orun));
+				head = readw(&ch->ch_bs->rx_head);
+				writew(head, &ch->ch_bs->rx_tail);
+				writeb(0, &ch->ch_bs->orun);
 			}
 		}
 
@@ -4958,7 +4958,7 @@ static int dgap_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
 		}
 
 		ch->ch_flags &= ~CH_STOP;
-		head = readw(&(ch->ch_bs->tx_head));
+		head = readw(&ch->ch_bs->tx_head);
 		dgap_cmdw(ch, FLUSHTX, (u16)head, 0);
 		dgap_cmdw(ch, RESUMETX, 0, 0);
 		if (ch->ch_tun.un_flags & (UN_LOW|UN_EMPTY)) {
@@ -4994,8 +4994,8 @@ static int dgap_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
 		if (cmd == TCSETSF) {
 			/* flush rx */
 			ch->ch_flags &= ~CH_STOP;
-			head = readw(&(ch->ch_bs->rx_head));
-			writew(head, &(ch->ch_bs->rx_tail));
+			head = readw(&ch->ch_bs->rx_head);
+			writew(head, &ch->ch_bs->rx_tail);
 		}
 
 		/* now wait for all the output to drain */
@@ -5899,31 +5899,31 @@ static struct attribute *dgap_sysfs_tty_entries[] = {
 static void dgap_create_ports_sysfiles(struct board_t *bd)
 {
 	dev_set_drvdata(&bd->pdev->dev, bd);
-	device_create_file(&(bd->pdev->dev), &dev_attr_ports_state);
-	device_create_file(&(bd->pdev->dev), &dev_attr_ports_baud);
-	device_create_file(&(bd->pdev->dev), &dev_attr_ports_msignals);
-	device_create_file(&(bd->pdev->dev), &dev_attr_ports_iflag);
-	device_create_file(&(bd->pdev->dev), &dev_attr_ports_cflag);
-	device_create_file(&(bd->pdev->dev), &dev_attr_ports_oflag);
-	device_create_file(&(bd->pdev->dev), &dev_attr_ports_lflag);
-	device_create_file(&(bd->pdev->dev), &dev_attr_ports_digi_flag);
-	device_create_file(&(bd->pdev->dev), &dev_attr_ports_rxcount);
-	device_create_file(&(bd->pdev->dev), &dev_attr_ports_txcount);
+	device_create_file(&bd->pdev->dev, &dev_attr_ports_state);
+	device_create_file(&bd->pdev->dev, &dev_attr_ports_baud);
+	device_create_file(&bd->pdev->dev, &dev_attr_ports_msignals);
+	device_create_file(&bd->pdev->dev, &dev_attr_ports_iflag);
+	device_create_file(&bd->pdev->dev, &dev_attr_ports_cflag);
+	device_create_file(&bd->pdev->dev, &dev_attr_ports_oflag);
+	device_create_file(&bd->pdev->dev, &dev_attr_ports_lflag);
+	device_create_file(&bd->pdev->dev, &dev_attr_ports_digi_flag);
+	device_create_file(&bd->pdev->dev, &dev_attr_ports_rxcount);
+	device_create_file(&bd->pdev->dev, &dev_attr_ports_txcount);
 }
 
 /* removes all the sys files created for that port */
 static void dgap_remove_ports_sysfiles(struct board_t *bd)
 {
-	device_remove_file(&(bd->pdev->dev), &dev_attr_ports_state);
-	device_remove_file(&(bd->pdev->dev), &dev_attr_ports_baud);
-	device_remove_file(&(bd->pdev->dev), &dev_attr_ports_msignals);
-	device_remove_file(&(bd->pdev->dev), &dev_attr_ports_iflag);
-	device_remove_file(&(bd->pdev->dev), &dev_attr_ports_cflag);
-	device_remove_file(&(bd->pdev->dev), &dev_attr_ports_oflag);
-	device_remove_file(&(bd->pdev->dev), &dev_attr_ports_lflag);
-	device_remove_file(&(bd->pdev->dev), &dev_attr_ports_digi_flag);
-	device_remove_file(&(bd->pdev->dev), &dev_attr_ports_rxcount);
-	device_remove_file(&(bd->pdev->dev), &dev_attr_ports_txcount);
+	device_remove_file(&bd->pdev->dev, &dev_attr_ports_state);
+	device_remove_file(&bd->pdev->dev, &dev_attr_ports_baud);
+	device_remove_file(&bd->pdev->dev, &dev_attr_ports_msignals);
+	device_remove_file(&bd->pdev->dev, &dev_attr_ports_iflag);
+	device_remove_file(&bd->pdev->dev, &dev_attr_ports_cflag);
+	device_remove_file(&bd->pdev->dev, &dev_attr_ports_oflag);
+	device_remove_file(&bd->pdev->dev, &dev_attr_ports_lflag);
+	device_remove_file(&bd->pdev->dev, &dev_attr_ports_digi_flag);
+	device_remove_file(&bd->pdev->dev, &dev_attr_ports_rxcount);
+	device_remove_file(&bd->pdev->dev, &dev_attr_ports_txcount);
 }
 
 /*
@@ -6759,12 +6759,12 @@ static int dgap_tty_init(struct board_t *brd)
 			ch->ch_dsr	= DM_DSR;
 		}
 
-		ch->ch_taddr = vaddr + (ioread16(&(ch->ch_bs->tx_seg)) << 4);
-		ch->ch_raddr = vaddr + (ioread16(&(ch->ch_bs->rx_seg)) << 4);
+		ch->ch_taddr = vaddr + (ioread16(&ch->ch_bs->tx_seg) << 4);
+		ch->ch_raddr = vaddr + (ioread16(&ch->ch_bs->rx_seg) << 4);
 		ch->ch_tx_win = 0;
 		ch->ch_rx_win = 0;
-		ch->ch_tsize = readw(&(ch->ch_bs->tx_max)) + 1;
-		ch->ch_rsize = readw(&(ch->ch_bs->rx_max)) + 1;
+		ch->ch_tsize = readw(&ch->ch_bs->tx_max) + 1;
+		ch->ch_rsize = readw(&ch->ch_bs->rx_max) + 1;
 		ch->ch_tstart = 0;
 		ch->ch_rstart = 0;
 
@@ -6782,7 +6782,7 @@ static int dgap_tty_init(struct board_t *brd)
 
 		dgap_cmdw(ch, SRHIGH, 7 * ch->ch_rsize / 8, 0);
 
-		ch->ch_mistat = readb(&(ch->ch_bs->m_stat));
+		ch->ch_mistat = readb(&ch->ch_bs->m_stat);
 
 		init_waitqueue_head(&ch->ch_flags_wait);
 		init_waitqueue_head(&ch->ch_tun.un_flags_wait);
@@ -6790,18 +6790,18 @@ static int dgap_tty_init(struct board_t *brd)
 
 		/* Turn on all modem interrupts for now */
 		modem = (DM_CD | DM_DSR | DM_CTS | DM_RI);
-		writeb(modem, &(ch->ch_bs->m_int));
+		writeb(modem, &ch->ch_bs->m_int);
 
 		/*
 		 * Set edelay to 0 if interrupts are turned on,
 		 * otherwise set edelay to the usual 100.
 		 */
 		if (brd->intr_used)
-			writew(0, &(ch->ch_bs->edelay));
+			writew(0, &ch->ch_bs->edelay);
 		else
-			writew(100, &(ch->ch_bs->edelay));
+			writew(100, &ch->ch_bs->edelay);
 
-		writeb(1, &(ch->ch_bs->idata));
+		writeb(1, &ch->ch_bs->idata);
 	}
 
 	return 0;
-- 
2.1.4


