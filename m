X-GM-THRID: 6201100270514995200
X-Received: by 10.112.151.9 with SMTP id um9mr2812452lbb.19.1443806167333;
        Fri, 02 Oct 2015 10:16:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.24.79 with SMTP id o76ls236706lfi.48.gmail; Fri, 02 Oct
 2015 10:16:06 -0700 (PDT)
X-Received: by 10.112.55.69 with SMTP id q5mr2794769lbp.24.1443806166168;
        Fri, 02 Oct 2015 10:16:06 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id xl3si94779wib.1.2015.10.02.10.16.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 10:16:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id lk2so43051486wic.0
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 10:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=0YnhXUSB/rBbu2o1K1q2xlIXYLaiGwl52XZ7VvngTYk=;
        b=mtGwY/VyqMQEb8nPzsgt/1k12359qaIME8QamtGLJX15rzeW38oux99XBHOzhfjdHj
         2XWEw5+m7Kfxwopmb4JaeSwVdV+7B5F2cC6iBzaEmATt/gtssxAXw0CvbIXzydDjhti7
         TFfxa4Kp6jOS1R7f1+BpONUbTty/ynejXwO5U+qEM9nSEYZGAJl11QBbof2lovWTvEtd
         KbqBCo4W+IF41i3w3FBE+NetEfyI1xty5muomGr1jdVSBUemOmZXdZFKpBHf7D0aW2lD
         lnXCn2xi2zT/h7UrkMxHvht8s+MMzpRxjncJUMn+sLRTphIeknALMt/k8T0wX2HW/t6L
         BG5A==
X-Received: by 10.180.240.170 with SMTP id wb10mr3666wic.91.1443806165994;
        Fri, 02 Oct 2015 10:16:05 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([141.85.225.214])
        by smtp.gmail.com with ESMTPSA id mx19sm862wic.0.2015.10.02.10.16.04
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 10:16:05 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging: dgnc: Fix line over 80 characters warning
Date: Fri,  2 Oct 2015 20:15:55 +0300
Message-Id: <1443806155-49457-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix 'line over 80 characters' checkpatch warning

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/dgnc/dgnc_tty.c | 186 +++++++++++++++++++++++++++-------------
 1 file changed, 128 insertions(+), 58 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index fbfe79a..8a6f9e2 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -84,10 +84,14 @@ static struct ktermios DgncDefaultTermios = {
 /* Our function prototypes */
 static int dgnc_tty_open(struct tty_struct *tty, struct file *file);
 static void dgnc_tty_close(struct tty_struct *tty, struct file *file);
-static int dgnc_block_til_ready(struct tty_struct *tty, struct file *file, struct channel_t *ch);
-static int dgnc_tty_ioctl(struct tty_struct *tty, unsigned int cmd, unsigned long arg);
-static int dgnc_tty_digigeta(struct tty_struct *tty, struct digi_t __user *retinfo);
-static int dgnc_tty_digiseta(struct tty_struct *tty, struct digi_t __user *new_info);
+static int dgnc_block_til_ready(struct tty_struct *tty, struct file *file,
+				struct channel_t *ch);
+static int dgnc_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
+			  unsigned long arg);
+static int dgnc_tty_digigeta(struct tty_struct *tty,
+			     struct digi_t __user *retinfo);
+static int dgnc_tty_digiseta(struct tty_struct *tty,
+			     struct digi_t __user *new_info);
 static int dgnc_tty_write_room(struct tty_struct *tty);
 static int dgnc_tty_put_char(struct tty_struct *tty, unsigned char c);
 static int dgnc_tty_chars_in_buffer(struct tty_struct *tty);
@@ -98,14 +102,19 @@ static void dgnc_tty_unthrottle(struct tty_struct *tty);
 static void dgnc_tty_flush_chars(struct tty_struct *tty);
 static void dgnc_tty_flush_buffer(struct tty_struct *tty);
 static void dgnc_tty_hangup(struct tty_struct *tty);
-static int dgnc_set_modem_info(struct tty_struct *tty, unsigned int command, unsigned int __user *value);
-static int dgnc_get_modem_info(struct channel_t *ch, unsigned int __user *value);
+static int dgnc_set_modem_info(struct tty_struct *tty, unsigned int command,
+			       unsigned int __user *value);
+static int dgnc_get_modem_info(struct channel_t *ch,
+			       unsigned int __user *value);
 static int dgnc_tty_tiocmget(struct tty_struct *tty);
-static int dgnc_tty_tiocmset(struct tty_struct *tty, unsigned int set, unsigned int clear);
+static int dgnc_tty_tiocmset(struct tty_struct *tty, unsigned int set,
+			     unsigned int clear);
 static int dgnc_tty_send_break(struct tty_struct *tty, int msec);
 static void dgnc_tty_wait_until_sent(struct tty_struct *tty, int timeout);
-static int dgnc_tty_write(struct tty_struct *tty, const unsigned char *buf, int count);
-static void dgnc_tty_set_termios(struct tty_struct *tty, struct ktermios *old_termios);
+static int dgnc_tty_write(struct tty_struct *tty, const unsigned char *buf,
+			  int count);
+static void dgnc_tty_set_termios(struct tty_struct *tty,
+				 struct ktermios *old_termios);
 static void dgnc_tty_send_xchar(struct tty_struct *tty, char ch);
 
 
@@ -186,18 +195,24 @@ int dgnc_tty_register(struct dgnc_board *brd)
 	brd->SerialDriver.subtype = SERIAL_TYPE_NORMAL;
 	brd->SerialDriver.init_termios = DgncDefaultTermios;
 	brd->SerialDriver.driver_name = DRVSTR;
-	brd->SerialDriver.flags = (TTY_DRIVER_REAL_RAW | TTY_DRIVER_DYNAMIC_DEV | TTY_DRIVER_HARDWARE_BREAK);
+	brd->SerialDriver.flags = (TTY_DRIVER_REAL_RAW |
+				   TTY_DRIVER_DYNAMIC_DEV |
+				   TTY_DRIVER_HARDWARE_BREAK);
 
 	/*
 	 * The kernel wants space to store pointers to
 	 * tty_struct's and termios's.
 	 */
-	brd->SerialDriver.ttys = kcalloc(brd->maxports, sizeof(*brd->SerialDriver.ttys), GFP_KERNEL);
+	brd->SerialDriver.ttys = kcalloc(brd->maxports,
+					 sizeof(*brd->SerialDriver.ttys),
+					 GFP_KERNEL);
 	if (!brd->SerialDriver.ttys)
 		return -ENOMEM;
 
 	kref_init(&brd->SerialDriver.kref);
-	brd->SerialDriver.termios = kcalloc(brd->maxports, sizeof(*brd->SerialDriver.termios), GFP_KERNEL);
+	brd->SerialDriver.termios = kcalloc(brd->maxports,
+					    sizeof(*brd->SerialDriver.termios),
+					    GFP_KERNEL);
 	if (!brd->SerialDriver.termios)
 		return -ENOMEM;
 
@@ -235,18 +250,24 @@ int dgnc_tty_register(struct dgnc_board *brd)
 	brd->PrintDriver.subtype = SERIAL_TYPE_NORMAL;
 	brd->PrintDriver.init_termios = DgncDefaultTermios;
 	brd->PrintDriver.driver_name = DRVSTR;
-	brd->PrintDriver.flags = (TTY_DRIVER_REAL_RAW | TTY_DRIVER_DYNAMIC_DEV | TTY_DRIVER_HARDWARE_BREAK);
+	brd->PrintDriver.flags = (TTY_DRIVER_REAL_RAW |
+				  TTY_DRIVER_DYNAMIC_DEV |
+				  TTY_DRIVER_HARDWARE_BREAK);
 
 	/*
 	 * The kernel wants space to store pointers to
 	 * tty_struct's and termios's.  Must be separated from
 	 * the Serial Driver so we don't get confused
 	 */
-	brd->PrintDriver.ttys = kcalloc(brd->maxports, sizeof(*brd->PrintDriver.ttys), GFP_KERNEL);
+	brd->PrintDriver.ttys = kcalloc(brd->maxports,
+					sizeof(*brd->PrintDriver.ttys),
+					GFP_KERNEL);
 	if (!brd->PrintDriver.ttys)
 		return -ENOMEM;
 	kref_init(&brd->PrintDriver.kref);
-	brd->PrintDriver.termios = kcalloc(brd->maxports, sizeof(*brd->PrintDriver.termios), GFP_KERNEL);
+	brd->PrintDriver.termios = kcalloc(brd->maxports,
+					   sizeof(*brd->PrintDriver.termios),
+					   GFP_KERNEL);
 	if (!brd->PrintDriver.termios)
 		return -ENOMEM;
 
@@ -529,8 +550,10 @@ void dgnc_input(struct channel_t *ch)
 	 * If the device is not open, or CREAD is off,
 	 * flush input data and return immediately.
 	 */
-	if (!tp || (tp->magic != TTY_MAGIC) || !(ch->ch_tun.un_flags & UN_ISOPEN) ||
-	    !(tp->termios.c_cflag & CREAD) || (ch->ch_tun.un_flags & UN_CLOSING)) {
+	if (!tp || (tp->magic != TTY_MAGIC) ||
+	    !(ch->ch_tun.un_flags & UN_ISOPEN) ||
+	    !(tp->termios.c_cflag & CREAD) ||
+	    (ch->ch_tun.un_flags & UN_CLOSING)) {
 
 		ch->ch_r_head = tail;
 
@@ -614,16 +637,28 @@ void dgnc_input(struct channel_t *ch)
 		if (I_PARMRK(tp) || I_BRKINT(tp) || I_INPCK(tp)) {
 			for (i = 0; i < s; i++) {
 				if (*(ch->ch_equeue + tail + i) & UART_LSR_BI)
-					tty_insert_flip_char(tp->port, *(ch->ch_rqueue + tail + i), TTY_BREAK);
-				else if (*(ch->ch_equeue + tail + i) & UART_LSR_PE)
-					tty_insert_flip_char(tp->port, *(ch->ch_rqueue + tail + i), TTY_PARITY);
-				else if (*(ch->ch_equeue + tail + i) & UART_LSR_FE)
-					tty_insert_flip_char(tp->port, *(ch->ch_rqueue + tail + i), TTY_FRAME);
+					tty_insert_flip_char(tp->port,
+						*(ch->ch_rqueue + tail + i),
+						TTY_BREAK);
+				else if (*(ch->ch_equeue + tail + i) &
+						UART_LSR_PE)
+					tty_insert_flip_char(tp->port,
+						*(ch->ch_rqueue + tail + i),
+						TTY_PARITY);
+				else if (*(ch->ch_equeue + tail + i) &
+						UART_LSR_FE)
+					tty_insert_flip_char(tp->port,
+						*(ch->ch_rqueue + tail + i),
+						TTY_FRAME);
 				else
-					tty_insert_flip_char(tp->port, *(ch->ch_rqueue + tail + i), TTY_NORMAL);
+					tty_insert_flip_char(tp->port,
+						*(ch->ch_rqueue + tail + i),
+						TTY_NORMAL);
 			}
 		} else {
-			tty_insert_flip_string(tp->port, ch->ch_rqueue + tail, s);
+			tty_insert_flip_string(tp->port,
+					       ch->ch_rqueue + tail,
+					       s);
 		}
 
 		tail += s;
@@ -801,8 +836,8 @@ static void dgnc_set_custom_speed(struct channel_t *ch, uint newrate)
 		 */
 		if (testrate_high != newrate) {
 			/*
-			 *  Otherwise, pick the rate that is closer (i.e. whichever rate
-			 *  has a smaller delta).
+			 *  Otherwise, pick the rate that is closer
+			 *  (i.e. whichever rate has a smaller delta).
 			 */
 			deltahigh = testrate_high - newrate;
 			deltalow = newrate - testrate_low;
@@ -844,7 +879,8 @@ void dgnc_check_queue_flow_control(struct channel_t *ch)
 	 */
 	if (qleft < 256) {
 		/* HWFLOW */
-		if (ch->ch_digi.digi_flags & CTSPACE || ch->ch_c_cflag & CRTSCTS) {
+		if (ch->ch_digi.digi_flags & CTSPACE ||
+		    ch->ch_c_cflag & CRTSCTS) {
 			if (!(ch->ch_flags & CH_RECEIVER_OFF)) {
 				ch->ch_bd->bd_ops->disable_receiver(ch);
 				ch->ch_flags |= (CH_RECEIVER_OFF);
@@ -876,7 +912,8 @@ void dgnc_check_queue_flow_control(struct channel_t *ch)
 	 */
 	if (qleft > (RQUEUESIZE / 2)) {
 		/* HWFLOW */
-		if (ch->ch_digi.digi_flags & RTSPACE || ch->ch_c_cflag & CRTSCTS) {
+		if (ch->ch_digi.digi_flags & RTSPACE ||
+		    ch->ch_c_cflag & CRTSCTS) {
 			if (ch->ch_flags & CH_RECEIVER_OFF) {
 				ch->ch_bd->bd_ops->enable_receiver(ch);
 				ch->ch_flags &= ~(CH_RECEIVER_OFF);
@@ -928,7 +965,8 @@ void dgnc_wakeup_writes(struct channel_t *ch)
 		 * the queue AND FIFO are both empty.
 		 */
 		if (ch->ch_tun.un_flags & UN_EMPTY) {
-			if ((qlen == 0) && (ch->ch_bd->bd_ops->get_uart_bytes_left(ch) == 0)) {
+			if ((qlen == 0) &&
+			   (ch->ch_bd->bd_ops->get_uart_bytes_left(ch) == 0)) {
 				ch->ch_tun.un_flags &= ~(UN_EMPTY);
 
 				/*
@@ -969,7 +1007,8 @@ void dgnc_wakeup_writes(struct channel_t *ch)
 		 * the queue AND FIFO are both empty.
 		 */
 		if (ch->ch_pun.un_flags & UN_EMPTY) {
-			if ((qlen == 0) && (ch->ch_bd->bd_ops->get_uart_bytes_left(ch) == 0))
+			if ((qlen == 0) &&
+			    (ch->ch_bd->bd_ops->get_uart_bytes_left(ch) == 0))
 				ch->ch_pun.un_flags &= ~(UN_EMPTY);
 		}
 
@@ -1063,7 +1102,8 @@ static int dgnc_tty_open(struct tty_struct *tty, struct file *file)
 	 */
 	spin_unlock_irqrestore(&ch->ch_lock, flags);
 
-	rc = wait_event_interruptible(ch->ch_flags_wait, ((ch->ch_flags & CH_OPENING) == 0));
+	rc = wait_event_interruptible(ch->ch_flags_wait,
+				      ((ch->ch_flags & CH_OPENING) == 0));
 
 	/* If ret is non-zero, user ctrl-c'ed us */
 	if (rc)
@@ -1077,7 +1117,8 @@ static int dgnc_tty_open(struct tty_struct *tty, struct file *file)
 	 * ch_flags_wait to wake us back up.
 	 */
 	rc = wait_event_interruptible(ch->ch_flags_wait,
-		(((ch->ch_tun.un_flags | ch->ch_pun.un_flags) & UN_CLOSING) == 0));
+		(((ch->ch_tun.un_flags | ch->ch_pun.un_flags) &
+		  UN_CLOSING) == 0));
 
 	/* If ret is non-zero, user ctrl-c'ed us */
 	if (rc)
@@ -1196,7 +1237,9 @@ static int dgnc_tty_open(struct tty_struct *tty, struct file *file)
  *
  * Wait for DCD, if needed.
  */
-static int dgnc_block_til_ready(struct tty_struct *tty, struct file *file, struct channel_t *ch)
+static int dgnc_block_til_ready(struct tty_struct *tty,
+				struct file *file,
+				struct channel_t *ch)
 {
 	int retval = 0;
 	struct un_t *un = NULL;
@@ -1204,7 +1247,8 @@ static int dgnc_block_til_ready(struct tty_struct *tty, struct file *file, struc
 	uint	old_flags = 0;
 	int	sleep_on_un_flags = 0;
 
-	if (!tty || tty->magic != TTY_MAGIC || !file || !ch || ch->magic != DGNC_CHANNEL_MAGIC)
+	if (!tty || tty->magic != TTY_MAGIC || !file || !ch ||
+	    ch->magic != DGNC_CHANNEL_MAGIC)
 		return -ENXIO;
 
 	un = tty->driver_data;
@@ -1221,7 +1265,8 @@ static int dgnc_block_til_ready(struct tty_struct *tty, struct file *file, struc
 		sleep_on_un_flags = 0;
 
 		/*
-		 * If board has failed somehow during our sleep, bail with error.
+		 * If board has failed somehow during our sleep,
+		 * bail with error.
 		 */
 		if (ch->ch_bd->state == BOARD_FAILED) {
 			retval = -ENXIO;
@@ -1241,7 +1286,9 @@ static int dgnc_block_til_ready(struct tty_struct *tty, struct file *file, struc
 		 * touched safely, the close routine will signal the
 		 * ch_wait_flags to wake us back up.
 		 */
-		if (!((ch->ch_tun.un_flags | ch->ch_pun.un_flags) & UN_CLOSING)) {
+		if (!((ch->ch_tun.un_flags |
+		    ch->ch_pun.un_flags) &
+		    UN_CLOSING)) {
 
 			/*
 			 * Our conditions to leave cleanly and happily:
@@ -1294,11 +1341,13 @@ static int dgnc_block_til_ready(struct tty_struct *tty, struct file *file, struc
 		spin_unlock_irqrestore(&ch->ch_lock, flags);
 
 		/*
-		 * Wait for something in the flags to change from the current value.
+		 * Wait for something in the flags to change
+		 * from the current value.
 		 */
 		if (sleep_on_un_flags)
 			retval = wait_event_interruptible(un->un_flags_wait,
-				(old_flags != (ch->ch_tun.un_flags | ch->ch_pun.un_flags)));
+				(old_flags != (ch->ch_tun.un_flags |
+					       ch->ch_pun.un_flags)));
 		else
 			retval = wait_event_interruptible(ch->ch_flags_wait,
 				(old_flags != ch->ch_flags));
@@ -1417,7 +1466,8 @@ static void dgnc_tty_close(struct tty_struct *tty, struct file *file)
 	 * Only officially close channel if count is 0 and
 	 * DIGI_PRINTER bit is not set.
 	 */
-	if ((ch->ch_open_count == 0) && !(ch->ch_digi.digi_flags & DIGI_PRINTER)) {
+	if ((ch->ch_open_count == 0) &&
+	    !(ch->ch_digi.digi_flags & DIGI_PRINTER)) {
 
 		ch->ch_flags &= ~(CH_STOPI | CH_FORCED_STOPI);
 
@@ -1574,15 +1624,17 @@ static int dgnc_maxcps_room(struct tty_struct *tty, int bytes_available)
 		int cps_limit = 0;
 		unsigned long current_time = jiffies;
 		unsigned long buffer_time = current_time +
-			(HZ * ch->ch_digi.digi_bufsize) / ch->ch_digi.digi_maxcps;
+			(HZ * ch->ch_digi.digi_bufsize) /
+			ch->ch_digi.digi_maxcps;
 
 		if (ch->ch_cpstime < current_time) {
 			/* buffer is empty */
-			ch->ch_cpstime = current_time;	    /* reset ch_cpstime */
+			ch->ch_cpstime = current_time;	/* reset ch_cpstime */
 			cps_limit = ch->ch_digi.digi_bufsize;
 		} else if (ch->ch_cpstime < buffer_time) {
 			/* still room in the buffer */
-			cps_limit = ((buffer_time - ch->ch_cpstime) * ch->ch_digi.digi_maxcps) / HZ;
+			cps_limit = ((buffer_time - ch->ch_cpstime) *
+					ch->ch_digi.digi_maxcps) / HZ;
 		} else {
 			/* no room in the buffer */
 			cps_limit = 0;
@@ -2080,7 +2132,8 @@ static inline int dgnc_get_mstat(struct channel_t *ch)
 /*
  * Return modem signals to ld.
  */
-static int dgnc_get_modem_info(struct channel_t *ch, unsigned int  __user *value)
+static int dgnc_get_modem_info(struct channel_t *ch,
+			       unsigned int  __user *value)
 {
 	int result;
 
@@ -2101,7 +2154,9 @@ static int dgnc_get_modem_info(struct channel_t *ch, unsigned int  __user *value
  *
  * Set modem signals, called by ld.
  */
-static int dgnc_set_modem_info(struct tty_struct *tty, unsigned int command, unsigned int __user *value)
+static int dgnc_set_modem_info(struct tty_struct *tty,
+			       unsigned int command,
+			       unsigned int __user *value)
 {
 	struct dgnc_board *bd;
 	struct channel_t *ch;
@@ -2184,7 +2239,8 @@ static int dgnc_set_modem_info(struct tty_struct *tty, unsigned int command, uns
  *
  *
  */
-static int dgnc_tty_digigeta(struct tty_struct *tty, struct digi_t __user *retinfo)
+static int dgnc_tty_digigeta(struct tty_struct *tty,
+			     struct digi_t __user *retinfo)
 {
 	struct channel_t *ch;
 	struct un_t *un;
@@ -2226,7 +2282,8 @@ static int dgnc_tty_digigeta(struct tty_struct *tty, struct digi_t __user *retin
  *
  *
  */
-static int dgnc_tty_digiseta(struct tty_struct *tty, struct digi_t __user *new_info)
+static int dgnc_tty_digiseta(struct tty_struct *tty,
+			     struct digi_t __user *new_info)
 {
 	struct dgnc_board *bd;
 	struct channel_t *ch;
@@ -2257,17 +2314,21 @@ static int dgnc_tty_digiseta(struct tty_struct *tty, struct digi_t __user *new_i
 	/*
 	 * Handle transistions to and from RTS Toggle.
 	 */
-	if (!(ch->ch_digi.digi_flags & DIGI_RTS_TOGGLE) && (new_digi.digi_flags & DIGI_RTS_TOGGLE))
+	if (!(ch->ch_digi.digi_flags & DIGI_RTS_TOGGLE) &&
+	    (new_digi.digi_flags & DIGI_RTS_TOGGLE))
 		ch->ch_mostat &= ~(UART_MCR_RTS);
-	if ((ch->ch_digi.digi_flags & DIGI_RTS_TOGGLE) && !(new_digi.digi_flags & DIGI_RTS_TOGGLE))
+	if ((ch->ch_digi.digi_flags & DIGI_RTS_TOGGLE) &&
+	    !(new_digi.digi_flags & DIGI_RTS_TOGGLE))
 		ch->ch_mostat |= (UART_MCR_RTS);
 
 	/*
 	 * Handle transistions to and from DTR Toggle.
 	 */
-	if (!(ch->ch_digi.digi_flags & DIGI_DTR_TOGGLE) && (new_digi.digi_flags & DIGI_DTR_TOGGLE))
+	if (!(ch->ch_digi.digi_flags & DIGI_DTR_TOGGLE) &&
+	    (new_digi.digi_flags & DIGI_DTR_TOGGLE))
 		ch->ch_mostat &= ~(UART_MCR_DTR);
-	if ((ch->ch_digi.digi_flags & DIGI_DTR_TOGGLE) && !(new_digi.digi_flags & DIGI_DTR_TOGGLE))
+	if ((ch->ch_digi.digi_flags & DIGI_DTR_TOGGLE) &&
+	    !(new_digi.digi_flags & DIGI_DTR_TOGGLE))
 		ch->ch_mostat |= (UART_MCR_DTR);
 
 	memcpy(&ch->ch_digi, &new_digi, sizeof(new_digi));
@@ -2304,7 +2365,8 @@ static int dgnc_tty_digiseta(struct tty_struct *tty, struct digi_t __user *new_i
 /*
  * dgnc_set_termios()
  */
-static void dgnc_tty_set_termios(struct tty_struct *tty, struct ktermios *old_termios)
+static void dgnc_tty_set_termios(struct tty_struct *tty,
+				 struct ktermios *old_termios)
 {
 	struct dgnc_board *bd;
 	struct channel_t *ch;
@@ -2668,7 +2730,8 @@ static int dgnc_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
 
 		spin_unlock_irqrestore(&ch->ch_lock, flags);
 
-		rc = put_user(C_CLOCAL(tty) ? 1 : 0, (unsigned long __user *) arg);
+		rc = put_user(C_CLOCAL(tty) ? 1 : 0,
+			      (unsigned long __user *) arg);
 		return rc;
 
 	case TIOCSSOFTCAR:
@@ -2679,7 +2742,8 @@ static int dgnc_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
 			return rc;
 
 		spin_lock_irqsave(&ch->ch_lock, flags);
-		tty->termios.c_cflag = ((tty->termios.c_cflag & ~CLOCAL) | (arg ? CLOCAL : 0));
+		tty->termios.c_cflag = ((tty->termios.c_cflag & ~CLOCAL) |
+				       (arg ? CLOCAL : 0));
 		ch->ch_bd->bd_ops->param(tty);
 		spin_unlock_irqrestore(&ch->ch_lock, flags);
 
@@ -2728,12 +2792,14 @@ static int dgnc_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
 				ch->ch_bd->bd_ops->flush_uart_write(ch);
 
 				if (ch->ch_tun.un_flags & (UN_LOW|UN_EMPTY)) {
-					ch->ch_tun.un_flags &= ~(UN_LOW|UN_EMPTY);
+					ch->ch_tun.un_flags &=
+						~(UN_LOW|UN_EMPTY);
 					wake_up_interruptible(&ch->ch_tun.un_flags_wait);
 				}
 
 				if (ch->ch_pun.un_flags & (UN_LOW|UN_EMPTY)) {
-					ch->ch_pun.un_flags &= ~(UN_LOW|UN_EMPTY);
+					ch->ch_pun.un_flags &=
+						~(UN_LOW|UN_EMPTY);
 					wake_up_interruptible(&ch->ch_pun.un_flags_wait);
 				}
 
@@ -2817,7 +2883,9 @@ static int dgnc_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
 	case DIGI_LOOPBACK:
 		{
 			uint loopback = 0;
-			/* Let go of locks when accessing user space, could sleep */
+			/* Let go of locks when accessing user space,
+			 * could sleep
+			*/
 			spin_unlock_irqrestore(&ch->ch_lock, flags);
 			rc = get_user(loopback, (unsigned int __user *) arg);
 			if (rc)
@@ -2915,10 +2983,12 @@ static int dgnc_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
 		/* NOTE: MORE EVENTS NEEDS TO BE ADDED HERE */
 		if (ch->ch_flags & CH_BREAK_SENDING)
 			events |= EV_TXB;
-		if ((ch->ch_flags & CH_STOP) || (ch->ch_flags & CH_FORCED_STOP))
+		if ((ch->ch_flags & CH_STOP) ||
+		    (ch->ch_flags & CH_FORCED_STOP))
 			events |= (EV_OPU | EV_OPS);
 
-		if ((ch->ch_flags & CH_STOPI) || (ch->ch_flags & CH_FORCED_STOPI))
+		if ((ch->ch_flags & CH_STOPI) ||
+		    (ch->ch_flags & CH_FORCED_STOPI))
 			events |= (EV_IPU | EV_IPS);
 
 		spin_unlock_irqrestore(&ch->ch_lock, flags);
-- 
1.9.1


