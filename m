X-GM-THRID: 7018560405884633088
X-Received: by 2002:a2e:95c6:: with SMTP id y6mr609516ljh.201.1634145452802;
        Wed, 13 Oct 2021 10:17:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:2204:: with SMTP id i4ls576632lji.4.gmail; Wed, 13 Oct
 2021 10:17:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwiCUvU8NUN3EnkH9wELcA20hMpOiKZCDrZJo4WLqZfQquryyASiojopqMg4e/PduRQblgT
X-Received: by 2002:a2e:9bc2:: with SMTP id w2mr604031ljj.109.1634145450873;
        Wed, 13 Oct 2021 10:17:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634145450; cv=none;
        d=google.com; s=arc-20160816;
        b=B29mXC9sAyO9+NQ2wC8MbFtaaFe57pN3QrU0UYIxWETG6FGAu0LUrLk1ldsUag5AgX
         +dCDbl/M5jqFubt5tk//lnwZ0RtlOgL4WkoJskYVZ1HoCPI6yfGANPMUVrEUGNUTXJ0K
         g836i7pCnVCZPhTQDgFesuDdNg6whrhA1LRu20s9aBn3zybK4GXJYx0UhWoKpz65rRAC
         GBmnIXhhPpzNgX/Jp7AtciaE6UwYXtG9Pmu6ik4nY2AkDLcglsyd0gz0GNr4MCt6VG7B
         hQOl0GL+mpn27vXE+1Na3iYhgvT33VhToNqfWcJuChmpENlZG8m1hDktzF6RuCvsYsWb
         Qfqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=0BSOGVKqoRyd3NM/sfpbvfSjcVy8X7PNl2uJ0hxn5jE=;
        b=BYbcm1xqAqji0qYvzYk6R7uIOTCVNdz6G8e+KJqEEyUQVPM14ZPE2luN76bMv5omFE
         NSJuQadHygH3YZ7qkVl+9poh1CaJCysFeNIbwJ16ittni32ta//FnU9wRzut3g+hkahT
         y1JONVmbwYOZBVG1ruck6afFaQ6hG7/+ZobekYNhdZJ3IFK5WRx3DH3qFycLEM48kXto
         KElOr27/D2MhfYgEsCNOG8/4FC0hPRNaAvQ8+3JnU9yGKN0p8Vqr5Uc5riFjg4HjBRRo
         Vmn86DdS3WoO2aGrF0CrasCx97Q9oNAbynEI3NopSKWlUQKWFc2UzIa9h+0N+rNYjX90
         pxlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <alison.schofield@intel.com>
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id z21si9522ljn.1.2021.10.13.10.17.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Oct 2021 10:17:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="214425637"
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; 
   d="scan'208";a="214425637"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Oct 2021 10:17:28 -0700
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; 
   d="scan'208";a="570912517"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Oct 2021 10:17:27 -0700
Date: Wed, 13 Oct 2021 10:25:34 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: kushal kothari <kushalkothari285@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: Outreachy applicant 2021 - Interested in
 the project : Create memblock simulator
Message-ID: <20211013172534.GA421414@alison-desk>
References: <CALtHPQvouXM=mvNH=m6dZ70BkhsksCSyS+F5kyb7NENa8-Knww@mail.gmail.com>
 <CABpLfoj-C-E3JhNkz1w7foqsde+vnQvuxzjeDUke21QOdf+HKQ@mail.gmail.com>
 <CALtHPQuOcvDcDU4PXBtQhaqt1BWtsrqWwZFVbF=dhhw1WnWmMQ@mail.gmail.com>
 <YWbve+s/LkX+sAo5@kernel.org>
 <20211013154012.GA421014@alison-desk>
 <e97abd31-41ed-464d-8025-e1e830733ef6n@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e97abd31-41ed-464d-8025-e1e830733ef6n@googlegroups.com>

On Wed, Oct 13, 2021 at 09:12:49AM -0700, kushal kothari wrote:
> > The first patch tutorial has a section on get_maintainers.pl usage. 
> 
> Thank you. I sent the patch to the maintainers. Unlike GitHub, this was new 
> to me.

Hi Kush,

I don't see a patch on this mailing list yet. 
Maybe you ommitted outreachy-kernel@googlegroups.com
or maybe my mail is slow.

If you left out, please send a v2 and include this group.
See the tutorial for how to add a changelog when revising a patch.

outreachy-kernel@googlegroups.com needs to be 'cc on every patch to be
considered for this program (in addition to the usual maintainters.)

Thanks,
Alison


> 
> Also, for any participant, after fixing the TODO and if facing with this 
> issue: this blog 
> <https://vthakkar1994.wordpress.com/2017/01/21/sending-patches-with-the-git-send-email/> will 
> be helpful.
> 
> 
> On Wednesday, October 13, 2021 at 9:02:11 PM UTC+5:30 Alison Schofield 
> wrote:
> 
> > On Wed, Oct 13, 2021 at 05:38:51PM +0300, Mike Rapoport wrote:
> > > (added outreachy-kernel <outreach...@googlegroups.com>)
> > > 
> > > Hi,
> > > 
> > > Please 'cc the outreachy-kernel group for process questions, they may be
> > > relevant for other participants.
> > > 
> > > On Wed, Oct 13, 2021 at 07:53:13PM +0530, kushal kothari wrote:
> > > > Hii,
> > > > I need your help with the understanding of the patch.
> > > > I fixed the code and created a small patch .And at the end while 
> > submitting the
> > > > patch I am stuck to whom should I send my patch to ?
> > > > "To whom should the emails be sent (if anyone)?"
> > > > 
> > > > So, Should I mail it this to all the maintainer which gmail can be 
> > found when
> > > > running the script along with you
> > > > git show HEAD | perl scripts/get_maintainer.pl --separator , 
> > --nokeywords
> > > > --nogit --nogit-fallback --norolestats --nol
> > > > 
> > > > Or am I missing something?
> > > 
> > > The simplest way to find out who should get the patch is indeed to use
> > > scripts/get_maintainer.pl. Depending on your setup, the script output 
> > can
> > > be integrated with git send-email or mutt, but sometimes it is usefull to
> > > review the addresses and edit the recipients list by hand.
> > > 
> > > Please also 'cc the outreachy-kernel group when you post your patches.
> > > 
> > > There are more details about how to select recipients here:
> > > 
> > > 
> > https://www.kernel.org/doc/html/latest/process/submitting-patches.html#select-the-recipients-for-your-patch
> > > 
> >
> > The first patch tutorial has a section on get_maintainers.pl usage.
> >
> > > > This is my first time submitting a patch .Can you please help me with 
> > this? to
> > > > whom to submit the patch? 
> > > > 
> > > > On Tue, Oct 12, 2021 at 5:29 PM Mike Rapoport <mike.r...@gmail.com> 
> > wrote:
> > > > 
> > > > Hi Kush,
> > > > 
> > > > On Tue, Oct 12, 2021 at 8:25 AM kushal kothari
> > > > <kushalko...@gmail.com> wrote:
> > > > >
> > > > > Good Morning Mike,
> > > > >
> > > > > My name is Kush from Mumbai, India. My Outreachy initial application 
> > is
> > > > accepted. I am very much interested in the topic "Create a memblock
> > > > simulator" . I hope, I am not connecting with you late for this 
> > Outreachy
> > > > project.
> > > > 
> > > > It's not too late :)
> > > > 
> > > > > My previous work and interest in this topic:
> > > > >
> > > > > My previous internship(i.e.Summer ISCAS 2021) was with Apache Apisix
> > > > under Apache Software Foundation. The program was almost similar where
> > > > students connect with mentors and work remotely(similar to 
> > Outreachy/GSoC).
> > > > Though the main task there was to create a packaging tool(adding 
> > support of
> > > > Ubuntu/CentOS/Fedora) etc [Fedora commit hasn't been merged yet]. 
> > Therein,
> > > > I worked majorly with Makefile, Docker Shell Scripting, etc. Also, I 
> > have
> > > > understanding about Linux kernel development. So my tech stacks are 
> > very
> > > > much aligned with the requirements of the project.
> > > > >
> > > > > As the first task mentioned in the Outreachy project contribution
> > > > information of ours -> I also went through complete Linux kernel 
> > tutorials
> > > > installing all the prerequisites, configuring mutt and sent you a null
> > > > patch, and did all other setups as said in the tutorial.
> > > > 
> > > > I believe the next task for applicants wishing to participate in Linux
> > > > kernel project is to upstream a couple of cleanup patches.
> > > > As you've gone through the setup of the environment, it should not be
> > > > a problem :)
> > > > 
> > > > > My Github: https://github.com/Kushal-kothari
> > > > 
> > > > --
> > > > Sincerely yours,
> > > > Mike.
> > > > 
> > > 
> > > -- 
> > > Sincerely yours,
> > > Mike.
> > > 
> > > -- 
> > > You received this message because you are subscribed to the Google 
> > Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send 
> > an email to outreachy-kern...@googlegroups.com.
> > > To view this discussion on the web visit 
> > https://groups.google.com/d/msgid/outreachy-kernel/YWbve%2Bs/LkX%2BsAo5%40kernel.org
> > .
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/e97abd31-41ed-464d-8025-e1e830733ef6n%40googlegroups.com.


