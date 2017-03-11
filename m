X-GM-THRID: 6396079372840730624
X-Received: by 10.157.46.92 with SMTP id c28mr8886769otd.145.1489203281721;
        Fri, 10 Mar 2017 19:34:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.23.133 with SMTP id 127ls358934ith.16.canary-gmail; Fri, 10
 Mar 2017 19:34:41 -0800 (PST)
X-Received: by 10.99.119.78 with SMTP id s75mr11149475pgc.124.1489203280993;
        Fri, 10 Mar 2017 19:34:40 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id y90si2071483pfa.6.2017.03.10.19.34.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 19:34:40 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id g2so7670920pge.2
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 19:34:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=zcSyn80kEEZeLrodAMqk7OePmO687IkDzUkOfVxt1aI=;
        b=blMbW1dXiHau7GoI2lEz1qOWMOuFoUnjN0e5levz+cZOBONefn+yseuCMtry2GqODQ
         1ku/k884eKPtwkCyRHekvueeoPs1wVmfP9H1tFkcuwvkUZxrU7uol8NwlOszXCL/eOAj
         51vilYu41ICkOuKEERsylVAjyRAsg4kl0W8kr/8Vawsxe4kGjZn1exuq3ZG1eNgf80ju
         ++Fb7c8oAKrBJzjt+FgvQcU22bt+89NLieoOxIE2VzOdbU1aZ7jv1rxjQ8tX30bMDXYl
         O385fwFkNfhh/h422A+NYPVwhONe1ZHmcp2NWiDqeyDrku1OKKlKdij3HPm0AyiF5p79
         whXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=zcSyn80kEEZeLrodAMqk7OePmO687IkDzUkOfVxt1aI=;
        b=M8yJsw0X0qSayACasCI2RGfQHA5aC1v08+j6a81/VpCYnZav5Q7WL7IoiwPwhOyY9Z
         rSrHp0o41srly0aDaHabKRI3zwEXOGRWePt7Zzycc91vooLy0+53X0Da2h2w38wtDMz6
         x3tUzUlTQLTudH1+VNHpC04AbbC1hkXJjR0SAwY3Sz1LlEWuXapaspCuwYKgz8Bb4nnw
         RiPKTMSR/5TYK03xTQjCyZAJsLMHqwuG2xX2yO2eVjYn4e5pLBM0LTGkql38733uAxrL
         wcnDh8Hk2a4QwF+3Hpp8GaVqVyL21g+EAy1ZadxgeIYpFaTX+ICET64aaVgiYonkp1+v
         Pkig==
X-Gm-Message-State: AMke39kzNTHC816KwcrITFI7Uyj3XEFY606tADVQ1xZLB983xxAtdclA5GSnIjFOlaiNjA==
X-Received: by 10.98.13.197 with SMTP id 66mr24887167pfn.91.1489203280469;
        Fri, 10 Mar 2017 19:34:40 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id p129sm21039272pfp.118.2017.03.10.19.34.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 19:34:39 -0800 (PST)
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
Subject: [PATCH 01/10] staging: iio: ad7192: Remove exceptional & on function name
Date: Sat, 11 Mar 2017 09:06:32 +0530
Message-Id: <1489203401-17518-2-git-send-email-singhalsimran0@gmail.com>
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


