X-GM-THRID: 6207871882034675712
X-Received: by 10.112.140.202 with SMTP id ri10mr2638709lbb.10.1445458702766;
        Wed, 21 Oct 2015 13:18:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.90.234 with SMTP id bz10ls421587wib.44.gmail; Wed, 21 Oct
 2015 13:18:22 -0700 (PDT)
X-Received: by 10.194.118.65 with SMTP id kk1mr2679324wjb.5.1445458702320;
        Wed, 21 Oct 2015 13:18:22 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id c7si927469wiy.3.2015.10.21.13.18.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 13:18:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id ll6so106841022wic.0
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 13:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=cYNt+Odnd4/scSaNbgP2g/QHtsvtxy6eBiS1p+kp0F4=;
        b=axCzWWhEZO5q8JZnIO5rni9vm3wV55Olw0x4phpTaALaTc3gaKJQss20rg5JokLTPX
         c1KI62/Uefh9aXJuIWhsV/UDuIlgYNHWtC3xL4PkCqTGTMk6L66tbDOJdVHVoXRWlOZU
         uJlgisK23EJGcqSOaQ52M82k3Xmj/VKXc/1m9cShRzBFcRztzVSBsN6xbI34wqSdAV52
         rLQUwSxA67SbnV82ucDCVOzMuwOSJwpTxc3xJ3zISBz6r0EMNES50ir6AdRiegWfXEVF
         gkKoVVN9Tf2xgRfwdFhZ9OsJYZ2bA6rWMJvBaRCss0uvjjl3a9MGhSMJ/z5lo/FVfD1i
         eYLQ==
X-Received: by 10.180.85.164 with SMTP id i4mr13714199wiz.54.1445458702200;
        Wed, 21 Oct 2015 13:18:22 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id m6sm8703173wif.11.2015.10.21.13.18.21
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Oct 2015 13:18:21 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2 2/5] staging: dgap: properly indent to match open paranthesis
Date: Wed, 21 Oct 2015 23:17:53 +0300
Message-Id: <d4331a6cd9560c17481eccf6119bb8c894c7838b.1445458023.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1445458023.git.ciorneiioana@gmail.com>
References: <cover.1445458023.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1445458023.git.ciorneiioana@gmail.com>
References: <cover.1445458023.git.ciorneiioana@gmail.com>

Indent parameters and arguments passed to function calls to match
open paranthesis

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---

Changes in v2:
    - reworked the alignment of some conditional expressions in order to
    improve readability
    - reverted the add and the removal of some blank lines

 drivers/staging/dgap/dgap.c | 55 ++++++++++++++++++++++-----------------------
 1 file changed, 27 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/dgap/dgap.c b/drivers/staging/dgap/dgap.c
index 2d36ea5..f7850f4 100644
--- a/drivers/staging/dgap/dgap.c
+++ b/drivers/staging/dgap/dgap.c
@@ -931,8 +931,8 @@ static int dgap_parsefile(char **in)
 				brd->u.board.conc1++;
 
 			conc_type = dgap_gettok(in);
-			if (conc_type == 0 || (conc_type != CX &&
-			    conc_type != EPC)) {
+			if (conc_type == 0 ||
+			    (conc_type != CX && conc_type != EPC)) {
 				pr_err("failed to set a type of concentratros");
 				return -1;
 			}
@@ -972,8 +972,8 @@ static int dgap_parsefile(char **in)
 				brd->u.board.module1++;
 
 			module_type = dgap_gettok(in);
-			if (module_type == 0 || (module_type != PORTS &&
-			    module_type != MODEM)) {
+			if (module_type == 0 ||
+			    (module_type != PORTS && module_type != MODEM)) {
 				pr_err("failed to set a type of module");
 				return -1;
 			}
@@ -1351,8 +1351,7 @@ static int dgap_remap(struct board_t *brd)
 	if (!request_mem_region(brd->membase, 0x200000, "dgap"))
 		return -ENOMEM;
 
-	if (!request_mem_region(brd->membase + PCI_IO_OFFSET, 0x200000,
-					"dgap"))
+	if (!request_mem_region(brd->membase + PCI_IO_OFFSET, 0x200000, "dgap"))
 		goto err_req_mem;
 
 	brd->re_map_membase = ioremap(brd->membase, 0x200000);
@@ -1390,7 +1389,7 @@ static void dgap_unmap(struct board_t *brd)
  * the Linux line discipline way.
  */
 static void dgap_parity_scan(struct channel_t *ch, unsigned char *cbuf,
-				unsigned char *fbuf, int *len)
+			     unsigned char *fbuf, int *len)
 {
 	int l = *len;
 	int count = 0;
@@ -1649,7 +1648,7 @@ static void dgap_input(struct channel_t *ch)
 
 		len = tty_buffer_request_room(tp->port, len);
 		tty_insert_flip_string_flags(tp->port, ch->ch_bd->flipbuf,
-			ch->ch_bd->flipflagbuf, len);
+					     ch->ch_bd->flipflagbuf, len);
 	} else {
 		len = tty_buffer_request_room(tp->port, len);
 		tty_insert_flip_string(tp->port, ch->ch_bd->flipbuf, len);
@@ -2161,7 +2160,7 @@ static struct board_t *dgap_found_board(struct pci_dev *pdev, int id,
 
 	/* init our poll helper tasklet */
 	tasklet_init(&brd->helper_tasklet, dgap_poll_tasklet,
-			(unsigned long) brd);
+		     (unsigned long)brd);
 
 	ret = dgap_remap(brd);
 	if (ret)
@@ -2342,7 +2341,7 @@ schedule_poller:
  *
  *=======================================================================*/
 static void dgap_cmdb(struct channel_t *ch, u8 cmd, u8 byte1,
-			u8 byte2, uint ncmds)
+		      u8 byte2, uint ncmds)
 {
 	char __iomem *vaddr;
 	struct __iomem cm_t *cm_addr;
@@ -3011,7 +3010,7 @@ static int dgap_block_til_ready(struct tty_struct *tty, struct file *file,
 	int sleep_on_un_flags;
 
 	if (!tty || tty->magic != TTY_MAGIC || !file || !ch ||
-		ch->magic != DGAP_CHANNEL_MAGIC)
+	    ch->magic != DGAP_CHANNEL_MAGIC)
 		return -EIO;
 
 	un = tty->driver_data;
@@ -3509,7 +3508,7 @@ static int dgap_tty_write_room(struct tty_struct *tty)
  * In here exists all the Transparent Print magic as well.
  */
 static int dgap_tty_write(struct tty_struct *tty, const unsigned char *buf,
-				int count)
+			  int count)
 {
 	struct channel_t *ch;
 	struct un_t *un;
@@ -3575,7 +3574,7 @@ static int dgap_tty_write(struct tty_struct *tty, const unsigned char *buf,
 	 */
 	if ((un->un_type == DGAP_PRINT) && !(ch->ch_flags & CH_PRON)) {
 		dgap_wmove(ch, ch->ch_digi.digi_onstr,
-		    (int) ch->ch_digi.digi_onlen);
+			   (int)ch->ch_digi.digi_onlen);
 		head = readw(&(bs->tx_head)) & tmask;
 		ch->ch_flags |= CH_PRON;
 	}
@@ -3586,7 +3585,7 @@ static int dgap_tty_write(struct tty_struct *tty, const unsigned char *buf,
 	 */
 	if ((un->un_type != DGAP_PRINT) && (ch->ch_flags & CH_PRON)) {
 		dgap_wmove(ch, ch->ch_digi.digi_offstr,
-			(int) ch->ch_digi.digi_offlen);
+			   (int)ch->ch_digi.digi_offlen);
 		head = readw(&(bs->tx_head)) & tmask;
 		ch->ch_flags &= ~CH_PRON;
 	}
@@ -3644,7 +3643,7 @@ static int dgap_tty_write(struct tty_struct *tty, const unsigned char *buf,
 			writeb(1, &(bs->iempty));
 		} else {
 			dgap_wmove(ch, ch->ch_digi.digi_offstr,
-				(int) ch->ch_digi.digi_offlen);
+				   (int)ch->ch_digi.digi_offlen);
 			head = readw(&(bs->tx_head)) & tmask;
 			ch->ch_flags &= ~CH_PRON;
 		}
@@ -3731,7 +3730,7 @@ static int dgap_tty_tiocmget(struct tty_struct *tty)
  * Set modem signals, called by ld.
  */
 static int dgap_tty_tiocmset(struct tty_struct *tty,
-		unsigned int set, unsigned int clear)
+			     unsigned int set, unsigned int clear)
 {
 	struct board_t *bd;
 	struct channel_t *ch;
@@ -4222,7 +4221,7 @@ static int dgap_tty_digisetcustombaud(struct channel_t *ch, struct board_t *bd,
  * dgap_set_termios()
  */
 static void dgap_tty_set_termios(struct tty_struct *tty,
-				struct ktermios *old_termios)
+				 struct ktermios *old_termios)
 {
 	struct board_t *bd;
 	struct channel_t *ch;
@@ -4385,7 +4384,7 @@ static int dgap_tty_open(struct tty_struct *tty, struct file *file)
 	 * sleep waiting for it to happen or they cancel the open.
 	 */
 	rc = wait_event_interruptible(brd->state_wait,
-		(brd->state & BOARD_READY));
+				      (brd->state & BOARD_READY));
 
 	if (rc)
 		return rc;
@@ -4597,7 +4596,7 @@ static void dgap_tty_close(struct tty_struct *tty, struct file *file)
 			 * have been dropped for modems to see it.
 			 */
 			spin_unlock_irqrestore(&ch->ch_lock,
-					lock_flags);
+					       lock_flags);
 
 			/* .25 second delay for dropping RTS/DTR */
 			schedule_timeout_interruptible(msecs_to_jiffies(250));
@@ -4615,7 +4614,7 @@ static void dgap_tty_close(struct tty_struct *tty, struct file *file)
 	 */
 	if ((un->un_type == DGAP_PRINT)  && (ch->ch_flags & CH_PRON)) {
 		dgap_wmove(ch, ch->ch_digi.digi_offstr,
-			(int) ch->ch_digi.digi_offlen);
+			   (int)ch->ch_digi.digi_offlen);
 		ch->ch_flags &= ~CH_PRON;
 	}
 
@@ -4750,7 +4749,7 @@ static void dgap_tty_flush_chars(struct tty_struct *tty)
  * The usual assortment of ioctl's
  */
 static int dgap_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
-		unsigned long arg)
+			  unsigned long arg)
 {
 	struct board_t *bd;
 	struct channel_t *ch;
@@ -5996,7 +5995,7 @@ static int dgap_test_bios(struct board_t *brd)
 	err1 = readw(addr + SEQUENCE);
 	err2 = readw(addr + ERROR);
 	dev_warn(&brd->pdev->dev, "%s failed diagnostics.  Error #(%x,%x).\n",
-		brd->name, err1, err2);
+		 brd->name, err1, err2);
 	brd->state = BOARD_FAILED;
 	brd->dpastatus = BD_NOBIOS;
 
@@ -6531,7 +6530,7 @@ static int dgap_firmware_load(struct pci_dev *pdev, int card_type,
 
 	if (fw_info[card_type].conf_name) {
 		ret = request_firmware(&fw, fw_info[card_type].conf_name,
-					 &pdev->dev);
+				       &pdev->dev);
 		if (ret) {
 			dev_err(&pdev->dev, "config file %s not found\n",
 				fw_info[card_type].conf_name);
@@ -6584,7 +6583,7 @@ static int dgap_firmware_load(struct pci_dev *pdev, int card_type,
 
 	if (fw_info[card_type].bios_name) {
 		ret = request_firmware(&fw, fw_info[card_type].bios_name,
-					&pdev->dev);
+				       &pdev->dev);
 		if (ret) {
 			dev_err(&pdev->dev, "bios file %s not found\n",
 				fw_info[card_type].bios_name);
@@ -6601,7 +6600,7 @@ static int dgap_firmware_load(struct pci_dev *pdev, int card_type,
 
 	if (fw_info[card_type].fep_name) {
 		ret = request_firmware(&fw, fw_info[card_type].fep_name,
-					&pdev->dev);
+				       &pdev->dev);
 		if (ret) {
 			dev_err(&pdev->dev, "dgap: fep file %s not found\n",
 				fw_info[card_type].fep_name);
@@ -6630,7 +6629,7 @@ static int dgap_firmware_load(struct pci_dev *pdev, int card_type,
 
 	if (fw_info[card_type].con_name && check && vaddr) {
 		ret = request_firmware(&fw, fw_info[card_type].con_name,
-					&pdev->dev);
+				       &pdev->dev);
 		if (ret) {
 			dev_err(&pdev->dev, "conc file %s not found\n",
 				fw_info[card_type].con_name);
@@ -6994,8 +6993,8 @@ static int dgap_start(void)
 	}
 
 	device = device_create(dgap_class, NULL,
-		MKDEV(DIGI_DGAP_MAJOR, 0),
-		NULL, "dgap_mgmt");
+			       MKDEV(DIGI_DGAP_MAJOR, 0),
+			       NULL, "dgap_mgmt");
 	if (IS_ERR(device)) {
 		rc = PTR_ERR(device);
 		goto failed_device;
-- 
2.1.4


