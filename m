X-GM-THRID: 6396079372840730624
X-Received: by 10.99.125.11 with SMTP id y11mr10288565pgc.10.1489203311400;
        Fri, 10 Mar 2017 19:35:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.28 with SMTP id a28ls3083319ioj.21.gmail; Fri, 10 Mar
 2017 19:35:10 -0800 (PST)
X-Received: by 10.107.202.69 with SMTP id a66mr6624430iog.80.1489203310904;
        Fri, 10 Mar 2017 19:35:10 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id a3si2101158pfb.2.2017.03.10.19.35.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 19:35:10 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id o126so12715829pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 19:35:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=M+fdNLe8Lq9fCuxSMlKy+OqNmvsAwzdbmY4jLCMT4Xk=;
        b=HfRzr/G9MOgKnM9W16W5X/lb1NPxy+X+XiD+tb9mhJVnDbTns4ws7FhsIvS0fmoQdS
         3FhoCtHZG5FXJ1dKaLiRkgaCzxjT3sne7/tdBIw0wFxWjr2sAsNBQeXVRUvMpU507Nfi
         Igq1M3mLfUPAO2RC0772bGHWMSA75hb6R9SMpiln/GJTMeE8CaJvoRtlwy3zJGPySft6
         H9T5Onf8Dq9fcDw/BpT0pAjZSjn9IKWkhLPB5RUfFI2vDPJvh79sjn8o21oO/064cyBn
         lZ/kfvVHKSFljsaYSNUaWef9bUEVqLuGCvAWN5MNKoKmWCrxWpXc//NdoGDXFO6SDJ5f
         fO0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=M+fdNLe8Lq9fCuxSMlKy+OqNmvsAwzdbmY4jLCMT4Xk=;
        b=emKe5J4PwprY+M2sa1Azox1/aF6zfiBH5GntJTnKbUWnypIAAJgWWMcQMM3WGzbash
         R9QBY6kEX5zgorjLRoD3poL6zYjVS56QXs2mS9mKukvfIodz2WJFRXM88wwFTQ6sQ53R
         fWdtvXed5F0GwcCumTYzDFDEOyleA3du6H15NUsp17CqjcJIuMysrbxvmt+zcr6nbXlg
         EUkO8Do0gzJzsa2gldaJByVJqM1fmpjSGC5VENrVTKf9lZE6eDog4SisrYxgc2lpHese
         /lO/0+aanMueD/DCEqu6vXGz75LFlD54vsSrgZm+GLWMvpiw7ZOv4WVymQaRnzLPUQR3
         X5Dg==
X-Gm-Message-State: AMke39lrS9r77G5pp/4bBe09FfK/EhVrnQxcYN1l7rHXYPz4SFALIsFB//9IJc2squeW3w==
X-Received: by 10.98.7.86 with SMTP id b83mr24851412pfd.66.1489203310667;
        Fri, 10 Mar 2017 19:35:10 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id h9sm21024369pfd.103.2017.03.10.19.35.09
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 19:35:09 -0800 (PST)
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
Subject: [PATCH 09/10] staging: iio: resolver: Remove exceptional & on function name
Date: Sat, 11 Mar 2017 09:06:40 +0530
Message-Id: <1489203401-17518-10-git-send-email-singhalsimran0@gmail.com>
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
 drivers/staging/iio/resolver/ad2s1200.c | 2 +-
 drivers/staging/iio/resolver/ad2s90.c   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/resolver/ad2s1200.c b/drivers/staging/iio/resolver/ad2s1200.c
index 82b2d88..a37e199 100644
--- a/drivers/staging/iio/resolver/ad2s1200.c
+++ b/drivers/staging/iio/resolver/ad2s1200.c
@@ -97,7 +97,7 @@ static const struct iio_chan_spec ad2s1200_channels[] = {
 };
 
 static const struct iio_info ad2s1200_info = {
-	.read_raw = &ad2s1200_read_raw,
+	.read_raw = ad2s1200_read_raw,
 	.driver_module = THIS_MODULE,
 };
 
diff --git a/drivers/staging/iio/resolver/ad2s90.c b/drivers/staging/iio/resolver/ad2s90.c
index 5b1c0db..b227090 100644
--- a/drivers/staging/iio/resolver/ad2s90.c
+++ b/drivers/staging/iio/resolver/ad2s90.c
@@ -47,7 +47,7 @@ static int ad2s90_read_raw(struct iio_dev *indio_dev,
 }
 
 static const struct iio_info ad2s90_info = {
-	.read_raw = &ad2s90_read_raw,
+	.read_raw = ad2s90_read_raw,
 	.driver_module = THIS_MODULE,
 };
 
-- 
2.7.4


