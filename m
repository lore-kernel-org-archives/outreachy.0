X-GM-THRID: 6264579651276898304
X-Received: by 10.13.217.204 with SMTP id b195mr24543712ywe.26.1458586112834;
        Mon, 21 Mar 2016 11:48:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.97 with SMTP id rv1ls1107157igb.12.gmail; Mon, 21 Mar
 2016 11:48:32 -0700 (PDT)
X-Received: by 10.66.249.41 with SMTP id yr9mr25111250pac.37.1458586112265;
        Mon, 21 Mar 2016 11:48:32 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id h69si3566215pfj.0.2016.03.21.11.48.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 11:48:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id u190so31626895pfb.2
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Mar 2016 11:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ENDCPZ9uW9K2doON/ORQXzI3nYsgPhqZTjHoBPZYTcc=;
        b=W1x5vl6+wwFXDkfIeNc8ScjI22hCYfFlq+wyiNhoJvUquLDu3WrhzUBFWSNA5ecTrv
         i4ifsoanqgrOM+SYnpRQTATQUbM2sIlTSihXcFEE0WA0zqIVPHSaMhuSYuWtXvJKECv3
         P6Q6W49Pkj06u4VmAZRiwT4nUZSBgx8VLh6M/a0VdE627Rn/znRYn0tbx6UNToM77Y4b
         WkN83dEwpspltGR4u+wC8x1YroBrWQ4z/PwgsGIcG+v/FgcJ4uC3nsz4KYt+feNyzU5P
         OFTtHyhCrnqDpKjv8oRkA5jv3/eSC7Lg07n2onmniWOVdod7G776LYI9yp9bnCXUEgtJ
         6aXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ENDCPZ9uW9K2doON/ORQXzI3nYsgPhqZTjHoBPZYTcc=;
        b=Gfeiz7ZNENtRLrcqAXc13zphdifpiT4uazxNvn/enZHxH0XFb/4LxcsBU/TEnZJteg
         vXMNR5D8AGZpMYNOWvEMDLakFFNSS1/Do1er2xF1V1+pNm/kk0RQUQMX4xnL+hdGtTJR
         6AjEMhfrqJopzaaSUoZbYErkiXRuBQNSKr3KhWEkYu2SBOg2My1qRa1jeaQH4O4b2HKj
         QvkNPmwSQxZ3Y0I3xwBXTcA+21pxki9TzdmcHcyXqAIQjoYEmilWwMESShgN/Z/eyL43
         tKmSe2MjOXxqcq2ONNVDo0/zXWEhK6sR3CDmbYBLfJVfPt+bpu8rKuwcLKDi8IEJp/69
         YLCg==
X-Gm-Message-State: AD7BkJJb2+JafFCz+BnHCOKVjSLMduXXGPjApjHj0lJpO8xvQsQH/20q5bNVD67L4VsL0g==
X-Received: by 10.98.13.132 with SMTP id 4mr47642400pfn.122.1458586112139;
        Mon, 21 Mar 2016 11:48:32 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.46])
        by smtp.gmail.com with ESMTPSA id uh1sm42463911pab.26.2016.03.21.11.48.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 21 Mar 2016 11:48:31 -0700 (PDT)
Date: Mon, 21 Mar 2016 17:19:44 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: iio: ad5933: Remove unnecessary space after cast.
Message-ID: <20160321114944.GA3398@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unnecessary space after cast.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/iio/impedance-analyzer/ad5933.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c b/drivers/staging/iio/impedance-analyzer/ad5933.c
index d1218d8..b29d155 100644
--- a/drivers/staging/iio/impedance-analyzer/ad5933.c
+++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
@@ -307,10 +307,10 @@ static ssize_t ad5933_show_frequency(struct device *dev,
 
 	freqreg = be32_to_cpu(dat.d32) & 0xFFFFFF;
 
-	freqreg = (u64) freqreg * (u64) (st->mclk_hz / 4);
+	freqreg = (u64)freqreg * (u64)(st->mclk_hz / 4);
 	do_div(freqreg, 1 << 27);
 
-	return sprintf(buf, "%d\n", (int) freqreg);
+	return sprintf(buf, "%d\n", (int)freqreg);
 }
 
 static ssize_t ad5933_store_frequency(struct device *dev,
@@ -358,7 +358,7 @@ static ssize_t ad5933_show(struct device *dev,
 	int ret = 0, len = 0;
 
 	mutex_lock(&indio_dev->mlock);
-	switch ((u32) this_attr->address) {
+	switch ((u32)this_attr->address) {
 	case AD5933_OUT_RANGE:
 		len = sprintf(buf, "%u\n",
 			      st->range_avail[(st->ctrl_hb >> 1) & 0x3]);
@@ -409,7 +409,7 @@ static ssize_t ad5933_store(struct device *dev,
 	}
 
 	mutex_lock(&indio_dev->mlock);
-	switch ((u32) this_attr->address) {
+	switch ((u32)this_attr->address) {
 	case AD5933_OUT_RANGE:
 		for (i = 0; i < 4; i++)
 			if (val == st->range_avail[i]) {
-- 
1.8.3.4


