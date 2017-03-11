X-GM-THRID: 6396079372840730624
X-Received: by 10.157.43.184 with SMTP id u53mr10502069ota.33.1489242413419;
        Sat, 11 Mar 2017 06:26:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.143.75 with SMTP id r72ls3220454iod.30.gmail; Sat, 11 Mar
 2017 06:26:53 -0800 (PST)
X-Received: by 10.99.96.71 with SMTP id u68mr11013917pgb.32.1489242412976;
        Sat, 11 Mar 2017 06:26:52 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id c123si2251301pfa.4.2017.03.11.06.26.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 06:26:52 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 67so13923725pfg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 06:26:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Nq4ypMNN+hRELFT6DIDf6gPaqlqvnyDv7B5G6Bgwk60=;
        b=gLUR7BVZKkaYxvwvNT48J6bFPewn1AzkBnOW2pgBByFGnjLnF2hHwlt1G6fl8B5U+w
         dKSe/akT3rUzONaOMsQxsw0VbOFKCZ+AaeblrtaT6mo3xNgxPaJNcJJLUE0v+G1G6Mee
         FUf0eEFmu8FHo4snYQNC5qebcXy20CzJpzBSrrPI0yayrIi3Aw5Ahhz2IYx6xdG8cC3x
         /Zobx7AtPXe9Yq/1UO1mHxv511m9MT3V5/sMeOhKwqrhD2lShbcnhBKQejN20OVjAm5+
         BthQLWP28C2hIfEcdlpRL5c62hTHPxUaCrpusz4eHYIDaTy9zp7Y/wQqt42/PoeKHuL3
         zRCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Nq4ypMNN+hRELFT6DIDf6gPaqlqvnyDv7B5G6Bgwk60=;
        b=XnwFkneH3w23VEQLkmRnq2H4tKNYvgeDnSzmneprgR6bGYosPq5bOYhHJP1thJAcWq
         yk9GE0tnR5N/ZW3LNDyERhI+ENvj/MehM/3aQqNScgCfRZ0O1b2wALexikwhjxEURbXa
         rai75J80CaTun+TOmvVV/f6wnQauOn/ruBtKh/uv+abmEnmKrQkt66OnmHj71CZ1V0Lj
         sCA+Ge7sZbqlrMnNFMb4KvQSPKQM/7Q/z858jWMPsS0YWquuDZHFNucgMLxyJBC911oX
         T4F/pMb4H6JXOrHadxQfZ86NuiDVoVYbzkf4szLcmSEVEgfkdo3tk9y4dQgPl3oZfq5X
         TkHQ==
X-Gm-Message-State: AMke39nRgt6HYcapETzPAl3hiT7j+5BzCQJJMCqyAWuMdPv649nbbA2aQ1hXcaLPdRTtUA==
X-Received: by 10.99.24.88 with SMTP id 24mr26921666pgy.54.1489242412761;
        Sat, 11 Mar 2017 06:26:52 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id v186sm24695686pgv.44.2017.03.11.06.26.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 06:26:51 -0800 (PST)
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
Subject: [PATCH v1 01/10] staging: iio: ad7192: Remove exceptional & on function name
Date: Sat, 11 Mar 2017 19:56:35 +0530
Message-Id: <1489242404-12352-2-git-send-email-singhalsimran0@gmail.com>
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
 drivers/staging/iio/adc/ad7192.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index 4fc8588..d11c6de 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -564,18 +564,18 @@ static int ad7192_write_raw_get_fmt(struct iio_dev *indio_dev,
 }
 
 static const struct iio_info ad7192_info = {
-	.read_raw = &ad7192_read_raw,
-	.write_raw = &ad7192_write_raw,
-	.write_raw_get_fmt = &ad7192_write_raw_get_fmt,
+	.read_raw = ad7192_read_raw,
+	.write_raw = ad7192_write_raw,
+	.write_raw_get_fmt = ad7192_write_raw_get_fmt,
 	.attrs = &ad7192_attribute_group,
 	.validate_trigger = ad_sd_validate_trigger,
 	.driver_module = THIS_MODULE,
 };
 
 static const struct iio_info ad7195_info = {
-	.read_raw = &ad7192_read_raw,
-	.write_raw = &ad7192_write_raw,
-	.write_raw_get_fmt = &ad7192_write_raw_get_fmt,
+	.read_raw = ad7192_read_raw,
+	.write_raw = ad7192_write_raw,
+	.write_raw_get_fmt = ad7192_write_raw_get_fmt,
 	.attrs = &ad7195_attribute_group,
 	.validate_trigger = ad_sd_validate_trigger,
 	.driver_module = THIS_MODULE,
-- 
2.7.4


