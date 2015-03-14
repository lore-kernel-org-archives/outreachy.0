X-GM-THRID: 8221215424512
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,35fc9dbaa0120918
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.178.67 with SMTP id cw3mr3789020wjc.2.1426359065369;
        Sat, 14 Mar 2015 11:51:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.74.131 with SMTP id t3ls354231wiv.22.gmail; Sat, 14 Mar
 2015 11:51:05 -0700 (PDT)
X-Received: by 10.180.87.166 with SMTP id az6mr1248221wib.1.1426359065011;
        Sat, 14 Mar 2015 11:51:05 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id gj20si362665wic.1.2015.03.14.11.51.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Mar 2015 11:51:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wifj2 with SMTP id j2so11747679wif.1
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2015 11:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=zocut1HERqfNrnFw42XoJZ8SMklrm7qcKYV6Kd9zyNQ=;
        b=Hu9hrqneHW0i5wOuLJnuX/lnW1B+u0fh9O+PeCwva9GzZbr4TDAM3avJV0kMvTfNlu
         u0GpAkltTRh1vR/W8YoVyfQIJyHFwwC/pJhxBbCUQX24vzPu8es0MQR3+ECT9jn4nu61
         elVEP4hnebivekREDX2YU61uAdlddQDzyFSWwGBLkdMG1FYHS90E2xM6SnD8X9BniOmp
         i938QdNQFFK9SYTxffRO+eaXja1EJI/YxPem7HA81RRUO5JnrKuzvvhJDil9PW0QjrQ5
         nF6MYrh/A3cc8eZ/02/ipS5ojHONQDwvWLGeJ9ZnFnrapzEzYSU7KE5/ngs39Mkz6CYR
         IG+g==
X-Received: by 10.180.207.227 with SMTP id lz3mr148468062wic.47.1426359064938;
        Sat, 14 Mar 2015 11:51:04 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id n1sm8038260wib.11.2015.03.14.11.51.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 14 Mar 2015 11:51:04 -0700 (PDT)
Date: Sat, 14 Mar 2015 20:50:23 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/6] Staging: iio: Remove space after type cast
Message-ID: <53f8f070c1f2a23bd5acfa61ef6153f99b10d0f6.1426353884.git.cristina.opriceana@gmail.com>
References: <cover.1426353884.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426353884.git.cristina.opriceana@gmail.com>
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


