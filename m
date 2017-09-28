X-GM-THRID: 6470902975924535296
X-Received: by 10.28.1.146 with SMTP id 140mr304704wmb.2.1506624504569;
        Thu, 28 Sep 2017 11:48:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.163.207 with SMTP id m15ls1339418wrb.13.gmail; Thu, 28 Sep
 2017 11:48:23 -0700 (PDT)
X-Received: by 10.223.150.118 with SMTP id c51mr632555wra.20.1506624503516;
        Thu, 28 Sep 2017 11:48:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506624503; cv=none;
        d=google.com; s=arc-20160816;
        b=Jj33TW0plgI+o5b6k+M6GG9ATGNDxRkHyBP+Hde+ggxGYCT7ix6gVh1BwjbNiDALvo
         Xzx9XuZmWxvoJ8FOmnoDqnnP+SQnv3Kb5RdM/guMftQdKeJuXAsT6/Y6WlplGPkx7jFA
         RQQef/Cugs8QmYfp5uJ3Sh8eBE79t69fRiYQmBGNPfXy449rzDVtG0Qf4mD8SMmkkvlw
         00YInJwRHtFmHgn1sV3VhPXMqGOWCNfbMbLdw87LF0VFEY6FMkS8+UB5I7JpSWgZDgmY
         1+zTHoNtAN77i9LQzUfFlGNDRiTBd2gTN6mNjzk/hzVUBbyIiRHchzRRnF9fM7I4ZDOC
         IQ0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=7ol4hHmpgg1mDTd+rEOVXvevYuW9gLg89RpRzYgbI54=;
        b=e03PtXgSs4LIxg+4Ihx45D/BCBq84iWG6giAYawBHu3Uqgd1DV6qKDPgDARKEq+c35
         r6DO3+YXgsu0Sv88lnACncDbdKFb+MCQx+AiccCIfZXyEtIdnk2eDrlsbKp2PfBbVmZG
         UHjIEWghrkZSBXXZcMddI8/yeMc6I1mZvFyVg0GgNYkw3j2848U12UoGUl/7X4S0SY0E
         AmVMv3AuH/hbesHrDAxCmojVYVKjFto/L/9o1kOqu+QTn099GOSmzWNvY5F2m5EKw69H
         W7V3Vmt74fowv5rwNzJv4Bdszg2ImSa7wqrSUli6bwZ2P+Bhs7SwVYRbaeOY5va/N76r
         yKWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rQNsCrAI;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id k18si365073wmd.1.2017.09.28.11.48.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 11:48:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rQNsCrAI;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id m127so4109185wmm.3
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 11:48:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=7ol4hHmpgg1mDTd+rEOVXvevYuW9gLg89RpRzYgbI54=;
        b=rQNsCrAIsXQJoIoXo2mxvBbQd3A6XKStwCsQYF2BKifumonGOoY7jnu3MlmLXodB91
         aq1g8NDP1elab8uJEZ7zFnaCSdGgQOSJhrIqxZi4+oIjGUa0goaCpDbRMENIB6LNdhG5
         yXpFS0MmZYIJ1BUChr+SgzYyca8mSAzAqn+6tUwidQnWQcOSLBgvq924maOrEWfZuYXv
         2n+uTSq8htj9X+Ab3tux+LXiXxAaPbOLpU415eOx0HbPhGtsr39dWMviF5hGhXmjCuWY
         Y8yk2YcjMlr3VLNVO7/1OzLvOhQa3ljUGm0B9vdzbE0C5vcvikSKNTW3OYlEk8/obOvN
         P6bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7ol4hHmpgg1mDTd+rEOVXvevYuW9gLg89RpRzYgbI54=;
        b=DQujJY4OYHsvHmJ+DXNton4AbK9vdq4R2Bi24cWKlSlcm7y/Oukft/lPZznXDu2Aey
         N2UJNw8QLTgedgQqPMahEulmZPCiRwC5g4eQLuVDZ9Ibbo0leWnTbyKka2Y/MfPp8B7E
         fuU8Ce65u1yiXL2NmHm9K/o0bCj/RiUWLiGUEtPEMCkVRKMAuKNdnL+c7wc6LU9RjSZ7
         R5hmRCqjlBLWnOnx5h4/Yoo+h9Rm28L3NoxC7uqFBdxKWM2Nm0slWpKZcDsqvoC40fCT
         f/LYZjZoMfNaTnyztOEop9JUJR9DYegRYtPp2Ef9ZVAk9UfC3xZGAOguj1rf3AnnXGu4
         oBMw==
X-Gm-Message-State: AMCzsaVBzSb2kzDxx6Qy7ZtN4WqC7WqOn2ceOydN4WZNnTa6tg5G2BNW
	nunMGcd0Wl4UqxUKrUfCR28=
X-Google-Smtp-Source: AOwi7QBHcqzpk8JImMMqCMyEgdawXlB5+gwWBV6xY0I7kdWyj6yYrYkM7ryYgsMhrJALjEiLBRUGfg==
X-Received: by 10.28.29.71 with SMTP id d68mr2245675wmd.114.1506624503041;
        Thu, 28 Sep 2017 11:48:23 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.83.158.26])
        by smtp.gmail.com with ESMTPSA id f17sm404823wmf.47.2017.09.28.11.48.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 28 Sep 2017 11:48:22 -0700 (PDT)
Date: Thu, 28 Sep 2017 21:48:19 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eric Anholt <eric@anholt.net>, Stefan Wahren <stefan.wahren@i2se.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3] staging: vc04_services: Remove typedef struct
 vchiq_2835_state_struct
Message-ID: <20170928184819.GA7517@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch removes typedef from struct and renames it from "typedef
struct vchiq_2835_state_struct" to "struct vchiq_2835_state" as per
kernel coding standards.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>

---
Change in v3:
	- add character t at the end of the subject line
---
 .../vc04_services/interface/vchiq_arm/vchiq_2835_arm.c   | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index 29702ea..a96bae0 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -59,10 +59,10 @@
 #define BELL0	0x00
 #define BELL2	0x08
 
-typedef struct vchiq_2835_state_struct {
+struct vchiq_2835_state {
 	int inited;
 	VCHIQ_ARM_STATE_T arm_state;
-} VCHIQ_2835_ARM_STATE_T;
+};
 
 struct vchiq_pagelist_info {
 	PAGELIST_T *pagelist;
@@ -205,12 +205,12 @@ vchiq_platform_init_state(VCHIQ_STATE_T *state)
 {
 	VCHIQ_STATUS_T status = VCHIQ_SUCCESS;
 
-	state->platform_state = kzalloc(sizeof(VCHIQ_2835_ARM_STATE_T), GFP_KERNEL);
-	((VCHIQ_2835_ARM_STATE_T *)state->platform_state)->inited = 1;
-	status = vchiq_arm_init_state(state, &((VCHIQ_2835_ARM_STATE_T *)state->platform_state)->arm_state);
+	state->platform_state = kzalloc(sizeof(struct vchiq_2835_state), GFP_KERNEL);
+	((struct vchiq_2835_state *)state->platform_state)->inited = 1;
+	status = vchiq_arm_init_state(state, &((struct vchiq_2835_state *)state->platform_state)->arm_state);
 	if (status != VCHIQ_SUCCESS)
 	{
-		((VCHIQ_2835_ARM_STATE_T *)state->platform_state)->inited = 0;
+		((struct vchiq_2835_state *)state->platform_state)->inited = 0;
 	}
 	return status;
 }
@@ -218,11 +218,11 @@ vchiq_platform_init_state(VCHIQ_STATE_T *state)
 VCHIQ_ARM_STATE_T*
 vchiq_platform_get_arm_state(VCHIQ_STATE_T *state)
 {
-	if (!((VCHIQ_2835_ARM_STATE_T *)state->platform_state)->inited)
+	if (!((struct vchiq_2835_state *)state->platform_state)->inited)
 	{
 		BUG();
 	}
-	return &((VCHIQ_2835_ARM_STATE_T *)state->platform_state)->arm_state;
+	return &((struct vchiq_2835_state *)state->platform_state)->arm_state;
 }
 
 void
-- 
2.7.4


