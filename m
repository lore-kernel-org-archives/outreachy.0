X-GM-THRID: 6618737831817773056
X-Received: by 2002:a1f:2c4c:: with SMTP id s73mr2895364vks.7.1541661833342;
        Wed, 07 Nov 2018 23:23:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:8a95:: with SMTP id m143ls86395vkd.3.gmail; Wed, 07 Nov
 2018 23:23:52 -0800 (PST)
X-Google-Smtp-Source: AJdET5cvVR13RHatPLf9l5bDDRPPZEzeu4n3UwNgG1LpXNRrwtd+wkDDCMmGDxPHKCTBOmy31uaM
X-Received: by 2002:a1f:3456:: with SMTP id b83mr2885106vka.25.1541661832718;
        Wed, 07 Nov 2018 23:23:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541661832; cv=none;
        d=google.com; s=arc-20160816;
        b=cEvPNuTbotXeWf5w5XRkpNEhCS9lZkpb4X9BYiKhx/mjeolO1xh7a6V+sEtDf9v2xD
         yUdskvdU2hghyhFNwyu6ZFyd2SfkOzrAWkLaodQD6EMeB5O90yMLPOZjc4DyJl4XsVuW
         RjbqrjcLqyi9NpW2IWZUnC4MluMWOiNIF6GCG6Q8if7QyxTakvSAnPO4QMnLp9JJ6hyk
         tGj4temVUOZJOU/2FK+8rXZxM0hAJ7nr+p2Sm5edPrOGVWcjubSNrgTtA7xvYSOWCwZ3
         5w4TEnj5vpHYURMpPaaz9H1vkgwxY/DOtY2PvLUE7VYXwtqLef6wyS6lVagCQClCK8m6
         tu7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=afM1oRSU29nI7PYYDBTFtTTBPgyNd9C8oJIZCJDCebM=;
        b=0VBnBZWrRGpe6aI6etk+/b/LECx7LVC58pMi2dalwVPekwmlp5ojWgSpXfaDC4MD+d
         L8HpwVXWC4lCtENzbbZ/fsb5doS2veI+Rsuo9hgUHNUNc54f52JoJ9EgIjz6T7U0HuIC
         5BP/jMIYFYPzpE+zSCJRZrpdA0jrGvgySi0igU0XtedOrWQbWv33dbZBOnL8dmgDAAYs
         X9CnusbnE/jKDhBLQp4AwqzIB8tHEVMraLSC+1nDkbFF6Rf4H3cYGL01p5MigUIm5kK5
         MWp9q1JfhXfUIJSy3aLVx8bsRokRdKiG8JvDDWwDDEMel1HceMcvLLuLvGG0KrmNGdi5
         RdEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZAGBv3Dm;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id x21si20298vsf.1.2018.11.07.23.23.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Nov 2018 23:23:52 -0800 (PST)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZAGBv3Dm;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id g7-v6so6647150pfo.10
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Nov 2018 23:23:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=afM1oRSU29nI7PYYDBTFtTTBPgyNd9C8oJIZCJDCebM=;
        b=ZAGBv3DmjfBCTHt27Ffxr2jkod/mXUm3VwGVbXfx9uFZBkWybX8Dg3lRDVKzdE1/3u
         Cu/zCOwuSkQr7oZMk3Sjbx9njZ0Lz7xJvdgKKVdxNHFh1jnyEoyx1ZnpL8QGxRuabhVk
         EqK8r9BKbhdyIwxo66/DCsujgfUUSvd2is7lOVsorHnzqFaeQoktmozZimZYY+U47IPv
         Wea9x859KKwjyC1xZGUWnq+kUY6+61ZB1XErESsdnS///AgPjQuuVBusJvE11PZAsk9b
         kcuegUzPzukHYHQdXsP9af7acscBL7RX+Iv1scIUUKlAuhBaNZOQ2CeySq93C/aKdVqd
         FyJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=afM1oRSU29nI7PYYDBTFtTTBPgyNd9C8oJIZCJDCebM=;
        b=NxdQLEFy1pywR43Tb9rhHE3cKuZ9+eqTFSRTTN9MQN/PNWQcYKmIpvwRIeBRGOi2PN
         TLYY7e129kOA0K48PGuAO3wVt32lGOiOEt5b5ihl0q0MWE6OwB4kpFQQxE3ixjlXtIgb
         hlOuuoc1pAQpjIHfAAC4jZuK/i3WUYsTamINKYAhcWb9PcmmVcS6VyBPkMEgZU7J4rJZ
         sqxNlS8ozkY4CK9YB+VFNULe6Xuxpb4/2svWXKJOoEDO7IzvhYKsuf7IeWovMLREDPGl
         22TRCQKIU9Vm+tt28uIumA+6mDronQDbzaWLD6hbTCUIEBX6QkyVpZHElOBAResVGtGP
         Mt+Q==
X-Gm-Message-State: AGRZ1gKkgukR1om6oevyd2Mc89Zme6X90LTc6goPC6hxH2CIZQp6Ql8w
	kswvgR9CTQwKOMp6XltBL/Yiq3o1
X-Received: by 2002:a63:bf0b:: with SMTP id v11mr3009954pgf.302.1541661831651;
        Wed, 07 Nov 2018 23:23:51 -0800 (PST)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from m-hyperV (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id f22-v6sm739550pfn.177.2018.11.07.23.23.51
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 07 Nov 2018 23:23:51 -0800 (PST)
Date: Wed, 7 Nov 2018 23:23:50 -0800
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] staging: rtlwifi: Add spaces for comments
Message-ID: <ff1118ecc38e3ef54248722b074a8d64aceb4e42.1541660015.git.m.maya.nakamura@gmail.com>
References: <cover.1541660015.git.m.maya.nakamura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541660015.git.m.maya.nakamura@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Add spaces before and after text in comments.

Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
---
 drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c | 2 +-
 drivers/staging/rtlwifi/phydm/phydm_ccx.c          | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c b/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c
index 7d578241326b..f94c9d19491e 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c
@@ -575,7 +575,7 @@ void phydm_lamode_trigger_setting(void *dm_void, char input[][16], u32 *_used,
 			PHYDM_SSCANF(input[10], DCMD_DECIMAL, &var1[9]);
 
 			dma_data_sig_sel = (u8)var1[3];
-			trigger_time_mu_sec = var1[4]; /*unit: us*/
+			trigger_time_mu_sec = var1[4]; /* unit: us */
 
 			adc_smp->la_mac_ref_mask = var1[5];
 			adc_smp->la_dbg_port = var1[6];
diff --git a/drivers/staging/rtlwifi/phydm/phydm_ccx.c b/drivers/staging/rtlwifi/phydm/phydm_ccx.c
index c0da601be6cf..80679a6d5047 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_ccx.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_ccx.c
@@ -317,7 +317,7 @@ void phydm_get_nhm_result(void *dm_void)
 		ccx_info->NHM_result[10] = (u8)((value32 & MASKBYTE2) >> 16);
 		ccx_info->NHM_result[11] = (u8)((value32 & MASKBYTE3) >> 24);
 
-		/*Get NHM duration*/
+		/* Get NHM duration */
 		value32 = odm_read_4byte(dm, ODM_REG_NHM_CNT10_TO_CNT11_11N);
 		ccx_info->NHM_duration = (u16)(value32 & MASKLWORD);
 	}
-- 
2.17.1


