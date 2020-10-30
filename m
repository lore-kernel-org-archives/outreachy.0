X-GM-THRID: 6889249751270686720
X-Received: by 2002:a17:90a:fa93:: with SMTP id cu19mr336787pjb.117.1604028453148;
        Thu, 29 Oct 2020 20:27:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:bd82:: with SMTP id z2ls1040491pjr.3.canary-gmail;
 Thu, 29 Oct 2020 20:27:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwdL8Oyt+hwCnfRjT712etpZxfEiJGMDeQUV0gfO/jlJMeU9o1a6dqMnwj/rY7Be+FRqDvU
X-Received: by 2002:a17:90a:d584:: with SMTP id v4mr358961pju.194.1604028451560;
        Thu, 29 Oct 2020 20:27:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604028451; cv=none;
        d=google.com; s=arc-20160816;
        b=pmNeDTOF0an4LlrkmxLSVumlGXeLnWUPNqJr3byHNdQcOyWDehhGEuejorqc4W00bq
         bzt7WjaN6TXhpEgZd7yKg6pjhW8dAxzg6LWPfkJI2dM6cFlZn+4nDXS96aVl2jJbLRQV
         vlHqMW5J1bmBFCz64QNLJVR7nGfo2TQbarTNGtdAZY5Q8NGvDh1H2F12d1Di88qda+Lc
         76b6da9wdll9VuchRNVvvO+tGDUdViiN3A3GlfW6hWFou2Eq780u37QbNzeub/l9NAEw
         uK2vwZoEb6RHeYrTGp3/hXFoRlDcvEzs3ccPUhjNtClp5TzuJWM4KfWEQV6h4QklXaAw
         lalA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=bnHvCuE87pUUeamFRrdRkC3/PfrKdLRFG6Yr9LjsnHU=;
        b=cW87ILKrYKKjo7Am4gE4CasO9bY8IvK9JlUCAl9gH5tBu5P+rNBjnIbTTYnGdO/T6l
         b6N/9O7xLzC5Z2DhI326iJJglSck0Gfp9o+7K9X0NI4ovI+M44LE46VIbEs1EoH0bSp8
         uwOGTS1McNeeeVqwt/qGqOWZSo1mhOU0qebZNK3nu8/Ui/IAIMKHxTlvolRcjqNoE2H3
         e9R0NeX3HZTduqhkD7IhK/DvtS3hRJ5AqilsodN5I1SJfMo48mu0LnU1xP6ln9vAdTvG
         tj0d3eUDIhIUu00HXWuUZ1nN/5l0RigOmOxGSf8wC1b6pwb/Nlipvqbnz/IEjUqJ/+Fw
         jBrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nRD8AmlO;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id a6si299025pjw.3.2020.10.29.20.27.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 20:27:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nRD8AmlO;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id i7so2102320pgh.6
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2020 20:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=bnHvCuE87pUUeamFRrdRkC3/PfrKdLRFG6Yr9LjsnHU=;
        b=nRD8AmlOqJ8JayRjEopJ5gsIvdMeLsA6FdS+XJv2WFxcMo/+k7r9F5ErGu6fOFW8AQ
         RTdDljKeM5HQDBummdsxSpQUh3IjjRVzi87ByrvD2MkiJrhTmGRT35F+7aLPWD7+sidl
         Kv9plJtGdW2FL9gT2gv5Ri69CUQrpxWgieYZM2uZXZmUt431/qypzu54jCsKUAFsG7nQ
         f07ABRL0UayrZZsHvk1NfDvTzhRtiL4uBs/K5SGIIB+6Q6gbcI+mcfKw7kTPV7Owsq+X
         3bI33+X8zHRUpqf0Ehk6Q9xJQkjcVMbWirQ45OILc08QA7/bdbhZjg8RTuOpUyERvQDE
         7dWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=bnHvCuE87pUUeamFRrdRkC3/PfrKdLRFG6Yr9LjsnHU=;
        b=FpqHxR5146H5K4bPThbQB4w1jXG94gYFdYrrRCtvcbxew1MIFf3JeR1cgH1htY4qrC
         C/X1yEnfFi9XxwJ9xS+Ozex0BOdoLX0iheboV5lNZIfirnd6SiOQOe5qTjQ63dmCerWQ
         /47oYgXzD3nm+Gt2UJoHo7yvbJyqvJOufT3PAWF3Fw6iX1Inz1kyMVhxR3n+FiBJ0vFM
         HdTqZd5TgS5ft9s4rIE+9KzIqxSl8b5VrEiqc2ZS4vcXZCgwmcLGQa95STZcgyL7WMSr
         KrbZWfTccD6zcGC3Y4s30TiN47duV7HUJEjIAyEOb6VY9j3QUKBwr1zIk6rnIGaaoMq4
         uz5Q==
X-Gm-Message-State: AOAM530I/XZzC/wNQzQ9fP3dsmnKfUp2On0crTu9DHZN1u72MaCqcvh3
	7BxKVXTXdvO2T6u+QZofzW7YOEKOz1w=
X-Received: by 2002:a17:90b:3658:: with SMTP id nh24mr310667pjb.177.1604028451119;
        Thu, 29 Oct 2020 20:27:31 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from my--box ([103.98.79.70])
        by smtp.gmail.com with ESMTPSA id z66sm4274336pfb.109.2020.10.29.20.27.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 20:27:30 -0700 (PDT)
Date: Fri, 30 Oct 2020 08:57:25 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Alex Deucher <alexander.deucher@amd.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org
Cc: mh12gx2825@gmail.com, melissa.srw@gmail.com, daniel.vetter@ffwll.ch
Subject: [PATCH] drm/amd/pm: use DEFINE_DEBUGFS_ATTRIBUTE with
 debugfs_create_file_unsafe()
Message-ID: <20201030032725.GA274689@my--box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Using DEFINE_DEBUGFS_ATTRIBUTE macro with debugfs_create_file_unsafe()
function in place of the debugfs_create_file() function will make the
file operation struct "reset" aware of the file's lifetime. Additional
details here: https://lists.archive.carbon60.com/linux/kernel/2369498

Issue reported by Coccinelle script:
scripts/coccinelle/api/debugfs/debugfs_simple_attr.cocci

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
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


