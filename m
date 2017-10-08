X-GM-THRID: 6474399283336445952
X-Received: by 10.99.43.204 with SMTP id r195mr566685pgr.162.1507438568018;
        Sat, 07 Oct 2017 21:56:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.248.133 with SMTP id q5ls232121pll.7.gmail; Sat, 07 Oct
 2017 21:56:07 -0700 (PDT)
X-Received: by 10.99.121.77 with SMTP id u74mr558277pgc.140.1507438567477;
        Sat, 07 Oct 2017 21:56:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507438567; cv=none;
        d=google.com; s=arc-20160816;
        b=l62oMd9N1ZM2u4znYZroqMZxzooYbq/luYy/heiSFS/QtEKoWWjnVmEsf04B9Os1/8
         GjcnkAg4pAgWNyFScIdtUSroNH8wcKqm/wbhvIlA6tbWwL8EHTrWADvyI4FcmwOp+/Wo
         hqdc4HsveIN8GiTeFDEk9AE8nT502L8o9jOHEP7bnKlmex3f5pnX4f6nAVNOA4eRaZwW
         PhArBtnH8qKww+yEGen6WIMSNVqhTExRwASJjMtHLJGvTZpHe4ycmvz6OWbiF6wb/t8g
         wv6xq9lFaAgptKfFdzALzjTd9S89ExDvCvbtNhv/3q66TeAM3uPLJjqgjjYY7eAmHeSO
         IKGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=SZnKC0KgofCsOje/ZCwNqMWcEgiZMo3+PEFwXvrE6p8=;
        b=eoBEq1b7RhDdb2o4XrYBPD3CVOkRG1ogm1QErQhFa1bTISpSuJqdfO5kDqy8BIkZw3
         RdLy5g3/GIECqBBMVskkNxh3JFmxw+Bc9q/WHBu5mNz5NP4DnT552PifE1vL6OzzdSrh
         uw9Zspxt54NqNpHZdG2zRqebhTHYplQgKrDlpcyIb53JH3jd8zjbEIqtKrryeeNCpKTz
         t00NqUw0a0IgDRZDVVi+ZbaiEBKnKGp3suTMGzykkDWfevC4E10HvaSsViWMJm+K0XE8
         IU2BojTCcLTFxOfVTdcuzmG8G6AkoBt7KqsMU3lQr2R5WbOyp3UGtKlmkn4vrFRPxp+R
         nwZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I7v8C1Ir;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 82si565865pfz.6.2017.10.07.21.56.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 21:56:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I7v8C1Ir;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id z11so3322933pfk.3
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Oct 2017 21:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=SZnKC0KgofCsOje/ZCwNqMWcEgiZMo3+PEFwXvrE6p8=;
        b=I7v8C1IrP+L5mL2AR/maJJWUrMJRyFCALUQ0bFpQ7wOYW9MnDT+rzVGaQhrSxuMFjo
         w5aBilOVgp5z64orhHV2p3rPcPqx6816XvW4wZ2ZsGDM/aJbBtrlfvnYu6WF4eGy2uL3
         Z5RuORd6HIFF5vQEjrWWpJuG8xhiPUwTFgpNfBqxh2vP0GFB1qcK6lqvgBRxC4lVR3Y6
         eHtWM3ZfeG7IxyT9LQBm698guAKCKw7C4F8i70saomIIUYLM1xStOBNrnCmzf8Vc0uwD
         FqDXjgU1eU4Ke8R6LH1rQVkVwVOXu+LPgANzMGszBvPVGl+64yY0fUHqIVCEdm1zT+ai
         9r3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=SZnKC0KgofCsOje/ZCwNqMWcEgiZMo3+PEFwXvrE6p8=;
        b=lQxJ7tncmCUi6vCi4qGshdzKM1aJexYpUHbvLrEowXsZb/c700i3x8qQtI8r89/SeB
         2eUHbuVAbYNnPGtCLDsu8kG3ZIFGqCEk74GVtzCi8VTOGc0GMKCCGflx0uuEh1D0BviT
         KHaNhL9C38lPezid91isMt99UUm56k7JaT1Jf3q9Z5D2zQ8mful7TkDHygxlSBqbRZs4
         ziu7KM1ghFOT9dzMzuXu6QvMCfiiqnJBMkTtYshs/ZKJCV2P9+++t0JC605ygY4cPBFL
         PoHEsdpwuQPG6XI4iOqxwqE1pQoiLQp+4n17NQwWOmftSLMk+XO9lXCF4RjujX0zwBZ8
         u5iA==
X-Gm-Message-State: AMCzsaV6mMi2oUka44G/oc6yk2/mQaLjcHmgvJtq1AfGmKO2/5iyLT3K
	irXkuytB/tRRSLSZQqV4BoCQx3HV
X-Google-Smtp-Source: AOwi7QCP+QTfBHeliSxRlbuHtEE/pv8wajMoZIVI+z3vay1CeZpzVILEwEvJ0VG2WI1VzyCJ+iLz9g==
X-Received: by 10.99.99.65 with SMTP id x62mr6113008pgb.221.1507438567192;
        Sat, 07 Oct 2017 21:56:07 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([45.127.232.78])
        by smtp.gmail.com with ESMTPSA id j12sm8694167pgc.6.2017.10.07.21.56.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 07 Oct 2017 21:56:06 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v3 4/6] staging: rtl8723bs: convert type to bool
Date: Sun,  8 Oct 2017 10:24:54 +0530
Message-Id: <9e56985ecdf7399c31f3e2075fd8a678d8772611.1507437264.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1507437263.git.aastha.gupta4104@gmail.com>
References: <cover.1507437263.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1507437263.git.aastha.gupta4104@gmail.com>
References: <cover.1507437263.git.aastha.gupta4104@gmail.com>

Here the variable bips_processing is always supplied a bool value 
while inside struct definition it is defined as an uint type. 
Fix it by defining bips_processing a bool type.

Also a restore_iqk_rst = (pwrpriv->bips_processing == true) is same 
as restore_iqk_rst = pwrpriv->bips_processing

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8723bs/hal/sdio_halinit.c    | 2 +-
 drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 63bca67..1af77ad 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -1019,7 +1019,7 @@ static u32 rtl8723bs_hal_init(struct adapter *padapter)
 
 			rtw_btcoex_IQKNotify(padapter, true);
 
-			restore_iqk_rst = (pwrpriv->bips_processing == true) ? true : false;
+			restore_iqk_rst = pwrpriv->bips_processing;
 			b2Ant = pHalData->EEPROMBluetoothAntNum == Ant_x2;
 			PHY_IQCalibrate_8723B(padapter, false, restore_iqk_rst, b2Ant, pHalData->ant_path);
 			pHalData->odmpriv.RFCalibrateInfo.bIQKInitialized = true;
diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
index cf8e766..79a2db6 100644
--- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
+++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
@@ -250,7 +250,7 @@ struct pwrctrl_priv
 	u8 ips_mode;
 	u8 ips_org_mode;
 	u8 ips_mode_req; /*  used to accept the mode setting request, will update to ipsmode later */
-	uint bips_processing;
+	bool bips_processing;
 	unsigned long ips_deny_time; /* will deny IPS when system time is smaller than this */
 	u8 pre_ips_type;/*  0: default flow, 1: carddisbale flow */
 
-- 
2.7.4


