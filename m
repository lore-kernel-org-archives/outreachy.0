X-GM-THRID: 8056516640768
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b1f76547a2774d7b,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.98.38 with SMTP id ef6mr6346443lbb.3.1426246175810;
        Fri, 13 Mar 2015 04:29:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.72 with SMTP id v8ls132220wiz.15.gmail; Fri, 13 Mar
 2015 04:29:35 -0700 (PDT)
X-Received: by 10.180.81.134 with SMTP id a6mr1299926wiy.1.1426246175433;
        Fri, 13 Mar 2015 04:29:35 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x230.google.com (mail-wg0-x230.google.com. [2a00:1450:400c:c00::230])
        by gmr-mx.google.com with ESMTPS id c8si87409wiw.1.2015.03.13.04.29.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 04:29:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) client-ip=2a00:1450:400c:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x230.google.com with SMTP id a1so22667770wgh.1
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 04:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=h518b8RW4ZJ1idsqtHtnbTmoM7zNXFepvOWtAheifsE=;
        b=yPoY5y0lbwpmw6vQBsPB+hoyowAI64DuNKlgpeNzFQwVYQzpfRnT4omjfHmzbXZBSf
         bJZQmg6V7Peafks8TmEad9J6z1mAz7jK8pGNDQPBhVHg+2atiCK/EPs7GySbyisdrfnh
         6x8kh8qTqjJfgBHGbVICZqWDGORVWB05Ho/TxaX3SIlA8bBVK7744t7s5sIlbCmuhz3A
         yKwMwnNZtUaaeJofGgaDkBTSZpKROErZcSYWJl0uIktP+eB8+yIz4/x7QNWR/NFEERzd
         9RxHJVXK/EMr8e1eqS2vpmaksLpMnjaO9SySHVx2RtBZEoHYBH+q9wHd2hgYtHZi8NQo
         1Grg==
X-Received: by 10.180.89.227 with SMTP id br3mr47452125wib.67.1426246175323;
        Fri, 13 Mar 2015 04:29:35 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.55.220])
        by mx.google.com with ESMTPSA id ch6sm2433697wjc.3.2015.03.13.04.29.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 13 Mar 2015 04:29:34 -0700 (PDT)
Date: Fri, 13 Mar 2015 14:29:30 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: comedi: Remove parentheses around right side
 assignment
Message-ID: <20150313112930.GA2597@haneen-vb>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Parentheses are not needed around the right hand side of an assignment.
This patch remove parenthese of such occurences. Issue was detected and
solved using the following coccinelle script:

@rule1@
identifier x, y, z;
expression E1, E2;
@@

(
x = (y == z);
|
x = (E1 == E2);
|
 x =
-(
...
-)
 ;
)

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/comedi/drivers/addi_apci_3501.c | 4 ++--
 drivers/staging/comedi/drivers/ni_mio_common.c  | 8 ++++----
 drivers/staging/comedi/drivers/serial2002.c     | 4 ++--
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/comedi/drivers/addi_apci_3501.c b/drivers/staging/comedi/drivers/addi_apci_3501.c
index b8f3366..babbdff 100644
--- a/drivers/staging/comedi/drivers/addi_apci_3501.c
+++ b/drivers/staging/comedi/drivers/addi_apci_3501.c
@@ -270,7 +270,7 @@ static irqreturn_t apci3501_interrupt(int irq, void *d)
 
 	/*  Disable Interrupt */
 	ul_Command1 = inl(dev->iobase + APCI3501_TIMER_CTRL_REG);
-	ul_Command1 = (ul_Command1 & 0xFFFFF9FDul);
+	ul_Command1 = ul_Command1 & 0xFFFFF9FDul;
 	outl(ul_Command1, dev->iobase + APCI3501_TIMER_CTRL_REG);
 
 	ui_Timer_AOWatchdog = inl(dev->iobase + APCI3501_TIMER_IRQ_REG) & 0x1;
@@ -282,7 +282,7 @@ static irqreturn_t apci3501_interrupt(int irq, void *d)
 	/* Enable Interrupt Send a signal to from kernel to user space */
 	send_sig(SIGIO, devpriv->tsk_Current, 0);
 	ul_Command1 = inl(dev->iobase + APCI3501_TIMER_CTRL_REG);
-	ul_Command1 = ((ul_Command1 & 0xFFFFF9FDul) | 1 << 1);
+	ul_Command1 = (ul_Command1 & 0xFFFFF9FDul) | 1 << 1;
 	outl(ul_Command1, dev->iobase + APCI3501_TIMER_CTRL_REG);
 	inl(dev->iobase + APCI3501_TIMER_STATUS_REG);
 
diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
index 42fdedd..ecfd0544 100644
--- a/drivers/staging/comedi/drivers/ni_mio_common.c
+++ b/drivers/staging/comedi/drivers/ni_mio_common.c
@@ -1360,7 +1360,7 @@ static void get_last_sample_611x(struct comedi_device *dev)
 	/* Check if there's a single sample stuck in the FIFO */
 	if (ni_readb(dev, XXX_Status) & 0x80) {
 		dl = ni_readl(dev, ADC_FIFO_Data_611x);
-		data = (dl & 0xffff);
+		data = dl & 0xffff;
 		comedi_buf_write_samples(s, &data, 1);
 	}
 }
@@ -1871,7 +1871,7 @@ static void ni_m_series_load_channelgain_list(struct comedi_device *dev,
 		chan = CR_CHAN(list[0]);
 		range = CR_RANGE(list[0]);
 		range_code = ni_gainlkup[board->gainlkup][range];
-		dither = ((list[0] & CR_ALT_FILTER) != 0);
+		dither = (list[0] & CR_ALT_FILTER) != 0;
 		bypass_bits = MSeries_AI_Bypass_Config_FIFO_Bit;
 		bypass_bits |= chan;
 		bypass_bits |=
@@ -1895,7 +1895,7 @@ static void ni_m_series_load_channelgain_list(struct comedi_device *dev,
 		chan = CR_CHAN(list[i]);
 		aref = CR_AREF(list[i]);
 		range = CR_RANGE(list[i]);
-		dither = ((list[i] & CR_ALT_FILTER) != 0);
+		dither = (list[i] & CR_ALT_FILTER) != 0;
 
 		range_code = ni_gainlkup[board->gainlkup][range];
 		devpriv->ai_offset[i] = 0;
@@ -2021,7 +2021,7 @@ static void ni_load_channelgain_list(struct comedi_device *dev,
 			chan = CR_CHAN(list[i]);
 		aref = CR_AREF(list[i]);
 		range = CR_RANGE(list[i]);
-		dither = ((list[i] & CR_ALT_FILTER) != 0);
+		dither = (list[i] & CR_ALT_FILTER) != 0;
 
 		/* fix the external/internal range differences */
 		range = ni_gainlkup[board->gainlkup][range];
diff --git a/drivers/staging/comedi/drivers/serial2002.c b/drivers/staging/comedi/drivers/serial2002.c
index 482a2a8..ad35ed6 100644
--- a/drivers/staging/comedi/drivers/serial2002.c
+++ b/drivers/staging/comedi/drivers/serial2002.c
@@ -143,8 +143,8 @@ static void serial2002_tty_read_poll_wait(struct file *f, int timeout)
 			break;
 		}
 		do_gettimeofday(&now);
-		elapsed = (1000000 * (now.tv_sec - start.tv_sec) +
-			  now.tv_usec - start.tv_usec);
+		elapsed = 1000000 * (now.tv_sec - start.tv_sec) +
+			  now.tv_usec - start.tv_usec;
 		if (elapsed > timeout)
 			break;
 		set_current_state(TASK_INTERRUPTIBLE);
-- 
1.9.1


