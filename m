X-GM-THRID: 6889259171604070400
X-Received: by 2002:aa7:9dd1:0:b029:15d:d9c2:f8b0 with SMTP id g17-20020aa79dd10000b029015dd9c2f8b0mr7232788pfq.47.1604030647947;
        Thu, 29 Oct 2020 21:04:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:7809:: with SMTP id p9ls2246169pll.7.gmail; Thu, 29
 Oct 2020 21:04:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwmY7X3FSsYDuKRxF8lPLWsSwOWMo/yLK5GpkQaYss4dqYQtpywdBSnVH5aSxmQTe/9PpSU
X-Received: by 2002:a17:902:8d86:b029:d1:9237:6dfd with SMTP id v6-20020a1709028d86b02900d192376dfdmr7444409plo.22.1604030646249;
        Thu, 29 Oct 2020 21:04:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604030646; cv=none;
        d=google.com; s=arc-20160816;
        b=SXnRRwAMv16CvOZKbGQt+usX4/qcuJbcuU80EI1dIDqhm7Nsov105D6CcC0rB43Pfb
         OASwIKpWdce68JDMdlFAr4sSLiBCTQHT2RHMbwZm7KbaDRaViRSMoK+5dKEl9NwZWlMt
         xAGOjrt+OLbC41SlBGV2z3vhyApoIRQ+/Vxdg0Nb8tMnkyBkLjHvR1Y+KDCzaMAKO5RG
         G7t2IINnYQh041aiWIUJ+Q+n1Nlm4ZcVY07beMSjd5EN+6l0Ql7h1iJSgT2VpYFIHC/h
         jvyO56t2HS/pXWnKyYOFH5CaRIoHXKxNsCO3E04fese2px15gcEH2YXinVyIKJM+P5Ly
         BWOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=omeX/7USjZZ0bCTBjHGOVLTjZl1oqWJzp7gUz7b6h8o=;
        b=VnVo162214jIYT8ErVuM4n+kEZhQ1ymLlDF2VXYP0ixQz+ovx5cZGWDBnBum+RRqR6
         Z7HaJtZhCpjVHRhj2wiM33NytxWCfDCfh5Ch5Fp6LE1y2MNK2mQBY0pChwa9T6CxsDvO
         f/mc7ExJ+4Otr7K1w4QFmm7Laztli4LUAFFgL6fm1A65c+nFBssKZuO815lySNtBGQbD
         UgSfm1MDmgR51y884mSrvc8lN+goYNsGk1SnHi/nzaKZRGlo7IP9somwN3jMzeLAn5JC
         r4dOASIHT2Unomb79BfyvwO/1fyapJhlOlkDy/i4WnVQDBD7JjyWtE0ziJyTNrpMXiem
         mVuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nDvPvTn9;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id l192si355020pfd.6.2020.10.29.21.04.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 21:04:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nDvPvTn9;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id b3so4158268pfo.2
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2020 21:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=omeX/7USjZZ0bCTBjHGOVLTjZl1oqWJzp7gUz7b6h8o=;
        b=nDvPvTn9phgjic1rYziuxJbM/OAHLhdXJG7ZM3/oaHXZLLEojGVPRr0/dOJEMOX2ZV
         0y48gTkP0J6wfHakJaZv98m/RyzH64FNDGl4ALrV2KM0/WaO9GWXgd60CUeWwwTgZd9x
         OwQYnx4Jv+QedwVrqKomnqgBSkiMcVlKi+DDXHX4aEeYmacKedUyw4sfEn2NK2gooOAW
         UUng2XwfDd6pkqZjUw9pOpsV8BXzcYBMYGqGFu+80jE1qe25+6V+wsPRSdQkpdAXnQQN
         9ksbWoIOgpNjOQYJQIpN/EEZBgTd8eMZ5xqHhYPSPdH0UiU2VOZ5eOZ6WszqRidIbY3A
         /BOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=omeX/7USjZZ0bCTBjHGOVLTjZl1oqWJzp7gUz7b6h8o=;
        b=fKMTEaOCfJNbfU2swJUSxLcwQV2LXldv06BGkeO88evDMRfl3mPwNZrwtnP7e6Jg2o
         ix+cllCMryKliSR/0Xphe1o/iBBWTH4+bzkMQWkyi/slt7iUQ6toYAJ3g8+aXI6HLMwR
         +6UuYa8Z9zHf2wcaITdg4HtzrUPnBsjZtmPvQqQ2hJpLIn+eqN7OCWTh/37ivWZecH4A
         1RYkQFA01knu1kfFzdgJku3FG51E0MEpEY5GAMRzqjPUMOHuH/dUjzYSU+qUf2anYvSS
         13L3ZgcJowjfhvZQS0ErGCP6RGP+HBCJu/lBRUKNLzxJodDUkhteuoPao+5V1lUhLDF1
         77iA==
X-Gm-Message-State: AOAM532OkFzPssZeK42YvSpNONgjCOTmTtfo5E550/VPIXRaVZq7vPMS
	LiLmWMDlQImciowAhJ6eDmWaryZlva0=
X-Received: by 2002:a63:5152:: with SMTP id r18mr458807pgl.381.1604030645846;
        Thu, 29 Oct 2020 21:04:05 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from my--box ([103.98.79.70])
        by smtp.gmail.com with ESMTPSA id j2sm4048182pgi.48.2020.10.29.21.04.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 21:04:05 -0700 (PDT)
Date: Fri, 30 Oct 2020 09:33:59 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Alex Deucher <alexander.deucher@amd.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org
Cc: mh12gx2825@gmail.com, melissa.srw@gmail.com, daniel.vetter@ffwll.ch
Subject: [PATCH v2] drm/amd/pm: replace kmalloc+memcpy by kmemdup
Message-ID: <20201030040359.GA276414@my--box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Use kmemdup() for instructions using kmalloc() + memcpy(). More
information here: https://lwn.net/Articles/198928/
Issue reported by coccinelle script: scripts/coccinelle/api/memdup.cocci

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
Changes since v1:
   - Update patch subject and log message to match proposed change.
   
Please Note: This is a Outreachy project task patch.

 .../gpu/drm/amd/pm/powerplay/hwmgr/vega12_processpptables.c  | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/amd/pm/powerplay/hwmgr/vega12_processpptables.c b/drivers/gpu/drm/amd/pm/powerplay/hwmgr/vega12_processpptables.c
index 740e2fc7a034..1e79baab753e 100644
--- a/drivers/gpu/drm/amd/pm/powerplay/hwmgr/vega12_processpptables.c
+++ b/drivers/gpu/drm/amd/pm/powerplay/hwmgr/vega12_processpptables.c
@@ -252,12 +252,11 @@ static int init_powerplay_table_information(
 	phm_copy_clock_limits_array(hwmgr, &pptable_information->power_saving_clock_max, powerplay_table->PowerSavingClockMax, ATOM_VEGA12_PPCLOCK_COUNT);
 	phm_copy_clock_limits_array(hwmgr, &pptable_information->power_saving_clock_min, powerplay_table->PowerSavingClockMin, ATOM_VEGA12_PPCLOCK_COUNT);
 
-	pptable_information->smc_pptable = kmalloc(sizeof(PPTable_t), GFP_KERNEL);
+	pptable_information->smc_pptable = kmemdup(&(powerplay_table->smcPPTable),
+						   sizeof(PPTable_t), GFP_KERNEL);
 	if (pptable_information->smc_pptable == NULL)
 		return -ENOMEM;
 
-	memcpy(pptable_information->smc_pptable, &(powerplay_table->smcPPTable), sizeof(PPTable_t));
-
 	result = append_vbios_pptable(hwmgr, (pptable_information->smc_pptable));
 
 	return result;
-- 
2.25.1


