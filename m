X-GM-THRID: 6396079372840730624
X-Received: by 10.99.67.197 with SMTP id q188mr10938494pga.31.1489203293289;
        Fri, 10 Mar 2017 19:34:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.166.19 with SMTP id p19ls2890569ioe.47.gmail; Fri, 10 Mar
 2017 19:34:52 -0800 (PST)
X-Received: by 10.99.234.5 with SMTP id c5mr9345148pgi.172.1489203292772;
        Fri, 10 Mar 2017 19:34:52 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id c123si2083156pfa.4.2017.03.10.19.34.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 19:34:52 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 25so12143526pgy.3
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 19:34:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Tvo4V2XDkBDdJAyhNgGAIve4cxZ6By6RBiH04rxFCOw=;
        b=hrSGmx+RWlgOqPRweJTJRTRyNbLumqro+u/3s0h50Ha1mPJ+EXScvJB7kDrZ/ue7ID
         vEGSF2Zpn+NqTV1RODL7KQjHVT5KYinUfdQNdWeY3FIEbXLtBdcuIZzTZzw+9rlTY73S
         2sG56Uk3mx+F6csVg9gxCumiDnMU3smi2oE9MgnYQpXqDrvt7/fSr7VAwdbQbIkheDnl
         Zyu1KOD0HwawAJ+eigp89eegdBjYY4s0iZkpDAJW6nQammtKAXIoo37/QMGWA9X8IyV0
         n9reG49arQnDk3aX+frqxP3usyX5QXAoVMVssrhxXhNY66PnvUMWJEHop/mWTCv53Ugk
         BNYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Tvo4V2XDkBDdJAyhNgGAIve4cxZ6By6RBiH04rxFCOw=;
        b=Q8JTuJEScfFK27oxLYotKeB6vzUrWy5p/a4GE2/VZyXaek5dgRfDiENLukhkH/cfXT
         EumcY4rDBh1aN20dCBDUMptIosS1TErRd1jhZy3uHAoDUySy2kz7cf7YjkdyIDrKm7XY
         wFcB4exXy50u5f/WknODu/LzVfyILyxZxeJ4KAZIhgaIs6Z8AJ2L174GfQEv0ULZzavG
         nCBMcpMuHv6pNQvDUISkbbUigHOOWLHnf0XH0V7WTaHsSKC5D6H/bpkQh05Rq2E0/dAX
         QPiaM9EF3zZE6cmRXiyqi6y+urQFRlouZfSTTK5UNSReduwWQFHY5UwdT5XfStQtE4vd
         ridw==
X-Gm-Message-State: AMke39lryIeFtkwd1EAf4eUJ17bC7s/T2t4NCsDGCmU4NW9f1tBPJpViLoSG99GwGqaUpQ==
X-Received: by 10.99.42.78 with SMTP id q75mr24174773pgq.144.1489203292247;
        Fri, 10 Mar 2017 19:34:52 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id y5sm21256619pgy.28.2017.03.10.19.34.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 19:34:50 -0800 (PST)
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
Subject: [PATCH 04/10] staging: iio: cdc: ad7152: Remove exceptional & on function name
Date: Sat, 11 Mar 2017 09:06:35 +0530
Message-Id: <1489203401-17518-5-git-send-email-singhalsimran0@gmail.com>
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
 drivers/staging/iio/cdc/ad7152.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
index e8609b8..59ef93c 100644
--- a/drivers/staging/iio/cdc/ad7152.c
+++ b/drivers/staging/iio/cdc/ad7152.c
@@ -441,9 +441,9 @@ static int ad7152_write_raw_get_fmt(struct iio_dev *indio_dev,
 
 static const struct iio_info ad7152_info = {
 	.attrs = &ad7152_attribute_group,
-	.read_raw = &ad7152_read_raw,
-	.write_raw = &ad7152_write_raw,
-	.write_raw_get_fmt = &ad7152_write_raw_get_fmt,
+	.read_raw = ad7152_read_raw,
+	.write_raw = ad7152_write_raw,
+	.write_raw_get_fmt = ad7152_write_raw_get_fmt,
 	.driver_module = THIS_MODULE,
 };
 
-- 
2.7.4


