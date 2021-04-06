X-GM-THRID: 6945343933741268992
X-Received: by 2002:ac2:5b9b:: with SMTP id o27mr21463918lfn.143.1617716749260;
        Tue, 06 Apr 2021 06:45:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls431539lff.3.gmail; Tue, 06
 Apr 2021 06:45:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzV1jyqHOsLXLRh61JtRp+tJXTC+c9V5vuWue4S7FhFeQDVBQdI+y89wAefvfAHDregr4rL
X-Received: by 2002:a19:7602:: with SMTP id c2mr3139306lff.66.1617716747424;
        Tue, 06 Apr 2021 06:45:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617716747; cv=none;
        d=google.com; s=arc-20160816;
        b=TbMZoxgWl/RQ17Ttpz3Pj6oufvKUghflGt3X0BlvzUcaSjB+HDpU+NtWkeD2RhNYMn
         b2OYB++t90g4MFPKuvoYPsMEbD7GXfRc8e05veKuw8vMCDc6QDtzICNg566m/eX51MYN
         kVRsMVU2agmjnJpRwfYrokisEzmLO/AxFhinRfRZZksXxZcdl8PX1NZmblpDQnH6xV0v
         J9mdsKVuxJdiHTeRs55fSj/w8fxU1mPk7vqR0bAQ5mkhLLUqpMO+TnaUav1aF/tmoXX7
         Yr4AtWlGRIqAfDsup0Q1kDOpVyt03bmghjKMoEaxF5OauNPTdT79muGA1lCdLDad6imr
         0BBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:cc:references:to:subject
         :dkim-signature;
        bh=driY7KRhwzOZzpfXySspmK6SWNIpxX3jWI7v/MvVp80=;
        b=Hybff8h6yJYzxC0NZVv0qSCHGGXkWUpZlVoRCSYUuyCnT7NZnWkW2TMkPBACJnlcRw
         vDcTTW+mJqXxPF5B4R1WuqLkFQGsniIpDdK7RJ/TqwVQoaNnMVKU+aI1Zc3I35eutHVM
         pjXrZYMMCWpx5JdJIc5EAsQ8/ld2pSHBeCOxZ2tX6qNo5aHey5BRrvdwJgWu8kdENK+Q
         6FKOPvq3eJ5OfmBmWyONahHPDqE8TpPE9eY6dm/ouoLvFcsROVEFxJEfxgk9Uco+Ce57
         mdSkits+GkWWRX5m/K/jRBLmF7xc1Vi96uEEmwjjTSLPQSOh+97gdvd8Tgv549RkcmCD
         pk3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b=vMi8kT6p;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.22 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb1-smtp-cloud9.xs4all.net (lb1-smtp-cloud9.xs4all.net. [194.109.24.22])
        by gmr-mx.google.com with ESMTPS id f21si1632440ljg.6.2021.04.06.06.45.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 06:45:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.22 as permitted sender) client-ip=194.109.24.22;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b=vMi8kT6p;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.22 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
	by smtp-cloud9.xs4all.net with ESMTPA
	id Tm1Xl5ZNn43ycTm1alO6BZ; Tue, 06 Apr 2021 15:45:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
	t=1617716746; bh=driY7KRhwzOZzpfXySspmK6SWNIpxX3jWI7v/MvVp80=;
	h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
	 Subject;
	b=vMi8kT6p1lnUO8CIpweOHp3Fv0UfwPrI7Lj7SrmtDRDmDGUbzP5rxf+Sj/R8Mde7Y
	 KmFQ1NvTf43pERLr5BcWSYGNyMHtxWw//kpGUeeWufTQ1aktnGbxJc+AijLooS91Rg
	 Kjlf1Gvehb/LxAf/45RB/BnYHx0mPspkgsevY+k7kDL9oKLJeOqf3h5ySe9J2mMNnT
	 v1QcEnCdyrJCvkEOZewRNRbwv66WoKzl+JRTbvuHpM+iMuq9AoakhPifcnrrYEyA26
	 Ht7UuwQN+HbfxohdKyJWwAkDooo9lWUu+4r/XP2S22qtXURN1TiOpnOJCk/OJ1QtDJ
	 LUebXKBAfbUxQ==
Subject: Re: [Outreachy kernel] Outreachy contribution period is open -
 Welcome applicants
To: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
References: <CAK-LDb+xT==9wMXR8VOFpVygqfZ+o_v1NZsRpT1k0vtmQMAkKw@mail.gmail.com>
Cc: Helen Koike <helen@koikeco.de>, Greg KH <greg@kroah.com>,
 Outreachy <outreachy-kernel@googlegroups.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <0c23560d-f05f-008c-5cc1-48b06af8d0c0@xs4all.nl>
Date: Tue, 6 Apr 2021 15:45:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <CAK-LDb+xT==9wMXR8VOFpVygqfZ+o_v1NZsRpT1k0vtmQMAkKw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfEig/SIzgyMGj3E77e7fSUg8C0RgSDJeEMM1R3mZ0tpXNk906kEc9T6cO57CFT0WZXiPpYPxpG8bs8MWlAuzblKEjIVODBMEI/rjosN8rgLD12+hA32n
 mML5b826cmsSGX6PrUgP8+mCLgRFQZCLdvPrbN2MPgGOrAYmQkepjNPb/mTDhfgCUjk9ljBkuy9l5BhSWF6C0tDq9QmfShDZixiwQD0ciExAzs7rNU0upswP
 thdszZANdrgqb3WxaUtv4ljDHGIy2wVDnylWrgfNgkPag4vUbM7YO9/xQfFkJAjq

Hi Vaishali, Helen, Greg,

On 30/03/2021 09:21, Vaishali Thakkar wrote:
> Greetings potential Linux kernel Outreachy interns!
> 
> Please read this *entire* email, even if you have applied in the past.
> 
> 1. Our contribution period process works entirely via this mailing
> list. So, make sure that you read the emails I/Helen send over here in
> the next few weeks. To help you with Linux kernel's patch submission
> process we have a tutorial here:
> 
>     http://kernelnewbies.org/Outreachyfirstpatch
> 
> It is not necessary to contact any individual mentor before starting
> the tutorial. Feel free to ask your questions in this mailing list.
> That way you'll be able get quick answers with the issues you're
> facing.
> 
> 3. Please avoid sending patches for the *drivers/staging/media*
> directory as Greg can't pick them in his tree during the contribution
> period. Also, while you're required to submit patches in this mailing
> list, please make sure to use *get_maintainer.pl* as well. So that you
> can cc respective mailing list(s) and maintainers.

I missed this point. I am perfectly willing to be reviewer for
drivers/staging/media* patches. I noticed a bunch of otherwise perfectly
fine and useful patches for staging/media drivers, so it would be a shame
if they are skipped just because staging/media is maintained by the media
subsystem and not by Greg.

Is there any objection to that?

Regards,

	Hans

> 
> As specified in our tutorial, we require Outreachy applicants to first
> send a significant number of cleanup patches in drivers/staging before
> you can move on to the project specific tasks. This is to help you get
> some experience with the kernel community's patch practices.
> 
> 5. Once you have completed working on a good number of cleanup patches
> and they have been accepted by Greg, we encourage applicants to move
> on to complete some small tasks outlined by the mentors. It’s
> preferable to CC the mentor when you are working on the task so that
> they don’t miss it. Small tasks for the projects can be found in the
> project detail here:
> 
>    https://www.outreachy.org/apply/project-selection/#linux-kernel
> 
> Note that you'll be able to see the detailed information about
> projects on Outreachy's website only if you have been informed by the
> organizers about passing an initial eligibility round. Community
> coordinators and mentors do not have any role to play in the initial
> application process of Outreachy. So, please email Outreachy
> organizers if you have any doubt related to eligibility or the initial
> application process.
> 
> 6. Please record recording your contributions on Outreachy's website
> for the each project you are planning to submit an application. Keep
> editing your 'project contribution' on Outreachy's website based on
> your accepted patches links and project-specific completion of tasks.
> 
> 7. Make sure to add your project preferences under the question
> 'Community-specific Questions' in the application.
> 
> Applicants should also join the #outreachy IRC channel on
> irc.gnome.org, and the #kernel-outreachy channel on irc.oftc.net.  If
> you're having trouble with IRC, please ask for help in this mailing
> list.
> 
> If you’ve applied in the Outreachy before, you’re still required to
> send a few staging driver cleanup patches to re-familiarize yourself
> with the process before you start to work on tasks.
> 
> There is a tips section at the end of the tutorial to outline what
> behaviors we look for in potential Outreachy interns. I hope this will
> give more insight into our selection process.
> 
> All the best!
>  ---
> Vaishali Thakkar and Helen Koike
> Outreachy Linux Kernel Co-coordinator
> 


