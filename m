X-GM-THRID: 6804107396790616064
X-Received: by 2002:a25:bb4f:: with SMTP id b15mr26238411ybk.175.1584207807057;
        Sat, 14 Mar 2020 10:43:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:c102:: with SMTP id r2ls4500136ybf.5.gmail; Sat, 14 Mar
 2020 10:43:25 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuh9Q55GWpebQDogz2MczI5wdyzgH2KFSgyco+zn3Y6f1lpMwWRTbF61qkfbqqlz3M4/St+
X-Received: by 2002:a25:a2cc:: with SMTP id c12mr17690092ybn.70.1584207805721;
        Sat, 14 Mar 2020 10:43:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584207805; cv=none;
        d=google.com; s=arc-20160816;
        b=zEBoTgYQmxD/V9UbUn0bFPxEeihn/63LYI/z2eN+Jrfzi6Yd0uXxzayJ8VkOIZZeRs
         GNihmzIIhMNxl3TqL33PBYsf5hz5MXdGFQRfw6HOru+HMp3by19r7Cd/n01+kOp8L8mg
         e0T9O4KAg7mqKP1RP0Ki2gz9inL3nTxGuslc28GbxQ9dttqOeoYkqhvGWtJ1QegKqqUb
         KPOhR8Vxfw+sqPYEw2uF8u2CyszNkRFqCpNJ7acWr85XFx3LwCyVOHvxt+tviAVezVjt
         MGRGqk+KMuMmDKHIdgP7VhxsBbwzwfUoCTV/h0I4qZ4EkJB3QroCWt/sSr4Gqdv0RiWD
         d7dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=snfXEPiDf6nuYI7gJkhkumcMKfPKPc9oxxz9Dc5ZZ1I=;
        b=ZiHg1jFadTk8UrzzA5tNkNlyzDf8QOPuR4HSRChsb0zbEYwaiLYZnmsCB4VReOUSOz
         3y5HCxZ7aCDFoWho1dlie3Y6wtBOGM3HfOa30f18XVT2tH3823EwV3Qq9utVsihGz/ob
         wyDdYKltQTso6t2ciX23Qbh6YD/JGVEuF0O/FImj+iVsDmUgwjGDPlg4FCsDs3zah+x4
         qcDuH9rGDHXE8w2lyhY5wgD3ByO2DmIzDypfgjkuwUzVrT9ma4oo90yHYyB1xCFbDSOb
         hwMvBzlsm13idW+Qh3HSfqQSk3D33LUMXGXiNb9BMrf0d8nAwmhUOR9QBZCPcXOOuUyr
         PTGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mgSLT56S;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id x13si1045796ybs.4.2020.03.14.10.43.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2020 10:43:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mgSLT56S;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id mj6so5617166pjb.5
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2020 10:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=snfXEPiDf6nuYI7gJkhkumcMKfPKPc9oxxz9Dc5ZZ1I=;
        b=mgSLT56SNH/1SYS787M4cz89hwqZXAljqOXinSzTkALUDz5pUEjWv0VLY2REkDvqNV
         DQ0fpimnB16WW/bhH6TIZgEFkQaGWpFkRSvRVqKF9P3yMT2Cg7rnD2lrpV545iYt9Wcy
         W+Ou5T6xD33aK1KghXDJWj9yVqRLNHW62d0BDVnwEhOvjM4q6tV6euFaEFEnFhI8d58I
         JMlmR0UqG3PBhnU+aeckimchsHL+AwyApG7c+SeGYDHcndZY02lD2KKwg578puQmBweI
         UlffZ0Bvj+zebjOo0Pmm/dLYVDAHMwERUcpuaosbw+bNs13SmN2O1ews6Y32zmD3OVBD
         HpGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=snfXEPiDf6nuYI7gJkhkumcMKfPKPc9oxxz9Dc5ZZ1I=;
        b=XiZyNWfgwtVFL/vbBr+3Ibha41tqOq11tMYmcyoRWbAD1ucBVGW1pQCGNnJljGIGhM
         e1Scy6WVAsGJcbNU6hrk4E+Oz49IpHFrmMxKDNrLOLy/JTOFgKSR12SFRCIf3LEj8w3y
         6kwMvelRT8YFxz2oHCF1R8FYLLkbpv11EMDzRPq35QovJESk9uyioR/hlpPE4g2+XKwl
         U7ppCMBnWJReZ3ANIrvMXstTNt6gNUeVa1weCP5MOq3KBpCKRRtto7K1yopy5jLG4R6o
         hzKEWo+mHaHz9twrGk8ui0NJeVgiZSXJfshM9jMt7mYyxGP5P2YAtWvU1GCoJe/JmrKk
         d8jg==
X-Gm-Message-State: ANhLgQ1I2DRxIHBKas32VFrjCyHYYiFY7wmGulMKzqKHmdGGuHkl80aZ
	6i4JEBQaj7gPe+MBqnyHlr81F5jM
X-Received: by 2002:a17:90a:c695:: with SMTP id n21mr2754181pjt.133.1584207804676;
        Sat, 14 Mar 2020 10:43:24 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.228.147.139])
        by smtp.gmail.com with ESMTPSA id e11sm19429004pfj.95.2020.03.14.10.43.22
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 14 Mar 2020 10:43:24 -0700 (PDT)
Date: Sat, 14 Mar 2020 23:13:19 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, daniel.baluta@gmail.com,
	kieran.bingham@ideasonboard.com, abbotti@mev.co.uk,
	hsweeten@visionengravers.com
Subject: [PATCH v2] staging: comedi: ni_atmio16d: remove commented code blocks
Message-ID: <20200314174316.GA10615@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove two if# 0 directive code blocks. Problem detected by
checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---

Changes since v1:
    - Add following review comments by Julia
	1. Remove reference to redundant comments in the patch
	description since it's not accurate.

	
 drivers/staging/comedi/drivers/ni_atmio16d.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/staging/comedi/drivers/ni_atmio16d.c b/drivers/staging/comedi/drivers/ni_atmio16d.c
index 68ad9676f962..0bca7d752015 100644
--- a/drivers/staging/comedi/drivers/ni_atmio16d.c
+++ b/drivers/staging/comedi/drivers/ni_atmio16d.c
@@ -266,19 +266,9 @@ static int atmio16d_ai_cmdtest(struct comedi_device *dev,
 	if (cmd->scan_begin_src == TRIG_FOLLOW) {
 		/* internal trigger */
 		err |= comedi_check_trigger_arg_is(&cmd->scan_begin_arg, 0);
-	} else {
-#if 0
-		/* external trigger */
-		/* should be level/edge, hi/lo specification here */
-		err |= comedi_check_trigger_arg_is(&cmd->scan_begin_arg, 0);
-#endif
 	}
 
 	err |= comedi_check_trigger_arg_min(&cmd->convert_arg, 10000);
-#if 0
-	err |= comedi_check_trigger_arg_max(&cmd->convert_arg, SLOWEST_TIMER);
-#endif
-
 	err |= comedi_check_trigger_arg_is(&cmd->scan_end_arg,
 					   cmd->chanlist_len);
 
-- 
2.17.1


