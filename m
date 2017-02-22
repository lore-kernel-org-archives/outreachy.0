X-GM-THRID: 6389990864304734208
X-Received: by 10.159.48.150 with SMTP id j22mr9204719uab.40.1487785685423;
        Wed, 22 Feb 2017 09:48:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.230 with SMTP id z93ls1518524ota.44.gmail; Wed, 22 Feb
 2017 09:48:05 -0800 (PST)
X-Received: by 10.129.120.145 with SMTP id t139mr10945091ywc.65.1487785684995;
        Wed, 22 Feb 2017 09:48:04 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id n127si309345ita.3.2017.02.22.09.48.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Feb 2017 09:48:04 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 5so1370175pgj.0
        for <outreachy-kernel@googlegroups.com>; Wed, 22 Feb 2017 09:48:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=LJo5gZfwjydlquO2Gu0ZSqD721zlASr8mHYt75rSRLQ=;
        b=AZ/ivm34tt2uJSpy287uq4Kvs9q3w27kc34mydcJ3UB4ot000cAI9ACEWIKpbGSaAo
         B8GOrIrJygPG1gWIGAnykGHId2SZzXAjPnKGC6ZUCUXd0Tnbtn7Eh6YACP98BEnXBOI3
         ySTKQ1gpJ/Hwae0U1yjHeOapLgEbE6185Q1wH05ZHWj8HTjpBQeFPXMpUjjCSbGG5XTX
         wurWwBxIPUUBkokTorhEYvYxUlYEJEob+ze9gsz9qVSDtIe4TugT5QfnMuIFQ4PgY9+8
         3O9YSHFr122hVnhoukQENaEWMfDbhabYVmya2i3b/K5MkLr7u/iwc5dJpHfobWr5yNI3
         5LuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=LJo5gZfwjydlquO2Gu0ZSqD721zlASr8mHYt75rSRLQ=;
        b=HZuL7Xyp88Jb7wRpYl0lqVRGh7nggO0nNq5si4VahQ16sgwUxH23kpiNX+c4FLFJvn
         QYermKq/T4y/lx1aGiWOs+Xt6bm94fDI98KGyYHoJcLykQ3IcjrgtzVQtmvCJtKYN3C2
         B+3Ptqq+BPIC2NtGwIQ4SVT84r9maApXzunMeFHUmSwDglWBvWHoUhVcVZLk2RAxzcVB
         /J1nI+b8J9DSKy8Ca4ObzuxTV8QHyMDkTYc7dt/O3gpEXsGI906MKKwgTs04ju7bBAII
         uVvIPsu/NTIQ6TiimRVkrRHCFhMtyYxZkUG+zQEVLqh5JMjvzPIL01/evtOrVyaX87SJ
         E2GA==
X-Gm-Message-State: AMke39mL0azOTbU+mMGIO3JqUjLu7BZ67IcVj/Je8gmT9jMRaaMASY00nTVR8Q7z7ItUpQ==
X-Received: by 10.98.160.140 with SMTP id p12mr40644465pfl.97.1487785684553;
        Wed, 22 Feb 2017 09:48:04 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5189:4d06:6cf8:d067:30d5:ddb2])
        by smtp.gmail.com with ESMTPSA id l188sm4923841pfl.28.2017.02.22.09.47.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 22 Feb 2017 09:48:04 -0800 (PST)
Message-ID: <58adced4.c525620a.a8728.7ebc@mx.google.com>
X-Google-Original-Message-ID: <20170222174640.GA16700@<rvarsha016@gmail.com>>
Date: Wed, 22 Feb 2017 23:16:40 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: speakup: Added spaces around arithmetic
 operators.
References: <cover.1487784838.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1487784838.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Added spaces around arithmetic operators (+, -, /), to fix the checkpatch
issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/speakup/kobjects.c       |  6 +++---
 drivers/staging/speakup/selection.c      |  2 +-
 drivers/staging/speakup/serialio.c       | 12 ++++++------
 drivers/staging/speakup/speakup_acntpc.c | 10 +++++-----
 4 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index 77e6dee..ca075fe 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -291,7 +291,7 @@ static ssize_t keymap_store(struct kobject *kobj, struct kobj_attribute *attr,
 	i *= (int)cp1[-1] + 1;
 	i += 2; /* 0 and last map ver */
 	if (cp1[-3] != KEY_MAP_VER || cp1[-1] > 10 ||
-			i+SHIFT_TBL_SIZE+4 >= sizeof(spk_key_buf)) {
+			i + SHIFT_TBL_SIZE + 4 >= sizeof(spk_key_buf)) {
 		pr_warn("i %d %d %d %d\n", i,
 				(int)cp1[-3], (int)cp1[-2], (int)cp1[-1]);
 		kfree(in_buff);
@@ -483,7 +483,7 @@ static ssize_t punc_show(struct kobject *kobj, struct kobj_attribute *attr,
 		*cp++ = (char)i;
 	}
 	spin_unlock_irqrestore(&speakup_info.spinlock, flags);
-	return cp-buf;
+	return cp - buf;
 }
 
 /*
@@ -574,7 +574,7 @@ ssize_t spk_var_show(struct kobject *kobj, struct kobj_attribute *attr,
 			*cp1++ = '"';
 			*cp1++ = '\n';
 			*cp1 = '\0';
-			rv = cp1-buf;
+			rv = cp1 - buf;
 		} else {
 			rv = sprintf(buf, "\"\"\n");
 		}
diff --git a/drivers/staging/speakup/selection.c b/drivers/staging/speakup/selection.c
index aeb2b86..afd9a44 100644
--- a/drivers/staging/speakup/selection.c
+++ b/drivers/staging/speakup/selection.c
@@ -99,7 +99,7 @@ int speakup_set_selection(struct tty_struct *tty)
 	sel_start = new_sel_start;
 	sel_end = new_sel_end;
 	/* Allocate a new buffer before freeing the old one ... */
-	bp = kmalloc((sel_end-sel_start)/2+1, GFP_ATOMIC);
+	bp = kmalloc((sel_end - sel_start) / 2 + 1, GFP_ATOMIC);
 	if (!bp) {
 		speakup_clear_selection();
 		return -ENOMEM;
diff --git a/drivers/staging/speakup/serialio.c b/drivers/staging/speakup/serialio.c
index 87d3318..657a48b 100644
--- a/drivers/staging/speakup/serialio.c
+++ b/drivers/staging/speakup/serialio.c
@@ -97,7 +97,7 @@ static irqreturn_t synth_readbuf_handler(int irq, void *dev_id)
 
 	spin_lock_irqsave(&speakup_info.spinlock, flags);
 	while (inb_p(speakup_info.port_tts + UART_LSR) & UART_LSR_DR) {
-		c = inb_p(speakup_info.port_tts+UART_RX);
+		c = inb_p(speakup_info.port_tts + UART_RX);
 		synth->read_buff_add((u_char)c);
 	}
 	spin_unlock_irqrestore(&speakup_info.spinlock, flags);
@@ -122,10 +122,10 @@ static void start_serial_interrupt(int irq)
 	/* Turn on Interrupts */
 	outb(UART_IER_MSI|UART_IER_RLSI|UART_IER_RDI,
 			speakup_info.port_tts + UART_IER);
-	inb(speakup_info.port_tts+UART_LSR);
-	inb(speakup_info.port_tts+UART_RX);
-	inb(speakup_info.port_tts+UART_IIR);
-	inb(speakup_info.port_tts+UART_MSR);
+	inb(speakup_info.port_tts + UART_LSR);
+	inb(speakup_info.port_tts + UART_RX);
+	inb(speakup_info.port_tts + UART_IIR);
+	inb(speakup_info.port_tts + UART_MSR);
 	outb(1, speakup_info.port_tts + UART_FCR);	/* Turn FIFO On */
 }
 
@@ -138,7 +138,7 @@ void spk_stop_serial_interrupt(void)
 		return;
 
 	/* Turn off interrupts */
-	outb(0, speakup_info.port_tts+UART_IER);
+	outb(0, speakup_info.port_tts + UART_IER);
 	/* Free IRQ */
 	free_irq(serstate->irq, (void *)synth_readbuf_handler);
 }
diff --git a/drivers/staging/speakup/speakup_acntpc.c b/drivers/staging/speakup/speakup_acntpc.c
index c7fab26..cf6fcd6 100644
--- a/drivers/staging/speakup/speakup_acntpc.c
+++ b/drivers/staging/speakup/speakup_acntpc.c
@@ -233,7 +233,7 @@ static void do_catch_up(struct spk_synth *synth)
 			delay_time_val = delay_time->u.n.value;
 			spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 			schedule_timeout(msecs_to_jiffies(delay_time_val));
-			jiff_max = jiffies+jiffy_delta_val;
+			jiff_max = jiffies + jiffy_delta_val;
 		}
 	}
 	timeout = SPK_XMITR_TIMEOUT;
@@ -260,13 +260,13 @@ static int synth_probe(struct spk_synth *synth)
 		speakup_info.port_tts = port_forced;
 		pr_info("probe forced to %x by kernel command line\n",
 				speakup_info.port_tts);
-		if (synth_request_region(speakup_info.port_tts-1,
+		if (synth_request_region(speakup_info.port_tts - 1,
 					SYNTH_IO_EXTENT)) {
 			pr_warn("sorry, port already reserved\n");
 			return -EBUSY;
 		}
-		port_val = inw(speakup_info.port_tts-1);
-		synth_port_control = speakup_info.port_tts-1;
+		port_val = inw(speakup_info.port_tts - 1);
+		synth_port_control = speakup_info.port_tts - 1;
 	} else {
 		for (i = 0; synth_portlist[i]; i++) {
 			if (synth_request_region(synth_portlist[i],
@@ -294,7 +294,7 @@ static int synth_probe(struct spk_synth *synth)
 		return -ENODEV;
 	}
 	pr_info("%s: %03x-%03x, driver version %s,\n", synth->long_name,
-		synth_port_control, synth_port_control+SYNTH_IO_EXTENT-1,
+		synth_port_control, synth_port_control + SYNTH_IO_EXTENT - 1,
 		synth->version);
 	synth->alive = 1;
 	return 0;
-- 
2.9.3


