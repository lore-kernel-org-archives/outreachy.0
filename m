X-GM-THRID: 10349433585664
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,222a9111e0db7cb8
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.150.115 with SMTP id uh19mr497478wib.7.1427796252845;
        Tue, 31 Mar 2015 03:04:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.129 with SMTP id r1ls831110wia.43.canary; Tue, 31 Mar
 2015 03:04:12 -0700 (PDT)
X-Received: by 10.180.87.164 with SMTP id az4mr500083wib.6.1427796252506;
        Tue, 31 Mar 2015 03:04:12 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id sf8si749561wic.2.2015.03.31.03.04.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2015 03:04:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id o5so7372977wix.1
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2015 03:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=KdiSnXqvsS5Z42TBG8Uh8RbGXPz829+AZF18I0ZjD7M=;
        b=FD6CeOSbEDLMKKfEbgINbIVquAX7wef0M5mHFzM7zehqLSA/kilCYLJu2OG8sU3P7N
         5U8nwr/5E7J7V5Cal7e4cqSjr8tlNCxO1Wdv5lnSCXNmlwXACv9TgoOh2oH7Cc5xE/O8
         Qhp4+++F4AUzJxV7V++rEaCXACcbdBPfWuAvEqh0C2bsiVoJy57gcKt0tQgH+bVig+VK
         xf2QFzG/QtBT+E+hbaqKVfd1T+KUMw/zBwqZgPYXRR+PLX/qqwyFQgrYDlG49AjhTBG9
         0LJMny4S6yiVZJKQ2nnhCDF0cwc/M636l8m4obN2ja4AkC6h445ClICkRzSfseWag8mn
         oWvw==
X-Received: by 10.194.109.70 with SMTP id hq6mr70830974wjb.77.1427796252391;
        Tue, 31 Mar 2015 03:04:12 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id nb4sm19615594wjc.20.2015.03.31.03.04.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 31 Mar 2015 03:04:11 -0700 (PDT)
Date: Tue, 31 Mar 2015 13:03:12 +0300
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/7] Staging: iio: trigger: Remove explicit NULL comparison
Message-ID: <e3a6acf3ec4319167f9c27a70cfb966e65d4adab.1427795054.git.cristina.opriceana@gmail.com>
References: <cover.1427795054.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427795054.git.cristina.opriceana@gmail.com>
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


