X-GM-THRID: 6335472108323209216
X-Received: by 10.13.248.6 with SMTP id i6mr8080164ywf.160.1475092056527;
        Wed, 28 Sep 2016 12:47:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.3.17 with SMTP id e17ls4073298ite.21.canary; Wed, 28 Sep
 2016 12:47:36 -0700 (PDT)
X-Received: by 10.107.172.7 with SMTP id v7mr9798915ioe.22.1475092056087;
        Wed, 28 Sep 2016 12:47:36 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id a3si2362paw.1.2016.09.28.12.47.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 12:47:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id oz2so2428644pac.0
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Sep 2016 12:47:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=vmaTdbijeVmnQX+6mR7yWoIBiBkLxXXXfSN4oORFrVI=;
        b=EaQGosvvABfzdGR/7TGVcGvnjQURAxw1f8TyWSH69tUT0PkAAzOcAoNdhJE28szFox
         QWkshw5Nd0kvrHrL8r1FyPS1rsqQ89nSnsKsUQLSp0f8tqAoU03MwL4Nw57nVVTIfHCj
         v4pdFXb3XRPbCyJO53yfey4ICLgYvov94EEjcxLveU2H8h2RCz1JhPm+lUpxqEkATkWg
         O8t/sGoxPFMfFFGzkn3Eg5SwHyrhMXpFmENGA/aNbWEEhEZmYQAeY/vYMmb5qQqQSlK3
         nU0oYmAA3zo3505bDJg5iopXrGbmjonmrIWVXVxwHQ++JV7j6D/igEy1+GOyGOiGO7GW
         TTMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=vmaTdbijeVmnQX+6mR7yWoIBiBkLxXXXfSN4oORFrVI=;
        b=M7HVRbcUayaUXFP9Iu4qSIXflBSJxav14H/hjwYnGkBAY85UVnMurjNZPnVjfq0Pc5
         L3Izby0jpBXXIAKXBmzdIozpeKZD3Q93f+8ndDXPupOngMHwOe+moBzr1zEFA54bj9sc
         GC8BOvltO2ZXL7gqTZ1a/bhZBV9mT8LZZF0rVZnqidgCwmjNSB11th/9T8eCH+obewMj
         syF6DjS4/r5SbGoQjvZ5J/ErFPSxADvWcPW9hn3fFSkF6IHS8u5DVDuMgyNDaAQvrFv6
         bZZYJidkwtBUtGiZ403rfgaHpRe3QGqz55Bp1tVZT7xzYQRLVDgOg1kZtO7HCcIQlPq7
         mEFw==
X-Gm-Message-State: AA6/9Rl3ed3byBhFf7Wv3b1O60UYvlIegBLEkgPh5nM4s/lZgwHYsCl9HpPFwv4vmG8AWA==
X-Received: by 10.66.49.39 with SMTP id r7mr39846305pan.100.1475092055892;
        Wed, 28 Sep 2016 12:47:35 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id s74sm14455318pfs.44.2016.09.28.12.47.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 12:47:35 -0700 (PDT)
Date: Thu, 29 Sep 2016 01:17:30 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonas Rickert <jrickertkc@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/2] staging: rts5208: Add space around binary operators
Message-ID: <6e21cda4f6d7768bb0862a266f08643558e07888.1475089953.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475089953.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Add space around binary operators to resolve checkpatch issue.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/rts5208/rtsx_scsi.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_scsi.c b/drivers/staging/rts5208/rtsx_scsi.c
index def53d9..d11b173 100644
--- a/drivers/staging/rts5208/rtsx_scsi.c
+++ b/drivers/staging/rts5208/rtsx_scsi.c
@@ -484,14 +484,14 @@ static int inquiry(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 	u8 card = get_lun_card(chip, lun);
 	bool pro_formatter_flag = false;
 	unsigned char inquiry_buf[] = {
-		QULIFIRE|DRCT_ACCESS_DEV,
-		RMB_DISC|0x0D,
+		QULIFIRE | DRCT_ACCESS_DEV,
+		RMB_DISC | 0x0D,
 		0x00,
 		0x01,
 		0x1f,
 		0x02,
 		0,
-		REL_ADR|WBUS_32|WBUS_16|SYNC|LINKED|CMD_QUE|SFT_RE,
+		REL_ADR | WBUS_32 | WBUS_16 | SYNC | LINKED | CMD_QUE | SFT_RE,
 	};
 
 	if (CHECK_LUN_MODE(chip, SD_MS_2LUN)) {
@@ -1986,8 +1986,8 @@ static int read_phy_register(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 				return TRANSPORT_FAILED;
 			}
 
-			buf[2*i] = (u8)(val >> 8);
-			buf[2*i+1] = (u8)val;
+			buf[2 * i] = (u8)(val >> 8);
+			buf[2 * i + 1] = (u8)val;
 		}
 
 		len = (unsigned short)min_t(unsigned int, scsi_bufflen(srb),
@@ -2045,7 +2045,7 @@ static int write_phy_register(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 		}
 
 		for (i = 0; i < len / 2; i++) {
-			val = ((u16)buf[2*i] << 8) | buf[2*i+1];
+			val = ((u16)buf[2 * i] << 8) | buf[2 * i + 1];
 			retval = rtsx_write_phy_register(chip, addr + i, val);
 			if (retval != STATUS_SUCCESS) {
 				vfree(buf);
@@ -3067,18 +3067,18 @@ static int get_ms_information(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 	buf[i++] = 0x80;
 	if ((dev_info_id == 0x10) || (dev_info_id == 0x13)) {
 		/* System Information */
-		memcpy(buf+i, ms_card->raw_sys_info, 96);
+		memcpy(buf + i, ms_card->raw_sys_info, 96);
 	} else {
 		/* Model Name */
-		memcpy(buf+i, ms_card->raw_model_name, 48);
+		memcpy(buf + i, ms_card->raw_model_name, 48);
 	}
 
 	rtsx_stor_set_xfer_buf(buf, buf_len, srb);
 
 	if (dev_info_id == 0x15)
-		scsi_set_resid(srb, scsi_bufflen(srb)-0x3C);
+		scsi_set_resid(srb, scsi_bufflen(srb) - 0x3C);
 	else
-		scsi_set_resid(srb, scsi_bufflen(srb)-0x6C);
+		scsi_set_resid(srb, scsi_bufflen(srb) - 0x6C);
 
 	kfree(buf);
 	return STATUS_SUCCESS;
-- 
2.7.4


