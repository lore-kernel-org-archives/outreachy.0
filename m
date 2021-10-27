X-GM-THRID: 7018981355604148224
X-Received: by 2002:a2e:544b:: with SMTP id y11mr12788996ljd.10.1635361961868;
        Wed, 27 Oct 2021 12:12:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:c74d:: with SMTP id x74ls625677lff.3.gmail; Wed, 27 Oct
 2021 12:12:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJysjBDIBZ53Jk+MQDAWs+mOhnY9VIkVExwXCZiXVB8GqDoJHGU7WH/Fx6Q5xXwIVKilZN5E
X-Received: by 2002:a19:5f15:: with SMTP id t21mr27170567lfb.466.1635361960176;
        Wed, 27 Oct 2021 12:12:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635361960; cv=none;
        d=google.com; s=arc-20160816;
        b=niGKN5CdwHiSqF4QkZht6r8MC1LZrO8NvfgjOty0hRHJ3EgzBzyOQ5zNntTUGSP/Au
         yfSeSX5BJAcl/KF0iJAgmhBvSAK4Gwqkc5zh/hjI7w1+8oa5NBBbEAp/EG9pdeysUL45
         gwPlJaUeVQ8zruDoXGxPTzFs1+CgM7KDYEGCVkd3l80PxvYWhANqi/EPgvadRUgFpM9p
         3ie4VX0uD6pXheMRC4ttKM/3lIDY0AJQcuhjR6naN18vmFhKfsw7aiXVyTPIkeEqkLaN
         paLIKpNmGWifofw/HwD0Z4a+QGgNafZ48Ykvlu8aXZHygTwp0QplPHuGVM+0xd4Ed8nY
         M3Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=ubsj451AnIu/GjczD/kNt6KLVKN/L8B9D7/qvw5dfTc=;
        b=r+YxlX4RH+xaxS5JCgcGY/UuuGVflPUCsxTGp5nhqug8zr9FVKKsE/n7hXWIAoT3tD
         a8+mGdYpiQAYtYF8t87n5pfNpIT0eDiqTJWfK2g9w14TBbTRFnb+IU+0NFeuBxJnjB2G
         xe0/xXbIbYak6hI185NhvUchqwaHthB/cGXYyMWZOj5pOPtmFGAIpnKJcTdPu01kZTRH
         dl90sbvkaJ9oVMJp+dPNFxon0ssZD52ENdqPORb8wTwFlB9Yl0Bm5E1QjqOwQX3tdLpQ
         qRhrRChxfy1Kw1fJIGBEsTVk5qDmlkibkRuOy2ngoL7MJSeTUHAOtgfL3J5Ix9xxi8v0
         Zl4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <alison.schofield@intel.com>
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id b27si58895ljf.3.2021.10.27.12.12.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Oct 2021 12:12:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of alison.schofield@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="316448176"
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; 
   d="scan'208";a="316448176"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Oct 2021 12:12:27 -0700
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; 
   d="scan'208";a="573151034"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Oct 2021 12:12:27 -0700
Date: Wed, 27 Oct 2021 12:20:03 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Karolina Drobnik <karolinadrobnik@gmail.com>
Cc: Outreachy Linux Kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Help maintain the First Patch Tutorial
Message-ID: <20211027192003.GA489756@alison-desk>
References: <20211014174207.GA426328@alison-desk>
 <9bb37f004a66b22114572ada1a3d20def81fbcff.camel@gmail.com>
 <20211025163004.GA478658@alison-desk>
 <36e3a34901080637471bd619060fe9ffd65c8aaf.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <36e3a34901080637471bd619060fe9ffd65c8aaf.camel@gmail.com>

On Wed, Oct 27, 2021 at 03:48:18PM +0100, Karolina Drobnik wrote:
> On Mon, 2021-10-25 at 09:30 -0700, Alison Schofield wrote:
> > Thanks for the update.
> > It seems that the original was lacking the fill in the cover letter
> > step...at least in this section. Going directly from format-patch >
> > to send-email on a patchset would send an empty cover letter.
> > See if you can fix that up.
> > Thanks!
> 
> Hi Alison,
> 
> I added a description on the cover letter file. Could you take a look
> and see if it looks alright?
> 
Thanks Karolina. It looks good. Please post it.
I expect that maintaining the tutorial is an iterative process.
We'll keep at it.

Alison


> 
> Thanks,
> Karolina
> 
> --------------------------------------------------------------------
> 
> <<Anchor(git_format_patch_patchset)>>
> == Using git format-patch to send patchsets ==
> 
> First, use {{{`git log --pretty=oneline --abbrev-commit`}}} to figure
> out the first commit ID you want to send. For example, say that my tree
> had this git log history:
> 
> {{{
> b7ca36a Docs: Move ref to Frohwalt Egerer to end of REPORTING-BUGS
> bf6adaf Docs: Add a tips section to REPORTING-BUGS.
> bc6bed4 Docs: Expectations for bug reporters and maintainers
> 2c97a63 Docs: Add info on supported kernels to REPORTING-BUGS.
> 7883a25 Docs: Add "Gather info" section to REPORTING-BUGS.
> d60418b Docs: Step-by-step directions for reporting bugs.
> 3b12c21 Trivial: docs: Remove six-space indentation in REPORTING-BUGS.
> bb33db7 Merge branches 'timers-urgent-for-linus', 'irq-urgent-for-
> linus' and 'core-urgent-for-linus' of
> git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip
> 41ef2d5 Linux 3.9-rc7
> }}}
> 
> The first commit I want to send as part of the patchset has commit ID
> 3b12c21. The last patch I want to send has commit ID b7ca36a. So, I
> want to pass the commit range {{{3b12c21^..b7ca36a}}} to {{{git format-
> patch}}}. (Remember, the {{{git format-patch}}} range starting
> commit must be the commit ''before'' the first commit you want to send,
> so we use the '^' to specify the patch before commit 3b12c21). The
> command will look something like this:
> 
> {{{
> git format-patch -o /tmp/ --cover-letter -n --thread=shallow
> 3b12c21^..b7ca36a
> }}}
> 
> Again, the -o flag specifies where to put the email files. The -n flag
> says to add numbering to each patch (e.g. [PATCH 2/5]). The `--
> thread=shallow` flag specifies that all patches will be In-Reply-To
> your cover letter.
> 
> That will output files into /tmp:
> {{{
> /tmp/0000-cover-letter.patch
> /tmp/0001-Trivial-docs-Remove-six-space-indentation-in-REPORTI.patch
> /tmp/0002-Docs-Step-by-step-directions-for-reporting-bugs.patch
> /tmp/0003-Docs-Add-Gather-info-section-to-REPORTING-BUGS.patch
> /tmp/0004-Docs-Add-info-on-supported-kernels-to-REPORTING-BUGS.patch
> /tmp/0005-Docs-Expectations-for-bug-reporters-and-maintainers.patch
> /tmp/0006-Docs-Add-a-tips-section-to-REPORTING-BUGS.patch
> /tmp/0007-Docs-Move-ref-to-Frohwalt-Egerer-to-end-of-REPORTING.patch
> }}}
> 
> As you can see, there's an extra file called `0000-cover-letter.patch`.
> This special file describes a list of commits in the patch series,
> changed files and author information:
> 
> {{{
> From a67edde382e1c4bc5068ce100a9370ede402695b Mon Sep 17 00:00:00 2001
> Message-Id: <cover.1635340747.git.author@example.com>
> From: Patchset Author <author@example.com>
> Date: Wed, 27 Oct 2021 14:19:07 +0100
> Subject: [PATCH 0/7] *** SUBJECT HERE ***
> 
> *** BLURB HERE ***
> 
> Patchset Author (7):
>   Trivial: docs: Remove six-space indentation in REPORTING-BUGS.
>   Docs: Step-by-step directions for reporting bugs.
>   Docs: Add "Gather info" section to REPORTING-BUGS.
>   Docs: Add info on supported kernels to REPORTING-BUGS.
>   Docs: Expectations for bug reporters and maintainers
>   Docs: Add a tips section to REPORTING-BUGS.
>   Docs: Move ref to Frohwalt Egerer to end of REPORTING-BUGS
> 
>  REPORTING-BUGS |  162 ++++++++++++++++++++++++++++++++++++++++++++++--
> --------
>  1 files changed, 134 insertions(+), 28 deletions(-)
> 
> -- 
> 2.30.2
> }}}
> 
> You need to modify this file before sending the patchset. In `***
> SUBJECT HERE ***`, write a short description just like you did it for
> single patches. In `*** BLURB HERE ***` briefly describe why your
> patchset was created and what was changed and/or fixed.
> 
> To send the patchset, you need to provide a path that matches all of
> the generated files. In this case, the `git send-email` command would
> look like this:
> 
> {{{
> git send-email --to <outreachy mailing list if required> --cc
> <addresses from get_maintainer.pl output> /tmp/*.patch
> }}}
> 
> If you would like to test your patchset emails before sending them, you
> can add `--dry-run` option that will execute the command without
> sending the actual emails. 
> 
> 

