X-GM-THRID: 6335472108323209216
X-Received: by 10.200.54.136 with SMTP id a8mr655916qtc.5.1475166939249;
        Thu, 29 Sep 2016 09:35:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.38.213 with SMTP id i21ls2182396otd.8.gmail; Thu, 29 Sep
 2016 09:35:38 -0700 (PDT)
X-Received: by 10.176.69.66 with SMTP id r60mr661374uar.26.1475166938906;
        Thu, 29 Sep 2016 09:35:38 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id x73si784988pfd.1.2016.09.29.09.35.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 09:35:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 21so3800433pfy.1
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Sep 2016 09:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=vmaTdbijeVmnQX+6mR7yWoIBiBkLxXXXfSN4oORFrVI=;
        b=Cam6+k++QVT4xHppfVsiJoAJthMY0NSk/uhN35PMuUWBdcnU8pOnkoQlbCN80lepkX
         gwN5bOFW1pjDM8N8wyWg1HWV6dhCE6o9CbHV7dx+DSZ8MDSNmzClzBV7mIdtSft2rNvZ
         1pFw8j9BEyOHFqiPWWIHEDmmbhxkS2QpG1l9jbHgkaHuAmA6KYwu0KPwWTg4C65mBFqA
         ncbEQHIyvVpopOnICFI93vkOrN7rqocjwaXpP3n+Rs+86IaZyFGImhme7/uDQIW81dTq
         NTJtpAT8hpdAzdlU6toKi6yXCFWqHQp/WcGbjGqXHxLg5AFEabG9wW7XZHj+P+mJ1Dew
         9yBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=vmaTdbijeVmnQX+6mR7yWoIBiBkLxXXXfSN4oORFrVI=;
        b=Wp4gbOi698GKostXCiTaDEH/jjnDvvulvf1oDihwMGdvTXhqYbRWk9HT4ksTybVJnl
         04PMf6xIJdl+H3NGw1coHSu/sfQFu9yv75Q9gws9a0Z77ObBvwCiCzcUCBigN1Mkw6mx
         YQCtALldThb+vpzXmaI03K/CVUUWTS2mecQTErkzzFASmdiUCz3SNHklDrEs0Ppw9Kyr
         Q/w6SUmj1Hu3gbsRmh/kktj5YW8PoeJdbzKlf1kBLz9z9madvG7nDOpGcbVhmvX9YtQH
         wdOUajTbpa4xbddR8IFRo8wjALFZ9XpXoj8/iXdAw7xeiZW/28Oaer+88D8ymTPajtvZ
         AO7g==
X-Gm-Message-State: AA6/9RnUNWeySS1fFuPI3LbQX7csfF//weu6p7XKds8aBHiaa8OtooOinRXAaLXMW5bEhQ==
X-Received: by 10.98.195.17 with SMTP id v17mr3070645pfg.27.1475166938703;
        Thu, 29 Sep 2016 09:35:38 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id l80sm10045509pfb.25.2016.09.29.09.35.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 09:35:38 -0700 (PDT)
Date: Thu, 29 Sep 2016 22:05:31 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonas Rickert <jrickertkc@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 1/2] staging: rts5208: Add space around binary operators
Message-ID: <d5f41a2cc149aabfce1853b8d133ccc3ce13f3f6.1475155905.git.namrataashettar@gmail.com>
References: <cover.1475155905.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475155905.git.namrataashettar@gmail.com>
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


