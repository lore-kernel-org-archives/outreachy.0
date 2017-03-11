X-GM-THRID: 6396079372840730624
X-Received: by 10.129.76.210 with SMTP id z201mr9013383ywa.172.1489203285082;
        Fri, 10 Mar 2017 19:34:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.36.137 with SMTP id f131ls358348ita.7.gmail; Fri, 10 Mar
 2017 19:34:44 -0800 (PST)
X-Received: by 10.107.11.35 with SMTP id v35mr6521191ioi.54.1489203284707;
        Fri, 10 Mar 2017 19:34:44 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 2si2041353pfz.1.2017.03.10.19.34.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 19:34:44 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 67so12706335pfg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 19:34:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=3HR/NGUhhzqgieYlG+awsiGHQx2vGa31JcPWLtsNiuE=;
        b=M8e27hPo0MJMeKnSrQ+euGgXPhYUsd61TvGlb9sy2ULpW2kkL5Xp3zkpwV0+oQjtao
         KsrCSNct9dfzI9lb2q8mR7mgya5R3nYTug0j8synmOW2iGksBQ2g5kpNRB2DSUb83aDv
         hEA1Y25C/o1TxHIq+R8EX1IvDV/Xjh6TFTyGXLUAb6kdktJos5qie0TioE0TQJsxJDFl
         AsMagOKqbMsKbVBZibJJm1iFR2qJjEHtBInU7jsjZJuVHeF6RLp4EdhPup0kFtjpCF8n
         93N44kCt0G1mDHF5rtd1rRXmZTSVyyqkq4kbcdi4kjFU1EMAXrzUcvdNzRtq+lj9Iu8v
         Qb+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=3HR/NGUhhzqgieYlG+awsiGHQx2vGa31JcPWLtsNiuE=;
        b=tWD1Fw1kgF3hm1HMx6srZ171irnsqfLNShVC+uwb9BOoyKG+AlUcd/tZLDTEayhF2f
         EwSOORIaMiN/v2axebRK89UOmVsQ8ws7FTEQwQZ0MMTHYGruJxWZR0Pkl5DeifocX5jF
         VcuyGANgVOLx2zX0grMygvPFcRFsyJT5LPhKio1VXijczHGrPtrYA5PdTPayTtGrQ/JG
         zXk5yFygWhcCI7qpkwpR5OIOW9FpMWG6F9jouCU5SA9SsjI4Xbg9sPOF36CbUHRMIZRc
         JsHSIatfyWMoFRpZ2OyxfgZmQaVxSxzoHR9agdSO2BFLF0JBao9xNO8ett0n5pijN/bL
         2UAg==
X-Gm-Message-State: AMke39mQ1FDqCEGGwbDx2OTIDsrYjfgITHHsMpv5j2p/Rik6WuDFBwzyEJAdbfxlice+OQ==
X-Received: by 10.98.214.156 with SMTP id a28mr24843613pfl.40.1489203284530;
        Fri, 10 Mar 2017 19:34:44 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id p66sm21064807pfb.88.2017.03.10.19.34.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 19:34:43 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: lars@metafoo.de
Cc: Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 02/10] staging: iio: ad7780: Remove exceptional & on function name
Date: Sat, 11 Mar 2017 09:06:33 +0530
Message-Id: <1489203401-17518-3-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1489203401-17518-1-git-send-email-singhalsimran0@gmail.com>
References: <1489203401-17518-1-git-send-email-singhalsimran0@gmail.com>

In this file,function names are otherwise used as pointers without &.
Found using coccinelle.
// <smpl>
@r@
identifier f;
@@

f(...) { ... }
@@
identifier r.f;
@@

- &f
+ f
// </smpl>

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/iio/adc/ad7780.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/adc/ad7780.c b/drivers/staging/iio/adc/ad7780.c
index e149600..dec3ba6 100644
--- a/drivers/staging/iio/adc/ad7780.c
+++ b/drivers/staging/iio/adc/ad7780.c
@@ -154,7 +154,7 @@ static const struct ad7780_chip_info ad7780_chip_info_tbl[] = {
 };
 
 static const struct iio_info ad7780_info = {
-	.read_raw = &ad7780_read_raw,
+	.read_raw = ad7780_read_raw,
 	.driver_module = THIS_MODULE,
 };
 
-- 
2.7.4


