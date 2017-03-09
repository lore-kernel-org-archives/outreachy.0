X-GM-THRID: 6395576564216496128
X-Received: by 10.157.34.137 with SMTP id y9mr5658976ota.6.1489086231148;
        Thu, 09 Mar 2017 11:03:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.117.143 with SMTP id y137ls5067868itc.9.canary-gmail; Thu,
 09 Mar 2017 11:03:50 -0800 (PST)
X-Received: by 10.99.100.133 with SMTP id y127mr6175066pgb.113.1489086230493;
        Thu, 09 Mar 2017 11:03:50 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id y90si1358956pfa.6.2017.03.09.11.03.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 11:03:50 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id v190so8179315pfb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 11:03:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=mI/JDWE4x1/pnn4nivX102dtuoh2pHHiB2aM2/covZM=;
        b=j8+AvGVrUcGrgTRTg6CSijajVNqdhYR3qKOChnOZ0kDLDtEJJbFKhpuXYbpI/1Uh1j
         Fv2EAtV5dJ0EqEM5ZFkFtGWpcZZC4Wi7FNWUz3xD4SSGncHPkhsbs7IqA78t9HBbjqHo
         HjIe2vdpLh+tjgeZVp6JsvY25DtTlsWYCIPzI7Gp5p9SG1gR52GC+Sf/L3c2kShwbToD
         7wwbVYQ9Xcv10LCJM7y8p/sWMRDlBFRleAHeCelV0dBNLEo7YnLiHz1XkAegvmDDk17V
         Iiy0tJnV7/ZvjD2zEJF6GDUsFDGQMD1Nzeh+jdeF75Mufy2oyAKf4nVW07HwKaogUqre
         nmBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=mI/JDWE4x1/pnn4nivX102dtuoh2pHHiB2aM2/covZM=;
        b=EqFD0B7CUZ7Y957hsM7ixDkqQZgfC0qNant7eLOsyvZsASKuPpSSJf1cic0HiYYEqP
         wwMbKmPQUjz0IaeiLfN7FGJjraFamAz/ZgLQWvxZ46hPNGnrAxTFvWIdVirUMWcr4FHU
         am1cPbDpaZhwT409XwbWHH0sRJygRK88VJyKWOTUoIsRKGVkEbEb6aiM++NIKl+//OHt
         o10zFmhhTzRMFQZ1e7M4eIkadsCP7lHWCJPCd6zXUUNFPzXP4GIFQHnsvE8q17bi0YLz
         Je1rs1YWxlq1ps5BjIuno7ur0t7ccjVT4jLe3/E8QeHlDXHB5hahjFpiATbakJ5BFJD2
         TbDw==
X-Gm-Message-State: AMke39kXv9GTp4pAdMUadO9OXsDnKpJN+hjuvsKFdt/xZ0vmQDBlB9r6yrbwFQbCSTfYqA==
X-Received: by 10.84.232.6 with SMTP id h6mr19243509plk.137.1489086230215;
        Thu, 09 Mar 2017 11:03:50 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id q64sm13920902pfi.69.2017.03.09.11.03.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 11:03:49 -0800 (PST)
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
Subject: [PATCH 5/6] staging: speakup: Alignment should match open parenthesis
Date: Fri, 10 Mar 2017 00:33:19 +0530
Message-Id: <20170309190320.25681-6-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170309190320.25681-1-arushisinghal19971997@gmail.com>
References: <20170309190320.25681-1-arushisinghal19971997@gmail.com>

Fix checkpatch issues: "CHECK: Alignment should match open parenthesis".

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/speakup/kobjects.c       | 16 ++++++++--------
 drivers/staging/speakup/main.c           |  2 +-
 drivers/staging/speakup/selection.c      |  2 +-
 drivers/staging/speakup/serialio.c       |  2 +-
 drivers/staging/speakup/speakup_acntpc.c |  6 +++---
 drivers/staging/speakup/speakup_apollo.c |  2 +-
 drivers/staging/speakup/speakup_decext.c |  4 ++--
 7 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index 8c93188b832c..edde9e68779e 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -662,9 +662,9 @@ ssize_t spk_var_store(struct kobject *kobj, struct kobj_attribute *attr,
 			var_data = param->data;
 			value = var_data->u.n.value;
 			spk_reset_default_value("pitch", synth->default_pitch,
-				value);
+						value);
 			spk_reset_default_value("vol", synth->default_vol,
-				value);
+						value);
 		}
 		break;
 	case VAR_STRING:
@@ -679,7 +679,7 @@ ssize_t spk_var_store(struct kobject *kobj, struct kobj_attribute *attr,
 		ret = spk_set_string_var(cp, param, len);
 		if (ret == -E2BIG)
 			pr_warn("value too long for %s\n",
-					param->name);
+				param->name);
 		break;
 	default:
 		pr_warn("%s unknown type %d\n",
@@ -699,7 +699,7 @@ EXPORT_SYMBOL_GPL(spk_var_store);
  */
 
 static ssize_t message_show_helper(char *buf, enum msg_index_t first,
-	enum msg_index_t last)
+				    enum msg_index_t last)
 {
 	size_t bufsize = PAGE_SIZE;
 	char *buf_pointer = buf;
@@ -712,7 +712,7 @@ static ssize_t message_show_helper(char *buf, enum msg_index_t first,
 		if (bufsize <= 1)
 			break;
 		printed = scnprintf(buf_pointer, bufsize, "%d\t%s\n",
-			index, spk_msg_get(cursor));
+				    index, spk_msg_get(cursor));
 		buf_pointer += printed;
 		bufsize -= printed;
 	}
@@ -721,7 +721,7 @@ static ssize_t message_show_helper(char *buf, enum msg_index_t first,
 }
 
 static void report_msg_status(int reset, int received, int used,
-	int rejected, char *groupname)
+			       int rejected, char *groupname)
 {
 	int len;
 	char buf[160];
@@ -742,7 +742,7 @@ static void report_msg_status(int reset, int received, int used,
 }
 
 static ssize_t message_store_helper(const char *buf, size_t count,
-	struct msg_group_t *group)
+				     struct msg_group_t *group)
 {
 	char *cp = (char *) buf;
 	char *end = cp + count;
@@ -843,7 +843,7 @@ static ssize_t message_show(struct kobject *kobj,
 }
 
 static ssize_t message_store(struct kobject *kobj, struct kobj_attribute *attr,
-	const char *buf, size_t count)
+			      const char *buf, size_t count)
 {
 	struct msg_group_t *group = spk_find_msg_group(attr->attr.name);
 
diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index 25acebb9311f..01eabc19039c 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -1140,7 +1140,7 @@ static void spkup_write(const char *in_buf, int count)
 		if (last_type & CH_RPT) {
 			synth_printf(" ");
 			synth_printf(spk_msg_get(MSG_REPEAT_DESC2),
-					++rep_count);
+				     ++rep_count);
 			synth_printf(" ");
 		}
 		rep_count = 0;
diff --git a/drivers/staging/speakup/selection.c b/drivers/staging/speakup/selection.c
index afd9a446a06f..3d15eec37163 100644
--- a/drivers/staging/speakup/selection.c
+++ b/drivers/staging/speakup/selection.c
@@ -75,7 +75,7 @@ int speakup_set_selection(struct tty_struct *tty)
 		speakup_clear_selection();
 		spk_sel_cons = vc_cons[fg_console].d;
 		dev_warn(tty->dev,
-			"Selection: mark console not the same as cut\n");
+			 "Selection: mark console not the same as cut\n");
 		return -EINVAL;
 	}
 
diff --git a/drivers/staging/speakup/serialio.c b/drivers/staging/speakup/serialio.c
index aade52ee15a0..7e6bc3b05da3 100644
--- a/drivers/staging/speakup/serialio.c
+++ b/drivers/staging/speakup/serialio.c
@@ -118,7 +118,7 @@ static void start_serial_interrupt(int irq)
 		pr_err("Unable to request Speakup serial I R Q\n");
 	/* Set MCR */
 	outb(UART_MCR_DTR | UART_MCR_RTS | UART_MCR_OUT2,
-			speakup_info.port_tts + UART_MCR);
+	     speakup_info.port_tts + UART_MCR);
 	/* Turn on Interrupts */
 	outb(UART_IER_MSI | UART_IER_RLSI | UART_IER_RDI,
 	     speakup_info.port_tts + UART_IER);
diff --git a/drivers/staging/speakup/speakup_acntpc.c b/drivers/staging/speakup/speakup_acntpc.c
index bca386d9fbd1..0165b0f2452e 100644
--- a/drivers/staging/speakup/speakup_acntpc.c
+++ b/drivers/staging/speakup/speakup_acntpc.c
@@ -259,9 +259,9 @@ static int synth_probe(struct spk_synth *synth)
 	if (port_forced) {
 		speakup_info.port_tts = port_forced;
 		pr_info("probe forced to %x by kernel command line\n",
-				speakup_info.port_tts);
+			speakup_info.port_tts);
 		if (synth_request_region(speakup_info.port_tts - 1,
-					SYNTH_IO_EXTENT)) {
+		    SYNTH_IO_EXTENT)) {
 			pr_warn("sorry, port already reserved\n");
 			return -EBUSY;
 		}
@@ -270,7 +270,7 @@ static int synth_probe(struct spk_synth *synth)
 	} else {
 		for (i = 0; synth_portlist[i]; i++) {
 			if (synth_request_region(synth_portlist[i],
-						SYNTH_IO_EXTENT)) {
+			    SYNTH_IO_EXTENT)) {
 				pr_warn
 				    ("request_region: failed with 0x%x, %d\n",
 				     synth_portlist[i], SYNTH_IO_EXTENT);
diff --git a/drivers/staging/speakup/speakup_apollo.c b/drivers/staging/speakup/speakup_apollo.c
index 3f43f8105bc0..89cb7604c3b6 100644
--- a/drivers/staging/speakup/speakup_apollo.c
+++ b/drivers/staging/speakup/speakup_apollo.c
@@ -171,7 +171,7 @@ static void do_catch_up(struct spk_synth *synth)
 		if (!spk_serial_out(ch)) {
 			outb(UART_MCR_DTR, speakup_info.port_tts + UART_MCR);
 			outb(UART_MCR_DTR | UART_MCR_RTS,
-					speakup_info.port_tts + UART_MCR);
+			     speakup_info.port_tts + UART_MCR);
 			schedule_timeout(msecs_to_jiffies(full_time_val));
 			continue;
 		}
diff --git a/drivers/staging/speakup/speakup_decext.c b/drivers/staging/speakup/speakup_decext.c
index 6b74a97385da..5f9f3a7543db 100644
--- a/drivers/staging/speakup/speakup_decext.c
+++ b/drivers/staging/speakup/speakup_decext.c
@@ -204,11 +204,11 @@ static void do_catch_up(struct spk_synth *synth)
 				if (!in_escape)
 					spk_serial_out(PROCSPEECH);
 				spin_lock_irqsave(&speakup_info.spinlock,
-							flags);
+						  flags);
 				jiffy_delta_val = jiffy_delta->u.n.value;
 				delay_time_val = delay_time->u.n.value;
 				spin_unlock_irqrestore(&speakup_info.spinlock,
-							flags);
+						       flags);
 				schedule_timeout(msecs_to_jiffies
 						 (delay_time_val));
 				jiff_max = jiffies + jiffy_delta_val;
-- 
2.11.0


