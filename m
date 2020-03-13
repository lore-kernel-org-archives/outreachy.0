X-GM-THRID: 6803797198848917504
X-Received: by 2002:a62:2e44:: with SMTP id u65mr15307350pfu.84.1584132489820;
        Fri, 13 Mar 2020 13:48:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:1c88:: with SMTP id c130ls4470894pfc.7.gmail; Fri, 13
 Mar 2020 13:48:08 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvGXaURGsWIzs4n2qI0WtVkv0xi3QV9PqS8niS/UhWDFjR5OSGsbD6ghNyl2e2c7xiRyOkb
X-Received: by 2002:a63:7e1c:: with SMTP id z28mr15088050pgc.105.1584132488229;
        Fri, 13 Mar 2020 13:48:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584132488; cv=none;
        d=google.com; s=arc-20160816;
        b=gAi4WWpJsYU7MuB57/fGGBRZjT3W5UwekcBWKTGBUa+WQTlprEpjnVREaSljlnmA8X
         JesDENPtdtNdgBunrsx0ILYZY4rzd69a7uAxOvBR/cwJ2AUq4t2tRUblxUVuZ5n808Ve
         5ybnUMI1aFJ7l5Cku2eu/5OhN9OG5WjAh98xMmoQAxwwSRBJg2cl+Kt/kb4c3zlbRgYB
         ijMjDNTPTwTani1jZN09YJ/wJH+hxlDa4hp+w/iLzdR0mJc0Iv/aOwiAiWSvLbTYQ5lX
         vm6zMzubgMWgUsseebF1gG6QAlxB3YcqBolcZISg2kHkPfZ+XWCsrHNUgWqGk+MQvS/N
         rhaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=LWqp8lCL1uffHil6B2ZXNucYg5cBJNbMrdKGr/WNt3c=;
        b=Vax6CMh+esqGLEEyB6dAPCl/tis4N2AzzgTy83G/3lMAuB6GWUmQoLnQarawAjIA4A
         OoAU8PGhdNUlNfGeBOZoFokxCEvrqUoakumscZB69lgjdoB3QjiwqLyy7fwyckptkhvK
         ESY2YEm7E0FjvOxV+C91c6POtMB+yHp5qh19SVQ6DMSa+EtRGMsXdrEKhMFIolfe/J4G
         ZNuxuxBDNG6xsKlijsaO1NIXkI7yzwiAhzxNv7Ku2oq6I/u6VxfoZBvq3xj9c5n4QAh0
         LV82tSdNNgfdxJKdtg6dhw2iipLoqJ3ag9umuOvk0Hl6kUiT9eixguWZQQn9cvVfWhCJ
         Zh+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=cxZ2kvTp;
       spf=neutral (google.com: 2607:f8b0:4864:20::641 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id b10si622528pfo.6.2020.03.13.13.48.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 13:48:07 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::641 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=cxZ2kvTp;
       spf=neutral (google.com: 2607:f8b0:4864:20::641 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pl1-x641.google.com with SMTP id g2so2331785plo.3
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 13:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=LWqp8lCL1uffHil6B2ZXNucYg5cBJNbMrdKGr/WNt3c=;
        b=cxZ2kvTp4W3XmbJGH6yW3Lbu6yKwXs8NLHf0fUqD8owUVuOw7uxMaqc6+38E36AHSO
         x127Xbhu+vLoHf2OZAGyTiG9dn6R5O54URJn/GoDOTiBT82yegPu6fzvMRJtCOpVGkFb
         AsqEpgrLxupwgH4c5MzB2OZrzl4R2LjZE0O5QulaRNagM7M/f5SWJyU/FBgzJuTTvz9r
         4gIFmO2V9zS87vyYHdGQKnRgPOa5mH0IVz7cOl43ZDL+enHqIU5MkaX96CdIzZ22ssQ5
         zBt2vbqt00lLsTr7JH02SAKSJgWSnxscecNAD3GSDdIgmiTRuXkJB9+zEFIWy6xZMe2I
         K6FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=LWqp8lCL1uffHil6B2ZXNucYg5cBJNbMrdKGr/WNt3c=;
        b=U+aW2Thf6fxV611RbyXFp/XpJ2usxfbngZfFTICEqLmQdRjETKHmJpO05Yex7L2uKF
         86Z1VQ26lmS21hNnkoZ7biChsNIqewa6EJorecC5yW2ksGXv7JXD6U3uZS+TDsQHEG0f
         TFBQk86r+LZNgvKiklXijLkXIA/dZA5cDo2iFJ+dScQHyndkxsUDsDRntfDW1HLww0j2
         cB9rLvQ/skS3OHN3cv3l1gcPPnHHdUmdekQXEtvE7HLxadQF+CFkrfqs8/L2A9Fletfs
         L+1gxJsgenhRzTq7b9/uHPhGqsbGswBDJnqYDdqOwmbgUGnXSsQiS27UnnAcpLeBvuSD
         CQuA==
X-Gm-Message-State: ANhLgQ3J1TrnNsivoZ6JnObThpuFfR0TZb7S/DMoFHKnVMYBRbSTXNYx
	swO5UiRKcSBbcL4WqBPgtBSUya8bFXo=
X-Received: by 2002:a17:90a:f0c9:: with SMTP id fa9mr10572802pjb.148.1584132487544;
        Fri, 13 Mar 2020 13:48:07 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.113.213.153])
        by smtp.gmail.com with ESMTPSA id o126sm12014437pfb.140.2020.03.13.13.48.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 13:48:06 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: [PATCH 1/5] staging: media: allegro: align with parenthesis
Date: Sat, 14 Mar 2020 02:17:35 +0530
Message-Id: <20200313204739.32676-2-kgupta@es.iitr.ac.in>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200313204739.32676-1-kgupta@es.iitr.ac.in>
References: <20200313204739.32676-1-kgupta@es.iitr.ac.in>

Align the lines of allegro-core.c with open parenthesis by giving proper
tabs and thereby fix checkpatch.pl warnings of matching alignment with
open parenthesis. Do it only for lines where character limit doesn't
exceed 80 characters.

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/media/allegro-dvt/allegro-core.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/allegro-dvt/allegro-core.c b/drivers/staging/media/allegro-dvt/allegro-core.c
index 0a09b3622e78..1162cc38f3fc 100644
--- a/drivers/staging/media/allegro-dvt/allegro-core.c
+++ b/drivers/staging/media/allegro-dvt/allegro-core.c
@@ -2324,10 +2324,10 @@ static int allegro_open(struct file *file)
 			0, ALLEGRO_GOP_SIZE_MAX,
 			1, channel->gop_size);
 	v4l2_ctrl_new_std(handler,
-			&allegro_ctrl_ops,
-			V4L2_CID_MIN_BUFFERS_FOR_OUTPUT,
-			1, 32,
-			1, 1);
+			  &allegro_ctrl_ops,
+			  V4L2_CID_MIN_BUFFERS_FOR_OUTPUT,
+			  1, 32,
+			  1, 1);
 	channel->fh.ctrl_handler = handler;
 
 	channel->mcu_channel_id = -1;
@@ -2933,8 +2933,8 @@ static int allegro_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 	sram_regs = devm_ioremap(&pdev->dev,
-					 sram_res->start,
-					 resource_size(sram_res));
+				 sram_res->start,
+				 resource_size(sram_res));
 	if (IS_ERR(sram_regs)) {
 		dev_err(&pdev->dev, "failed to map sram\n");
 		return PTR_ERR(sram_regs);
-- 
2.17.1


