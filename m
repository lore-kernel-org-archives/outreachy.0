X-GM-THRID: 8221215424512
X-Received: by 10.180.13.195 with SMTP id j3mr10882161wic.2.1426297217234;
        Fri, 13 Mar 2015 18:40:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.186.71 with SMTP id fi7ls265844wic.28.canary; Fri, 13 Mar
 2015 18:40:16 -0700 (PDT)
X-Received: by 10.194.201.10 with SMTP id jw10mr7718897wjc.3.1426297216936;
        Fri, 13 Mar 2015 18:40:16 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-we0-x234.google.com (mail-we0-x234.google.com. [2a00:1450:400c:c03::234])
        by gmr-mx.google.com with ESMTPS id l8si37547wia.0.2015.03.13.18.40.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 18:40:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) client-ip=2a00:1450:400c:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x234.google.com with SMTP id b47so3308878wej.0
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 18:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=9RHktEULvLXABxqx7zcT7O2m5SWU/soyOLOaoR/CIJE=;
        b=CGkRDEblwDWiW+RmKmmb17Bb5ffLNJj/2DArFG464JOeiNShnqbQNvgLSJP3+EMiEQ
         bmTl3a7WePgqHfVNG2GnRmyMaDaY35vhI6hwnmfnhIVomiMg9qSjOTOaEdaM3n0BlRJY
         1gZT6FQkSEjOb/npKj+HN5mSxOm1Odtjj+/Dmr+VyA5j3mjYjRWhh3C3U1W6Z7uyFnwV
         O3qf0ng8t5MFmmCWG43lCEcK3/1U9peo/tYpmUx7h/XaoZQV8a0Rmuj4tf1uC8ULDKbt
         atPLzWQijf9dIYLww8idLwF2XpAKl4W/PKbqGcMNzTbHF/i1Dm06rSX5kv1cfA6tTddk
         5OsQ==
X-Received: by 10.180.38.1 with SMTP id c1mr42347898wik.84.1426297216884;
        Fri, 13 Mar 2015 18:40:16 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id vv9sm5029977wjc.35.2015.03.13.18.40.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 13 Mar 2015 18:40:16 -0700 (PDT)
Date: Sat, 14 Mar 2015 03:39:36 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/6] Staging: iio: Alignment should match open parenthesis
Message-ID: <62ccda665be354990b06a5d12ccf410ce9e1013f.1426296329.git.cristina.opriceana@gmail.com>
References: <cover.1426296329.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426296329.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch arranges multiple-line parameters in accordance with
the left side parenthesis to improve coding style.
Found by checkpatch.pl.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/frequency/ad9834.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
index f06b14d..cc465d5 100644
--- a/drivers/staging/iio/frequency/ad9834.c
+++ b/drivers/staging/iio/frequency/ad9834.c
@@ -53,7 +53,7 @@ static int ad9834_write_frequency(struct ad9834_state *st,
 }
 
 static int ad9834_write_phase(struct ad9834_state *st,
-				  unsigned long addr, unsigned long phase)
+			      unsigned long addr, unsigned long phase)
 {
 	if (phase > BIT(AD9834_PHASE_BITS))
 		return -EINVAL;
@@ -63,9 +63,9 @@ static int ad9834_write_phase(struct ad9834_state *st,
 }
 
 static ssize_t ad9834_write(struct device *dev,
-		struct device_attribute *attr,
-		const char *buf,
-		size_t len)
+			    struct device_attribute *attr,
+			    const char *buf,
+			    size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad9834_state *st = iio_priv(indio_dev);
@@ -142,9 +142,9 @@ error_ret:
 }
 
 static ssize_t ad9834_store_wavetype(struct device *dev,
-				 struct device_attribute *attr,
-				 const char *buf,
-				 size_t len)
+				     struct device_attribute *attr,
+				     const char *buf,
+				     size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad9834_state *st = iio_priv(indio_dev);
@@ -179,7 +179,7 @@ static ssize_t ad9834_store_wavetype(struct device *dev,
 		break;
 	case 1:
 		if (sysfs_streq(buf, "square") &&
-			!(st->control & AD9834_MODE)) {
+		    !(st->control & AD9834_MODE)) {
 			st->control &= ~AD9834_MODE;
 			st->control |= AD9834_OPBITEN;
 		} else {
-- 
1.9.1


