X-GM-THRID: 6470101655297720320
X-Received: by 10.129.48.201 with SMTP id w192mr6757505yww.224.1506437956137;
        Tue, 26 Sep 2017 07:59:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.61.67 with SMTP id k64ls240245oia.22.gmail; Tue, 26 Sep
 2017 07:59:15 -0700 (PDT)
X-Received: by 10.157.18.161 with SMTP id g30mr1444057otg.132.1506437955178;
        Tue, 26 Sep 2017 07:59:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506437955; cv=none;
        d=google.com; s=arc-20160816;
        b=Njs9Qg3qMNH8va7waaSkyQZbFMSz2/uRnkuUjNfCaVJ50f3mNdeyllfKo8TSdc6nqr
         JOFnvDGV882akS83qWMzuOwuERNEyC9taUe+Bk7n0d/rU1zTEcTAiUOz1VN+UCBN7+5w
         p8uUWDqGviBWpo4a5bMfyhxqR7xUtUVoiNVa17i9Hz8i375+zAY4DFvzMf17SCTLVV2E
         0/FbHqrqizkoSx9fYnpI3BohzjdhIi0craOwQ8VwI8CIElAwrfpqvVq0xuhZ9X7G4P5i
         XJ1BAphaNhx3OPa5gsEn3rxrESgK+XOz5Be2iM9yVKGAOT/u7yvDXwH8w9lMzH4Yiahk
         XrEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=T82mtHC7RXq7EU3nP3/cAckcvqC+AZLWrj+aUueutig=;
        b=oC6LUSISCVirM9qJhQQ2y1Ej27SiAXqikAw+NUp/vQpmghxd4Udy+idheHzc2p4wwl
         DBe9BTuGakXs7RbcOk+Qjz2OdQBMWOO0R5IZVgzVkRBjWgX7S5DSDUGFIaS6Oxa27eQj
         yPa7cpUDDkqy66mvIBl2V1QtqwUsFnug9cjEnzzWJQrhAtPWnQVCOQIKTdAUM2zpYATa
         Nmyyic+bfgyrvOGsul1JjK5+2gXp7zZ1EFMKnrzRRxmJt2c0RnVHKEvMxyEW1nAlRT9G
         zwa/l8J/PMe9JyaHsGPDMe0fNx9JqIF7FxsS7F8raXEA+xrl6JKMHhUTPJZITW608G/5
         GI8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tK1xUHmT;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id q15si730461pfi.7.2017.09.26.07.59.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 07:59:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tK1xUHmT;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id d8so6912570pgt.3
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 07:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=T82mtHC7RXq7EU3nP3/cAckcvqC+AZLWrj+aUueutig=;
        b=tK1xUHmT1z8fokeHape2OpmvpL2mDIsmSk1k37LWSRiTc72nu5I2rrt+lRBbb9M4eP
         3XfKGTDfILQnF0hSwVn1CgeQzOID0sJtgEGFSggG/inkSBOeiNp3TKuZ2NkLE4Zjik/B
         UA7mySqg1U18HcBF5v3PV091dlecrjsf2gjTL8gDhHQM0GGBrzHEV/qT9urLWTsQtpOv
         Y9Rc3h+puecBlugPNZ9g2t3qF8r+6IDv5u0mhCwwcPl/Lh+AVcLD/TaYG0uJK2WSVR95
         5mq4DL7jo0gF0yofdthqIVk2VRU+rH+32fYygvdTWx+DPPx1766wjZBIVIhnvO12MOW7
         dDPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=T82mtHC7RXq7EU3nP3/cAckcvqC+AZLWrj+aUueutig=;
        b=TedwgVe1ZCu5ZRRKjboBfMmyzPplt8XG9/gDEsgxBhA9wm0Ya1iFWp4UE8KqSzlpLR
         BAB3JW9sOfhf+w2UuZf12aQ68yIqsPj//DdsxsQlBKpwVbUV1f7UO/0cgh0DUi6Jcdfp
         duIbghNj0nGEYceFHrM+i+6t77F50/5myVzqesf8tI8vshNbHS/5a9VOPGyeQw5Uocpo
         P3dBzyQup+XPohaB5v2j5k9ln7ucFJdDxoX0vzRJlWktdESUodnyv2zMHhQTqagKZEPf
         zopNddNscJA1rL0xdcNCm/nqfX3vnjPUCAQ/WTWWRKzxK20ftaLcu1kVHTJA4NwIC/1Q
         MDdg==
X-Gm-Message-State: AHPjjUhEbFblt8cI6DHCoojNhIKnX+E6piK4Jk6ltLW3BYPMZ1CRvRr9
	47mUZiy52r4zdWkZro3sP6Q=
X-Google-Smtp-Source: AOwi7QAFko1K7MIJ8plWxxgTLQjqe5CW0wlcKNDeinLMbFMfH/iBDvd3HW4B2Xj+BDy/ebTTD57ijw==
X-Received: by 10.98.141.138 with SMTP id p10mr1012698pfk.283.1506437954731;
        Tue, 26 Sep 2017 07:59:14 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([47.31.3.154])
        by smtp.gmail.com with ESMTPSA id w12sm19148064pfk.83.2017.09.26.07.59.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 26 Sep 2017 07:59:14 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	hennerich@blackfin.uclinux.org,
	jic23@kernel.org,
	knaack.h@gmx.de,
	lars@metafoo.de,
	pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 2/2] staging: iio: adc: ad7192: add lock to protect hardware state changes
Date: Tue, 26 Sep 2017 20:28:37 +0530
Message-Id: <1506437917-7219-3-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1506437917-7219-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1506437917-7219-1-git-send-email-aastha.gupta4104@gmail.com>

In this driver, private driver lock is being used to protect hardware
state changes.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/iio/adc/ad7192.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index 096d29d..609a649 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -511,6 +511,7 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
 	switch (mask) {
 	case IIO_CHAN_INFO_SCALE:
 		ret = -EINVAL;
+		mutex_lock(&st->lock);
 		for (i = 0; i < ARRAY_SIZE(st->scale_avail); i++)
 			if (val2 == st->scale_avail[i][1]) {
 				ret = 0;
@@ -524,6 +525,7 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
 				ad7192_calibrate_all(st);
 				break;
 			}
+		mutex_unlock(&st->lock);
 		break;
 	case IIO_CHAN_INFO_SAMP_FREQ:
 		if (!val) {
-- 
2.7.4


