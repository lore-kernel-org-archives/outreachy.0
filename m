X-GM-THRID: 6207482452562149376
X-Received: by 10.180.86.227 with SMTP id s3mr82739wiz.0.1445292142749;
        Mon, 19 Oct 2015 15:02:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.107.199 with SMTP id he7ls732944wib.16.canary; Mon, 19 Oct
 2015 15:02:22 -0700 (PDT)
X-Received: by 10.180.87.164 with SMTP id az4mr4666224wib.1.1445292142403;
        Mon, 19 Oct 2015 15:02:22 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id m4si6321wib.0.2015.10.19.15.02.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 15:02:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id fx6so19133924wic.1
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2015 15:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=IRDb7xOwdawNVEyqtxIz1Czf8sfyCUdV4vXX7MBoBWk=;
        b=hS2pLEF7cKag11nErzfNWe4Pc0blS8rgMHoRS6PfpjvDKLE/KYTsM0UxMrsFkPIrZs
         ueq3YLO6dQSvSSeOmc7KljdAFlP6PlstI0/HIZpiIMv/GnURZ9m6WtFvmDuzgzViCNa4
         eBHqdiLFf4ADR+o3zXR7CBrbobgxtSpw2x2l1ZAQoWSGi5pUXYUCFT7e5Oyp3AES4Cvl
         jxE2OY5VnV75g5HJseMKRRwFfey2AWqYxxi4NYwIn/F3AzMbHFUzOK5g+ynOj0iFtZuz
         tAlzYDFd/trnV0WTFwMnZ7q4Gk+SfoiopEzpHA3v/phY9HP14vy7nEHNLL5HE31PuUSu
         qN+w==
X-Received: by 10.180.90.37 with SMTP id bt5mr23339472wib.7.1445292142335;
        Mon, 19 Oct 2015 15:02:22 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.93.61])
        by smtp.gmail.com with ESMTPSA id bf8sm42577788wjc.22.2015.10.19.15.02.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Oct 2015 15:02:21 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH 07/10] staging: iio: frequency: Remove explicit comparisons
Date: Tue, 20 Oct 2015 01:01:42 +0300
Message-Id: <04ebfb0feaae023aa87b42a890dae0c16a5069d5.1445291799.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445291799.git.cristina.moraru09@gmail.com>
References: <cover.1445291799.git.cristina.moraru09@gmail.com>
In-Reply-To: <cover.1445291799.git.cristina.moraru09@gmail.com>
References: <cover.1445291799.git.cristina.moraru09@gmail.com>

Remove comparisons to 0 or NULL in order to provide efficiency

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/iio/frequency/ad9832.c | 2 +-
 drivers/staging/iio/frequency/ad9834.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/frequency/ad9832.c b/drivers/staging/iio/frequency/ad9832.c
index a861fe0..b9992bf 100644
--- a/drivers/staging/iio/frequency/ad9832.c
+++ b/drivers/staging/iio/frequency/ad9832.c
@@ -109,7 +109,7 @@ static ssize_t ad9832_write(struct device *dev, struct device_attribute *attr,
 	case AD9832_FREQ_SYM:
 		if (val == 1) {
 			st->ctrl_fp |= AD9832_FREQ;
-		} else if (val == 0) {
+		} else if (!val) {
 			st->ctrl_fp &= ~AD9832_FREQ;
 		} else {
 			ret = -EINVAL;
diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
index d02bb44..fcffe2c 100644
--- a/drivers/staging/iio/frequency/ad9834.c
+++ b/drivers/staging/iio/frequency/ad9834.c
@@ -111,7 +111,7 @@ static ssize_t ad9834_write(struct device *dev,
 		break;
 	case AD9834_FSEL:
 	case AD9834_PSEL:
-		if (val == 0) {
+		if (!val) {
 			st->control &= ~(this_attr->address | AD9834_PIN_SW);
 		} else if (val == 1) {
 			st->control |= this_attr->address;
-- 
1.9.1


