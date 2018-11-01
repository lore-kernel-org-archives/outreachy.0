X-GM-THRID: 6618737831817773056
X-Received: by 2002:a6b:b20a:: with SMTP id b10-v6mr4382298iof.39.1541045093281;
        Wed, 31 Oct 2018 21:04:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5e:d702:: with SMTP id v2-v6ls2720618iom.9.gmail; Wed, 31
 Oct 2018 21:04:52 -0700 (PDT)
X-Google-Smtp-Source: AJdET5di2h/5jCgjD4VwOjNd5F+c3sHOw0fv4rQaH54TZx/n0WjPlZ+KUecyXdxk/ML3nuYiVZGn
X-Received: by 2002:a6b:c80a:: with SMTP id y10-v6mr4331335iof.8.1541045092351;
        Wed, 31 Oct 2018 21:04:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541045092; cv=none;
        d=google.com; s=arc-20160816;
        b=pWijYlkdNab+8L9qSVBKyqBePoCAmmn5ethYNeRlnLLEfj35fd4G0mOHqo7CrEJAci
         uclxgselH4SmcO2ZlspWlVxtDWtlu1+0kwCi1v/k2HdPBAXZvnh50dUI23rGSShImsdC
         HcSvYSdj71coMPSo6dKaxvTZhk9naKx8IoohYAKwfG25LbI6Umt0mVCfytGDKMN8QDVP
         xQzugl03pqdoFCi6cgm4Qznn2loKOQHGzj/czDwvwWldaE2bZFHLqqMW4aXR2STXPU0d
         dzmjpe8iHn5tMBDSDqjabvjBI5h0HsoktF8mY0XKAQEmUKoCIpyXhPHAb6jqp64tkZMU
         RAvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=H/lJjsYyC5y152qNoHl5jP88sAvvh4fky7RouRBE2Jo=;
        b=kK9tAOPsBq/5RgSYtgyjsgZYPWi/uErqzOcEA46DatrGniLMrJGrt8ud618GCISi+L
         clklIodTCZjLAG+lpWpsGSH+abr+cVAtaoP3FFeBrAoo9Jh2fI/iTtNCZbHyrGLMejV8
         nVuW3NK+dtakZMZdCnM2jBVd+E2kLqtTKg9XCGcfu/9TpzywtoU6Cye2KlfoiG4Bk7DW
         lQWzX4gUDFHoe0+Q3TRJfdIn0thlxlCTSY1RmhtFMZz3DTxB93pUuWep+YrY1gBCIveK
         CpWSKT/VCreyDS/iMRoqMeB5pzClxRwX+v6R1FSAlFFTQM600GW7pVXikbj6CwjEuEAt
         lneg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CdiOVxP2;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-it1-x144.google.com (mail-it1-x144.google.com. [2607:f8b0:4864:20::144])
        by gmr-mx.google.com with ESMTPS id 17-v6si11845itv.2.2018.10.31.21.04.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 21:04:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) client-ip=2607:f8b0:4864:20::144;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CdiOVxP2;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x144.google.com with SMTP id s16so430414itj.1
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Oct 2018 21:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=H/lJjsYyC5y152qNoHl5jP88sAvvh4fky7RouRBE2Jo=;
        b=CdiOVxP2EngJoCRAhGZzoAmPHX8xQxYZlnhaB/lRond8PXYRHmH4JXLdCbXcJwEDAS
         XHCwmiJR0JzzO19MY7eZOUAKXS2GWDHOIqLgLYDzoqkmw8yXxe4cvLJhpv5V04ftr/2u
         wcRfb64nHtomcNn0ofDBXCNRA+tmntnI0rZb2QOXSDTi9//JXWuhK1jiY1VLGOqinZbv
         N2gpRbM9pEjuYzeDltJFpDtfFHKxdgkqSDJRgivXSAO169vWsit+Pht86EZqCxiBDH3/
         IBeCfTmXDb5dmhnn/G1v3hgh3Cdgt+yjO1o5v9QBb7bVq96vGMQ9qKTV86aUF8/PB1/7
         H6og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=H/lJjsYyC5y152qNoHl5jP88sAvvh4fky7RouRBE2Jo=;
        b=h1GRRZbSejonvoOOfVjWM6GRZPBf8F3kjSbI1G/qp06Ch6SHRWDF6YwgCOEeq0RO7U
         G5F3kdnep1TlZFCdyIN0zn4QyIlei0LnX9WLvTpy6s0wABoPq9zgBhmsxfKrfpSndFMG
         iqRZAQfQKUENtMyQkXiJBYfVN1DHLVrYMNGH9hRoIspXnM1MBCydXIiItjLQCO3ir62I
         wyVQ8/63H+Y+o0uAROH10ZYT2muyRHT3ztr81OnyJCYH0NwQzLSir1UDdqZi3ie4I5Z5
         Bj6h+ynCfyLjh9VMQd9py/IhIRzyAnQ6QdDD/rPNu2OjRA84VYxINrCK0rMMZDFUJ+O0
         f5Xg==
X-Gm-Message-State: AGRZ1gIHqRnd4PHMOR3VioA9eYFfpberVHjpM2XBTg/grrN92l5Qcm7y
	FLUgcTkmiUjrgKd7VZL3Olx/3OAM
X-Received: by 2002:a02:4b86:: with SMTP id q128-v6mr4911065jaa.63.1541045091845;
        Wed, 31 Oct 2018 21:04:51 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id a71-v6sm10207822ita.14.2018.10.31.21.04.51
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 31 Oct 2018 21:04:51 -0700 (PDT)
Date: Wed, 31 Oct 2018 21:04:48 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: rtlwifi: Replace 1 with true and remove
 comparison for bool
Message-ID: <19fc6a990d8bae50fc4ff8bd26890b66a2befac3.1541037077.git.m.maya.nakamura@gmail.com>
References: <cover.1541037077.git.m.maya.nakamura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541037077.git.m.maya.nakamura@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Replace 1 with true for bool assignments and remove a comparison of a bool
with 1. Issues found by Coccinelle's semantic patch results for
boolinit.cocci.

Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
---
 drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c | 2 +-
 drivers/staging/rtlwifi/phydm/phydm_ccx.c          | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c b/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c
index d6cea73fa185..7853031ee91f 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c
@@ -555,7 +555,7 @@ void phydm_lamode_trigger_setting(void *dm_void, char input[][16], u32 *_used,
 				output + used, out_len - used,
 				"{En} {0:BB,1:BB_MAC,2:RF0,3:RF1,4:MAC}\n {BB:dbg_port[bit],BB_MAC:0-ok/1-fail/2-cca,MAC:ref} {DMA type} {TrigTime}\n {polling_time/ref_mask} {dbg_port} {0:P_Edge, 1:N_Edge} {SpRate:0-80M,1-40M,2-20M} {Capture num}\n");
 			/**/
-		} else if (is_enable_la_mode == 1) {
+		} else if (is_enable_la_mode) {
 			PHYDM_SSCANF(input[2], DCMD_DECIMAL, &var1[1]);
 
 			trig_mode = (u8)var1[1];
diff --git a/drivers/staging/rtlwifi/phydm/phydm_ccx.c b/drivers/staging/rtlwifi/phydm/phydm_ccx.c
index 57138606d9be..f292b23a2db1 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_ccx.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_ccx.c
@@ -338,7 +338,7 @@ bool phydm_check_nhm_ready(void *dm_void)
 			ODM_delay_ms(1);
 			if (odm_get_bb_reg(dm, ODM_REG_NHM_DUR_READY_11AC,
 					   BIT(17))) {
-				ret = 1;
+				ret = true;
 				break;
 			}
 		}
@@ -351,7 +351,7 @@ bool phydm_check_nhm_ready(void *dm_void)
 			ODM_delay_ms(1);
 			if (odm_get_bb_reg(dm, ODM_REG_NHM_DUR_READY_11AC,
 					   BIT(17))) {
-				ret = 1;
+				ret = true;
 				break;
 			}
 		}
-- 
2.17.1


