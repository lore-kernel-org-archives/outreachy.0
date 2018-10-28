X-GM-THRID: 6617138679585439744
X-Received: by 2002:a2e:854e:: with SMTP id u14-v6mr890099ljj.0.1540722208140;
        Sun, 28 Oct 2018 03:23:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:5988:: with SMTP id g8-v6ls676318ljf.10.gmail; Sun, 28
 Oct 2018 03:23:27 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fCPjp8b72o+feOqklcEJNRbzTlpjUfleVeLMthT3h/wINt6QanWt/et7mxtkTyx+O5ByCl
X-Received: by 2002:a2e:7316:: with SMTP id o22-v6mr922126ljc.19.1540722207134;
        Sun, 28 Oct 2018 03:23:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540722207; cv=none;
        d=google.com; s=arc-20160816;
        b=C1W+LfuJpGDfseKEdYBKI8AGeiGANRjyIpcevhcpe3IvnxmuTHCyh4J+JwsFyuq2MM
         RnY0B9Sn2XzLvygEwPQMrp2dx7zNPP/r2L/eZwloLUFPqV+Vjnj7AUHT1ouy6Bh/Kqdd
         CYQ8CH/KRm8tpkG1pkB4kPjwp5pkYBfVt2UI5L9NK+DfLXPeA4o1nyoyvY77EvK5tj/K
         77Djoc8OdYJt8xVlvEmK3hCOQNDGJaatMC17DEDi7aKJMvZ8q4ZAO4ovYoJLssbTuM22
         R4Abe5AEbehsJZjlc0nFTqwxHA4R9mus2LUsfB9c8C+gBo7t08Z19lLtp6aB3ltrqAqx
         c4cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=lluUxA9ZkblT0QBJTmm2xiMYuLvo2eVTRClRMxYzgh0=;
        b=jLKFsLcgKIcTLoKO+m1RttjP0fsO4MHyQXh6fOA+8FlnyqPDu8VKtYoc+vHXao26FZ
         NH1TfIzVhJ6AtRQ3k6mcDNrvs+au8T1zNfP7tbHAFxrhlDI5p+vw0zJ7/+/rxwbm3njd
         vVnudLjdbDPeBWWbKNnNQlbeTNGfe1NP0mBJhVJ5p0lh9+S836/ys6Z50m+mRZ3pI6nv
         48OXRfUN3dpmj5KjBEHq96fQMUiotalEQ8Nz2n7tBHv2euckE45e7I9F8nX35Mv9wxYs
         Ox8r/uAwaCBEK+rh51z2A2Lc1PnGig4HzOgHn1+N1ChYu4T6cwTdhkLxSBGjFeReYEjB
         oh6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.28 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb2-smtp-cloud7.xs4all.net (lb2-smtp-cloud7.xs4all.net. [194.109.24.28])
        by gmr-mx.google.com with ESMTPS id d14-v6si22385lfk.0.2018.10.28.03.23.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Oct 2018 03:23:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.28 as permitted sender) client-ip=194.109.24.28;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.28 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from [IPv6:2001:983:e9a7:1:5139:d121:18fb:2507] ([IPv6:2001:983:e9a7:1:5139:d121:18fb:2507])
	by smtp-cloud7.xs4all.net with ESMTPA
	id GiE8gAMBFw2L8GiE9gKHO5; Sun, 28 Oct 2018 11:23:26 +0100
Subject: Re: [Outreachy kernel] [PATCH vicodec 1/1] media: vicodec: Add empty
 callbacks to prepare for the request API
To: Julia Lawall <julia.lawall@lip6.fr>, Sasha Levin <sashal@kernel.org>
Cc: Dafna Hirschfeld <dafna3@gmail.com>, helen.koike@collabora.com,
 mchehab@kernel.org, outreachy-kernel@googlegroups.com
References: <fb11134ccd7459f5b88f277f52f40b6a1f901bc7.1540672323.git.dafna3@gmail.com>
 <20181027234134.GK2015@sasha-vm> <alpine.DEB.2.21.1810280625090.2450@hadrien>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <6cd221cc-d541-4691-b72a-18aca7ad163e@xs4all.nl>
Date: Sun, 28 Oct 2018 11:23:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1810280625090.2450@hadrien>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4wfOFpnJoqQogBcHN2/soFOiK9lFGyjGn4I3FZVJPfVEVFO4PzReCKRkeE0AoMbfRFWdFfEFNbDE3tjWbXZ22Jgk0wnb/VwPhh06rO+bdulrfrVgTRgis4
 1O2ejhDvQSzv2QMWsVoF/yfunI3SUzZSr7d5hjnSQKJBaw65T9p4cu4RyxjwYuG82bvL3JtSsJ3E/NMEvM79+CYICyXlIr3mvZa6SjTyUvP2SVQ/uXuFv5Zl
 ZiXSzgFutWGoIM3i/PGfmi6m5FO9hJf+KrKUwsFCIp5+rZ6/hflDTc9KkFMwBrHKWqGXqC6Vn9Fwi28r55XWv+uww/ADUerhwPtCQM2+qpoMRU3q4hKKGGNl
 z1yRhGvTiezX/YvoEDqalKKBooZZ9lYweJuZEGvL15tVNW4MLU6Ca8nsrVNxL63jM4OaJQvwsZQwBKh8YwFei+QWTq+5MQ==

On 10/28/2018 06:25 AM, Julia Lawall wrote:
> 
> 
> On Sat, 27 Oct 2018, Sasha Levin wrote:
> 
>> On Sat, Oct 27, 2018 at 11:37:19PM +0300, Dafna Hirschfeld wrote:
>>> Add the callbacks `_req_validate` `_req_queue` of the struct
>>> `media_device_ops` as empty functions.
>>> Those will be implemented later.
>>
>> Hi Dafna,
>>
>> In general, unless it's a very complicated functionality, we usually
>> don't add code that doesn't have any users.
>>
>> It's fine to do it as part of a patchset where the usage comes in later
>> patches, but in cases such as these where there are no users,
>> maintainers will usually not take the patch.
> 
> I guess she was asked to do this as a small task by the video people?

That's correct. This task is there to learn a bit about the new request API
framework that will be used in the actual project. We won't merge this code,
only review it.

Regards,

	Hans

