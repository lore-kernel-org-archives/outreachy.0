X-GM-THRID: 4475579269120
X-Received: by 10.112.130.70 with SMTP id oc6mr2082928lbb.13.1425042541766;
        Fri, 27 Feb 2015 05:09:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.80.197 with SMTP id t5ls119986wix.18.canary; Fri, 27 Feb
 2015 05:09:01 -0800 (PST)
X-Received: by 10.194.239.41 with SMTP id vp9mr2050669wjc.5.1425042541444;
        Fri, 27 Feb 2015 05:09:01 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x235.google.com (mail-we0-x235.google.com. [2a00:1450:400c:c03::235])
        by gmr-mx.google.com with ESMTPS id i7si116806wif.0.2015.02.27.05.09.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 05:09:01 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) client-ip=2a00:1450:400c:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesx3 with SMTP id x3so20310869wes.7
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 05:09:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ezj6l1RnLw0mT1vYCrbKK5vnC1M1RWh099MVbAeu5Uk=;
        b=GzsVrzhGgnQr7L/OZpiEydR6cZsijFouzzldyjAu30G33hAxgsQeqzv5+6KRa8wqlc
         IV5n85a0CCVYRjsjklrapqrfLB5hfM3iyhTRBdoCEb6ioBbsT5Tl9y0sSk3meCYWksVs
         OVp0nD0YEiw9B4qzNO4LBOnomUVr7kGyLPBHu/aNECOW8DYxzonm51iuDhpQpRl8CQ7i
         A85/8jptktjCDRHgbQByA78WiyPXUDhIjUQCaS7viB1GsT3YhrAWyX5V+s91qtKgQk0W
         5hm0tH7ASMvbdE0N6Ta1TXOX0m/+HlH0RUYQF/b/NTa8b0Bpxe8to1rXQWXodSvySfE4
         qyAA==
X-Received: by 10.194.47.201 with SMTP id f9mr9432604wjn.17.1425042541374;
        Fri, 27 Feb 2015 05:09:01 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.192.222])
        by mx.google.com with ESMTPSA id uc18sm2795784wib.0.2015.02.27.05.08.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 05:09:00 -0800 (PST)
Date: Fri, 27 Feb 2015 15:08:38 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 20/24] staging: iio: meter: remove unused variable
Message-ID: <26adc67a13ccfefe17025a69f93c29a852dd3dac.1425035012.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes a variable that was simply used to
store the return value of a function call before
returning it.

The issue was detected and resolved using the following
coccinelle script:

@@
identifier len,f;
@@

-int len;
 ... when != len
     when strict
-len =
+return
        f(...);
-return len;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/iio/meter/ade7759.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7759.c b/drivers/staging/iio/meter/ade7759.c
index b0c7dbc..694e0ce 100644
--- a/drivers/staging/iio/meter/ade7759.c
+++ b/drivers/staging/iio/meter/ade7759.c
@@ -215,18 +215,15 @@ error_ret:
 
 static int ade7759_reset(struct device *dev)
 {
-	int ret;
 	u16 val;
 
 	ade7759_spi_read_reg_16(dev,
 			ADE7759_MODE,
 			&val);
 	val |= 1 << 6; /* Software Chip Reset */
-	ret = ade7759_spi_write_reg_16(dev,
+	return ade7759_spi_write_reg_16(dev,
 			ADE7759_MODE,
 			val);
-
-	return ret;
 }
 
 static IIO_DEV_ATTR_AENERGY(ade7759_read_40bit, ADE7759_AENERGY);
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

