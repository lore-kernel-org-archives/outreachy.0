X-GM-THRID: 6250898457474629632
X-Received: by 10.182.148.71 with SMTP id tq7mr8340993obb.21.1455400711084;
        Sat, 13 Feb 2016 13:58:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.6.101 with SMTP id 98ls1150427iog.31.gmail; Sat, 13 Feb
 2016 13:58:30 -0800 (PST)
X-Received: by 10.66.145.232 with SMTP id sx8mr8310537pab.13.1455400710755;
        Sat, 13 Feb 2016 13:58:30 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x233.google.com (mail-qk0-x233.google.com. [2607:f8b0:400d:c09::233])
        by gmr-mx.google.com with ESMTPS id v197si1569009ywa.1.2016.02.13.13.58.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 13:58:30 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::233 as permitted sender) client-ip=2607:f8b0:400d:c09::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::233 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x233.google.com with SMTP id x1so43513449qkc.1
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 13:58:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=qZ8t8O4Vb7x2OgmTQHBqPjvKYe5d+zYjNYsfJ1Omguc=;
        b=Hi3TOLEHTdh+p3kePY9Pu2L90w6GoAUdrmW5pvp+mdj8jCbrkCxhWvVAhnZEg+SmCc
         datUnNdCWN5s685+iq3H+FanpwUTU0Ut5CpH1DRfirT6g6LbEzqDiF8PZboMzVoCL1m0
         omLezQ6QDoxNcMCx5FNpyveMdDNpEejqdnheB4fafm3UHXrafuz0AX0NHK7+yzj7Ukdw
         fROYIP9IO7kX8M62Ka/Z5k8eIz8FbQ5PovDp8GxUoF14XfR1Z8iYxehre+Pq9X/fhYbN
         EbtgijrNVAdaO32MgNGiY842HbZtduwEYwu03OG8f+fJ+XaY9i4cGuwfoGkc6i/xGekP
         y3lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=qZ8t8O4Vb7x2OgmTQHBqPjvKYe5d+zYjNYsfJ1Omguc=;
        b=Epip+MAxq34yxeg4BGuFb/QyO6m1d5ahSWA2q6bdP+nRLrarV905EoODCRcLPcOjEZ
         sT+/DXczudArJbslCww1g1wFwxmqhy7lBrsj/+0W2LuphYbPWKiXrS5ZUf9cwcNzDZkr
         lEkONenNssad4KaeRcnAmuhiC/WGK5FycIyrs+qGxRNyhYzLqU5jCT/j3TTi6LnIZ2ps
         OXuKkxGtj7Ajy7H+Fql6ESxtGUg/CiVwhnhd1rbD5vrjDfRbsJvIsRNxt0ZLAmrJ0p+N
         RBg8TUbUXI3MIhP/fQpcSMr/I0O61tgkPLREaBjv8jWPrapEAXA/al+ekfuCHDSCgmup
         jG4A==
X-Gm-Message-State: AG10YOTK4WXeJFhatzcpwWoUSHbDiHY1TOF/ajmJaQQXoahvY/TNav+ToB/By55UWssF2g==
X-Received: by 10.55.74.9 with SMTP id x9mr10981827qka.81.1455400710588;
        Sat, 13 Feb 2016 13:58:30 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 ([2620:cc:8000:212:5635:30ff:fe6b:610b])
        by smtp.gmail.com with ESMTPSA id 107sm8169410qge.16.2016.02.13.13.58.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 13:58:30 -0800 (PST)
Date: Sat, 13 Feb 2016 21:57:51 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rts5208: Place constants on the right side of
 comparisons
Message-ID: <20160214025751.GA24385@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Constants should be placed on the right hand side of comparisons. This
issue was identified by checkpatch.  

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/rts5208/sd.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rts5208/sd.c b/drivers/staging/rts5208/sd.c
index d6c4982..244d589 100644
--- a/drivers/staging/rts5208/sd.c
+++ b/drivers/staging/rts5208/sd.c
@@ -4260,10 +4260,10 @@ int sd_pass_thru_mode(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 		return TRANSPORT_FAILED;
 	}
 
-	if ((0x53 != srb->cmnd[2]) || (0x44 != srb->cmnd[3]) ||
-		(0x20 != srb->cmnd[4]) || (0x43 != srb->cmnd[5]) ||
-		(0x61 != srb->cmnd[6]) || (0x72 != srb->cmnd[7]) ||
-		(0x64 != srb->cmnd[8])) {
+	if ((srb->cmnd[2] != 0x53) || (srb->cmnd[3] != 0x44) ||
+		(srb->cmnd[4] != 0x20) || (srb->cmnd[5] != 0x43) ||
+		(srb->cmnd[6] != 0x61) || (srb->cmnd[7] != 0x72) ||
+		(srb->cmnd[8] != 0x64)) {
 		set_sense_type(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
 		rtsx_trace(chip);
 		return TRANSPORT_FAILED;
@@ -4284,7 +4284,7 @@ int sd_pass_thru_mode(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 		return TRANSPORT_FAILED;
 	}
 
-	buf[5] = (1 == CHK_SD(sd_card)) ?  0x01 : 0x02;
+	buf[5] = (CHK_SD(sd_card) == 1) ? 0x01 : 0x02;
 	if (chip->card_wp & SD_CARD)
 		buf[5] |= 0x80;
 
@@ -5176,10 +5176,10 @@ int sd_hw_rst(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 		return TRANSPORT_FAILED;
 	}
 
-	if ((0x53 != srb->cmnd[2]) || (0x44 != srb->cmnd[3]) ||
-		(0x20 != srb->cmnd[4]) || (0x43 != srb->cmnd[5]) ||
-		(0x61 != srb->cmnd[6]) || (0x72 != srb->cmnd[7]) ||
-		(0x64 != srb->cmnd[8])) {
+	if ((srb->cmnd[2] != 0x53) || (srb->cmnd[3] != 0x44) ||
+		(srb->cmnd[4] != 0x20) || (srb->cmnd[5] != 0x43) ||
+		(srb->cmnd[6] != 0x61) || (srb->cmnd[7] != 0x72) ||
+		(srb->cmnd[8] != 0x64)) {
 		set_sense_type(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
 		rtsx_trace(chip);
 		return TRANSPORT_FAILED;
@@ -5188,7 +5188,7 @@ int sd_hw_rst(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 	switch (srb->cmnd[1] & 0x0F) {
 	case 0:
 #ifdef SUPPORT_SD_LOCK
-		if (0x64 == srb->cmnd[9])
+		if (srb->cmnd[9] == 0x64)
 			sd_card->sd_lock_status |= SD_SDR_RST;
 #endif
 		retval = reset_sd_card(chip);
-- 
2.5.0


