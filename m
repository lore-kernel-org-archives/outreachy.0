X-GM-THRID: 6465297812332478464
X-Received: by 10.176.21.100 with SMTP id p33mr12243406uae.72.1505369610535;
        Wed, 13 Sep 2017 23:13:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.82.21 with SMTP id g21ls25213iob.39.gmail; Wed, 13 Sep
 2017 23:13:29 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCPogCMyIaSpKK9xgR2TDkQnhYQz/NYh1js7l+XgqGCMq5iPu/Y0rtHeKntMn9UPB8IbtbE
X-Received: by 10.55.165.201 with SMTP id o192mr10668173qke.39.1505369609498;
        Wed, 13 Sep 2017 23:13:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505369609; cv=none;
        d=google.com; s=arc-20160816;
        b=dM1YdfiTDh4Fw1yJ6BshTJae1OQ/T/zmAAoHlfFh8aJzso1eHdaxY931HbjfJYEgES
         mAD6l4Sl/kp0c893oE/1ZWCXkmiD0nnboagBM05j1RBe6dLGlC0P4SfuaPNNJptI0fcV
         xn77YdzShSWESeUNjAL5K0K93pCsj2BAgskapTWBsy3pF6/J7AUwe5d2Ry1DZi4+Blaw
         jeypqsKGS3Ji/CvoZXUs6yIduQH5So8uQLQWb4AUxkW2aYQ/qNdkk34bBHy3IfeHS+jc
         Grs5YGxzpXMX+kJtzlEZrxHGUFG0elsIF0oLLDBbIhvSzX4d7w25CB5lgQW9cFaT5xLa
         IDnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:arc-authentication-results;
        bh=tpl8Wvxzul9lDTZzhV5nQCIks4M8ynR5k4gPNuBTkGo=;
        b=gsRqy8GQvWdvjZDxMKt6L6Oz1tCdR1x7/9eSJJV4Q5468SLjqPVLlInwgF/BFGJN6Y
         XG09U1mnVQD1kQ7mNJbGZur0R6yG1GERgPRZj5duIQ9+UTkZF4UoSigC102NQYbJwQCG
         IaJoKKpokZMSE/20X/LFdqVw4/XzK9fRVOCg+35TSzhK9FnbCVgDj4ssVNCsW/Wkycn8
         h7Sxx0nHtS1A8dubDgOzwt9rTAmGiKMmLzWBDZbe7J7XEEqGmj+qz7Fjuv9uSELL2pxa
         rn1FUq26J2NHesVCs4tiRePkIM3cO0+35lPLrPDyOpOiWhwKMFdFUVncDoPof2efS0Li
         cE6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=jani.nikula@intel.com
Return-Path: <jani.nikula@intel.com>
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id q65si1555591pfj.8.2017.09.13.23.13.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 23:13:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=jani.nikula@intel.com
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Sep 2017 23:13:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,391,1500966000"; 
   d="scan'208";a="900116311"
Received: from jnikula-mobl2.fi.intel.com (HELO localhost) ([10.237.72.62])
  by FMSMGA003.fm.intel.com with ESMTP; 13 Sep 2017 23:13:27 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Julia Lawall <julia.lawall@lip6.fr>, Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
Subject: Re: [Outreachy kernel] [PATCH v2 3/3] drm: Remove assignment in if condition
In-Reply-To: <alpine.DEB.2.20.1709132222370.2920@hadrien>
References: <20170913161531.GA3239@meghana-HP-Pavilion-Notebook> <alpine.DEB.2.20.1709132222370.2920@hadrien>
Date: Thu, 14 Sep 2017 09:13:04 +0300
Message-ID: <87k211iz9r.fsf@nikula.org>
MIME-Version: 1.0
Content-Type: text/plain

On Wed, 13 Sep 2017, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Wed, 13 Sep 2017, Meghana Madhyastha wrote:
>
>> Move the assignment so that it happens before the if
>> condition. This results in syntax which is easier to read.
>
> It would be nice to mention the merged conditionals in the log message.

Either way,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> julia
>
>> Found by checkpath.pl
>>
>> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
>> ---
>>  drivers/gpu/drm/drm_agpsupport.c | 31 ++++++++++++++++++-------------
>>  1 file changed, 18 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/drm_agpsupport.c b/drivers/gpu/drm/drm_agpsupport.c
>> index 993e486..737f028 100644
>> --- a/drivers/gpu/drm/drm_agpsupport.c
>> +++ b/drivers/gpu/drm/drm_agpsupport.c
>> @@ -100,7 +100,8 @@ int drm_agp_acquire(struct drm_device *dev)
>>  		return -ENODEV;
>>  	if (dev->agp->acquired)
>>  		return -EBUSY;
>> -	if (!(dev->agp->bridge = agp_backend_acquire(dev->pdev)))
>> +	dev->agp->bridge = agp_backend_acquire(dev->pdev);
>> +	if (!dev->agp->bridge)
>>  		return -ENODEV;
>>  	dev->agp->acquired = 1;
>>  	return 0;
>> @@ -200,12 +201,14 @@ int drm_agp_alloc(struct drm_device *dev, struct drm_agp_buffer *request)
>>
>>  	if (!dev->agp || !dev->agp->acquired)
>>  		return -EINVAL;
>> -	if (!(entry = kzalloc(sizeof(*entry), GFP_KERNEL)))
>> +	entry = kzalloc(sizeof(*entry), GFP_KERNEL);
>> +	if (!entry)
>>  		return -ENOMEM;
>>
>>  	pages = (request->size + PAGE_SIZE - 1) / PAGE_SIZE;
>>  	type = (u32) request->type;
>> -	if (!(memory = agp_allocate_memory(dev->agp->bridge, pages, type))) {
>> +	memory = agp_allocate_memory(dev->agp->bridge, pages, type);
>> +	if (!memory) {
>>  		kfree(entry);
>>  		return -ENOMEM;
>>  	}
>> @@ -272,9 +275,8 @@ int drm_agp_unbind(struct drm_device *dev, struct drm_agp_binding *request)
>>
>>  	if (!dev->agp || !dev->agp->acquired)
>>  		return -EINVAL;
>> -	if (!(entry = drm_agp_lookup_entry(dev, request->handle)))
>> -		return -EINVAL;
>> -	if (!entry->bound)
>> +	entry = drm_agp_lookup_entry(dev, request->handle);
>> +	if (!entry || !entry->bound)
>>  		return -EINVAL;
>>  	ret = drm_unbind_agp(entry->memory);
>>  	if (ret == 0)
>> @@ -313,12 +315,12 @@ int drm_agp_bind(struct drm_device *dev, struct drm_agp_binding *request)
>>
>>  	if (!dev->agp || !dev->agp->acquired)
>>  		return -EINVAL;
>> -	if (!(entry = drm_agp_lookup_entry(dev, request->handle)))
>> -		return -EINVAL;
>> -	if (entry->bound)
>> +	entry = drm_agp_lookup_entry(dev, request->handle);
>> +	if (!entry || entry->bound)
>>  		return -EINVAL;
>>  	page = (request->offset + PAGE_SIZE - 1) / PAGE_SIZE;
>> -	if ((retcode = drm_bind_agp(entry->memory, page)))
>> +	retcode = drm_bind_agp(entry->memory, page);
>> +	if (retcode)
>>  		return retcode;
>>  	entry->bound = dev->agp->base + (page << PAGE_SHIFT);
>>  	DRM_DEBUG("base = 0x%lx entry->bound = 0x%lx\n",
>> @@ -356,7 +358,8 @@ int drm_agp_free(struct drm_device *dev, struct drm_agp_buffer *request)
>>
>>  	if (!dev->agp || !dev->agp->acquired)
>>  		return -EINVAL;
>> -	if (!(entry = drm_agp_lookup_entry(dev, request->handle)))
>> +	entry = drm_agp_lookup_entry(dev, request->handle);
>> +	if (!entry)
>>  		return -EINVAL;
>>  	if (entry->bound)
>>  		drm_unbind_agp(entry->memory);
>> @@ -394,11 +397,13 @@ struct drm_agp_head *drm_agp_init(struct drm_device *dev)
>>  {
>>  	struct drm_agp_head *head = NULL;
>>
>> -	if (!(head = kzalloc(sizeof(*head), GFP_KERNEL)))
>> +	head = kzalloc(sizeof(*head), GFP_KERNEL);
>> +	if (!head)
>>  		return NULL;
>>  	head->bridge = agp_find_bridge(dev->pdev);
>>  	if (!head->bridge) {
>> -		if (!(head->bridge = agp_backend_acquire(dev->pdev))) {
>> +		head->bridge = agp_backend_acquire(dev->pdev);
>> +		if (!head->bridge) {
>>  			kfree(head);
>>  			return NULL;
>>  		}
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170913161531.GA3239%40meghana-HP-Pavilion-Notebook.
>> For more options, visit https://groups.google.com/d/optout.
>>

-- 
Jani Nikula, Intel Open Source Technology Center

