X-GM-THRID: 6335472108323209216
X-Received: by 10.13.204.207 with SMTP id o198mr583289ywd.167.1475167067028;
        Thu, 29 Sep 2016 09:37:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.107.207 with SMTP id v198ls1387270itc.12.gmail; Thu, 29 Sep
 2016 09:37:44 -0700 (PDT)
X-Received: by 10.107.11.106 with SMTP id v103mr972445ioi.37.1475167064798;
        Thu, 29 Sep 2016 09:37:44 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id um12si3514489pab.2.2016.09.29.09.37.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 09:37:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q2so3789049pfj.0
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Sep 2016 09:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Auv2a0YsT2hS8NVwbMUV+qPjlRGqfTm8PAClqHL95Sk=;
        b=s6ucACAG/o9YtPStHwqv5NDZSKECSXKMU9j/R3lxbS3W29+NYcLLmVA5xNcyPxcVBZ
         9phcVJxoMPoadQ0oNbWI/0pGn8B4846zPRwuQVqTOG3KapGpKc1JYc+1wTt194c2EE3I
         SLdYtDKBzniJpBmclSGw/WN+i+OOKTzkveZELS7MDWUpHu5ZDkeZT9XehNlEgypzGb+x
         mrUayk6LUPQmJJkgZBm0Ir65k6UlEyPumneEzRnz9hgvn6Be5vN6iRmvvLq77Ll5Hgs3
         HBQn1Vv+rUE9cmHx2o4T6c2/Ctt/LUxCR15WqBRlRoLdheCfzgS3oJq2+MvYDRmnZ9hB
         mY4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Auv2a0YsT2hS8NVwbMUV+qPjlRGqfTm8PAClqHL95Sk=;
        b=BZhYtyu3PvwZ0dyRNTw8HtFE3U9rxeuI3ynd8HpBcoxwP1x4SDLgXTZAabzQoegKt2
         k2Wlnaf6wK47JGpAM76lMnyJiP2qAYjoOgdBj07lPV33kkhzTfZe8DNygKypAzABR46t
         1M/EynEcr1POCro7zueQXve7CNh2wEzO2vh92gbqit8wU/wgk79Qpsohw5jejAIPlhAa
         RhD+fuMbbowcN89DPU+74RISpYL46MJiMtshZNi74cpBukNu9Kd9YfKJrak2gRbW5dwf
         2Cqv6p6Z8S0KV6lr5Pc2uM5SRRGmVkIu8J/ySB7iWLBCkdq9Wpmyjdbq6x+KciK/dd4x
         1UzQ==
X-Gm-Message-State: AA6/9RnyJSDsJxSJqXRedWZIMLicYhejXWfGhDhR50mp1btgK1vbbE8UGR19wW/8lB/JcA==
X-Received: by 10.98.26.139 with SMTP id a133mr3840496pfa.167.1475167064622;
        Thu, 29 Sep 2016 09:37:44 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id ao5sm21564340pad.1.2016.09.29.09.37.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 09:37:44 -0700 (PDT)
Date: Thu, 29 Sep 2016 22:07:39 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonas Rickert <jrickertkc@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 2/2] staging: rts5208: Replace explicit NULL comparison
Message-ID: <3bd29afc56a6812f1264be0167d0fa83c152f904.1475155905.git.namrataashettar@gmail.com>
References: <cover.1475155905.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475155905.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace explicit NULL comparison to resolve checkpatch issues.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/rts5208/rtsx_scsi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/rtsx_scsi.c b/drivers/staging/rts5208/rtsx_scsi.c
index d11b173..becb4bb 100644
--- a/drivers/staging/rts5208/rtsx_scsi.c
+++ b/drivers/staging/rts5208/rtsx_scsi.c
@@ -1397,7 +1397,7 @@ static int trace_msg_cmd(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 	buf_len = 4 + ((2 + MSG_FUNC_LEN + MSG_FILE_LEN + TIME_VAL_LEN) *
 		TRACE_ITEM_CNT);
 
-	if ((scsi_bufflen(srb) < buf_len) || (scsi_sglist(srb) == NULL)) {
+	if ((scsi_bufflen(srb) < buf_len) || !scsi_sglist(srb)) {
 		set_sense_type(chip, SCSI_LUN(srb),
 			SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR);
 		rtsx_trace(chip);
-- 
2.7.4


