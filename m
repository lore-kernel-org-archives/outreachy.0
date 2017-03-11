X-GM-THRID: 6396079372840730624
X-Received: by 10.129.75.5 with SMTP id y5mr11321259ywa.28.1489242420956;
        Sat, 11 Mar 2017 06:27:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.103 with SMTP id f36ls7885740otd.0.gmail; Sat, 11 Mar
 2017 06:27:00 -0800 (PST)
X-Received: by 10.129.155.148 with SMTP id s142mr3657806ywg.30.1489242420685;
        Sat, 11 Mar 2017 06:27:00 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id r66si2234054pfb.7.2017.03.11.06.27.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 06:27:00 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id g2so8840065pge.2
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 06:27:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=TR/h/mVupm4dnYNmWih3MJTymbapfCT4cna4gTFSfBk=;
        b=Ov1HaZEqDqJQLJdDl4t47dTgHNFw12ERovO+7Lh1yx6Butnlem2HHyrPqhXS1QQTU0
         fCswAs/1LYBKuPBluxPE9s8rKK9a0Oo2e5waCYywm62jG1vi97Q4ePHq5Am9SyJ98FAP
         mL+gTFIZT3fEzmlqjmjGUKGOpZ+GvgIW7Zl7NgJaW3nohgxl9ABiJThgHYc0q0fuIzUM
         eQ3Ij92gXVFbT0IbFztRHVX09vnIKJj0ECBGDE1OqbUKajtALOfC7Hq3TF0od0KLCGWx
         SejOelSFRcOMb4g2+JHxPx5/9lTWvWwDg2H2pXHPVgl0t/VMmmN+l1VHDZTF3O2VJx3U
         kHQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=TR/h/mVupm4dnYNmWih3MJTymbapfCT4cna4gTFSfBk=;
        b=tCZfWxqVIdGIYyh84N3Dv7oRuIM21hkcSlJkSrzxv1rRA/kLQAIozE2x19poi1NBS8
         HnLhuyw/89Fe40bvN3Ex9Fo3SnYp27bcbfATFIfng15GhKyoGq2fiBoklLfcTVfF/p3F
         GROGuu6EqodE6PYZq6H+JyCN5oSKBT+dKYlrxmZAJkDh3YxdYmpKB2Y4uteNJU0AgQWB
         aF1JigyuiMdZW+QWNBnJwk3B5vQCF0luw7Fq3vduq4VijK1leBhW9kzm7Uf54ehWnnQT
         28E+eja2XeUQPybaTk5tMhAi1rJHquwb3nPV6+he3NFbK6UwVDlULL1GakJrxaV94eo2
         BEvw==
X-Gm-Message-State: AMke39mMSqXy+eL+FcgtY/pLJTZs90F+xGCJ1zmwshrthB7bV/nvmFdbcjkmx9LeaY478g==
X-Received: by 10.99.170.70 with SMTP id x6mr26776017pgo.111.1489242420464;
        Sat, 11 Mar 2017 06:27:00 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x10sm24580848pff.72.2017.03.11.06.26.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 06:26:59 -0800 (PST)
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
Subject: [PATCH v1 03/10] staging: iio: cdc: ad7746: Remove exceptional & on function name
Date: Sat, 11 Mar 2017 19:56:37 +0530
Message-Id: <1489242404-12352-4-git-send-email-singhalsimran0@gmail.com>
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
 drivers/staging/iio/cdc/ad7746.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
index 81f8b9e..6294de7 100644
--- a/drivers/staging/iio/cdc/ad7746.c
+++ b/drivers/staging/iio/cdc/ad7746.c
@@ -664,8 +664,8 @@ static int ad7746_read_raw(struct iio_dev *indio_dev,
 
 static const struct iio_info ad7746_info = {
 	.attrs = &ad7746_attribute_group,
-	.read_raw = &ad7746_read_raw,
-	.write_raw = &ad7746_write_raw,
+	.read_raw = ad7746_read_raw,
+	.write_raw = ad7746_write_raw,
 	.driver_module = THIS_MODULE,
 };
 
-- 
2.7.4


