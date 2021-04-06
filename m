X-GM-THRID: 6945343933741268992
X-Received: by 2002:a1c:7706:: with SMTP id t6mr4647223wmi.47.1617721124925;
        Tue, 06 Apr 2021 07:58:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:58f0:: with SMTP id f16ls12528485wrd.0.gmail; Tue, 06
 Apr 2021 07:58:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx4YCo7Gr8oncHqiM/x4c2+i79dzH9c8kqWGYZDdn2AKnLbwKf/VY1Z5VxNtBWjvC9C25ll
X-Received: by 2002:adf:e7c2:: with SMTP id e2mr37053578wrn.338.1617721123332;
        Tue, 06 Apr 2021 07:58:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617721123; cv=none;
        d=google.com; s=arc-20160816;
        b=Z9/JsNXTYzkOMPU+AOz38DI5eZPhaP/wYMe4nng41FOb45j4UtGcfCHEU6UVW/sL8D
         Fl6lNC+RDg9Mk5kDd9XLtuAo+N6iM6dkHkkavJREc+dQrpzHPJLOE6TIBuSNfW9eqWAB
         JXaihZXoH/IOa/+1Ugw1Gb6LcdYdpPZw4eh6bx+0XZw0a4CFvdHmgZ6qD2Rdt6qPoFm8
         3t7K2VD/KDb9zTGhndErY++r+wDa58UqVgwtm4d4rgAITrQscGv6fWaXMrpc042q4kUT
         FAiZCrAP0zQdlGCSj8NTXCKIUjg7IfZUOby8j10tXt9endf0zT+9sv6udzYz3r5cG6EW
         2gTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=AfBvfZEhgAZ5Aa1G763G9he2nc0plLb85UuQev7nM7w=;
        b=DtbPNdayUdcHb5ddBeYPnR8dPTVUP8eDOAczTvmtpkWVuOD0pQA3usZOttTA9M+7cD
         qHNwbaVP3uUivtPsud9cLjRoM4xWRv4DDjjTpMJUKhBTg/m59InOk92fqhiG1rxyh57F
         8Ghzc2pAQ7AJPdk4bFPYtRLB/yTAr/0Kh8qtR9LD9XWppudulYE5He5Yau2ElM73HNE+
         wQfxTje5kKncOHh+KT4MNB4a1DB1DKEHvCP/YMYEZLYBpl1ZPpw7rw4guOhEd9J82lsv
         AR21JtF7szhsXB/0lJgnZHte10EFcC5JvXeg5PMEhx88CCrtcoBEzxHQpVYXD7OESbOr
         9rcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b="uI+3qu/j";
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.26 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb2-smtp-cloud9.xs4all.net (lb2-smtp-cloud9.xs4all.net. [194.109.24.26])
        by gmr-mx.google.com with ESMTPS id r11si2662613wrm.1.2021.04.06.07.58.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 07:58:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.26 as permitted sender) client-ip=194.109.24.26;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b="uI+3qu/j";
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.26 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
	by smtp-cloud9.xs4all.net with ESMTPA
	id TnA7l64Bs43ycTnAAlOIOb; Tue, 06 Apr 2021 16:58:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
	t=1617721123; bh=AfBvfZEhgAZ5Aa1G763G9he2nc0plLb85UuQev7nM7w=;
	h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
	 Subject;
	b=uI+3qu/jOTgt3UYYn5Degb6zjGswtdz1n4QgtX3W/mc9gutUSIvPPgnbWimADTXcE
	 qtUdVbbtpc+fEH2Nixh/tY+3hvYW6FViEU+N0wByitn5/05/wsZW25wQecTFHmaCcf
	 izJ6yDHViR+G1hZSSMzts7u9LqRKj65BHp5c43uOveIBoCJwBf/Ap1XcgdpE0t9p5z
	 9azd+cDqjoPss8+Qw2wlc5c2vpl5NpgDaaTr5Fb9KTBOPbTucnUPBgLUX195HDIkof
	 51HqIfoBqF1rLXD7tFufvtGqm2rbutmGusRLtsdRjsAIpZPSJEFpI0RL70+zM8089C
	 vVKHqFGt0F9EA==
Subject: Re: [Outreachy kernel] Outreachy contribution period is open -
 Welcome applicants
To: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Cc: Helen Koike <helen@koikeco.de>, Greg KH <greg@kroah.com>,
 Outreachy <outreachy-kernel@googlegroups.com>
References: <CAK-LDb+xT==9wMXR8VOFpVygqfZ+o_v1NZsRpT1k0vtmQMAkKw@mail.gmail.com>
 <0c23560d-f05f-008c-5cc1-48b06af8d0c0@xs4all.nl>
 <CAK-LDbLiphu1LBNFf2_DnvQhfivoHw-P=fDqJGi5EzWJQ=8CGg@mail.gmail.com>
 <94ed8f8e-46bf-7d80-becd-3e01e369eaa4@xs4all.nl>
 <CAK-LDbJZwTjoiB3pi60Uknv9qRGmofBNGKVVp7bKRSHLqmMdTg@mail.gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <b75f6b74-bc55-7efb-4351-e6388cab29f8@xs4all.nl>
Date: Tue, 6 Apr 2021 16:58:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <CAK-LDbJZwTjoiB3pi60Uknv9qRGmofBNGKVVp7bKRSHLqmMdTg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfCe6Hpxl+nZCYTnFS6CfCM4Br5cj2kS2bqIXut0vSo5Vo1IzAP7FoIvXerrc9sbU9rnyH1JBOKxy0pE16PuSZjPosl9OwxVxImqYn+W4kKfuR/zzRiIe
 r/ea/7BRyYLKZmciAsk5/663CrnBvT0jJTNu0ck2tXIM/0lHDSElRphLXgb862YyLk7yfkw+/Zn/tkSgbe5BTcrJec6y4+z47EZI3dmmKyKgjU0Mj+0vG7Az
 ACv2O9wNL3UvYvSTKWpy0CiGEGzyHCFKm4LR3vQIpGeoltP+CB59k2B5wTelFKv5

On 06/04/2021 16:45, Vaishali Thakkar wrote:
> On Tue, Apr 6, 2021 at 4:17 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>>
>> On 06/04/2021 15:56, Vaishali Thakkar wrote:
>>> On Tue, Apr 6, 2021 at 3:45 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>>>>
>>>> Hi Vaishali, Helen, Greg,
>>>>
>>>> On 30/03/2021 09:21, Vaishali Thakkar wrote:
>>>>> Greetings potential Linux kernel Outreachy interns!
>>>>>
>>>>> Please read this *entire* email, even if you have applied in the past.
>>>>>
>>>>> 1. Our contribution period process works entirely via this mailing
>>>>> list. So, make sure that you read the emails I/Helen send over here in
>>>>> the next few weeks. To help you with Linux kernel's patch submission
>>>>> process we have a tutorial here:
>>>>>
>>>>>     http://kernelnewbies.org/Outreachyfirstpatch
>>>>>
>>>>> It is not necessary to contact any individual mentor before starting
>>>>> the tutorial. Feel free to ask your questions in this mailing list.
>>>>> That way you'll be able get quick answers with the issues you're
>>>>> facing.
>>>>>
>>>>> 3. Please avoid sending patches for the *drivers/staging/media*
>>>>> directory as Greg can't pick them in his tree during the contribution
>>>>> period. Also, while you're required to submit patches in this mailing
>>>>> list, please make sure to use *get_maintainer.pl* as well. So that you
>>>>> can cc respective mailing list(s) and maintainers.
>>>>
>>>> I missed this point. I am perfectly willing to be reviewer for
>>>> drivers/staging/media* patches. I noticed a bunch of otherwise perfectly
>>>> fine and useful patches for staging/media drivers, so it would be a shame
>>>> if they are skipped just because staging/media is maintained by the media
>>>> subsystem and not by Greg.
>>>>
>>>> Is there any objection to that?
>>>
>>> Do you think they can be added to some media tree before the contribution
>>> period of Outreachy ends? We try to avoid this mainly because we don't know
>>> if any other maintainer will be able to do it during the timeline of Outreachy
>>> contribution period and applicants generally need to put the link to their
>>> accepted patches in the Outreachy application.
>>>
>>> For example, during each contribution period Greg picks up patches 3-4
>>> times in his staging-testing tree and applicants can add those links in the
>>> application. Also, because these are clean up patches and multiple
>>> applicants are working at the same time, if the patches are picked up early
>>> it helps them to avoid duplicating the work because then they can just rebase
>>> their local branches on top of staging-testing.
>>
>> I regularly collect cleanup patches for the media tree (say once a week) and
> 
> Ok, I didn't know that. It's great then.
> 
>> post a pull request for Mauro to merge in our media tree. Those patches are
>> updated in our patchwork and marked 'Under Review' until the PR is merged,
>> at which time they are marked 'Accepted'. I can guarantee that I will have
>> them in a weekly Pull Request. It might take longer for the PR to be actually
>> merged as that depends on Mauro's workload. Our tree is also frozen from roughly
>> rc7 until the next rc1.
>>
>> So for media patches would a link to our patchwork be sufficient? If the patch
>> state is 'Under Review' or 'Accepted', then it's accepted by me.
> 
> Yes, I think links to patchwork should work. This will give more cleanup
> opportunities to applicants as well.
> 
> I'll send a separate email in the mailing list to inform the
> applicants about the
> same - as everyone may not end up reading this thread.

Our patchwork is here, BTW:

https://patchwork.linuxtv.org/project/linux-media/list/

All patches posted to linux-media@vger.kernel.org end up there.

Regards,

	Hans

> 
>> Regards,
>>
>>         Hans
>>
>>>
>>>> Regards,
>>>>
>>>>         Hans
>>>>
>>>>>
>>>>> As specified in our tutorial, we require Outreachy applicants to first
>>>>> send a significant number of cleanup patches in drivers/staging before
>>>>> you can move on to the project specific tasks. This is to help you get
>>>>> some experience with the kernel community's patch practices.
>>>>>
>>>>> 5. Once you have completed working on a good number of cleanup patches
>>>>> and they have been accepted by Greg, we encourage applicants to move
>>>>> on to complete some small tasks outlined by the mentors. It’s
>>>>> preferable to CC the mentor when you are working on the task so that
>>>>> they don’t miss it. Small tasks for the projects can be found in the
>>>>> project detail here:
>>>>>
>>>>>    https://www.outreachy.org/apply/project-selection/#linux-kernel
>>>>>
>>>>> Note that you'll be able to see the detailed information about
>>>>> projects on Outreachy's website only if you have been informed by the
>>>>> organizers about passing an initial eligibility round. Community
>>>>> coordinators and mentors do not have any role to play in the initial
>>>>> application process of Outreachy. So, please email Outreachy
>>>>> organizers if you have any doubt related to eligibility or the initial
>>>>> application process.
>>>>>
>>>>> 6. Please record recording your contributions on Outreachy's website
>>>>> for the each project you are planning to submit an application. Keep
>>>>> editing your 'project contribution' on Outreachy's website based on
>>>>> your accepted patches links and project-specific completion of tasks.
>>>>>
>>>>> 7. Make sure to add your project preferences under the question
>>>>> 'Community-specific Questions' in the application.
>>>>>
>>>>> Applicants should also join the #outreachy IRC channel on
>>>>> irc.gnome.org, and the #kernel-outreachy channel on irc.oftc.net.  If
>>>>> you're having trouble with IRC, please ask for help in this mailing
>>>>> list.
>>>>>
>>>>> If you’ve applied in the Outreachy before, you’re still required to
>>>>> send a few staging driver cleanup patches to re-familiarize yourself
>>>>> with the process before you start to work on tasks.
>>>>>
>>>>> There is a tips section at the end of the tutorial to outline what
>>>>> behaviors we look for in potential Outreachy interns. I hope this will
>>>>> give more insight into our selection process.
>>>>>
>>>>> All the best!
>>>>>  ---
>>>>> Vaishali Thakkar and Helen Koike
>>>>> Outreachy Linux Kernel Co-coordinator
>>>>>
>>>>
>>>> --
>>>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>>>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>>>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/0c23560d-f05f-008c-5cc1-48b06af8d0c0%40xs4all.nl.
>>>
>>>
>>>
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/94ed8f8e-46bf-7d80-becd-3e01e369eaa4%40xs4all.nl.
> 
> 
> 


