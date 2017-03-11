X-GM-THRID: 6396079372840730624
X-Received: by 10.157.73.150 with SMTP id g22mr9280227otf.130.1489242444517;
        Sat, 11 Mar 2017 06:27:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.225 with SMTP id n94ls3114330ioi.43.gmail; Sat, 11 Mar
 2017 06:27:24 -0800 (PST)
X-Received: by 10.99.107.1 with SMTP id g1mr11503678pgc.100.1489242444058;
        Sat, 11 Mar 2017 06:27:24 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 2si2287433pfx.8.2017.03.11.06.27.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 06:27:24 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id v190so13931581pfb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 06:27:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=lqGKuKZv99j5fIp60xTRDKQYb/FMt6YRSbzyVp9AszM=;
        b=Y7Mb989/cyDSsosafoUC934HXtuFY2tHUcSDgt7+bEjEnrB5dJVdI4qc9D7eVUH8ir
         3K4crPcPcqDgjT3KyF0UfZMREIeLAfZyP2GIdnAmg+xCfw7PeuDWJBvUodSYzwd3UbLo
         4q293cv8PnCQkfO8vqkGISouXl+K0gmVqj78Mg0182THO+NUJM2rBfLijYhxmzWDzrpV
         1y3SpdeD8iHyGAskb5YjHMFF1tZX7QXO955HBn0N170SJ2Itgi6GmZLpgS0dbZt9Tvyx
         Q/44Pr5UbvfFawqGRO1cvMr3vEt1qLnvoAcSirDHlfTF1sQxSyzZQXJrRLI8Ub9Unu/x
         QW0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=lqGKuKZv99j5fIp60xTRDKQYb/FMt6YRSbzyVp9AszM=;
        b=jln7Z0LPMUZkZ3uStLBe90dsOfj6OzbJTuurxkh/LdPR7pC/uvjtarY5kz9piSoBbx
         Km22oj39K14cBpaVcelNpIx09s42HnlPf/niTJppoYRNj2/yIXaapNhr2NnRsoyH2rux
         LeZiUtHRUu1uoAvOdMoc0WcedV5CmOf7UbNWQj1+O2FxPNWRbho9u5TgQxFJxkDW29EY
         JvHQKkmxXj1fs6MztwvkAUK6fsjrZ+BOeWJ7hJGDZ4R/fff+eOVzdiNeJBN9Xp6wZqdB
         BAIhYbZDg9il58ulMybkyT3GEahvSOd34MrUd4WSkZZK8CkIlbZrcgIoJ/aB2dgjiMP7
         HL9g==
X-Gm-Message-State: AMke39n0xYuAGqL0iUbMk0KvyyNQ9pG1yp8RMV0SV4EG1aWFcA+lTooey5t9/dUQSKGc8g==
X-Received: by 10.84.241.10 with SMTP id a10mr33749610pll.47.1489242443881;
        Sat, 11 Mar 2017 06:27:23 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 185sm24620520pfg.13.2017.03.11.06.27.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 06:27:22 -0800 (PST)
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
Subject: [PATCH v1 09/10] staging: iio: resolver: Remove exceptional & on function name
Date: Sat, 11 Mar 2017 19:56:43 +0530
Message-Id: <1489242404-12352-10-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1489242404-12352-1-git-send-email-singhalsimran0@gmail.com>
References: <1489242404-12352-1-git-send-email-singhalsimran0@gmail.com>

Remove & from function pointers to conform to the style found elsewhere
in the file.  Done using the following semantic patch

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


