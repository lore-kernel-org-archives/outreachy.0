X-GM-THRID: 10349433585664
X-Received: by 10.112.148.10 with SMTP id to10mr6991745lbb.18.1427642592604;
        Sun, 29 Mar 2015 08:23:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.100 with SMTP id fn4ls128877wib.24.canary; Sun, 29 Mar
 2015 08:23:12 -0700 (PDT)
X-Received: by 10.180.89.36 with SMTP id bl4mr14913wib.2.1427642592246;
        Sun, 29 Mar 2015 08:23:12 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id o3si458566wib.2.2015.03.29.08.23.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2015 08:23:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x230.google.com with SMTP id a2so92938940wia.0
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2015 08:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=KdiSnXqvsS5Z42TBG8Uh8RbGXPz829+AZF18I0ZjD7M=;
        b=MfCCerZfD2uqhdYnmZVzmxuQS9RiJg6QXVl749I9GHdQjOGxNUPi5TVhzOm+UgARdd
         3dGmchDayMn6WnlFjmykgh0JORWclif8DN7YNMAkAwAOMyi/pVuESte0cP99LLiv4Kat
         DN7mfw2Bd01SZcfa808nAmCoKCTym3zq923+EJJ9vWhuxHlXAxVRKx0bjTpLkLzKQfCR
         y2Avfz4UGD3R0VHdVrVmvKleNCDwnazCzVW3tx2nOgYy4DHpK9OcWq9TuKTAOj/JN6kG
         QdKGtltA4mWZiD5KmGYavb0685PJvyOnLkKATSYRuGwHROI35LZnvC3AtzV+8sjWebkT
         aH2A==
X-Received: by 10.194.223.5 with SMTP id qq5mr56179486wjc.152.1427642592188;
        Sun, 29 Mar 2015 08:23:12 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id hj10sm11592673wjc.48.2015.03.29.08.23.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 29 Mar 2015 08:23:11 -0700 (PDT)
Date: Sun, 29 Mar 2015 18:22:15 +0300
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/7] Staging: iio: Remove explicit NULL comparison
Message-ID: <deb541bf890e4be4faa8f24a847a878b84e1fd60.1427642156.git.cristina.opriceana@gmail.com>
References: <cover.1427642156.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427642156.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes explicit NULL comparison and replaces it
with its shorter form. Detected with coccinelle.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/trigger/iio-trig-periodic-rtc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/trigger/iio-trig-periodic-rtc.c b/drivers/staging/iio/trigger/iio-trig-periodic-rtc.c
index 89df1d3..0c1976d 100644
--- a/drivers/staging/iio/trigger/iio-trig-periodic-rtc.c
+++ b/drivers/staging/iio/trigger/iio-trig-periodic-rtc.c
@@ -124,7 +124,7 @@ static int iio_trig_periodic_rtc_probe(struct platform_device *dev)
 	int i, ret;
 
 	for (i = 0;; i++) {
-		if (pdata[i] == NULL)
+		if (!pdata[i])
 			break;
 		trig = iio_trigger_alloc("periodic%s", pdata[i]);
 		if (!trig) {
@@ -142,7 +142,7 @@ static int iio_trig_periodic_rtc_probe(struct platform_device *dev)
 		trig->ops = &iio_prtc_trigger_ops;
 		/* RTC access */
 		trig_info->rtc = rtc_class_open(pdata[i]);
-		if (trig_info->rtc == NULL) {
+		if (!trig_info->rtc) {
 			ret = -EINVAL;
 			goto error_free_trig_info;
 		}
-- 
1.9.1


