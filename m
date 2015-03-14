X-GM-THRID: 8221215424512
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,35fc9dbaa0120918
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.44.167 with SMTP id f7mr5250632lbm.9.1426296963941;
        Fri, 13 Mar 2015 18:36:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.121.5 with SMTP id lg5ls396968lab.106.gmail; Fri, 13 Mar
 2015 18:36:03 -0700 (PDT)
X-Received: by 10.112.125.67 with SMTP id mo3mr5992537lbb.6.1426296963175;
        Fri, 13 Mar 2015 18:36:03 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-we0-x230.google.com (mail-we0-x230.google.com. [2a00:1450:400c:c03::230])
        by gmr-mx.google.com with ESMTPS id sf8si236819wic.2.2015.03.13.18.36.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 18:36:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) client-ip=2a00:1450:400c:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x230.google.com with SMTP id b47so3272757wej.0
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 18:36:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=zocut1HERqfNrnFw42XoJZ8SMklrm7qcKYV6Kd9zyNQ=;
        b=ywPAPv0CD+6SpDv85zp4cQIq3ShAdhCsvnfYmQrAE3yG+miQyOQKAky1Kojb6/13WP
         enT/X46VAHo03YBN3ofGXjN4xGrGzsLR+oO2rQYpYA7Jw34dy9+2R8upXngrfOfNfJlW
         FMthHi6Y82h+1V9Xa1WivG7gdXhCHUL3jM6KQ70HtI02s5mGvXyqmvmHW9Xb5t2S6c5S
         JITSE3InTFB4ivPmzTULbiIOn9Wa9zhCtFQ9OXoS6SwrgRCqpPst/6/QjAFNQJeQWUdG
         nMD2bLj4O0gcq4hK+SGaymkQ8xlCT0/qUZdUzhFUSPXQcrLCKzw8uvSWdf46ZBtAjzbb
         Txdw==
X-Received: by 10.180.106.225 with SMTP id gx1mr147124032wib.53.1426296963099;
        Fri, 13 Mar 2015 18:36:03 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id d9sm4989349wib.20.2015.03.13.18.36.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 13 Mar 2015 18:36:02 -0700 (PDT)
Date: Sat, 14 Mar 2015 03:35:22 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/6] Staging: iio: Remove space after type cast
Message-ID: <53f8f070c1f2a23bd5acfa61ef6153f99b10d0f6.1426296329.git.cristina.opriceana@gmail.com>
References: <cover.1426296329.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426296329.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes unnecessary space after type casts.
Warning found by checkpatch.pl.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/frequency/ad9832.c | 6 +++---
 drivers/staging/iio/frequency/ad9834.c | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/iio/frequency/ad9832.c b/drivers/staging/iio/frequency/ad9832.c
index cf68159..9a16699 100644
--- a/drivers/staging/iio/frequency/ad9832.c
+++ b/drivers/staging/iio/frequency/ad9832.c
@@ -24,8 +24,8 @@
 
 static unsigned long ad9832_calc_freqreg(unsigned long mclk, unsigned long fout)
 {
-	unsigned long long freqreg = (u64) fout *
-				     (u64) ((u64) 1L << AD9832_FREQ_BITS);
+	unsigned long long freqreg = (u64)fout *
+				     (u64)((u64)1L << AD9832_FREQ_BITS);
 	do_div(freqreg, mclk);
 	return freqreg;
 }
@@ -86,7 +86,7 @@ static ssize_t ad9832_write(struct device *dev, struct device_attribute *attr,
 		goto error_ret;
 
 	mutex_lock(&indio_dev->mlock);
-	switch ((u32) this_attr->address) {
+	switch ((u32)this_attr->address) {
 	case AD9832_FREQ0HM:
 	case AD9832_FREQ1HM:
 		ret = ad9832_write_frequency(st, this_attr->address, val);
diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
index 5c80319..a346673 100644
--- a/drivers/staging/iio/frequency/ad9834.c
+++ b/drivers/staging/iio/frequency/ad9834.c
@@ -27,7 +27,7 @@
 
 static unsigned int ad9834_calc_freqreg(unsigned long mclk, unsigned long fout)
 {
-	unsigned long long freqreg = (u64) fout * (u64) (1 << AD9834_FREQ_BITS);
+	unsigned long long freqreg = (u64)fout * (u64)(1 << AD9834_FREQ_BITS);
 
 	do_div(freqreg, mclk);
 	return freqreg;
@@ -78,7 +78,7 @@ static ssize_t ad9834_write(struct device *dev,
 		goto error_ret;
 
 	mutex_lock(&indio_dev->mlock);
-	switch ((u32) this_attr->address) {
+	switch ((u32)this_attr->address) {
 	case AD9834_REG_FREQ0:
 	case AD9834_REG_FREQ1:
 		ret = ad9834_write_frequency(st, this_attr->address, val);
@@ -154,7 +154,7 @@ static ssize_t ad9834_store_wavetype(struct device *dev,
 
 	mutex_lock(&indio_dev->mlock);
 
-	switch ((u32) this_attr->address) {
+	switch ((u32)this_attr->address) {
 	case 0:
 		if (sysfs_streq(buf, "sine")) {
 			st->control &= ~AD9834_MODE;
-- 
1.9.1


