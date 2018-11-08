X-GM-THRID: 6618737831817773056
X-Received: by 2002:a0d:db82:: with SMTP id d124-v6mr1690745ywe.4.1541661702759;
        Wed, 07 Nov 2018 23:21:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:2f8e:: with SMTP id v136-v6ls723275ywv.7.gmail; Wed, 07
 Nov 2018 23:21:41 -0800 (PST)
X-Google-Smtp-Source: AJdET5c1SYklncYpy52QlGv21182aKwE/6owmqJCZtk87ZIMkuWqDrwTEyhKtBf7LEG8LyHlZyoc
X-Received: by 2002:a81:7015:: with SMTP id l21-v6mr1682545ywc.23.1541661701893;
        Wed, 07 Nov 2018 23:21:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541661701; cv=none;
        d=google.com; s=arc-20160816;
        b=Zdf5+DdWqDGk9D4dTUCuF4j90fyEdsEZBDjJ7JHMl5TxEHdr0rnOSp26pNbDLIx1hL
         cGPLcZwTIX0bqFZLj6hqR9DzgZmRR8rVViDo8cO+lbLuJ8Wm4MtOVjVTgtPkDG847G6u
         TPCD0x7Jm9G50AZNhdBH5LeALjJBO9DdSrt0uGV22QK82JkGQBOeEwrf9SRbEaWjyMja
         t/HGbtXTZIS9xV92luAR463hTNghDfPq+9hfbGxduzT8PWX7f9L6qeqXC6Om5UAfJWFS
         RNbb41BCVqpZzZtYCPfVuQNoIy21D9L5szIimiuOMGpBFlXzgbcYimQEX6eSZgRa85xu
         vXUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=iGKf/mTdhY2K0tz8lwHwV6ij1+lFbSiMMxPZffRVRs8=;
        b=pygyQSd4U+MQObT3XQJdK4EsCeJ2ia1u6pD2UPSgdLTM3nK8Fg2mRK0PgAjBC0bbWo
         O1B8SpghFbjSyoZPutTcOXGs/4zAd0fMcJZ+KyEW854no3TLKaNsWP7CZofI4rlqDVKe
         uUoCrxjaoKg+lXeBZEmSYCK+ybFhpjZZLg5HN3aHE4h/UssnEKA5wboBQKleRtBFsLkd
         m7SoCrtIFA0pVubEw9xotIsdmIAY2+DMZ/D0ee4gbgCkktlAwjL8nkS35wVv1BUasDe1
         Ft/vZPe6DzFOdZ/Hrqug8X0EXZcH69PJ2EFNAp7fWZwV9iTzRypxM0xvNqHsQEoeBted
         sBjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M5lM65dl;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com. [2607:f8b0:4864:20::632])
        by gmr-mx.google.com with ESMTPS id n10-v6si156759ybp.4.2018.11.07.23.21.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Nov 2018 23:21:41 -0800 (PST)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::632 as permitted sender) client-ip=2607:f8b0:4864:20::632;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M5lM65dl;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x632.google.com with SMTP id f12-v6so7935838plo.1
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Nov 2018 23:21:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=iGKf/mTdhY2K0tz8lwHwV6ij1+lFbSiMMxPZffRVRs8=;
        b=M5lM65dltfV27kWdbAqdCOdFy8wcmwW32cc6gBbUM4gTEQHiMFl0RfC5du0brCb1wb
         19pzKXpGK/W2CuWVAiALsOZdAOfWw9Y3P5xdrjkSz2NMbFd2LnqA+KYQS+xo3uC355BA
         yqM4GkpulmPmaPbsicGCQv03LAl+tZ7DSDzH+P352s3NlCVxB7XpuUnSMPsWr9mJ9UT0
         9SfKOKZjqcK3cDEG4WiQksJ8PXdGVVkV4hmg5jCduOUaxXtHaDEgTvc5WG5/nXcEp4H/
         Ly7yclFdS4IFgX/g/VQ8pGjpGwV9ZE+twyv203OmkI4OOX3hqjsnRhJLLeF5YcnsJFtq
         yv0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=iGKf/mTdhY2K0tz8lwHwV6ij1+lFbSiMMxPZffRVRs8=;
        b=bGLQX7C0oI/dDMJzINMoPR125OSbjll7ifcCLEm5gfCmb3EKGWjgDNq1NM/Nsly1I+
         mkA5lMA7QzOAIud/554lOp1MJeoCjbymUWXXV8mIRT+xQwTNBo8J3h0mt35bym6P9Rmp
         naB5wb/gNNkFZrTg54kiOqB2OUgxoMP7vXLuj11gn3Un00cljCEeBJ+mr6ngJjvDuoQQ
         gh0bWZMhI+Rnxm64JbPa5KxjwFS275MbWHSKPG0LdUXgwtDPgYtLn7pgMEBLXhCs8ZwQ
         IOYbZ2p1V+9xVT6w2fiugMLMTz7dWg+xX4tudgNY1glKgnGlVlqTN3jcal0L1ZjNQUiV
         qAKw==
X-Gm-Message-State: AGRZ1gIQNwhgHZXlAFJ0x3XZLtgYKm97C1GuDkb8y2R8uzB+gB4V7QBB
	WgsB5OjZtzh8eRfyhiLSKJg2F7Vu
X-Received: by 2002:a17:902:9a47:: with SMTP id x7-v6mr3478422plv.316.1541661701404;
        Wed, 07 Nov 2018 23:21:41 -0800 (PST)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from m-hyperV (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id v74-v6sm4093069pfk.12.2018.11.07.23.21.41
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 07 Nov 2018 23:21:41 -0800 (PST)
Date: Wed, 7 Nov 2018 23:21:40 -0800
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] staging: rtlwifi: Improve line endings
Message-ID: <dbde3a1012c0b14c76d88965f987bd932af211b4.1541660015.git.m.maya.nakamura@gmail.com>
References: <cover.1541660015.git.m.maya.nakamura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541660015.git.m.maya.nakamura@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Edit statements so that the line does not end with an assignment operator
or a parenthesis.

Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
---
 drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c | 6 +++---
 drivers/staging/rtlwifi/phydm/phydm_ccx.c          | 5 +++--
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c b/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c
index 7853031ee91f..a0bed52b8255 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c
@@ -551,9 +551,9 @@ void phydm_lamode_trigger_setting(void *dm_void, char input[][16], u32 *_used,
 		/*dbg_print("echo cmd input_num = %d\n", input_num);*/
 
 		if ((strcmp(input[1], help) == 0)) {
-			PHYDM_SNPRINTF(
-				output + used, out_len - used,
-				"{En} {0:BB,1:BB_MAC,2:RF0,3:RF1,4:MAC}\n {BB:dbg_port[bit],BB_MAC:0-ok/1-fail/2-cca,MAC:ref} {DMA type} {TrigTime}\n {polling_time/ref_mask} {dbg_port} {0:P_Edge, 1:N_Edge} {SpRate:0-80M,1-40M,2-20M} {Capture num}\n");
+			PHYDM_SNPRINTF(output + used,
+				       out_len - used,
+				       "{En} {0:BB,1:BB_MAC,2:RF0,3:RF1,4:MAC}\n {BB:dbg_port[bit],BB_MAC:0-ok/1-fail/2-cca,MAC:ref} {DMA type} {TrigTime}\n {polling_time/ref_mask} {dbg_port} {0:P_Edge, 1:N_Edge} {SpRate:0-80M,1-40M,2-20M} {Capture num}\n");
 			/**/
 		} else if (is_enable_la_mode) {
 			PHYDM_SSCANF(input[2], DCMD_DECIMAL, &var1[1]);
diff --git a/drivers/staging/rtlwifi/phydm/phydm_ccx.c b/drivers/staging/rtlwifi/phydm/phydm_ccx.c
index f292b23a2db1..ded6642bdf64 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_ccx.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_ccx.c
@@ -331,8 +331,9 @@ bool phydm_check_nhm_ready(void *dm_void)
 	bool ret = false;
 
 	if (dm->support_ic_type & ODM_IC_11AC_SERIES) {
-		value32 =
-			odm_get_bb_reg(dm, ODM_REG_CLM_RESULT_11AC, MASKDWORD);
+		value32 = odm_get_bb_reg(dm,
+					 ODM_REG_CLM_RESULT_11AC,
+					 MASKDWORD);
 
 		for (i = 0; i < 200; i++) {
 			ODM_delay_ms(1);
-- 
2.17.1


