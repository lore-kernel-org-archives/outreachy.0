X-GM-THRID: 7016473009259020288
X-Received: by 2002:a05:6512:717:: with SMTP id b23mr8807523lfs.191.1633680870101;
        Fri, 08 Oct 2021 01:14:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:5453:: with SMTP id y19ls464447ljd.0.gmail; Fri, 08 Oct
 2021 01:14:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzoq5l5nAZ5AWQutnxbiye/iqeDd5BHsgNWTfK9rm7WQI/B6KA94S98FcbbZFjof+x/RdlM
X-Received: by 2002:a2e:5702:: with SMTP id l2mr2090860ljb.370.1633680867893;
        Fri, 08 Oct 2021 01:14:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633680867; cv=none;
        d=google.com; s=arc-20160816;
        b=Tk1uAnMVZQyz/0MWYLqXV1LcZNUxTEtrvkm1T2Rk9xVDGKb5bUGQFHUIBlcBEnUyoC
         YsEVPEGW0w8sN25WVE7X/7vxepWRlxjzzAfqLwvOLWykwSlHxI+1qu4CAAFJar1Bv+fO
         ew8xhYkevEbRQlhE8p2PAA8XFI1/WwfMyaAjTOHwXpX66/QfKgMCzQDrAv3Y2gIG0za/
         SuTHIbzuho/BgYndb9vWTyfgDplqRP+DaKvjapXzzwmmGUEMTH0XM8kclvf75/6LZyHk
         caujB1yZOvMH+jP9lk+HTyluLuTb6mkyRq7TM6QOJJUHftFeWisZrvp88cA1nsSKUaSX
         k3uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=qSGO2Vb4wQd7Y/U0ZFig6TyL8K2CwMJG9mLQ+gJ1xa8=;
        b=sTAh/LCyHq96y3hkX9hJnr2RsrOPtXgRPJeRHVGvS4amqsE80i2SNWBQd6eTVH5ofd
         J7VRm+J6W/ObFZDY9cVzwz7E5E2nqeLX9MT9RhBcaB+cxnnFC0WNu2wlFOzDJPXihRps
         OBTd0pJyonkHpYJGgJZu6nHEWeH/legf2b6SjFRnlJkH1juAeYbta7kyBph24NueBbeT
         6JPgdzLXGi1rQs0RLvBaLNE2PmwZ5Jt1iuDFwlaKgVdJxCudLNrAmFp/DOq8Nc1ZU/F1
         4kCxZoBSvEx2F3kYBoabYNHykR4iZ/vV2GhIchRLA/XaNMnrrbDrHsaVc2osNAINz7J3
         o2tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b=KUzermu5;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 2001:888:0:108::2b as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb2-smtp-cloud8.xs4all.net (lb2-smtp-cloud8.xs4all.net. [2001:888:0:108::2b])
        by gmr-mx.google.com with ESMTPS id u26si118322ljg.7.2021.10.08.01.14.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Oct 2021 01:14:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 2001:888:0:108::2b as permitted sender) client-ip=2001:888:0:108::2b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b=KUzermu5;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 2001:888:0:108::2b as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=xs4all.nl
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
	by smtp-cloud8.xs4all.net with ESMTPA
	id Yl1KmPJU5x7rIYl1OmAPFR; Fri, 08 Oct 2021 10:14:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
	t=1633680866; bh=qSGO2Vb4wQd7Y/U0ZFig6TyL8K2CwMJG9mLQ+gJ1xa8=;
	h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
	 Subject;
	b=KUzermu50TAuTNrs/eTH9/gmo/2naKGfi/HvyrvuSlLFsNAnMUGW7fzA0XOPm8U3K
	 +LyJFBszBRlc9Sk3SrdcmGBkG95SOe4DvarE1apg7OZaQaaYqRMk5WoN486He/3rB0
	 P4yH5+pos5DK04p2yE2dXs643VNQEAivHhXe6DbeRr0FCM0NddCrULMKb01lNHtqRf
	 DSTJ1rP/oOfO1pnh+q9djNf4UqlD5e7rutGrnXC0i68c4nZV3xgNyB0uiNAGBCOMwm
	 EammxIuDJ4cAAalPDe3jweYJxlOJ4eAsQMGlm0jPQ339OWXgg9vCd/SRVk6DCFjX5N
	 Rzt3O/EfnAezw==
Subject: Re: Outreachy Patch Restrictions
To: Alison Schofield <alison.schofield@intel.com>, gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
References: <20211007234651.GA393313@alison-desk>
 <20211008011459.GA393580@alison-desk>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <cb4e6a98-5f41-7cc3-15de-0b3c7d8ac3cc@xs4all.nl>
Date: Fri, 8 Oct 2021 10:14:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211008011459.GA393580@alison-desk>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4xfOfHIk0TfCgvttlz56alY6XrPHmwefSON4geHuP6hhsEm5B0RKuu4kOraxx8M6GK7HUmVs1M8bmz2/PNNVyi0kpmywAvZNDJkht58kYSCGAXmLoizrL3
 7uIkAAlJqmaOOCvs4cb3F55RhUAb7q+4OJw4zZHBpFZJ08X9oHPw9IJCDPU/RNcRvL2IMv+0aGorJMpwL5hohWdhSXJctRq+G1s3ERRYwYWCEKd7i7goc30z
 FV3vuVu9yh6x3ndDuqOLH92NdnFoLV/oq6U2NC0iXRSBBFBz7zPUHlTB6UDn6zdx

Hi Alison,

On 08/10/2021 03:14, Alison Schofield wrote:
> On Thu, Oct 07, 2021 at 04:46:52PM -0700, Alison Schofield wrote:
>>
>> Hi Greg,
>>
>> We are about to kick off the next contribution period for Outreachy Interns.
>> (October 8 - November 5)
>>
>> I found this note and would like to know if this restriction still stands?
>>
>>>> Please avoid sending patches for the drivers/staging/media directory
>>>> as Greg can't pick them in his tree during the contribution period.
> 
> Hans,
> 
> Just read through some more backlog and see that you (Hans) welcomed these
> patches in the last round. If you are still able to support these
> patches, I'll drop this restriction.

I suggest we narrow the restriction: I can handle patches for drivers/staging/media,
but not for drivers/staging/media/atomisp. Last time reviewing patches for atomisp
took up way too much time for very little gain.

Regards,

	Hans

> 
> Thanks!
> Alison
> 
>>
>> Is there anything else contributors should be aware of for this round?
>>
>> Thanks for your support,
>> Alison


