X-GM-THRID: 6478777723718205440
X-Received: by 10.31.248.135 with SMTP id w129mr1521989vkh.117.1508459166985;
        Thu, 19 Oct 2017 17:26:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.159.53.238 with SMTP id u43ls2477000uad.11.gmail; Thu, 19 Oct
 2017 17:26:05 -0700 (PDT)
X-Received: by 10.176.91.17 with SMTP id u17mr1837822uae.80.1508459165926;
        Thu, 19 Oct 2017 17:26:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508459165; cv=none;
        d=google.com; s=arc-20160816;
        b=KyOcMgEpF4a656t71DXfli9/2tG/DVEiW2qBwVAiBYx6Gix5gSeEI4ZPgAmDiAPjyW
         1n/JxPoJQBsNRI88Q7zFNPQO7g0AJTCFTHjLm/A70pIXtneONver5wsbbHiMBPgOweCt
         c45HkN2eeNIOLkNPZtmkoxNWNEPCEbS9QjKOQRBg0kMBv2nBehen7ak3mVENGRkdZblz
         T7/6J2g14cTgGlefSlhGaz1C+L4idEa1hfu7MBIYwagmCw0lpJ5p2mRgIHKoVoYnoizf
         19W2n/o16gEZtrJqRmi/gtnVIaRvOA09JBZA8RsnSqNJGcIxR48aM0AAFZ/3kcj8SVXm
         IJyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=JI61xa0xDeTYKwmARjpviCH/ztnYQfrtPf7HsdNBSGc=;
        b=r84QAlSm+tm2dgX7nTIejT2VBsuvuV0h7moUtpj+cfHuTNdtPSTDSTm4qFO4gqxd4B
         e+Go0bznLy5rLfqrse23RLYF0usS2jGanqygaKDVUnng/w8t/And8WnH88wGT5j7lFql
         x6ckZOAbl7UFuQa2xf0MCF8VSgzArjwaRAk0LPZFginR6kE9cc3B0++zK3BzGfePOAgc
         cbQ3zPp1J9JKUtG9ZSYILDOrJhg15gVWtg0tZAoGXFJJ3Lt4+pfkIHiQUauAxSMQ6sr6
         1xBnVHzi63g7+EEYDmNBq8uDqirmVHTlanE+ypCZC0v/hfIDzLkQIGxdWf9OoMM74Gj8
         gItg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=skYlZcTp;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::242 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua0-x242.google.com (mail-ua0-x242.google.com. [2607:f8b0:400c:c08::242])
        by gmr-mx.google.com with ESMTPS id d33si1361501uai.0.2017.10.19.17.26.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Oct 2017 17:26:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::242 as permitted sender) client-ip=2607:f8b0:400c:c08::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=skYlZcTp;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::242 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua0-x242.google.com with SMTP id n22so7264912uaj.13
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Oct 2017 17:26:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=JI61xa0xDeTYKwmARjpviCH/ztnYQfrtPf7HsdNBSGc=;
        b=skYlZcTpQyw0CFBw1Xfm1/ilVlTDWhirKGSwcbFYn+EEiGB29le2aYJ5sd6Uxb9OpF
         6WH2wwqAppendqFQOQsmjMpZIps89GGbap+4r7Rcb5IYnpcJjOsFNcuESRahpdkCuVar
         Qxs4lJvP0nJquz77nvTHjWRxG1kQrH9E8FsJJ0OqhNxvTA/tkQpNxzBR/7p96itldptz
         6kvGZTFUcPyj00qoHy693p6oLdDRn72VH7GwB+4hXd6ENaquxM4P4rMSE19JT6LWVyjW
         XPYsIQnibp0d2Mf3RpDF9Oe/WvlziD5AzyoCphpIoePi5uITkBqMbHDmG2CqtMrlGWnQ
         it+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=JI61xa0xDeTYKwmARjpviCH/ztnYQfrtPf7HsdNBSGc=;
        b=SUd/rPRXaLY9Uq3fGKRKkP5cow2mVf8QxwEiB/mT9IkiSYjs8sVDWIW+/4aun0iog5
         Yu3ZVVPDpz4ya5jEnk3OE/EO3+vLzi6t20uRzPQocJius7q2qzHQlX9lnyXb0RMicisH
         9d0hntH6VF+kPEzuWF2q9bDcAP/5l7S7cCt+zCn79U5xfe0Whg6R4CvQzxuUWN9MaDFK
         +ZbHh+dIgkWlfQSpqsEB4KByJFPLAx7KPJTDUNuskZ5bUdIASe6DTiqEnOOySuEJ5v3q
         yCYSpgCATGp5rRxHUrlteKqtIYts3uFbKEk1nMKIc1NSaZnk167HtZgWFx/qLfT2w3bl
         g7WA==
X-Gm-Message-State: AMCzsaW+a+YiCfsT/SD8Jef408XNw7uiTjn2tp1OrHyJKyNRb3XznP+G
	w1t+i3FfyP6yll88xUveI2SNHkVb
X-Google-Smtp-Source: ABhQp+Rheb/ZvCO+URXIzrm2okza5BXsDiQoD+2MUHuFUNmuI8sNtxmSD/C9tVQCLPbfRhBTd1phwg==
X-Received: by 10.176.82.36 with SMTP id i33mr2599047uaa.117.1508459165429;
        Thu, 19 Oct 2017 17:26:05 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from ubuntu-server-1604 ([152.207.209.222])
        by smtp.gmail.com with ESMTPSA id c29sm9017974uaa.50.2017.10.19.17.26.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Oct 2017 17:26:04 -0700 (PDT)
Date: Thu, 19 Oct 2017 20:26:03 -0400
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: pablo@netfilter.org, Julia.Lawall@lip6.fr
Cc: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 6/6] staging: greybus: Rewrite NULL comparisons
Message-ID: <1c811b62a88ad8fa501b358c8a844476920f80ed.1508457306.git.frank@generalsoftwareinc.com>
References: <cover.1508457306.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1508457306.git.frank@generalsoftwareinc.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Make NULL comparisons shortest and quicker to read changing
'var_name == NULL' by '!var_name'.

Detected by checkpatch with messages like:
CHECK: Comparison to NULL could be written "!id"

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
 drivers/staging/greybus/bundle.c |  2 +-
 drivers/staging/greybus/camera.c | 16 ++++++++--------
 drivers/staging/greybus/core.c   |  2 +-
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/greybus/bundle.c b/drivers/staging/greybus/bundle.c
index d2ef57d..fc5c186 100644
--- a/drivers/staging/greybus/bundle.c
+++ b/drivers/staging/greybus/bundle.c
@@ -33,7 +33,7 @@ static ssize_t state_show(struct device *dev, struct device_attribute *attr,
 {
 	struct gb_bundle *bundle = to_gb_bundle(dev);
 
-	if (bundle->state == NULL)
+	if (!bundle->state)
 		return sprintf(buf, "\n");
 
 	return sprintf(buf, "%s\n", bundle->state);
diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
index a64517e..18e58ce 100644
--- a/drivers/staging/greybus/camera.c
+++ b/drivers/staging/greybus/camera.c
@@ -919,7 +919,7 @@ static ssize_t gb_camera_debugfs_configure_streams(struct gb_camera *gcam,
 
 	/* Retrieve number of streams to configure */
 	token = strsep(&buf, ";");
-	if (token == NULL)
+	if (!token)
 		return -EINVAL;
 
 	ret = kstrtouint(token, 10, &nstreams);
@@ -930,7 +930,7 @@ static ssize_t gb_camera_debugfs_configure_streams(struct gb_camera *gcam,
 		return -EINVAL;
 
 	token = strsep(&buf, ";");
-	if (token == NULL)
+	if (!token)
 		return -EINVAL;
 
 	ret = kstrtouint(token, 10, &flags);
@@ -947,7 +947,7 @@ static ssize_t gb_camera_debugfs_configure_streams(struct gb_camera *gcam,
 
 		/* width */
 		token = strsep(&buf, ";");
-		if (token == NULL) {
+		if (!token) {
 			ret = -EINVAL;
 			goto done;
 		}
@@ -957,7 +957,7 @@ static ssize_t gb_camera_debugfs_configure_streams(struct gb_camera *gcam,
 
 		/* height */
 		token = strsep(&buf, ";");
-		if (token == NULL)
+		if (!token)
 			goto done;
 
 		ret = kstrtouint(token, 10, &stream->height);
@@ -966,7 +966,7 @@ static ssize_t gb_camera_debugfs_configure_streams(struct gb_camera *gcam,
 
 		/* Image format code */
 		token = strsep(&buf, ";");
-		if (token == NULL)
+		if (!token)
 			goto done;
 
 		ret = kstrtouint(token, 16, &stream->format);
@@ -1010,7 +1010,7 @@ static ssize_t gb_camera_debugfs_capture(struct gb_camera *gcam,
 
 	/* Request id */
 	token = strsep(&buf, ";");
-	if (token == NULL)
+	if (!token)
 		return -EINVAL;
 	ret = kstrtouint(token, 10, &request_id);
 	if (ret < 0)
@@ -1018,7 +1018,7 @@ static ssize_t gb_camera_debugfs_capture(struct gb_camera *gcam,
 
 	/* Stream mask */
 	token = strsep(&buf, ";");
-	if (token == NULL)
+	if (!token)
 		return -EINVAL;
 	ret = kstrtouint(token, 16, &streams_mask);
 	if (ret < 0)
@@ -1026,7 +1026,7 @@ static ssize_t gb_camera_debugfs_capture(struct gb_camera *gcam,
 
 	/* number of frames */
 	token = strsep(&buf, ";");
-	if (token == NULL)
+	if (!token)
 		return -EINVAL;
 	ret = kstrtouint(token, 10, &num_frames);
 	if (ret < 0)
diff --git a/drivers/staging/greybus/core.c b/drivers/staging/greybus/core.c
index ba76190..418cd02 100644
--- a/drivers/staging/greybus/core.c
+++ b/drivers/staging/greybus/core.c
@@ -49,7 +49,7 @@ static bool greybus_match_one_id(struct gb_bundle *bundle,
 static const struct greybus_bundle_id *
 greybus_match_id(struct gb_bundle *bundle, const struct greybus_bundle_id *id)
 {
-	if (id == NULL)
+	if (!id)
 		return NULL;
 
 	for (; id->vendor || id->product || id->class || id->driver_info;
-- 
2.7.4


