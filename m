X-GM-THRID: 6335472108323209216
X-Received: by 10.66.240.67 with SMTP id vy3mr7395412pac.45.1475092067322;
        Wed, 28 Sep 2016 12:47:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.60.196 with SMTP id m187ls719585ita.1.gmail; Wed, 28 Sep
 2016 12:47:46 -0700 (PDT)
X-Received: by 10.107.3.96 with SMTP id 93mr8924865iod.3.1475092066805;
        Wed, 28 Sep 2016 12:47:46 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id um12si2474278pab.2.2016.09.28.12.47.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 12:47:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 21so2531191pfy.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Sep 2016 12:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=29chtDJPTYZIHRDupgbiQmn0uQjfZnbo5IHQsZjHQuY=;
        b=EFkhRLKdSDpV8orKc6nryBYtjBD+iPP+zx3MUwpatc0HUUy6FzkOtReLqsMjwkUqNL
         bUHTaoGIL6bIkZlxhCiI8z6gR52Fyigzh7Ec0/oaWePEtIlG62GO3RoX1sHE7E6nuEKm
         Cbr5MCi9BgT3LK0kT0gPOJAalI/KleELnxsclizUjA3jW8bKEbGAJVgccA5YuXnAy6Ob
         zXXGtL6hsTiDqjUGHbp8ed6zLnowOqNaKWzU7FKteeyecosphyzpPwtr0asBYYf4r3Je
         L0Ys8FArp96f9uXqxQrONOHd6t9ABAuCyYU8v6+bVyALJIsemw9YuLELVKtHWq1FDoCc
         jyQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=29chtDJPTYZIHRDupgbiQmn0uQjfZnbo5IHQsZjHQuY=;
        b=O0IWl2T2G1enzmb+5ThVbWCy3TFnB5Jb7bEs7kr/O69YcmkHlh+k1vBDpF9KcEExbP
         ggvoAFFpP8fooZwHxY0X+qcPpq5W30z56zLE4AMabMi6wUC8A9yMcnOQTujlcg4yBoes
         xGorWFDr46upaGEjPH/mOuD4NZadbX0GiSuYl0aANzBO5ovkCva2Qc7L35Nt3nhHI+XX
         S4BruuyMDcL7jeMvClbBFJ/cA4GN3I5X0XS0cOhmpKtfHdrNxfFC/5yG+1K+GBQ9Qqd9
         PuR/uKwwe9nQLsPzO8E5MWny5FdsnGGCumuiodMkauGhkt+MIVsqc1m3QYYUN39M7eIi
         1t6g==
X-Gm-Message-State: AE9vXwNZmDFwagXug8lBPNQn/9BrwrtHkLgx5BixjAUCwcLaFyqInxzs7up3Cj1Ouh0/Ng==
X-Received: by 10.98.34.221 with SMTP id p90mr60767144pfj.18.1475092066642;
        Wed, 28 Sep 2016 12:47:46 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id i7sm14510674paf.9.2016.09.28.12.47.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 12:47:46 -0700 (PDT)
Date: Thu, 29 Sep 2016 01:17:41 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonas Rickert <jrickertkc@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/2] staging: rts5208: Replace explicit NULL comparison
Message-ID: <1c71305629b78a42717f794e9b8e3eef3cc12010.1475089953.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475089953.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace explicit NULL comparison to resolve checkpatch issue.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/rts5208/rtsx_scsi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/rtsx_scsi.c b/drivers/staging/rts5208/rtsx_scsi.c
index d11b173..7c2ef03 100644
--- a/drivers/staging/rts5208/rtsx_scsi.c
+++ b/drivers/staging/rts5208/rtsx_scsi.c
@@ -1397,7 +1397,7 @@ static int trace_msg_cmd(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 	buf_len = 4 + ((2 + MSG_FUNC_LEN + MSG_FILE_LEN + TIME_VAL_LEN) *
 		TRACE_ITEM_CNT);
 
-	if ((scsi_bufflen(srb) < buf_len) || (scsi_sglist(srb) == NULL)) {
+	if ((scsi_bufflen(srb) < buf_len) || !(scsi_sglist(srb))) {
 		set_sense_type(chip, SCSI_LUN(srb),
 			SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR);
 		rtsx_trace(chip);
-- 
2.7.4


