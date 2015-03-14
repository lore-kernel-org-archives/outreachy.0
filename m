X-GM-THRID: 8221215424512
X-Received: by 10.152.6.232 with SMTP id e8mr8112891laa.2.1426359259457;
        Sat, 14 Mar 2015 11:54:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.29.225 with SMTP id n1ls541305lah.52.gmail; Sat, 14 Mar
 2015 11:54:18 -0700 (PDT)
X-Received: by 10.152.45.7 with SMTP id i7mr8106759lam.9.1426359258912;
        Sat, 14 Mar 2015 11:54:18 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x236.google.com (mail-wg0-x236.google.com. [2a00:1450:400c:c00::236])
        by gmr-mx.google.com with ESMTPS id el6si366833wib.0.2015.03.14.11.54.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Mar 2015 11:54:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) client-ip=2a00:1450:400c:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x236.google.com with SMTP id a20so11084730wgr.3
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2015 11:54:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=20qi8hPCOnnPK5O04025HcLUhEB5VQGOL7SFVnBCJYw=;
        b=i0wUBmJ99HHLl3tCSSXMEu7jIUm2uAFYBhtMn3tgBRJfqzjWT+b/4c4CbRIZ8rEVZs
         yeRHdgOyMYm63mAL+OwlWaQPSXUm4RYXD52X5yiet82AnSyGE3bQhaVT79+pz9JiwDGK
         VpaSPVUqQKoMOQ5M0JuEtYluBikpkMbvunU5Lj5GH7qnFcQSfiKndzRcL5oSdtVYP5ep
         I4raaNthAaGA+SQnxlR3BTeiGrVuBlqajjQ2Ub72j+5TYujeif5O3Jh24lYPr4+3rYYL
         Vl3oN86EQ/3Bxe8dfgBoyNCFGKrYt7lJkP6Ex1CZJy98o0Z++ytySTReXl+eGJdg/0PE
         GWtg==
X-Received: by 10.180.198.162 with SMTP id jd2mr146422564wic.21.1426359258822;
        Sat, 14 Mar 2015 11:54:18 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id hw7sm8074501wjb.24.2015.03.14.11.54.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 14 Mar 2015 11:54:18 -0700 (PDT)
Date: Sat, 14 Mar 2015 20:53:37 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 5/6] Staging: iio: Alignment should match open parenthesis
Message-ID: <566d36ca0be1b53d708969d2fa30b1bcf03d6aef.1426353884.git.cristina.opriceana@gmail.com>
References: <cover.1426353884.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426353884.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch arranges multiple-line parameters in accordance with
the parameter above them to improve coding style.
Found by checkpatch.pl

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/frequency/ad9834.c | 30 ++++++++++++++++--------------
 1 file changed, 16 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
index f06b14d..b57bf6f 100644
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
@@ -200,9 +200,10 @@ static ssize_t ad9834_store_wavetype(struct device *dev,
 	return ret ? ret : len;
 }
 
-static ssize_t ad9834_show_out0_wavetype_available(struct device *dev,
-						struct device_attribute *attr,
-						char *buf)
+static
+ssize_t ad9834_show_out0_wavetype_available(struct device *dev,
+					    struct device_attribute *attr,
+					    char *buf)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad9834_state *st = iio_priv(indio_dev);
@@ -221,9 +222,10 @@ static ssize_t ad9834_show_out0_wavetype_available(struct device *dev,
 static IIO_DEVICE_ATTR(out_altvoltage0_out0_wavetype_available, S_IRUGO,
 		       ad9834_show_out0_wavetype_available, NULL, 0);
 
-static ssize_t ad9834_show_out1_wavetype_available(struct device *dev,
-						struct device_attribute *attr,
-						char *buf)
+static
+ssize_t ad9834_show_out1_wavetype_available(struct device *dev,
+					    struct device_attribute *attr,
+					    char *buf)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad9834_state *st = iio_priv(indio_dev);
-- 
1.9.1


