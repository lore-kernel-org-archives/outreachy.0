X-GM-THRID: 6476685007232434176
X-Received: by 10.80.244.1 with SMTP id r1mr1895175edm.3.1508094043558;
        Sun, 15 Oct 2017 12:00:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.147.19 with SMTP id m19ls728735eda.1.gmail; Sun, 15 Oct
 2017 12:00:42 -0700 (PDT)
X-Received: by 10.80.182.75 with SMTP id c11mr1876138ede.4.1508094042757;
        Sun, 15 Oct 2017 12:00:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508094042; cv=none;
        d=google.com; s=arc-20160816;
        b=y0A78T79h1fzhM2dzM5FuWZtWh5n9OnT+uB9j+948vIV/eHa0H75lb1Tl53hu944F8
         3A6fx989c5bTQc8hqiw01Fxiw4MI3MLpxSQAH3bHrwsxZXpb1qYuyRNe0VRETkRVqO+l
         I/mBmL1+qOkteuo5Uf4yCDhCgnzPhwcVaSjayenhHmNNuatue9gA75SGuOqPfCEP4VqY
         P8prbwPzv3pSoNE+mmvdJYn+kNDW2c1ccXJS4QpsWIkwU5iZl51ETlJfAGVIm3L8gEo1
         wa609vMSQ/IA/g9KHxEfHY/+kK9WX1BPRwieqnoyIzMdFVUHiLSZkSYy7/07KEGSjtGD
         YTJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=NIo5PPyCx3DnlcaSZ+BDroxwxGNseSsPoCyBUcxBPDg=;
        b=aF9pwT5p/R5elmYNw1oFBw1Zn3QdH9K+iGDbMn6KNcEqfo+tVodTPBNqLjvgu0JPKo
         RW7VwZIiSAsB8+IHEgoiTms+K09Sk9iFeta8Fj0gLxqLymH5+bTXAB/Lz6k3MAI3HYF9
         GpG6Gjc0liK9j5MfGT38sDzWo4kQREuBW7F2VEuVPD/2kp0XRjxocZwkGjezc2mIatWo
         EZVLhZBuuQLg33xDDnHkEYUClXinZwmbWHQ+6Y+tvgs31JRWwpGk5JgJdc5ASTrozdNj
         ugVJD2/e2VZMtCYoHY/LZLm9OtJCXHdUaqij6S20PYufPhlMfDPLYP2Fv2DHDMY7snUA
         RpTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u5OgDnqC;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x231.google.com (mail-wm0-x231.google.com. [2a00:1450:400c:c09::231])
        by gmr-mx.google.com with ESMTPS id m13si222693edc.2.2017.10.15.12.00.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Oct 2017 12:00:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) client-ip=2a00:1450:400c:c09::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u5OgDnqC;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x231.google.com with SMTP id l68so30400209wmd.5
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Oct 2017 12:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=NIo5PPyCx3DnlcaSZ+BDroxwxGNseSsPoCyBUcxBPDg=;
        b=u5OgDnqC1I88ZwhKNhqAgeM04NDIdvwbzbE2wRCOrjXJtcaBO26zYFZUyEkuWmqxfk
         qYfDTYsiCQY6YHFWLKq3HIrUa4WFCHrfJ3fErxCengheW7aqeDjG2WV3jjHRH6MOooz+
         ivIEpZ1aQ7T52qX8Z1DQVbMx4/FggRMglHEmwjxhDXSavILYPhy0QvRxrQS1okm/zsmW
         eSZGc7+6eTArtWJKHiTW3EDev0aEtqnZdYTQZsLNLumqQaQDkLQkz/HJ3d5PDAp3XWfY
         ZwGCiSP/6ptOgftlL1ieL3U4alfkDmDX8IPvm66c0UfBPvFeL0CTS0C3UDRWBbf0g9zT
         e0rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=NIo5PPyCx3DnlcaSZ+BDroxwxGNseSsPoCyBUcxBPDg=;
        b=FiiwS4h/LEPJPeGHybShsx4o1P0MMcwU7apAwZ1OIlrbV7thitsVtTlGFATTV2+lKk
         XlC0AONufZ3CnNLNy7MplBA3dAGKdVabSZFO9Tg7hwxhwlRSWU+bIB9m18MTx15hb2Su
         NMenauH/OHAGW7RYAJf66RQnAFQzYCQBeDtX7QrbLQfX55NJ7fo2SU/q2TYDgZ/HqBaC
         V0GZvdqEiA3u1rNnxxxM8xvcTmuoJtuivNN9sw15RSkIKK4BOMfH/kmSq0Dyp/APvl6w
         /QwqEkijbQ9U3LFhD5elLu8Mjqt5Uy4a7aAeUyUTGuShDbBaSTOHprNFUy8xcmaIGxAb
         Z7ZA==
X-Gm-Message-State: AMCzsaWBf7U7YoSLv85knM5hFn/Crb9UHltNivSDh/+Llro9h9OCrG38
	5/3ODJqsjNdao2OZ7BgDQXLw4Q==
X-Google-Smtp-Source: ABhQp+QtF5SiDdVq90N/ZSp5rJ8u06Cnc2dp2ifAJ6J6a8vY6TTb7V/3ls4ALC6sucnqdgLjGhREyg==
X-Received: by 10.28.159.72 with SMTP id i69mr5789066wme.53.1508094042482;
        Sun, 15 Oct 2017 12:00:42 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.83.158.26])
        by smtp.gmail.com with ESMTPSA id f89sm8733162wmh.18.2017.10.15.12.00.41
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 15 Oct 2017 12:00:41 -0700 (PDT)
Date: Sun, 15 Oct 2017 22:00:41 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eric Anholt <eric@anholt.net>, Stefan Wahren <stefan.wahren@i2se.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: vc04_services: Remove unnecessary braces
Message-ID: <20171015190040.GA6755@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unnecessary braces for single statements.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
Changes in v2:
	 - declare a local variable "platform_state" of type "struct
	 vchiq_2835_state", to avoid the multiple cast.

 .../interface/vchiq_arm/vchiq_2835_arm.c           | 26 +++++++++++++---------
 1 file changed, 16 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index a96bae0..7b7cc5a 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -204,25 +204,31 @@ VCHIQ_STATUS_T
 vchiq_platform_init_state(VCHIQ_STATE_T *state)
 {
 	VCHIQ_STATUS_T status = VCHIQ_SUCCESS;
+	struct vchiq_2835_state *platform_state;
+
+	state->platform_state = kzalloc(sizeof(*platform_state), GFP_KERNEL);
+	platform_state = (struct vchiq_2835_state *)state->platform_state;
+
+	platform_state->inited = 1;
+	status = vchiq_arm_init_state(state, &platform_state->arm_state);
 
-	state->platform_state = kzalloc(sizeof(struct vchiq_2835_state), GFP_KERNEL);
-	((struct vchiq_2835_state *)state->platform_state)->inited = 1;
-	status = vchiq_arm_init_state(state, &((struct vchiq_2835_state *)state->platform_state)->arm_state);
 	if (status != VCHIQ_SUCCESS)
-	{
-		((struct vchiq_2835_state *)state->platform_state)->inited = 0;
-	}
+		platform_state->inited = 0;
+
 	return status;
 }
 
 VCHIQ_ARM_STATE_T*
 vchiq_platform_get_arm_state(VCHIQ_STATE_T *state)
 {
-	if (!((struct vchiq_2835_state *)state->platform_state)->inited)
-	{
+	struct vchiq_2835_state *platform_state;
+
+	platform_state   = (struct vchiq_2835_state *)state->platform_state;
+
+	if (!platform_state->inited)
 		BUG();
-	}
-	return &((struct vchiq_2835_state *)state->platform_state)->arm_state;
+
+	return &platform_state->arm_state;
 }
 
 void
-- 
2.7.4


