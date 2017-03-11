X-GM-THRID: 6396079372840730624
X-Received: by 10.129.169.2 with SMTP id g2mr5003599ywh.165.1489242440228;
        Sat, 11 Mar 2017 06:27:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.226 with SMTP id c89ls11674253otb.2.gmail; Sat, 11 Mar
 2017 06:27:19 -0800 (PST)
X-Received: by 10.157.5.102 with SMTP id 93mr9782679otw.144.1489242439912;
        Sat, 11 Mar 2017 06:27:19 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id a3si2272961pfb.2.2017.03.11.06.27.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 06:27:19 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 25so13316822pgy.3
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 06:27:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=2H4jTOb4a5HT+wp1pl5C8/KYa55e5p+lO4f0HFgbEY8=;
        b=kC4YsjzhAYAIqqGzAVwf2q2AvoURkI0Ij5qqLTiWgX7B29iRfFPbMb3OMJihdBKXzO
         pFsYdBogr8VOXJjCojnggdhn21p1ODlnC1CPlo4srVyz4punvbCYhyLv67SkkkRGilAY
         /j/0/IxL0YlRBQMkX4Z2eyahvErtbkzi3QruN0FAhyLSxr8hPW+88XYBKzC56t+WhmUb
         QvCC06yG1CD+7nuk65IvQOtiJj+emE1mCmexlgRK0tvjpLJWuUVg94FLsi6WSo4r0B5U
         6FcbVVCKaILNkawp1pZ8/olCHGl9OIrHmCJ/mQRHtqgOJp6SRcm/8uInh2V3Jl7MS+JY
         vybQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=2H4jTOb4a5HT+wp1pl5C8/KYa55e5p+lO4f0HFgbEY8=;
        b=TNN+FtSRSJR3kgriMotB2wg97pG4IayJWRSDfjMeUG44enC+n5PWURqvjJ9lU9p8iM
         JY929upyRxsfd1LsjIXoemuHJncuoe76P+h9hQ318xsf0YwiZr+/g438U0PHHesSCnXI
         NF+GX0GT9BuumR3Ybw47LqgxI2FmXpPdB1lXayySlFfiQwBj9UQE4xZtbyDWCxeI2253
         2rRS8imIwBpKvMMrkxl1rcrcYK1hmh0VujhJwLKqBAQuopNXb1IPSETGnti09xvvmact
         59pqeKP2n4BeW8vZd3uwtAxc8qn6ud9RSkmkMx6haccZjrbwho/VGOa+m1/GS3DqEtR5
         dleQ==
X-Gm-Message-State: AMke39nEBiAu7he2B3e3qtqcCP8i53OcbY0KjvFskRGv97dGdLpAZEzpoPmjQBXyji/5AA==
X-Received: by 10.99.247.83 with SMTP id f19mr26451492pgk.158.1489242439712;
        Sat, 11 Mar 2017 06:27:19 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id g27sm24746924pgn.20.2017.03.11.06.27.18
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 06:27:18 -0800 (PST)
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
Subject: [PATCH v1 08/10] staging: iio: adis16203: Remove exceptional & on function name
Date: Sat, 11 Mar 2017 19:56:42 +0530
Message-Id: <1489242404-12352-9-git-send-email-singhalsimran0@gmail.com>
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
 drivers/staging/iio/accel/adis16203.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16203.c b/drivers/staging/iio/accel/adis16203.c
index 68189ad..b59755a 100644
--- a/drivers/staging/iio/accel/adis16203.c
+++ b/drivers/staging/iio/accel/adis16203.c
@@ -233,8 +233,8 @@ static const struct iio_chan_spec adis16203_channels[] = {
 };
 
 static const struct iio_info adis16203_info = {
-	.read_raw = &adis16203_read_raw,
-	.write_raw = &adis16203_write_raw,
+	.read_raw = adis16203_read_raw,
+	.write_raw = adis16203_write_raw,
 	.update_scan_mode = adis_update_scan_mode,
 	.driver_module = THIS_MODULE,
 };
-- 
2.7.4


