X-GM-THRID: 6200019380500168704
X-Received: by 10.112.149.39 with SMTP id tx7mr4654932lbb.11.1443554503404;
        Tue, 29 Sep 2015 12:21:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.109.137 with SMTP id hs9ls16352wib.37.gmail; Tue, 29 Sep
 2015 12:21:43 -0700 (PDT)
X-Received: by 10.180.210.71 with SMTP id ms7mr64585wic.4.1443554503019;
        Tue, 29 Sep 2015 12:21:43 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id c1si704044wiv.3.2015.09.29.12.21.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 12:21:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id fx3so165400487wic.1
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Sep 2015 12:21:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Bvl/vVb/Z2GaXE6UDoHsJcfkCB0fv3aYQgJMPaEor84=;
        b=kL9KRH28vOgRiwNautui7fNcEt/+mwM2J3uvMRmJEof3FqaAykr72Kbm6skIxZKI+Y
         I11vRM6sqd3BAb8kftsiD70igVcZJbWjdzn4fxTXYToeFHq+sf8d8xy13VOorE9p9OGo
         KxklkS7+4l6pQEvZ0iTmz1C6uIKcCaFMhXBY2hwmf4Ydor4kKgFGivqMp2ctnzQDhmpt
         WBn3iEvlU5dIFjPvXHnMVYdpzz3Hei/efkez1sHTUMs/u6eE4CtKYEj64Iop4i9JQHLx
         25rdYV9ZC3SXq9SwnbAJr5OZVDMwozz1KV7Fk9gkNKqqno5cJyeXOT6oweZYGvzhwTB9
         cPHA==
X-Received: by 10.180.88.164 with SMTP id bh4mr386873wib.18.1443554502894;
        Tue, 29 Sep 2015 12:21:42 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id hx4sm25441125wjb.31.2015.09.29.12.21.41
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 29 Sep 2015 12:21:42 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: dgnc: show() methods should use scnprintf()
Date: Tue, 29 Sep 2015 21:21:35 +0200
Message-Id: <1443554495-16338-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

snprintf() may return a value that exceeds its second argument,
show() methods should use scnprintf() instead of snprintf().

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/dgnc/dgnc_sysfs.c | 52 +++++++++++++++++++--------------------
 1 file changed, 26 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_sysfs.c b/drivers/staging/dgnc/dgnc_sysfs.c
index 44db870..1267318 100644
--- a/drivers/staging/dgnc/dgnc_sysfs.c
+++ b/drivers/staging/dgnc/dgnc_sysfs.c
@@ -29,28 +29,28 @@
 
 static ssize_t dgnc_driver_version_show(struct device_driver *ddp, char *buf)
 {
-	return snprintf(buf, PAGE_SIZE, "%s\n", DG_PART);
+	return scnprintf(buf, PAGE_SIZE, "%s\n", DG_PART);
 }
 static DRIVER_ATTR(version, S_IRUSR, dgnc_driver_version_show, NULL);
 
 
 static ssize_t dgnc_driver_boards_show(struct device_driver *ddp, char *buf)
 {
-	return snprintf(buf, PAGE_SIZE, "%d\n", dgnc_NumBoards);
+	return scnprintf(buf, PAGE_SIZE, "%d\n", dgnc_NumBoards);
 }
 static DRIVER_ATTR(boards, S_IRUSR, dgnc_driver_boards_show, NULL);
 
 
 static ssize_t dgnc_driver_maxboards_show(struct device_driver *ddp, char *buf)
 {
-	return snprintf(buf, PAGE_SIZE, "%d\n", MAXBOARDS);
+	return scnprintf(buf, PAGE_SIZE, "%d\n", MAXBOARDS);
 }
 static DRIVER_ATTR(maxboards, S_IRUSR, dgnc_driver_maxboards_show, NULL);
 
 
 static ssize_t dgnc_driver_pollrate_show(struct device_driver *ddp, char *buf)
 {
-	return snprintf(buf, PAGE_SIZE, "%dms\n", dgnc_poll_tick);
+	return scnprintf(buf, PAGE_SIZE, "%dms\n", dgnc_poll_tick);
 }
 
 static ssize_t dgnc_driver_pollrate_store(struct device_driver *ddp,
@@ -156,7 +156,7 @@ static ssize_t dgnc_ports_state_show(struct device *p,
 	DGNC_VERIFY_BOARD(p, bd);
 
 	for (i = 0; i < bd->nasync; i++) {
-		count += snprintf(buf + count, PAGE_SIZE - count,
+		count += scnprintf(buf + count, PAGE_SIZE - count,
 			"%d %s\n", bd->channels[i]->ch_portnum,
 			bd->channels[i]->ch_open_count ? "Open" : "Closed");
 	}
@@ -175,7 +175,7 @@ static ssize_t dgnc_ports_baud_show(struct device *p,
 	DGNC_VERIFY_BOARD(p, bd);
 
 	for (i = 0; i < bd->nasync; i++) {
-		count +=  snprintf(buf + count, PAGE_SIZE - count,
+		count +=  scnprintf(buf + count, PAGE_SIZE - count,
 			"%d %d\n", bd->channels[i]->ch_portnum,
 			bd->channels[i]->ch_old_baud);
 	}
@@ -196,7 +196,7 @@ static ssize_t dgnc_ports_msignals_show(struct device *p,
 
 	for (i = 0; i < bd->nasync; i++) {
 		if (bd->channels[i]->ch_open_count) {
-			count += snprintf(buf + count, PAGE_SIZE - count,
+			count += scnprintf(buf + count, PAGE_SIZE - count,
 				"%d %s %s %s %s %s %s\n",
 				bd->channels[i]->ch_portnum,
 				(bd->channels[i]->ch_mostat & UART_MCR_RTS) ? "RTS" : "",
@@ -206,7 +206,7 @@ static ssize_t dgnc_ports_msignals_show(struct device *p,
 				(bd->channels[i]->ch_mistat & UART_MSR_DCD) ? "DCD" : "",
 				(bd->channels[i]->ch_mistat & UART_MSR_RI)  ? "RI"  : "");
 		} else {
-			count += snprintf(buf + count, PAGE_SIZE - count,
+			count += scnprintf(buf + count, PAGE_SIZE - count,
 				"%d\n", bd->channels[i]->ch_portnum);
 		}
 	}
@@ -225,7 +225,7 @@ static ssize_t dgnc_ports_iflag_show(struct device *p,
 	DGNC_VERIFY_BOARD(p, bd);
 
 	for (i = 0; i < bd->nasync; i++) {
-		count += snprintf(buf + count, PAGE_SIZE - count, "%d %x\n",
+		count += scnprintf(buf + count, PAGE_SIZE - count, "%d %x\n",
 			bd->channels[i]->ch_portnum,
 			bd->channels[i]->ch_c_iflag);
 	}
@@ -244,7 +244,7 @@ static ssize_t dgnc_ports_cflag_show(struct device *p,
 	DGNC_VERIFY_BOARD(p, bd);
 
 	for (i = 0; i < bd->nasync; i++) {
-		count += snprintf(buf + count, PAGE_SIZE - count, "%d %x\n",
+		count += scnprintf(buf + count, PAGE_SIZE - count, "%d %x\n",
 			bd->channels[i]->ch_portnum,
 			bd->channels[i]->ch_c_cflag);
 	}
@@ -263,7 +263,7 @@ static ssize_t dgnc_ports_oflag_show(struct device *p,
 	DGNC_VERIFY_BOARD(p, bd);
 
 	for (i = 0; i < bd->nasync; i++) {
-		count += snprintf(buf + count, PAGE_SIZE - count, "%d %x\n",
+		count += scnprintf(buf + count, PAGE_SIZE - count, "%d %x\n",
 			bd->channels[i]->ch_portnum,
 			bd->channels[i]->ch_c_oflag);
 	}
@@ -282,7 +282,7 @@ static ssize_t dgnc_ports_lflag_show(struct device *p,
 	DGNC_VERIFY_BOARD(p, bd);
 
 	for (i = 0; i < bd->nasync; i++) {
-		count += snprintf(buf + count, PAGE_SIZE - count, "%d %x\n",
+		count += scnprintf(buf + count, PAGE_SIZE - count, "%d %x\n",
 			bd->channels[i]->ch_portnum,
 			bd->channels[i]->ch_c_lflag);
 	}
@@ -302,7 +302,7 @@ static ssize_t dgnc_ports_digi_flag_show(struct device *p,
 	DGNC_VERIFY_BOARD(p, bd);
 
 	for (i = 0; i < bd->nasync; i++) {
-		count += snprintf(buf + count, PAGE_SIZE - count, "%d %x\n",
+		count += scnprintf(buf + count, PAGE_SIZE - count, "%d %x\n",
 			bd->channels[i]->ch_portnum,
 			bd->channels[i]->ch_digi.digi_flags);
 	}
@@ -321,7 +321,7 @@ static ssize_t dgnc_ports_rxcount_show(struct device *p,
 	DGNC_VERIFY_BOARD(p, bd);
 
 	for (i = 0; i < bd->nasync; i++) {
-		count += snprintf(buf + count, PAGE_SIZE - count, "%d %ld\n",
+		count += scnprintf(buf + count, PAGE_SIZE - count, "%d %ld\n",
 			bd->channels[i]->ch_portnum,
 			bd->channels[i]->ch_rxcount);
 	}
@@ -340,7 +340,7 @@ static ssize_t dgnc_ports_txcount_show(struct device *p,
 	DGNC_VERIFY_BOARD(p, bd);
 
 	for (i = 0; i < bd->nasync; i++) {
-		count += snprintf(buf + count, PAGE_SIZE - count, "%d %ld\n",
+		count += scnprintf(buf + count, PAGE_SIZE - count, "%d %ld\n",
 			bd->channels[i]->ch_portnum,
 			bd->channels[i]->ch_txcount);
 	}
@@ -413,7 +413,7 @@ static ssize_t dgnc_tty_state_show(struct device *d,
 	if (bd->state != BOARD_READY)
 		return 0;
 
-	return snprintf(buf, PAGE_SIZE, "%s",
+	return scnprintf(buf, PAGE_SIZE, "%s",
 			un->un_open_count ? "Open" : "Closed");
 }
 static DEVICE_ATTR(state, S_IRUSR, dgnc_tty_state_show, NULL);
@@ -440,7 +440,7 @@ static ssize_t dgnc_tty_baud_show(struct device *d,
 	if (bd->state != BOARD_READY)
 		return 0;
 
-	return snprintf(buf, PAGE_SIZE, "%d\n", ch->ch_old_baud);
+	return scnprintf(buf, PAGE_SIZE, "%d\n", ch->ch_old_baud);
 }
 static DEVICE_ATTR(baud, S_IRUSR, dgnc_tty_baud_show, NULL);
 
@@ -467,7 +467,7 @@ static ssize_t dgnc_tty_msignals_show(struct device *d,
 		return 0;
 
 	if (ch->ch_open_count) {
-		return snprintf(buf, PAGE_SIZE, "%s %s %s %s %s %s\n",
+		return scnprintf(buf, PAGE_SIZE, "%s %s %s %s %s %s\n",
 			(ch->ch_mostat & UART_MCR_RTS) ? "RTS" : "",
 			(ch->ch_mistat & UART_MSR_CTS) ? "CTS" : "",
 			(ch->ch_mostat & UART_MCR_DTR) ? "DTR" : "",
@@ -501,7 +501,7 @@ static ssize_t dgnc_tty_iflag_show(struct device *d,
 	if (bd->state != BOARD_READY)
 		return 0;
 
-	return snprintf(buf, PAGE_SIZE, "%x\n", ch->ch_c_iflag);
+	return scnprintf(buf, PAGE_SIZE, "%x\n", ch->ch_c_iflag);
 }
 static DEVICE_ATTR(iflag, S_IRUSR, dgnc_tty_iflag_show, NULL);
 
@@ -527,7 +527,7 @@ static ssize_t dgnc_tty_cflag_show(struct device *d,
 	if (bd->state != BOARD_READY)
 		return 0;
 
-	return snprintf(buf, PAGE_SIZE, "%x\n", ch->ch_c_cflag);
+	return scnprintf(buf, PAGE_SIZE, "%x\n", ch->ch_c_cflag);
 }
 static DEVICE_ATTR(cflag, S_IRUSR, dgnc_tty_cflag_show, NULL);
 
@@ -553,7 +553,7 @@ static ssize_t dgnc_tty_oflag_show(struct device *d,
 	if (bd->state != BOARD_READY)
 		return 0;
 
-	return snprintf(buf, PAGE_SIZE, "%x\n", ch->ch_c_oflag);
+	return scnprintf(buf, PAGE_SIZE, "%x\n", ch->ch_c_oflag);
 }
 static DEVICE_ATTR(oflag, S_IRUSR, dgnc_tty_oflag_show, NULL);
 
@@ -579,7 +579,7 @@ static ssize_t dgnc_tty_lflag_show(struct device *d,
 	if (bd->state != BOARD_READY)
 		return 0;
 
-	return snprintf(buf, PAGE_SIZE, "%x\n", ch->ch_c_lflag);
+	return scnprintf(buf, PAGE_SIZE, "%x\n", ch->ch_c_lflag);
 }
 static DEVICE_ATTR(lflag, S_IRUSR, dgnc_tty_lflag_show, NULL);
 
@@ -605,7 +605,7 @@ static ssize_t dgnc_tty_digi_flag_show(struct device *d,
 	if (bd->state != BOARD_READY)
 		return 0;
 
-	return snprintf(buf, PAGE_SIZE, "%x\n", ch->ch_digi.digi_flags);
+	return scnprintf(buf, PAGE_SIZE, "%x\n", ch->ch_digi.digi_flags);
 }
 static DEVICE_ATTR(digi_flag, S_IRUSR, dgnc_tty_digi_flag_show, NULL);
 
@@ -631,7 +631,7 @@ static ssize_t dgnc_tty_rxcount_show(struct device *d,
 	if (bd->state != BOARD_READY)
 		return 0;
 
-	return snprintf(buf, PAGE_SIZE, "%ld\n", ch->ch_rxcount);
+	return scnprintf(buf, PAGE_SIZE, "%ld\n", ch->ch_rxcount);
 }
 static DEVICE_ATTR(rxcount, S_IRUSR, dgnc_tty_rxcount_show, NULL);
 
@@ -657,7 +657,7 @@ static ssize_t dgnc_tty_txcount_show(struct device *d,
 	if (bd->state != BOARD_READY)
 		return 0;
 
-	return snprintf(buf, PAGE_SIZE, "%ld\n", ch->ch_txcount);
+	return scnprintf(buf, PAGE_SIZE, "%ld\n", ch->ch_txcount);
 }
 static DEVICE_ATTR(txcount, S_IRUSR, dgnc_tty_txcount_show, NULL);
 
@@ -683,7 +683,7 @@ static ssize_t dgnc_tty_name_show(struct device *d,
 	if (bd->state != BOARD_READY)
 		return 0;
 
-	return snprintf(buf, PAGE_SIZE, "%sn%d%c\n",
+	return scnprintf(buf, PAGE_SIZE, "%sn%d%c\n",
 		(un->un_type == DGNC_PRINT) ? "pr" : "tty",
 		bd->boardnum + 1, 'a' + ch->ch_portnum);
 }
-- 
1.9.1


