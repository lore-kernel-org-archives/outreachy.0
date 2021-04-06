X-GM-THRID: 6945343933741268992
X-Received: by 2002:a2e:8950:: with SMTP id b16mr19419091ljk.345.1617718667726;
        Tue, 06 Apr 2021 07:17:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls531060lff.3.gmail; Tue, 06
 Apr 2021 07:17:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxZs0c5+7xrW2zOGvzmKyPhEuK0sPjuCvqg5cxKufqZJgrLP0b4DaLR0uug6orZUJTVr5r7
X-Received: by 2002:a19:c34c:: with SMTP id t73mr3587965lff.81.1617718665647;
        Tue, 06 Apr 2021 07:17:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617718665; cv=none;
        d=google.com; s=arc-20160816;
        b=CwShBlYTD9kZOMhfCyoEMaf+K/kjrVYhugV08WbHr6+bPxlXB6Fx04NvoYGGGF3/lq
         VZsLHm+FH8VzO1tL4fjEtDrbn8cTLOhaBI3cHR02xFprhFYY/wx6Lpp+f0IdpltmVBki
         QT7cNZZBC2ZOK4770dr4xv5bumx6jN4xQjsNii4L4hslyw3XyJfGgL8xQqFWtjkHmmUM
         XBCb7/bHEzEvdNXhIzTsbZjhwevA14t0yZ0OkNhpTcUAfr2ZAaxLQXHVBKslYtAIYyVA
         R3asGx2duAX+AbxoihlTh057N4dT1EEUmlu08DVXHRRTpPleKkqonRol6N7Y9Sxe6dEs
         r0Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Qoj9m724emYBTxxX9rLt2e+UuFqFEhutDlrtPVa8pPs=;
        b=XWA3OdjbzXTvLg0lU62c4kXwmhTmCkes6iEDW7KrPeEwVxyHRj9y5buARwEq/BFPp1
         t5VLmvS0pcxRWF/GwE/w7ApDZ+0iPIx1mL+R294abHTbFQH2VjCq1qFS9Dg6VyT/SLnU
         nm9cckweO45jgkIOqr6BqMtenCMnpmuusFc8di8/fr20c+5Kr/qoWvHeIhqBxSYtW0da
         E80Z5jpnWS/5Dg4YsEs8Aw/umvqU9GRXtzGE0kuYuwDwimAyWS4YGrXWmNcYMTnyja3z
         xxrR7ITFDyIhBPn28P8D/q1qS6af4H7RYouhN/d1HDpnH47vT9vKfThVdniQB99SQ7R9
         s8nA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b="wNyGyx/v";
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.22 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb1-smtp-cloud9.xs4all.net (lb1-smtp-cloud9.xs4all.net. [194.109.24.22])
        by gmr-mx.google.com with ESMTPS id p18si1673630lji.8.2021.04.06.07.17.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 07:17:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.22 as permitted sender) client-ip=194.109.24.22;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b="wNyGyx/v";
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.22 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
	by smtp-cloud9.xs4all.net with ESMTPA
	id TmWTl5nGq43ycTmWWlOBle; Tue, 06 Apr 2021 16:17:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
	t=1617718665; bh=Qoj9m724emYBTxxX9rLt2e+UuFqFEhutDlrtPVa8pPs=;
	h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
	 Subject;
	b=wNyGyx/vIGCYR7UlZpZXP20qwjJXxpUH9QE2zGQKDkwuGR5xaXwJ6CfuZgA1/1hmy
	 ox1zE0wMLXib8NLUQG3jcQmg+BDsGGBGA9vQmKPcshjPe4X59LYyy1n6roWdi1oIGS
	 v/TczfElRr5dZsBT6ztGdaWIfC2Dg+7MkJUSX2TmEjS4YD/JSt7AiMB7tll67fcfe+
	 xBMVfa4rr+j9mT+vTpIv0fGOl/sdXqyUeViEm/XT1FAIL7OswhFZf4Gb3RHMAq2lP1
	 npaXBP/D8r2M9wfFMBwihFwWZaHIWCONutmdfisde4/cUur6OqA0N20HPXWEN0rTku
	 IGV5HG5itT1OQ==
Subject: Re: [Outreachy kernel] Outreachy contribution period is open -
 Welcome applicants
To: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Cc: Helen Koike <helen@koikeco.de>, Greg KH <greg@kroah.com>,
 Outreachy <outreachy-kernel@googlegroups.com>
References: <CAK-LDb+xT==9wMXR8VOFpVygqfZ+o_v1NZsRpT1k0vtmQMAkKw@mail.gmail.com>
 <0c23560d-f05f-008c-5cc1-48b06af8d0c0@xs4all.nl>
 <CAK-LDbLiphu1LBNFf2_DnvQhfivoHw-P=fDqJGi5EzWJQ=8CGg@mail.gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <94ed8f8e-46bf-7d80-becd-3e01e369eaa4@xs4all.nl>
Date: Tue, 6 Apr 2021 16:17:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <CAK-LDbLiphu1LBNFf2_DnvQhfivoHw-P=fDqJGi5EzWJQ=8CGg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfFJTL9ZEFRy3gP7ECLv6f2qn1UWT20Y5HRmpTxtQywTFmaiACGa/XTcO79ynXGbs9lfl3KMOnKy3fLXqHYbX+lVQ2Xmx0o/7NVmOxhXKHsQhxtIzzsTP
 igXcLNrtUbIRbYSYbMa6qQEjkhB0N5gAAYot6pU21XhwA9XTOUDMlnHY5w3s0WcZAfoWEqkTqrG/fi1D9tG7ZTlbGbgp8n2VzmDqlO4N4meWPb/HJ93Ppr5y
 Vpmf1f/UKKi6JUkrplEG+jRqAI4pPGMdu1pU1NR/L2mEnN8pg/dZlGio7Q6yrZ3t

On 06/04/2021 15:56, Vaishali Thakkar wrote:
> On Tue, Apr 6, 2021 at 3:45 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>>
>> Hi Vaishali, Helen, Greg,
>>
>> On 30/03/2021 09:21, Vaishali Thakkar wrote:
>>> Greetings potential Linux kernel Outreachy interns!
>>>
>>> Please read this *entire* email, even if you have applied in the past.
>>>
>>> 1. Our contribution period process works entirely via this mailing
>>> list. So, make sure that you read the emails I/Helen send over here in
>>> the next few weeks. To help you with Linux kernel's patch submission
>>> process we have a tutorial here:
>>>
>>>     http://kernelnewbies.org/Outreachyfirstpatch
>>>
>>> It is not necessary to contact any individual mentor before starting
>>> the tutorial. Feel free to ask your questions in this mailing list.
>>> That way you'll be able get quick answers with the issues you're
>>> facing.
>>>
>>> 3. Please avoid sending patches for the *drivers/staging/media*
>>> directory as Greg can't pick them in his tree during the contribution
>>> period. Also, while you're required to submit patches in this mailing
>>> list, please make sure to use *get_maintainer.pl* as well. So that you
>>> can cc respective mailing list(s) and maintainers.
>>
>> I missed this point. I am perfectly willing to be reviewer for
>> drivers/staging/media* patches. I noticed a bunch of otherwise perfectly
>> fine and useful patches for staging/media drivers, so it would be a shame
>> if they are skipped just because staging/media is maintained by the media
>> subsystem and not by Greg.
>>
>> Is there any objection to that?
> 
> Do you think they can be added to some media tree before the contribution
> period of Outreachy ends? We try to avoid this mainly because we don't know
> if any other maintainer will be able to do it during the timeline of Outreachy
> contribution period and applicants generally need to put the link to their
> accepted patches in the Outreachy application.
> 
> For example, during each contribution period Greg picks up patches 3-4
> times in his staging-testing tree and applicants can add those links in the
> application. Also, because these are clean up patches and multiple
> applicants are working at the same time, if the patches are picked up early
> it helps them to avoid duplicating the work because then they can just rebase
> their local branches on top of staging-testing.

I regularly collect cleanup patches for the media tree (say once a week) and
post a pull request for Mauro to merge in our media tree. Those patches are
updated in our patchwork and marked 'Under Review' until the PR is merged,
at which time they are marked 'Accepted'. I can guarantee that I will have
them in a weekly Pull Request. It might take longer for the PR to be actually
merged as that depends on Mauro's workload. Our tree is also frozen from roughly
rc7 until the next rc1.

So for media patches would a link to our patchwork be sufficient? If the patch
state is 'Under Review' or 'Accepted', then it's accepted by me.

Regards,

	Hans

> 
>> Regards,
>>
>>         Hans
>>
>>>
>>> As specified in our tutorial, we require Outreachy applicants to first
>>> send a significant number of cleanup patches in drivers/staging before
>>> you can move on to the project specific tasks. This is to help you get
>>> some experience with the kernel community's patch practices.
>>>
>>> 5. Once you have completed working on a good number of cleanup patches
>>> and they have been accepted by Greg, we encourage applicants to move
>>> on to complete some small tasks outlined by the mentors. It’s
>>> preferable to CC the mentor when you are working on the task so that
>>> they don’t miss it. Small tasks for the projects can be found in the
>>> project detail here:
>>>
>>>    https://www.outreachy.org/apply/project-selection/#linux-kernel
>>>
>>> Note that you'll be able to see the detailed information about
>>> projects on Outreachy's website only if you have been informed by the
>>> organizers about passing an initial eligibility round. Community
>>> coordinators and mentors do not have any role to play in the initial
>>> application process of Outreachy. So, please email Outreachy
>>> organizers if you have any doubt related to eligibility or the initial
>>> application process.
>>>
>>> 6. Please record recording your contributions on Outreachy's website
>>> for the each project you are planning to submit an application. Keep
>>> editing your 'project contribution' on Outreachy's website based on
>>> your accepted patches links and project-specific completion of tasks.
>>>
>>> 7. Make sure to add your project preferences under the question
>>> 'Community-specific Questions' in the application.
>>>
>>> Applicants should also join the #outreachy IRC channel on
>>> irc.gnome.org, and the #kernel-outreachy channel on irc.oftc.net.  If
>>> you're having trouble with IRC, please ask for help in this mailing
>>> list.
>>>
>>> If you’ve applied in the Outreachy before, you’re still required to
>>> send a few staging driver cleanup patches to re-familiarize yourself
>>> with the process before you start to work on tasks.
>>>
>>> There is a tips section at the end of the tutorial to outline what
>>> behaviors we look for in potential Outreachy interns. I hope this will
>>> give more insight into our selection process.
>>>
>>> All the best!
>>>  ---
>>> Vaishali Thakkar and Helen Koike
>>> Outreachy Linux Kernel Co-coordinator
>>>
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/0c23560d-f05f-008c-5cc1-48b06af8d0c0%40xs4all.nl.
> 
> 
> 


