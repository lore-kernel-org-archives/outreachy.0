X-GM-THRID: 6470359344407904256
X-Received: by 10.25.41.149 with SMTP id p143mr336867lfp.5.1506688175980;
        Fri, 29 Sep 2017 05:29:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.85.202 with SMTP id g71ls1136312lje.14.gmail; Fri, 29 Sep
 2017 05:29:34 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBFe72lJxykETijWD5gom05HuTW72No+nLtG7KgS1CSKl/NAvRErmb+E+DOOBxqTPLPNQlS
X-Received: by 10.46.66.81 with SMTP id p78mr376233lja.33.1506688174647;
        Fri, 29 Sep 2017 05:29:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506688174; cv=none;
        d=google.com; s=arc-20160816;
        b=FOj3muPgGYOHFTTcU44tUcuLNQK+MyTfQ2DsDCOMNP0LMsP8nEQm623kVCvc9rZyn3
         wK9T8LC8vgXxR3M3+lmNirWSd3sNqGIjpsO5RPySfPNt3vOw0+w2fmZszeKu1zCocjVZ
         jMznX0cQAl0bveqcrco4V+ovEJP8J/x6Qaz8zzksxyFj35gzRyhTeKj5P/fc6sFjwfuG
         pCBceMfu3a5aj9aVyYbh/xoGVFPer4a4tWj+9E9TsEg8Q/LXOzoC3VZ5oeawX3yo+VN6
         3+gVo0avd64wiQuG0EtKRPhvsRQOeVuBiwHdjjOTgx7ddwO0lhJXS+PZ0EWCoifMANzx
         u9wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:arc-authentication-results;
        bh=MoqL1/HcDXGVkhJgxZOAjDXfPmwMaCAmmfaPjyutZQo=;
        b=cJrAtlMIjsRXpA7bSqZ/4Y2NVW2jn9MNwAPfk/flfBeedC6MYUtdch4UDiYth+Bab0
         RZhgHHMVsZEQAn+8rq+H2mgvUwJUetMTHnyJDzdz4Ri5LiPoh6KzXIJM8SMf40yUTAhN
         RB6hBU5ylcXJyszD7jvLqVtsXfGOd3xuzZ4zWvzrQ9VV9yzgs4ULPhFixnTw2XYxJVln
         6oQEoog61Hjb8CK+XezlwBaLPaNtWYIFrZPVAhZDNkNlmpwcxZDVd4QrbegJgkiRyesX
         xluFKwD37mB8eisMcYNmv3Wscd2FJB6uH/3YdkEFak9ZJBC4DoE4Bh8GbBx9JOlQjblp
         rTQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id i83si180212lfl.6.2017.09.29.05.29.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 05:29:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:59606 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1dxuQ9-0000Xn-PO; Fri, 29 Sep 2017 14:29:33 +0200
Subject: Re: [PATCH] drm/armada: Remove unused #include <drmP.h>
To: Daniel Vetter <daniel@ffwll.ch>, Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Russell King <linux@armlinux.org.uk>, dri-devel@lists.freedesktop.org,
 outreachy-kernel <outreachy-kernel@googlegroups.com>,
 gregkh@linuxfoundation.org
References: <20170927073846.GA14352@Haneen>
 <20170929072528.bwfgitxajy3hlo3b@phenom.ffwll.local>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <d35426c9-d286-25b7-88be-94520e5f109f@tronnes.org>
Date: Fri, 29 Sep 2017 14:29:31 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20170929072528.bwfgitxajy3hlo3b@phenom.ffwll.local>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


Den 29.09.2017 09.25, skrev Daniel Vetter:
> On Wed, Sep 27, 2017 at 01:38:46AM -0600, Haneen Mohammed wrote:
>> Remove drmP.h as it is not needed anymore since nothing it
>> defines is used in these files.
>>
>> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> Applied, thanks.

drivers/gpu/drm/armada/armada_fb.c uses DRM_ERROR() which is defined in
include/drm/drmP.h. Doesn't that warrant an inclusion?

Noralf.

> -Daniel
>> ---
>>   drivers/gpu/drm/armada/armada_510.c   | 1 -
>>   drivers/gpu/drm/armada/armada_drv.c   | 1 -
>>   drivers/gpu/drm/armada/armada_fb.c    | 1 -
>>   drivers/gpu/drm/armada/armada_fbdev.c | 1 -
>>   drivers/gpu/drm/armada/armada_gem.c   | 1 -
>>   5 files changed, 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/armada/armada_510.c b/drivers/gpu/drm/armada/armada_510.c
>> index ad3d2eb..41a784f 100644
>> --- a/drivers/gpu/drm/armada/armada_510.c
>> +++ b/drivers/gpu/drm/armada/armada_510.c
>> @@ -9,7 +9,6 @@
>>    */
>>   #include <linux/clk.h>
>>   #include <linux/io.h>
>> -#include <drm/drmP.h>
>>   #include <drm/drm_crtc_helper.h>
>>   #include "armada_crtc.h"
>>   #include "armada_drm.h"
>> diff --git a/drivers/gpu/drm/armada/armada_drv.c b/drivers/gpu/drm/armada/armada_drv.c
>> index c993bcc..17bb675 100644
>> --- a/drivers/gpu/drm/armada/armada_drv.c
>> +++ b/drivers/gpu/drm/armada/armada_drv.c
>> @@ -9,7 +9,6 @@
>>   #include <linux/component.h>
>>   #include <linux/module.h>
>>   #include <linux/of_graph.h>
>> -#include <drm/drmP.h>
>>   #include <drm/drm_crtc_helper.h>
>>   #include <drm/drm_of.h>
>>   #include "armada_crtc.h"
>> diff --git a/drivers/gpu/drm/armada/armada_fb.c b/drivers/gpu/drm/armada/armada_fb.c
>> index 51839c1..a38d5a0 100644
>> --- a/drivers/gpu/drm/armada/armada_fb.c
>> +++ b/drivers/gpu/drm/armada/armada_fb.c
>> @@ -5,7 +5,6 @@
>>    * it under the terms of the GNU General Public License version 2 as
>>    * published by the Free Software Foundation.
>>    */
>> -#include <drm/drmP.h>
>>   #include <drm/drm_crtc_helper.h>
>>   #include <drm/drm_fb_helper.h>
>>   #include "armada_drm.h"
>> diff --git a/drivers/gpu/drm/armada/armada_fbdev.c b/drivers/gpu/drm/armada/armada_fbdev.c
>> index cf6bad1..a2ce83f 100644
>> --- a/drivers/gpu/drm/armada/armada_fbdev.c
>> +++ b/drivers/gpu/drm/armada/armada_fbdev.c
>> @@ -10,7 +10,6 @@
>>   #include <linux/kernel.h>
>>   #include <linux/module.h>
>>   
>> -#include <drm/drmP.h>
>>   #include <drm/drm_fb_helper.h>
>>   #include "armada_crtc.h"
>>   #include "armada_drm.h"
>> diff --git a/drivers/gpu/drm/armada/armada_gem.c b/drivers/gpu/drm/armada/armada_gem.c
>> index 49d40aa..190280e 100644
>> --- a/drivers/gpu/drm/armada/armada_gem.c
>> +++ b/drivers/gpu/drm/armada/armada_gem.c
>> @@ -8,7 +8,6 @@
>>   #include <linux/dma-buf.h>
>>   #include <linux/dma-mapping.h>
>>   #include <linux/shmem_fs.h>
>> -#include <drm/drmP.h>
>>   #include "armada_drm.h"
>>   #include "armada_gem.h"
>>   #include <drm/armada_drm.h>
>> -- 
>> 2.7.4
>>


