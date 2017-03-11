X-GM-THRID: 6396079372840730624
X-Received: by 10.13.217.82 with SMTP id b79mr10607292ywe.13.1489242436650;
        Sat, 11 Mar 2017 06:27:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.2.76 with SMTP id 73ls601974itu.13.gmail; Sat, 11 Mar 2017
 06:27:16 -0800 (PST)
X-Received: by 10.99.97.83 with SMTP id v80mr12298646pgb.137.1489242436263;
        Sat, 11 Mar 2017 06:27:16 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id a3si2272961pfb.2.2017.03.11.06.27.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 06:27:16 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 25so13316822pgy.3
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 06:27:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=lSY5ckwVQzbCRnbC5dtJnq8WVxMzWn+eTm+FLriFSqA=;
        b=IGY2hqyIjkExXA4keqyhmawlqCOewqG4swh7vcJwTJMcmLle754iI6b6fI7vhgoP2g
         OGRsv02nZjwQipn2BfbXQJO2HLek/w9asP4u+ARXUT99DzpBTs3CCGYwUp71ORitQFp7
         mvcY5DbbssoPVlM5QF7RKwSOVwbfI8tIqcejLyhv3N7pRUDO2G/ozGjOf5LdEkJgzxuW
         5++NgfP4wYxyLg4UXNRLHbo3o2XcZoRAsiIOjSuAzncXgqTla8Lqj+gd0NcWJJPlN1Qh
         ZhgEBRRTxPr0fphCJw1WxsS9QeXZF0mzFH38OB1HKYUWWDpYWwN7gXdSAUhvPFAWVakA
         wpRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=lSY5ckwVQzbCRnbC5dtJnq8WVxMzWn+eTm+FLriFSqA=;
        b=bhWfUMx3/dnKBnHp976p6Tg7uDcjKkRx4GAB1aD5EDJ0+DVFlS1R12mcKIQ1pF6uDf
         AUUDIKrjfrGOepnnb0xmaaqznE1UXv4mkxmZGaveUxbLCi/x10JOuyaBj5/XU29Y3QQ4
         zke5OmJny0pEMkXFqQVogCz/lIKFME5Ns0yUN12oJgXBY6fPgjAK+9H02FKg5LJpc565
         ox/HtmHGN0nycQDchWinmRR1Zn77yp20RGElA2W0kiTWdre4j3+LlDMHrObT/wlEHU5e
         ZQBzqIjpYlXotZ9FN4DXpnreurO4eWKL2Yozq5bI5lVrItBjxOlN85SdC+c4gqxAGeuk
         Svkw==
X-Gm-Message-State: AMke39kqKxT7zHSeuoVKVNBtd6NCGnp7QX7QDtm/u5osKE28Kt6gkDPNSnU4fsXgj0JfTA==
X-Received: by 10.99.39.194 with SMTP id n185mr26150206pgn.24.1489242436089;
        Sat, 11 Mar 2017 06:27:16 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id p6sm24775126pgn.40.2017.03.11.06.27.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 06:27:15 -0800 (PST)
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
Subject: [PATCH v1 07/10] staging: iio: adis16209: Remove exceptional & on function name
Date: Sat, 11 Mar 2017 19:56:41 +0530
Message-Id: <1489242404-12352-8-git-send-email-singhalsimran0@gmail.com>
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
 drivers/staging/iio/accel/adis16209.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16209.c b/drivers/staging/iio/accel/adis16209.c
index 8ff537f..56bc2ac 100644
--- a/drivers/staging/iio/accel/adis16209.c
+++ b/drivers/staging/iio/accel/adis16209.c
@@ -285,8 +285,8 @@ static const struct iio_chan_spec adis16209_channels[] = {
 };
 
 static const struct iio_info adis16209_info = {
-	.read_raw = &adis16209_read_raw,
-	.write_raw = &adis16209_write_raw,
+	.read_raw = adis16209_read_raw,
+	.write_raw = adis16209_write_raw,
 	.update_scan_mode = adis_update_scan_mode,
 	.driver_module = THIS_MODULE,
 };
-- 
2.7.4


