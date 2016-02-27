X-GM-THRID: 6255949616211034112
X-Received: by 10.50.13.69 with SMTP id f5mr2248430igc.7.1456576784655;
        Sat, 27 Feb 2016 04:39:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.89.165 with SMTP id v34ls1891074qgd.33.gmail; Sat, 27 Feb
 2016 04:39:44 -0800 (PST)
X-Received: by 10.140.181.198 with SMTP id c189mr5043279qha.24.1456576784107;
        Sat, 27 Feb 2016 04:39:44 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id y20si390447pfa.2.2016.02.27.04.39.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 04:39:44 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id y7so5914489paa.0
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 04:39:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=eBgGly5KH8fnWv3GmBVN2PP7NVWJIkULcivlgPXzgog=;
        b=Q8BZgk8uNKrC30gOZPhhiRnOpjpSmU8gjUXvpFrbXkZnwhgRUIHU7LW/FB2MRv87sb
         idERJfhgDHSCIU0GH6nbFJv5SY3zgpgGc1eidfBQ3cfOIfKQtHBdvoZs0NfTmfwQqKpd
         ItYZb/XyAesaA9uXTdJInBJkVemCAS7EV7A5QXdGArhriY55s05/+GoJwm5FmgrXkuOx
         rQSA1HjJxklIInpisqzqph+tcJeR1IWNyQo6AShErDCGsip1Zjug2rJs3J6UEsuBU7rc
         3OYKlBt2YP8cqqz3mFxdn/upJfnhNu03rj/4GDaNjAAK5PKl7PDoyQJY8IR83kWxhwf5
         98wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=eBgGly5KH8fnWv3GmBVN2PP7NVWJIkULcivlgPXzgog=;
        b=ODn+fen1fk9eyXCAOA0gMqmfDfVQ8VPQz92+rFhXY7P0VzGxITWHz1r4s4JNzIK6mM
         3neqGBQFBGOsqXWZmKVMg/P33/V/P1L5TGvLJS3cmfk8ryZuhy5Rv5DTbRAW/lHF/0hr
         b1P2MSOZWOYpWzD355XC7CMfcs3kI9dx8TrrajY/L1ZlVWWjbJthMG5dSo5PQ6J0opQ8
         Id+qerkDXSwza3iKFSzG9j7ooam6miXimgtZ0dvTEcSgHLUnxybCnTZiAqzufCuIEdyA
         oRKBrr8E1NiFmlPhFhexvD50+/xGit7uk1ToYVikR8Ch0+6yWSd6yps4K/hm22wYfb6g
         m7/Q==
X-Gm-Message-State: AD7BkJKkJLRI2HL2NURiWJUaMqm3igWkOIcvuKfdKmh3zNzg6mA4V2syr0B5aS1ACqgJJA==
X-Received: by 10.66.231.100 with SMTP id tf4mr9217406pac.44.1456576783887;
        Sat, 27 Feb 2016 04:39:43 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.121.192])
        by smtp.gmail.com with ESMTPSA id o184sm26002743pfo.36.2016.02.27.04.39.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 04:39:43 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 3/4] staging: rts5208: simplify NULL tests
Date: Sat, 27 Feb 2016 20:39:24 +0800
Message-Id: <1456576765-29100-4-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1456576765-29100-1-git-send-email-eraretuya@gmail.com>
References: <1456576765-29100-1-git-send-email-eraretuya@gmail.com>

Replace direct comparisons to NULL i.e. 'x == NULL' with '!x' for
consistency. Coccinelle semantic patch used:

@@
identifier func;
expression x;
statement Z;
@@

x = func(...);

if (
(
+	!
	x
-	== NULL
|
+	!
-	NULL ==
	x
)
   ) Z

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/rts5208/ms.c        |  8 ++++----
 drivers/staging/rts5208/rtsx.c      |  6 +++---
 drivers/staging/rts5208/rtsx_scsi.c | 22 +++++++++++-----------
 drivers/staging/rts5208/sd.c        |  4 ++--
 drivers/staging/rts5208/spi.c       |  2 +-
 drivers/staging/rts5208/xd.c        |  4 ++--
 6 files changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/rts5208/ms.c b/drivers/staging/rts5208/ms.c
index cdaa1ab..bb4b768 100644
--- a/drivers/staging/rts5208/ms.c
+++ b/drivers/staging/rts5208/ms.c
@@ -1039,7 +1039,7 @@ static int ms_read_attribute_info(struct rtsx_chip *chip)
 	}
 
 	buf = kmalloc(64 * 512, GFP_KERNEL);
-	if (buf == NULL) {
+	if (!buf) {
 		rtsx_trace(chip);
 		return STATUS_ERROR;
 	}
@@ -2405,7 +2405,7 @@ static int ms_init_l2p_tbl(struct rtsx_chip *chip)
 
 	size = ms_card->segment_cnt * sizeof(struct zone_entry);
 	ms_card->segment = vzalloc(size);
-	if (ms_card->segment == NULL) {
+	if (!ms_card->segment) {
 		rtsx_trace(chip);
 		return STATUS_FAIL;
 	}
@@ -2614,7 +2614,7 @@ static int ms_build_l2p_tbl(struct rtsx_chip *chip, int seg_no)
 
 	if (segment->l2p_table == NULL) {
 		segment->l2p_table = vmalloc(table_size * 2);
-		if (segment->l2p_table == NULL) {
+		if (!segment->l2p_table) {
 			rtsx_trace(chip);
 			goto BUILD_FAIL;
 		}
@@ -2623,7 +2623,7 @@ static int ms_build_l2p_tbl(struct rtsx_chip *chip, int seg_no)
 
 	if (segment->free_table == NULL) {
 		segment->free_table = vmalloc(MS_FREE_TABLE_CNT * 2);
-		if (segment->free_table == NULL) {
+		if (!segment->free_table) {
 			rtsx_trace(chip);
 			goto BUILD_FAIL;
 		}
diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
index 5dfcdfb..af23711 100644
--- a/drivers/staging/rts5208/rtsx.c
+++ b/drivers/staging/rts5208/rtsx.c
@@ -880,7 +880,7 @@ static int rtsx_probe(struct pci_dev *pci,
 	memset(dev, 0, sizeof(struct rtsx_dev));
 
 	dev->chip = kzalloc(sizeof(struct rtsx_chip), GFP_KERNEL);
-	if (dev->chip == NULL) {
+	if (!dev->chip) {
 		err = -ENOMEM;
 		goto errout;
 	}
@@ -901,7 +901,7 @@ static int rtsx_probe(struct pci_dev *pci,
 		 (unsigned int)pci_resource_len(pci, 0));
 	dev->addr = pci_resource_start(pci, 0);
 	dev->remap_addr = ioremap_nocache(dev->addr, pci_resource_len(pci, 0));
-	if (dev->remap_addr == NULL) {
+	if (!dev->remap_addr) {
 		dev_err(&pci->dev, "ioremap error\n");
 		err = -ENXIO;
 		goto errout;
@@ -916,7 +916,7 @@ static int rtsx_probe(struct pci_dev *pci,
 
 	dev->rtsx_resv_buf = dmam_alloc_coherent(&pci->dev, RTSX_RESV_BUF_LEN,
 			&dev->rtsx_resv_buf_addr, GFP_KERNEL);
-	if (dev->rtsx_resv_buf == NULL) {
+	if (!dev->rtsx_resv_buf) {
 		dev_err(&pci->dev, "alloc dma buffer fail\n");
 		err = -ENXIO;
 		goto errout;
diff --git a/drivers/staging/rts5208/rtsx_scsi.c b/drivers/staging/rts5208/rtsx_scsi.c
index 60871f3..02aff0c 100644
--- a/drivers/staging/rts5208/rtsx_scsi.c
+++ b/drivers/staging/rts5208/rtsx_scsi.c
@@ -507,7 +507,7 @@ static int inquiry(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 	}
 
 	buf = vmalloc(scsi_bufflen(srb));
-	if (buf == NULL) {
+	if (!buf) {
 		rtsx_trace(chip);
 		return TRANSPORT_ERROR;
 	}
@@ -644,7 +644,7 @@ static int request_sense(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 	}
 
 	buf = vmalloc(scsi_bufflen(srb));
-	if (buf == NULL) {
+	if (!buf) {
 		rtsx_trace(chip);
 		return TRANSPORT_ERROR;
 	}
@@ -792,7 +792,7 @@ static int mode_sense(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 #endif
 
 	buf = kmalloc(dataSize, GFP_KERNEL);
-	if (buf == NULL) {
+	if (!buf) {
 		rtsx_trace(chip);
 		return TRANSPORT_ERROR;
 	}
@@ -1017,7 +1017,7 @@ static int read_format_capacity(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 	buf_len = (scsi_bufflen(srb) > 12) ? 0x14 : 12;
 
 	buf = kmalloc(buf_len, GFP_KERNEL);
-	if (buf == NULL) {
+	if (!buf) {
 		rtsx_trace(chip);
 		return TRANSPORT_ERROR;
 	}
@@ -1096,7 +1096,7 @@ static int read_capacity(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 	}
 
 	buf = kmalloc(8, GFP_KERNEL);
-	if (buf == NULL) {
+	if (!buf) {
 		rtsx_trace(chip);
 		return TRANSPORT_ERROR;
 	}
@@ -1206,7 +1206,7 @@ static int write_eeprom(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 		len = (unsigned short)min_t(unsigned int, scsi_bufflen(srb),
 					len);
 		buf = vmalloc(len);
-		if (buf == NULL) {
+		if (!buf) {
 			rtsx_trace(chip);
 			return TRANSPORT_ERROR;
 		}
@@ -1315,7 +1315,7 @@ static int write_mem(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 
 	len = (unsigned short)min_t(unsigned int, scsi_bufflen(srb), len);
 	buf = vmalloc(len);
-	if (buf == NULL) {
+	if (!buf) {
 		rtsx_trace(chip);
 		return TRANSPORT_ERROR;
 	}
@@ -1410,7 +1410,7 @@ static int trace_msg_cmd(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 	clear = srb->cmnd[2];
 
 	buf = vmalloc(scsi_bufflen(srb));
-	if (buf == NULL) {
+	if (!buf) {
 		rtsx_trace(chip);
 		return TRANSPORT_ERROR;
 	}
@@ -2035,7 +2035,7 @@ static int write_phy_register(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 					len);
 
 		buf = vmalloc(len);
-		if (buf == NULL) {
+		if (!buf) {
 			rtsx_trace(chip);
 			return TRANSPORT_ERROR;
 		}
@@ -2191,7 +2191,7 @@ static int write_eeprom2(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 
 	len = (unsigned short)min_t(unsigned int, scsi_bufflen(srb), len);
 	buf = vmalloc(len);
-	if (buf == NULL) {
+	if (!buf) {
 		rtsx_trace(chip);
 		return TRANSPORT_ERROR;
 	}
@@ -2295,7 +2295,7 @@ static int write_efuse(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 
 	len = (u8)min_t(unsigned int, scsi_bufflen(srb), len);
 	buf = vmalloc(len);
-	if (buf == NULL) {
+	if (!buf) {
 		rtsx_trace(chip);
 		return TRANSPORT_ERROR;
 	}
diff --git a/drivers/staging/rts5208/sd.c b/drivers/staging/rts5208/sd.c
index 244d589..937c761 100644
--- a/drivers/staging/rts5208/sd.c
+++ b/drivers/staging/rts5208/sd.c
@@ -4588,7 +4588,7 @@ int sd_execute_read_data(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 		cmd[4] = srb->cmnd[6];
 
 		buf = kmalloc(data_len, GFP_KERNEL);
-		if (buf == NULL) {
+		if (!buf) {
 			rtsx_trace(chip);
 			return TRANSPORT_ERROR;
 		}
@@ -4871,7 +4871,7 @@ int sd_execute_write_data(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 		u8 *buf;
 
 		buf = kmalloc(data_len, GFP_KERNEL);
-		if (buf == NULL) {
+		if (!buf) {
 			rtsx_trace(chip);
 			return TRANSPORT_ERROR;
 		}
diff --git a/drivers/staging/rts5208/spi.c b/drivers/staging/rts5208/spi.c
index 2e1e6cb..26eb2a1 100644
--- a/drivers/staging/rts5208/spi.c
+++ b/drivers/staging/rts5208/spi.c
@@ -662,7 +662,7 @@ int spi_read_flash(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 	}
 
 	buf = kmalloc(SF_PAGE_LEN, GFP_KERNEL);
-	if (buf == NULL) {
+	if (!buf) {
 		rtsx_trace(chip);
 		return STATUS_ERROR;
 	}
diff --git a/drivers/staging/rts5208/xd.c b/drivers/staging/rts5208/xd.c
index 10fea7b..fe84f75 100644
--- a/drivers/staging/rts5208/xd.c
+++ b/drivers/staging/rts5208/xd.c
@@ -1435,7 +1435,7 @@ static int xd_build_l2p_tbl(struct rtsx_chip *chip, int zone_no)
 
 	if (zone->l2p_table == NULL) {
 		zone->l2p_table = vmalloc(2000);
-		if (zone->l2p_table == NULL) {
+		if (!zone->l2p_table) {
 			rtsx_trace(chip);
 			goto Build_Fail;
 		}
@@ -1444,7 +1444,7 @@ static int xd_build_l2p_tbl(struct rtsx_chip *chip, int zone_no)
 
 	if (zone->free_table == NULL) {
 		zone->free_table = vmalloc(XD_FREE_TABLE_CNT * 2);
-		if (zone->free_table == NULL) {
+		if (!zone->free_table) {
 			rtsx_trace(chip);
 			goto Build_Fail;
 		}
-- 
1.9.1


