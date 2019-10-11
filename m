X-GM-THRID: 6746366281949118464
X-Received: by 2002:a81:2004:: with SMTP id g4mr664760ywg.422.1570760803811;
        Thu, 10 Oct 2019 19:26:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:c7c9:: with SMTP id w192ls950086ybe.8.gmail; Thu, 10 Oct
 2019 19:26:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx8ZmDxlNJt5BYKzPIVFysV/X+Bdy0Goa/JT+vM1fMDJwVvB3J20ByQEXRKiVURi1NObwjx
X-Received: by 2002:a25:680e:: with SMTP id d14mr8474645ybc.226.1570760802429;
        Thu, 10 Oct 2019 19:26:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570760802; cv=none;
        d=google.com; s=arc-20160816;
        b=Eqx3a9EA8LtzmXoBxMQ/qE6yttiUvXUWuzAkv77U1nxDfPGvFqz6i5D2RO6iXyk+8e
         pdNoeVtS+pLELAHtbuLKcdSFMHwzOHejmEj27lMlfgQpkHobUjjsj1FSyMguaHc9WtwD
         mx36dPoLY94nOzGY+EXTsaf66ZNXrsYa7jccykL1VgBAtX4RMWZu8XEcRWCEMruh70dz
         /qM7XuSpMNq1axNFyvQCPKT8Jn8WcgzMfnP3gNkiAHkw6pnabStrK0nBo8Jsg7dJEuVA
         JSxXsEX3olpVTcFy+k14D9pRhLNNxtFY62zLZmIro0H0qiz1i693dA3o5YSHtidygZ7L
         CSIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=INU3hWRqXlX0emhdT7fGKf9yVck2qQWUM3hbxaSSjeQ=;
        b=ih0x4QUxxl52weDv6KCfzH3riZ0fmmZ4pWqqqcAQ3Z/cfwjmHh4r9o2fDgD9iiDkhZ
         QurH3F3aZCuuk69gBfkF5fMrRTRcr0oxS9HNNLN6cwgIP5HEmKYFyPTlmK6hX6kHEKwe
         qxgqFF7J91zC3Q6foREGuIE3r6LQdg4R/pQAbTMduFNEuTLkZxrH8HfOKPfbY8y4Q2yh
         V2wSo1UbtPej4IsHgjOC8XQExnU0cyjGq5GoC2+8d7GyMCJythbjTVwB9FaE19ssyXix
         OIzvavjrQtq7y51+PTZr2CqCGExVlTbCfVvxqLKxbE4lXx7njNqq9/uOZ0kSm2F26PC3
         tQnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="km/McpSt";
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id a1si531054ywh.3.2019.10.10.19.26.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 19:26:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="km/McpSt";
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id b128so5144358pfa.1
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Oct 2019 19:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=INU3hWRqXlX0emhdT7fGKf9yVck2qQWUM3hbxaSSjeQ=;
        b=km/McpStsJLaKdL8NgM4qISx34tSQdBPIuWkRWbCXVZUivMFgLgymZB8CKHFayalsY
         Q6N3w/4tvtwaHKWt7Ew77ul8+S7fX1BdsjwE0c5O0LP1Pjr1ilBPq/OT/g//16S85Sot
         etG4xbUAU8LU0XpFKiabclAFL4Z8kS+zK6ScrN1F+4cLgp1QV75qg95lU8oktkPyBTNF
         5vVVNHzB7l3hU2hzyaubql2ukKvyO1f8orpkBEUmomxQegBqcuhUqB9EnRbY6mevshzU
         FNsRBnPNL1+yUUiCAU4PiOyictAbuOlDrWN+jmpITKPEH/2z7QYfsyuiEKldLhaAkz23
         ZtkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=INU3hWRqXlX0emhdT7fGKf9yVck2qQWUM3hbxaSSjeQ=;
        b=tGPq2mdbuv+oar5QBSIxKcwbcX/jEABj4eWCGvPQKi4ymk7B8hIyX5Jhbot/ofWMVb
         IzcbnUqlY2HEnFQgEtKL+HJ0YAf3a8R8dxHnjTKdjsH9K64kub6T4F+fE0k5c/gTeDUR
         Tap3cx/1PrtS1h49hegpp5fRgrihsw53CoiwXg2KvgMzv8ZZVxXNdcE/q/ULr9jh6+d1
         n2OK9uwdiohe+dh+1+ZLn47LgS9PMmOm2yxy28aTIX0ekRomBhXBm8TNh5yRcVIKeXqY
         bWaMZjpKKCTE/IRTz7SAGhrP7HZdMn+n1p0+u5A1z/7pKWelwkd3c4VDY/ykCsVJjerL
         mfgA==
X-Gm-Message-State: APjAAAXf9c5+uXJlR7y5hBfJuncwZ4syDDPLV6w8EHn19a9/hKllfF/y
	liFAYElxsPh6gfUO5lFuBGA=
X-Received: by 2002:a62:5ac3:: with SMTP id o186mr13895909pfb.20.1570760801618;
        Thu, 10 Oct 2019 19:26:41 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id y36sm6377312pgk.66.2019.10.10.19.26.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 19:26:41 -0700 (PDT)
Date: Thu, 10 Oct 2019 19:26:40 -0700
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: hvaibhav.linux@gmail.com, johan@kernel.org, elder@kernel.org,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	Andrea.Parri@microsoft.com, Boqun.Feng@microsoft.com
Subject: [PATCH] staging: greybus: Fix line over 80 characters issues
Message-ID: <20191011022640.GA3449@jamal-XPS-13-9343>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Fix line over 80 characters coding style issues. Issue found by
checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/greybus/arche-platform.c | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
index eebf0deb39f5..8cf12616bc53 100644
--- a/drivers/staging/greybus/arche-platform.c
+++ b/drivers/staging/greybus/arche-platform.c
@@ -47,7 +47,8 @@ struct arche_platform_drvdata {
 	struct gpio_desc *svc_reset;
 	bool is_reset_act_hi;
 	struct gpio_desc *svc_sysboot;
-	struct gpio_desc *wake_detect; /* bi-dir,maps to WAKE_MOD & WAKE_FRAME signals */
+	struct gpio_desc *wake_detect;
+	/* bi-dir,maps to WAKE_MOD & WAKE_FRAME signals */
 
 	enum arche_platform_state state;
 
@@ -168,10 +169,10 @@ static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
 		 */
 		if (arche_pdata->wake_detect_state == WD_STATE_BOOT_INIT) {
 			if (time_before(jiffies,
-					arche_pdata->wake_detect_start +
-					msecs_to_jiffies(WD_COLDBOOT_PULSE_WIDTH_MS))) {
-				arche_platform_set_wake_detect_state(arche_pdata,
-								     WD_STATE_IDLE);
+				arche_pdata->wake_detect_start +
+				msecs_to_jiffies(WD_COLDBOOT_PULSE_WIDTH_MS))) {
+				arche_platform_set_wake_detect_state
+					(arche_pdata, WD_STATE_IDLE);
 			} else {
 				/*
 				 * Check we are not in middle of irq thread
@@ -179,8 +180,10 @@ static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
 				 */
 				if (arche_pdata->wake_detect_state !=
 						WD_STATE_COLDBOOT_START) {
-					arche_platform_set_wake_detect_state(arche_pdata,
-									     WD_STATE_COLDBOOT_TRIG);
+					arche_platform_set_wake_detect_state
+						(arche_pdata,
+						 WD_STATE_COLDBOOT_TRIG);
+
 					spin_unlock_irqrestore(
 						&arche_pdata->wake_lock,
 						flags);
@@ -200,7 +203,7 @@ static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
 			 * to standby boot.
 			 */
 			arche_platform_set_wake_detect_state(arche_pdata,
-							     WD_STATE_BOOT_INIT);
+							WD_STATE_BOOT_INIT);
 		}
 	}
 
-- 
2.17.1


