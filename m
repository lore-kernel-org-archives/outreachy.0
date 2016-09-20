X-GM-THRID: 6332371296265961472
X-Received: by 10.129.137.6 with SMTP id z6mr5745211ywf.122.1474370193805;
        Tue, 20 Sep 2016 04:16:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.23.134 with SMTP id 128ls3303404ith.10.canary; Tue, 20 Sep
 2016 04:16:33 -0700 (PDT)
X-Received: by 10.98.66.197 with SMTP id h66mr5546673pfd.42.1474370193371;
        Tue, 20 Sep 2016 04:16:33 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id si10si6704451pab.1.2016.09.20.04.16.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 04:16:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 21so853588pfy.1
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 04:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=OV/xKlNLC1jJk966tjiyeWsJbhdrxRWz7Y35cCjBbWw=;
        b=mHFw2Day46zDpDppUGLsux+mRMXtTJl42z8DxZMK08+7tPLYJCijsr3Sonskmm/jMu
         bNo/fo0KwPFF2jy/TpIRZtOHkmCxOVrOwfTsSFi6dVFjqhOa1s8GwSOSzp5y8pVe6mIq
         AA2gKPiG1/2RezVssBbmwi9LVfroD6pZBREMgEtl91VPLHtSKUvXx2SN0LRcsMbUr6SR
         PLDTx+6GFe3CASNQ68UQ8woeMBgXTqR209C4eg6SDtZMdmgysQDGlhlwC5FvTpOfZsPo
         /PQAwhW3rn+l1C5rhmf4/AnJBxpK2CSygsdItjtKZAjLneXHakDGyZgUvBFNyf3CrjuW
         xXIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=OV/xKlNLC1jJk966tjiyeWsJbhdrxRWz7Y35cCjBbWw=;
        b=FBm16fgtJ8bxvZ1rlqtHAQzxVwJTFM8QAyDoDRQiwEzDVeJzI8nNe+BIv2YEg8Io3t
         KfwilI/wj19PXc4TIFSTLGihPzzJA7wV7ONU/Jyb5YTC2LTvgaEKgkKD02BvlBVe2sYo
         NMLlYLMs9DjZle6KQeAaa3Z4CHCQ6M8QFLXBKidRrPlHvB5uqyJithaQ2m2nCh60wPZ0
         2mwe1/xQ4b2DfvLj3URJljvuLcb1zgB/DVHjk1l6aOXF8l84PibyyLRXZOUshn/qmiLV
         TTr92pbihZcb/ls81mUtTsaCcZLlQhAzCaVx+t2rFXF3s7fJ+g0bEftyswtwwhzWOgYb
         DpYg==
X-Gm-Message-State: AE9vXwPtjSAbxTSRK023UlAgU1CLpm9FXiqK8t11MIY9fEzgVgTKQ3b8+fO2LSM6Glxsnw==
X-Received: by 10.98.79.27 with SMTP id d27mr55245156pfb.127.1474370193074;
        Tue, 20 Sep 2016 04:16:33 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id an11sm38490659pac.26.2016.09.20.04.16.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 04:16:32 -0700 (PDT)
Date: Tue, 20 Sep 2016 16:46:24 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 7/7] staging: rts5208: Remove space after cast
Message-ID: <906bb42470764b422e15e2decc6212d47df60645.1474369970.git.aquannie@gmail.com>
References: <cover.1474369970.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474369970.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Removes unnecessary space after a cast. Issue found by checkpatch.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/rts5208/rtsx.h | 4 ++--
 drivers/staging/rts5208/xd.c   | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx.h b/drivers/staging/rts5208/rtsx.h
index c0f513c..7a21e46 100644
--- a/drivers/staging/rts5208/rtsx.h
+++ b/drivers/staging/rts5208/rtsx.h
@@ -135,12 +135,12 @@ typedef struct rtsx_dev rtsx_dev_t;
 /* Convert between rtsx_dev and the corresponding Scsi_Host */
 static inline struct Scsi_Host *rtsx_to_host(struct rtsx_dev *dev)
 {
-	return container_of((void *) dev, struct Scsi_Host, hostdata);
+	return container_of((void *)dev, struct Scsi_Host, hostdata);
 }
 
 static inline struct rtsx_dev *host_to_rtsx(struct Scsi_Host *host)
 {
-	return (struct rtsx_dev *) host->hostdata;
+	return (struct rtsx_dev *)host->hostdata;
 }
 
 static inline void get_current_time(u8 *timeval_buf, int buf_len)
diff --git a/drivers/staging/rts5208/xd.c b/drivers/staging/rts5208/xd.c
index 2d6a606..bcac405 100644
--- a/drivers/staging/rts5208/xd.c
+++ b/drivers/staging/rts5208/xd.c
@@ -937,7 +937,7 @@ static void xd_set_unused_block(struct rtsx_chip *chip, u32 phy_blk)
 	dev_dbg(rtsx_dev(chip), "Set unused block to index %d\n",
 		zone->set_index);
 
-	zone->free_table[zone->set_index++] = (u16) (phy_blk & 0x3ff);
+	zone->free_table[zone->set_index++] = (u16)(phy_blk & 0x3ff);
 	if (zone->set_index >= XD_FREE_TABLE_CNT)
 		zone->set_index = 0;
 	zone->unused_blk_cnt++;
-- 
2.7.4


