X-GM-THRID: 6253814918113394688
X-Received: by 10.182.142.8 with SMTP id rs8mr24136333obb.33.1456079752237;
        Sun, 21 Feb 2016 10:35:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.67.69 with SMTP id l5ls31728igt.30.canary; Sun, 21 Feb 2016
 10:35:51 -0800 (PST)
X-Received: by 10.98.42.67 with SMTP id q64mr19462069pfq.9.1456079751811;
        Sun, 21 Feb 2016 10:35:51 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id yd9si2716843pab.1.2016.02.21.10.35.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 10:35:51 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id ho8so80425016pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 10:35:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=BP3sAcKT2BqC0g3VIuFiChjDSMYlg7YaZx6UX0OtbBo=;
        b=Vlxegab3Bd5AW5pIx2vlBhFL88fqPcnWNUunaqcmURmFINyC+vyTZQk+1TK4jfvFtw
         Oui1LQyZAiJXOY7Zjt9YphPySTNgLaUoe1MOQtAbKlXRYQWJMZIaORfDM3glS2IZTvF6
         GzVz3+kU19iyQaP2dIv1BUPhrq/bNy4EXgwbZJQ/oFuWQMbg68+kj8/E+uhC9pZpiofA
         FrhP6VAJpDgCpU6o5MzO0oNdXgH0BIDdQq7MLy/0Dx5101Ecn8MKvXVQZGbuKehGsSmv
         kQWNB5ciuMP+MD2j7HZTOmFHy3TcmbPJJXOCIA36qAvhnZ+A4Gkx6CM3XqmP+yK38Ifx
         gHgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=BP3sAcKT2BqC0g3VIuFiChjDSMYlg7YaZx6UX0OtbBo=;
        b=kalOQxnHkvcd4Rh19A/Rfh6RarPl0OA373wHde2r5vtgJ3zJ0+KLrz4JczUpS+2cZ2
         T1QIXqtjf0ASXOBTkHGzt+bi5UDtkP5PWBPiWn/vk+TaJIJxneNsSqu0+RmBhuoBAWGp
         9gkY6E0EzfBn1EfLY9UhaTMVL1aa10AQPiPS05w9EnimdXAt8Bs904B1nLw3qWCA/eyX
         evf2xqv9Ew1Pj8Og4zxunLSuLMIkREah0r6AqwGFO3q82mv4pjQdaD/Wr358FqjO7G3H
         ECQ9nSB9/h+i+aKSs/huijzpScTAv85Y/32wsMilLfSIVuYyzabQbfeRrm0srQoqZJkR
         BWSw==
X-Gm-Message-State: AG10YOTST4zYUtigA6oSgcY2kD07WFVlIIiqe2PmUB4zbqG2HnT9vLwWXAkCIMzlD1Xq/w==
X-Received: by 10.66.144.134 with SMTP id sm6mr33005481pab.158.1456079751713;
        Sun, 21 Feb 2016 10:35:51 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id p8sm31326415pfi.34.2016.02.21.10.35.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 10:35:51 -0800 (PST)
Date: Mon, 22 Feb 2016 00:06:24 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] staging: most: hdm-usb: Use macro DIV_ROUND_UP
Message-ID: <20160221183624.GA3428@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The macro DIV_ROUND_UP performs the computation
(((n) + (d) - 1) /(d)). It clarifies the divisor calculations.
This was done using the coccinelle script:
@@
expression e1;
expression e2;
@@
(
- ((e1) + e2 - 1) / (e2)
+ DIV_ROUND_UP(e1,e2)
|
- ((e1) + (e2 - 1)) / (e2)
+ DIV_ROUND_UP(e1,e2)
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/most/hdm-usb/hdm_usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/hdm-usb/hdm_usb.c b/drivers/staging/most/hdm-usb/hdm_usb.c
index 3ee9e6f..29ffe51 100644
--- a/drivers/staging/most/hdm-usb/hdm_usb.c
+++ b/drivers/staging/most/hdm-usb/hdm_usb.c
@@ -40,7 +40,7 @@
 #define MAX_SUFFIX_LEN		10
 #define MAX_STRING_LEN		80
 #define MAX_BUF_SIZE		0xFFFF
-#define CEILING(x, y)		(((x) + (y) - 1) / (y))
+#define CEILING(x, y)		(DIV_ROUND_UP(x, (y)))

 #define USB_VENDOR_ID_SMSC	0x0424  /* VID: SMSC */
 #define USB_DEV_ID_BRDG		0xC001  /* PID: USB Bridge */
--
2.1.4


