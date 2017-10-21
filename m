X-GM-THRID: 6476685007232434176
X-Received: by 10.80.204.74 with SMTP id n10mr1991438edi.2.1508566768781;
        Fri, 20 Oct 2017 23:19:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.170.121 with SMTP id p54ls4771423edc.7.gmail; Fri, 20 Oct
 2017 23:19:27 -0700 (PDT)
X-Received: by 10.80.182.75 with SMTP id c11mr1995355ede.4.1508566767910;
        Fri, 20 Oct 2017 23:19:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508566767; cv=none;
        d=google.com; s=arc-20160816;
        b=y5hDwRD9hfosTFyNHmWTwyP/qUqZhNT6AXrDV6MeS+J7tf4VOhE0a1aGxE5d1odN14
         bXOvTTtdML1D5XTLkaljvKTmnnDDimDAEElZt6l8PceWkXMBfzUkUFvTE7ROcri86iJ8
         N7uRH/6PaJiMMosMGMR8hThrg4lVcl2roAOcUTFbOTnm3SmphUqytylUkkduNDX4rFQj
         +xDVHPfnYaZ2KNaxnpsuxJPkq/BpeLhfGxmktR1wTK28nKxz1cq28q7CA828jOcP48ai
         k5sMPYd49E2ow4Fmhnpd0aCEccN3qBdlwx5uUtp8Ukv6l+Ck/KGSbGg4qMmQ3eESouPH
         I+PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=+srh13/tvv1B2uORBbpjg7pOZBZpna23U9ZzB8FrG9U=;
        b=K+Tq8iokM5R1MtCL4+fkNrmBdR6FGeeD8jAC6meTeZNnEXR2vs74fWTD+zsQCS1Zee
         7GRo49QCUrlH7xashdkyzJxunKg2R+xfhWEPBsqkHSBWupCcPZ0LYyPA0oAqKmv60hmY
         1Zn9iN7U4tSjJR1H73+xQ49PKoa2EqTgYQQ9+Sty0R+Qy/nlWSYgnKh1kENtHTMvgkD8
         XX/G7ZPqFhk95duPzmBriz44IV1DnNZ2KsGxTtlrxdzPkA+A4IrtVikvKyYvrWQxZ2bl
         CzdQVLZaRWQab6JYB4tRuiDiHhV9L+pnQVib14NibdF7czxsR2l0Jv1OwswD959Z5Ldv
         lOSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fe/uKCkC;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id m13si192456edc.2.2017.10.20.23.19.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Oct 2017 23:19:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fe/uKCkC;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id y9so740078wrb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Oct 2017 23:19:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+srh13/tvv1B2uORBbpjg7pOZBZpna23U9ZzB8FrG9U=;
        b=Fe/uKCkC1h/bbUo1TZ0oBenLuXy0uQLbt8bHJw+2DKOZ16WG8Ur/6Ze80Wpn+KcEVX
         S8fNNJLjtfyzsitlNOZKO1lp8OU2nh+FI9XVMFR5JIJCpuIRw0fgpdynwmO0f87iDcKb
         ZXzZhItKWod9hQJYjkJKpyJMpjsPlHaw8SMB2cn00o+k92zn7wnpW/rDhHh4PGixNxQJ
         cz/2FKN8vm3G5nC1MztYHD2Pm4W10cwrubcAG+t/yl3tTtF38JdgaapIj1gB65B4Z3DQ
         GABe1d9G4LWQnvtY/QJVklZlSvYdsewjtfy2QTgVwhwu9PBVuyWKr8cucSrlV7j5I/+s
         s8dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+srh13/tvv1B2uORBbpjg7pOZBZpna23U9ZzB8FrG9U=;
        b=LH3Lpy9dGaUYa9cO2NgvO0fcBwvG2PDBOVbd5nS8IvS1KtDdUY1iQ18HR4HInH04Nu
         tc+aqKL5E+POjD2h5z5ItBUBVMqKW6YMpXyg5mnLe4pGTBlu5N9FjTUnydSKuyYNnI0a
         y+o2jyu/MGcN8DONRoLeh95sfahAbEPGizU7Ko3l44Z3lQWP9f900mD0bBbZRZbVvpfu
         HYn6WBvglvGUcHF4nvlYZHO98NkVJWroqwBXVWq5JrpiotqMsFuo+GkJDXzoep3snnYn
         vK1gh+47z7jTkc/ZX1QQfgzg9Z938tW699DbCTwDBBFwC204mF7Cq1pz09KaR4HBJoXw
         NFTQ==
X-Gm-Message-State: AMCzsaU76GWoNG4PhEj1U4ET6n0syGHxCgjfTohSQlLnX+eRjlDcxXiE
	2h5acZYU8lrEL2G3DgyBR+k=
X-Google-Smtp-Source: ABhQp+Qr3k7HnAYW2eXFn6gz9Z1Dij//sznZl4mdJS/xwvkkNky71qWuobRK23Gdg7tYyVbALZgn6A==
X-Received: by 10.223.166.119 with SMTP id k110mr5862179wrc.182.1508566767586;
        Fri, 20 Oct 2017 23:19:27 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([93.122.248.5])
        by smtp.gmail.com with ESMTPSA id c37sm7199844wra.73.2017.10.20.23.19.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Oct 2017 23:19:27 -0700 (PDT)
Date: Sat, 21 Oct 2017 09:19:25 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eric Anholt <eric@anholt.net>, Stefan Wahren <stefan.wahren@i2se.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3] staging: vc04_services: Remove unnecessary braces
Message-ID: <20171021061925.GA5362@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unnecessary braces for single statements also declare a local
variable "platform_state" of type "struct vchiq_2835_state", to
avoid the multiple cast.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
Changes in v3:
        -add more details in changelog

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


