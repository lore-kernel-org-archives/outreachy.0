X-GM-THRID: 6208887489417969664
X-Received: by 10.107.150.208 with SMTP id y199mr21670997iod.15.1445892634883;
        Mon, 26 Oct 2015 13:50:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.47.151 with SMTP id v23ls1838225iov.77.gmail; Mon, 26 Oct
 2015 13:50:34 -0700 (PDT)
X-Received: by 10.107.40.133 with SMTP id o127mr31314245ioo.27.1445892634644;
        Mon, 26 Oct 2015 13:50:34 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id zg1si3794353pbb.2.2015.10.26.13.50.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 13:50:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id hk11so198591763pad.1
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 13:50:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=eZwN3fcCR00n8P2mC3SWDjElZX+Wv2yJcF/WiaATJMo=;
        b=yLXoML4R5lJg2ycGL0TUBxyhD1CSiV0a7+vKkEeyoujp2Qk1LLHJEgzdxYEgPk6aSv
         GnTjAoFNMYXZcGT1jiz3hmI+PW1GxUZYT1d95zUoNzDEdGW6vLRsrYKS+BHplDPwAMl5
         1IgpPPL2JO9gu7ilSEKm83uVLF1cG+/Sds3/mm5gC0EPF98P92KRKjYf8usUxByjqDiK
         ZR9Nh+cU94z1rtmQfqwRLeKcorzjmvsDrfkKxvm66+NtVB6Ha0BixQ+hO2LV0+G/+Xwr
         Iuzm1NFNLCh1acenKkfMyFJYA059LxNOXoMz8G6YOYofwr8w43XjKb8CQaEmM8w2EbJ4
         Wbzw==
X-Received: by 10.67.14.42 with SMTP id fd10mr24057603pad.11.1445892634527;
        Mon, 26 Oct 2015 13:50:34 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id po4sm35542948pbb.64.2015.10.26.13.50.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 26 Oct 2015 13:50:34 -0700 (PDT)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] staging: iio: dummy: replace block comment with single line comment
Date: Mon, 26 Oct 2015 13:50:29 -0700
Message-Id: <71dc6184cf5b85d7b90e5611931f2495a3599d20.1445891339.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1445891339.git.amsfield22@gmail.com>
References: <cover.1445891339.git.amsfield22@gmail.com>

Replace one block comment with a single line comment. Follow style of
previous comment and omit word channel, since it's clear the topic is
channels.

Addresses checkpatch.pl:
WARNING: Block comments use * on subsequent lines

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/iio/iio_simple_dummy.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/iio/iio_simple_dummy.c b/drivers/staging/iio/iio_simple_dummy.c
index 2749746..8c65b3c 100644
--- a/drivers/staging/iio/iio_simple_dummy.c
+++ b/drivers/staging/iio/iio_simple_dummy.c
@@ -364,8 +364,7 @@ static int iio_dummy_read_raw(struct iio_dev *indio_dev,
 				ret = IIO_VAL_INT_PLUS_MICRO;
 				break;
 			case 1:
-				/* all differential adc channels ->
-				 * 0.000001344 */
+				/* all differential adc -> 0.000001344 */
 				*val = 0;
 				*val2 = 1344;
 				ret = IIO_VAL_INT_PLUS_NANO;
-- 
2.1.4


