X-GM-THRID: 6396079372840730624
X-Received: by 10.13.227.134 with SMTP id m128mr10664310ywe.102.1489242425437;
        Sat, 11 Mar 2017 06:27:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.19.69 with SMTP id 66ls611723itz.0.gmail; Sat, 11 Mar 2017
 06:27:05 -0800 (PST)
X-Received: by 10.99.174.9 with SMTP id q9mr12167689pgf.80.1489242424944;
        Sat, 11 Mar 2017 06:27:04 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id u12si2275251pfd.3.2017.03.11.06.27.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 06:27:04 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 77so13287645pgc.0
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 06:27:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=h9JLhOF7s1jnFJf5LlL/XZxvU0hcGiyJgwJ/9PY0mbg=;
        b=Ua25bBwqe8qoV1dIW4haNye0pmH9cbgaL2QQqMm3P3SFS+uuM5Sv4jqVmiJM4bv7ag
         DrjL43g9MqJFDihLRuXTuBg5tCL7kx2LFlP1s3FaP8KMT7m6zeSy+7kpysmnkuWXjjJa
         FoDF97FJjqGCzeXnoBNj1bEY8wG2xAqUR1nuKz9hpkW5BEVtfF6eDkkQ0uBgb6IfaAfU
         mhI0kWhFQhgJl/JdeqJi/y+AD6T7z6FWPK5rNxKoNeOAmwynX/vJHx9FKI9ioLIZf8C/
         HKNk1kWU05kx0WLzFUPmvjQbleiZ57OtAraRm+x3Mu0jmTwB5hTXHauJx1Csd7vQCw4O
         /ceQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=h9JLhOF7s1jnFJf5LlL/XZxvU0hcGiyJgwJ/9PY0mbg=;
        b=drEnCglzVE35/svCKCdj3dO4tKZfENr9PqzPX4YMNeqtky9bE9/dpnMo2rwdgO9Whu
         z4/ZMRdTriRooXMnmqTnsWavQGER8eXom7sEPYnHg11EjahTTt/5CE+coVlhnCz9Vjra
         cXBald7jrJD4Bm5c0EhgCVQzbNUa2dlWabDpzLRkgt1DlpVvD+xnC5bst72JiG2iwWV2
         4jl/O9hSmd4i6slEdPuygepL6B/XY3UOykKsGbX2by2+cBhNrFY2FtY5bSQ7oWHKM+iN
         BvcP5sIaSA2krkzp8x0HnNJ6OphOfhLctKpblpEXWjQtgXcGJcPQ8bs8YohGgzon5F83
         OOcQ==
X-Gm-Message-State: AMke39kfte9TOK0KIAeiFlXTnCg13FP3nYh0vQjRo2pzM+wqxr9Ri6Ci0e0HUF0I4juDeQ==
X-Received: by 10.84.237.22 with SMTP id s22mr33661608plk.145.1489242424761;
        Sat, 11 Mar 2017 06:27:04 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id f205sm24607338pfa.35.2017.03.11.06.27.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 06:27:03 -0800 (PST)
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
Subject: [PATCH v1 04/10] staging: iio: cdc: ad7152: Remove exceptional & on function name
Date: Sat, 11 Mar 2017 19:56:38 +0530
Message-Id: <1489242404-12352-5-git-send-email-singhalsimran0@gmail.com>
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


