X-GM-THRID: 7018981355604148224
X-Received: by 2002:a05:6512:92d:: with SMTP id f13mr5555049lft.63.1635179947195;
        Mon, 25 Oct 2021 09:39:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:31d4:: with SMTP id j20ls632747lfe.2.gmail; Mon, 25
 Oct 2021 09:39:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzvl+onkLfEpREwxjuzJk/4jn6rss30TZDwEEy4QBmuzUy1xL9ucd3Iml73bXl2O3eV6kYH
X-Received: by 2002:ac2:4e10:: with SMTP id e16mr18977168lfr.225.1635179945522;
        Mon, 25 Oct 2021 09:39:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635179945; cv=none;
        d=google.com; s=arc-20160816;
        b=W2lFyTJCaOXk+9oAzKqSH/TBewhm/pGivWlCDh7WRSy3LUXJVTTPvJk+aFx51YX/Q2
         wCP+4JxBvfZ9Xc9tACqj2dnr1cLqeekgDqqXVWRAVzQR+BZSxjjbqZYv+iWqQaTHIfIC
         C8/CU7S/FaQDAeIgOB8xo1IxOwtEBdTijxY0q6Vx1T0uH67U/Gwkmx1eqhrc2Jpnz2bI
         nd2D/sswDhTozBqSkp8ZSlwpzRV+QQH/Y6zP6rxfe4FhBMKKEDYc0e7xetw8K4DEoJ42
         TgSWJPWljmFNk3vW/IRWQa19Ps6XG04Gxtbnah3hGytRJFhPDyhg79lqc2khIXhVwLHn
         iIIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=l57oNktaX0DZJFkVur6GEYSQXkt5TV/7SVCleqFFld0=;
        b=WC+Zz0Ez2B+cpdVu6ogDkDHPsa+GoN02hiLdRApp0ROZo5xdSLpOH+z4Mc01NgsnXc
         H5PWb61Vwknw7xcdBjpdnVg2w8rS3YFowQfy27UUJJkWQZYC6tEVGPoPtCiJoXfMg9OY
         q08YtYpDuUoTSPKAxvQP7rTPGRdMKfrcZSOiRAJ2R5OgKlULo6Z9lN1GNep1qzF2IU/v
         I1nWt0lnloket/xuL8s45jiawCcDBiatrR0tgzKWu8nUZ1tAjsKcOw5YHQ/Q89424yIW
         dKB3IOtQRCHmDQCyF037opHAGCj3EShQvLtGBci0lNSYb4kCByulbqTkua4anhb75cwb
         ImYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <alison.schofield@intel.com>
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id c11si982897ljr.8.2021.10.25.09.39.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Oct 2021 09:39:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of alison.schofield@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
X-IronPort-AV: E=McAfee;i="6200,9189,10148"; a="229965831"
X-IronPort-AV: E=Sophos;i="5.87,181,1631602800"; 
   d="scan'208";a="229965831"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Oct 2021 09:22:22 -0700
X-IronPort-AV: E=Sophos;i="5.87,181,1631602800"; 
   d="scan'208";a="664132542"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Oct 2021 09:22:22 -0700
Date: Mon, 25 Oct 2021 09:30:04 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Karolina Drobnik <karolinadrobnik@gmail.com>
Cc: Outreachy Linux Kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Help maintain the First Patch Tutorial
Message-ID: <20211025163004.GA478658@alison-desk>
References: <20211014174207.GA426328@alison-desk>
 <9bb37f004a66b22114572ada1a3d20def81fbcff.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9bb37f004a66b22114572ada1a3d20def81fbcff.camel@gmail.com>

On Mon, Oct 25, 2021 at 12:44:28PM +0100, Karolina Drobnik wrote:
> Hi,
> 
> I noticed that the information in the "sending patchsets" section is
> slightly outdated.�I updated the `git format-patch` listing and added
> information on how to actually send the patches.
> 
> What do you think about this draft?

Thanks for the update.
It seems that the original was lacking the fill in the cover letter
step...at least in this section. Going directly from format-patch to
send-email on a patchset would send an empty cover letter.
See if you can fix that up.
Thanks!

> 
> 
> Thanks,
> Karolina
> 
> ---------------------------------------------------------------------
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
> 3b12c21. The last patch I want to send has commit ID b7ca36a. 
> So, I want to pass the commit range {{{3b12c21^..b7ca36a}}} to {{{git
> format-patch}}}. (Remember, the {{{git format-patch}}} range starting
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
> To send them as a patchset, you need to provide a path that matches all
> of these files. In this case, the `git send-email` command would look
> like this:
> 
> {{{
> git send-email --to <outreachy mailing list if required> --cc
> <addresses from get_maintainer.pl output> /tmp/*
> }}}
> 
> If you would like to test your patchset emails before sending them, you
> can add `--dry-run` option that will execute the command without
> sending the actual emails.
> 
> 

