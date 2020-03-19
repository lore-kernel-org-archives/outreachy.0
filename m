X-GM-THRID: 6805874038364176384
X-Received: by 2002:a19:248a:: with SMTP id k132mr1771140lfk.189.1584616044631;
        Thu, 19 Mar 2020 04:07:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:686:: with SMTP id t6ls342232lfe.3.gmail; Thu, 19
 Mar 2020 04:07:23 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsYwJa49PczdfMLPqPk7SfRwOZFW/YGbCOr6aW+Gxg3nEHmITUhjzbmBSMhqROPuFfqvfR9
X-Received: by 2002:ac2:5c46:: with SMTP id s6mr1770713lfp.75.1584616043238;
        Thu, 19 Mar 2020 04:07:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584616043; cv=none;
        d=google.com; s=arc-20160816;
        b=a0rBO9LVSeSPLUbI00Aax0pIySRaR5U0RJjx5UVyQGlgQWKv1ueIo68CiTNRsH8INZ
         l6cs1w1ABqRGfsZwAhipJD4CczIal/mZa8bozJWEZ8YQgiUOIKG8/RO8KttQC2s2R8vS
         BXNl63SYAcDnQtd0nazxvIxuXM0NSy1ztAnLvY8h/hyVZGnN1AyzQeuuyEW8eSdwIYy7
         rk8b1VwhpxI4Db8ysxQuBGz59S0W4hIo2dOL4/vK3HeCXF7Fj97dm3YAx/0lBgCOAVfy
         e1eikygFnFF482kpGgB7jEm1s2/HeAErQRlDaZXQy/3P96WEvmoPA6AWSG5k3PA+cjaw
         d/+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=TUf1NXDRmLc9F1V8ytFZHjsnx5ReXjLoc8QWrjjXhD0=;
        b=SKo5DV1+cRNWXja3utWgR8CatKpfEp9PWLOPL3FMxF4/p5hbjcPyuh5h7u0x06eOym
         YLpz7CPZv5WGiCZsGo/BRhcdTJhxlQUWB6ab47mCHZCzxL6euDZpNAvjUsBGZOtnIQwS
         VxGBjmBvWpBTyJEa8UpzTKiGIJ0kX/CLrXnzK/UXzs2E61whfNdd4Ppz24OqP/lN9FdK
         nPP+PblrXCtk1UyJGaZGSw6shdFjrjwO/FjDGHBnN+ydMpkyc60sRLLylIPCpBb3ERLW
         uEVOhIkBcyviBzP7gCdkwnJ8AR/XCyiGYAIFnchBe6dJx75c/uzQp1oPV3mNYHQNyMQ/
         dqOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id e4si63862ljn.1.2020.03.19.04.07.23
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 04:07:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 27719 invoked from network); 19 Mar 2020 11:07:21 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 11:07:21 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [RESEND PATCH 03/10] staging: rtl8723bs: hal: Correct typos and long line of comment
Date: Thu, 19 Mar 2020 16:36:46 +0530
Message-Id: <41797b15299a10d4cecf9aeb85472f027d72749b.1584514678.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584514678.git.vkor@vkten.in>
References: <cover.1584514678.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct a long line comment to respect 80 character line limit.
Correct a typo in the same comments.
Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8723bs/hal/HalPhyRf.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf.c b/drivers/staging/rtl8723bs/hal/HalPhyRf.c
index 357802db9aed..688f29dd84bc 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf.c
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf.c
@@ -92,7 +92,7 @@ void ODM_TXPowerTrackingCallback_ThermalMeter(struct adapter *Adapter)
 	u8 *deltaSwingTableIdx_TUP_B;
 	u8 *deltaSwingTableIdx_TDOWN_B;
 
-	/* 4 2. Initilization (7 steps in total) */
+	/* 4 2. Initialization (7 steps in total) */
 
 	ConfigureTxpowerTrack(pDM_Odm, &c);
 
@@ -213,7 +213,10 @@ void ODM_TXPowerTrackingCallback_ThermalMeter(struct adapter *Adapter)
 
 	/* 3 7. If necessary, move the index of swing table to adjust Tx power. */
 	if (delta > 0 && pDM_Odm->RFCalibrateInfo.TxPowerTrackControl) {
-		/* delta" here is used to record the absolute value of differrence. */
+		/*
+		 * delta" here is used to record the absolute value of
+		 * difference.
+		 */
 		delta =
 			ThermalValue > pHalData->EEPROMThermalMeter ?
 			(ThermalValue - pHalData->EEPROMThermalMeter) :
-- 
2.20.1


