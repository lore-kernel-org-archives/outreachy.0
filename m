X-GM-THRID: 6464947819093426176
X-Received: by 10.176.93.6 with SMTP id u6mr10790453uaf.4.1505378123303;
        Thu, 14 Sep 2017 01:35:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.68.196 with SMTP id o187ls4833994ita.15.canary-gmail; Thu,
 14 Sep 2017 01:35:22 -0700 (PDT)
X-Received: by 10.107.128.97 with SMTP id b94mr655684iod.110.1505378122697;
        Thu, 14 Sep 2017 01:35:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505378122; cv=none;
        d=google.com; s=arc-20160816;
        b=fm6ftEJzpenRBRJ15R8bLfbbFPvAV7r4b7Q4MDdupaQL2A+3KGzJZFPpGy6Wmpk/V1
         8TUn7rG+a88s/Z/gQobzHvddh5JX+3VkiiGFI9+6hdy44xmaSRZUrrQgN3uFz44fKQ97
         PAcBkKx2Lv/yzaGjXoGnIjt651Pm418eRv8eCxRU0m5L4v/HSNsHlaAvmwJ79BoV4flf
         ykde/kcw5DV3RigGLfiN6smdNlMhpMWkItvsrwcT8grPMC3N5i/u/mcNtc9JF523WbiN
         V4RRnNKibvhbtAo7hEShA5vWt1cIuxvUvRjUpTheYd07Hh8Ur8LAgK/C7qGjSmqDvp22
         7DvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=uLAw64SgNj9P7bjFQ8ksTIv+IschIl15sDWl4fdIudk=;
        b=Kwl4YGgOXOKHTlLNULFbi+/EA7LD4+7w/lsQQMKNDZ2Tcag7oRclrr1xe4bx+twy+W
         dCilU8MEGAIX+lrFA4dsANckffVNYZY+uu1k2qiGSSw4A2RRnfYusDdyKS+amEyAPNjH
         16kuG9+nhWDkU0CAyiQLAW9ipas5aOXWAxn6WdUGTQkUMwCvWJ5EyKIZyLtbJzbo2Zx6
         0iwHnXFsFGcUKaZ97xm0TdGZF8fHlszQX+HPA6kWdU/oI3ZEVlVd/UeNfH1xbvmUtB+d
         93qyyHQfkTvvxLKdlxp7kGVgDmOXYdu9oVvCjEF+Ngfa67ikX2IN8eDCmnGYthoeEDto
         0YOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cHPxplG3;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id v25si1561050pfg.11.2017.09.14.01.35.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 01:35:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cHPxplG3;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id q76so1204283pfq.5
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 01:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=uLAw64SgNj9P7bjFQ8ksTIv+IschIl15sDWl4fdIudk=;
        b=cHPxplG3xym2pq7lb/eJYXoqNIOUo75AvUsupuH7Z1yuU+u4pNAWiYNRUwZyD5QSmA
         YvRNlwEQkp3H+XsDzmrdF5ShE9dql2eAuQythRxWy2nsoCu6lZlFTvmEMYx6fj8LM3aP
         YRXn+dfcxBw7Eowemqvd5y/fHi93oqYJIFlTDFDFP59CKtNGkk+tqpro2f/UBIA2DCvI
         vXT23BpXajGCy5jlOWUT4gkwzeFFBiuy2gqKvFZDEF2m8IIKKEdzwCq/4mJn+QjHXVpC
         eovKkU3IlSTAWjnLW9ukkzXxt6RpbjwBcGfZl2MGwtDNsE8yNhFI7L4FYqrdXoxskUD4
         2v4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=uLAw64SgNj9P7bjFQ8ksTIv+IschIl15sDWl4fdIudk=;
        b=ZXrsAiSzT9VgM7xFXk7wRXJ9sTm4jugYMXdmRjUTvHLUoRIhA4wVB8urizId62zD4N
         3IwWOeAkdyn3CV1VdsDtT3//QQzlPJPDMhTcWmndp5x1q+shZNnTZ+zr2UXjqtfp+IQy
         i/CC96nz/JdtRyeQcuuu2E0sRPuGtm2HQS32/W1OSk/j67ro5JuturE3l60GI3eAErIQ
         juKcq1FkSoa1ZptdNtwvHAeoCsODWk+xYJ7482dOt0iBDzXLnvyNtdv8Cu+iWj8U39pK
         gzqc55HAkOLs9DA1XoY4AZAk4ukWT5datJL1zIkkW8j+NK1zsN+pLDhCVPXBDkiBBGeR
         yOAQ==
X-Gm-Message-State: AHPjjUggPstF3ddWVv90GHyhgyDCWvy2H2PayfUzCanPOBAjPUvlH1u4
	tEGuVRCI8pmZwVTDmfg=
X-Google-Smtp-Source: ADKCNb46axCUq/z6drbejNHFfiQ05USc3K2z/9GI4sk4XKQAvl/vQuyaVJT2LG+aOeOKfBI9ulBHng==
X-Received: by 10.84.128.15 with SMTP id 15mr23243513pla.232.1505378122124;
        Thu, 14 Sep 2017 01:35:22 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id i63sm31727403pfk.34.2017.09.14.01.35.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 01:35:21 -0700 (PDT)
Date: Thu, 14 Sep 2017 14:05:16 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 4/4] Staging: vc04_services: Remove trailing whitespace
Message-ID: <68b33848437cf19e295892e93082e5b94733d4d3.1505377440.git.meghana.madhyastha@gmail.com>
References: <cover.1505377440.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1505377440.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Found by checkpath.pl

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v2:
 -None

Changes in v3:
 -Mention the changes across versions

 drivers/staging/vc04_services/interface/vchi/vchi.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index a1c3371..ad8f542 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -159,7 +159,7 @@ typedef struct service_info_tag {
 extern "C" {
 #endif
 
-extern /*@observer@*/ VCHI_CONNECTION_T * vchi_create_connection( 
+extern /*@observer@*/ VCHI_CONNECTION_T * vchi_create_connection(
 	const struct opaque_vchi_connection_api * function_table,
 	const VCHI_MESSAGE_DRIVER_T * low_level);
 
-- 
2.7.4


