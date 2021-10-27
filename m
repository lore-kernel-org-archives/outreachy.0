X-GM-THRID: 7018981355604148224
X-Received: by 2002:adf:f744:: with SMTP id z4mr39620769wrp.17.1635346102726;
        Wed, 27 Oct 2021 07:48:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:5111:: with SMTP id o17ls49496wms.3.gmail; Wed, 27
 Oct 2021 07:48:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyOvydKcCe5NzTYERuP9qdDglVFCVHXCpL/9KRK/XWGXsfzw2HyLQRn97mDnNPJ/K7SGuaH
X-Received: by 2002:a05:600c:198d:: with SMTP id t13mr6141339wmq.21.1635346100915;
        Wed, 27 Oct 2021 07:48:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635346100; cv=none;
        d=google.com; s=arc-20160816;
        b=I46Tzq6dowmYD88IMbkOOyBtpiwOFTDo7NU6LOXrPEfmNM5OPYRgmJyLSrygS7Z/O0
         gcPyRISZKvIFnL0A8mWiKn97UU05Q7K3UMO+glENmEB7jYyaKLc/J3IOytSmeYRp8m6Y
         NuxM9ziMlHOincj/wfWGkTqZYcsNnBNoQFUudlcqqzM+w/z9T56Tl0zWUhtlmOHg2qIs
         f1nubwCg1FnrbXUG0Q4YCxYjEfXADEtyOf7jrsbZvF2vuQ3plbFu2oAA8F9DK66y39Iz
         NwkzBmAxyCedbOa0T2pSwGC8l6eexnKHGpNZVKv8mUMoXBqynu6vSnp5elZYBh876ptC
         +v9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=5EVHoiGX4rji3Q/RyJ5O0gIm40dX3u+2QCcviwchDto=;
        b=bSbZTw1hs4EfDavbiPf8g+lEvv74Sh9HbRIL2hiHLgpPgboZ16SmyOPN/HEU52BdtQ
         SCmaQwzaSN4GaKlw70qcZGwrdE2Sb85JgLgKCeq3Psen8Ffjim/J3MLVpnIJ7v7Wu/vW
         +Hvr7Y/bDRvQF0tFuAHpK2AQadbagcQelWpGWck4jIj7dIdn4kAOpF4LN8ZSj7fi8nyZ
         evPM0cVEuRW9i53k5zwrGLiQT8N+vdTilAabusw6ufHQwzB4zte8RMgeXl+tnkAn+wiD
         l0RRN5XORCGTplKJRHRCW5ue+bM2zOKC1e/5vouV7l5NbUWyNGGXZAyGMBCWxE89aDU1
         HxBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=lkPmeqM8;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com. [2a00:1450:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id g2si244483wmc.4.2021.10.27.07.48.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Oct 2021 07:48:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) client-ip=2a00:1450:4864:20::42d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=lkPmeqM8;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42d.google.com with SMTP id g7so3540733wrb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Oct 2021 07:48:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=5EVHoiGX4rji3Q/RyJ5O0gIm40dX3u+2QCcviwchDto=;
        b=lkPmeqM8YjaIlIgjAG6QnZR71BToem+JOQjWjJWwLfrAJlYNoEh2ZiNQ3ITJwgGlCV
         KNdkSDJts2VJt07E/RhcdNkVh65vJcPmXKpQHiK80SwGNl9IlH4KcngKLL1zOwXtdrGH
         r5Tj0AxVFzIP+M8VguKE7//1ktR878BLAQl1Zdw9srSBpY9V07TENZZkrKg8iXG62v7J
         uJt0WKEiyWCOJT0+UMXiZQqOXmownqA44Gl94oXZ2Bn4n8YsOty+8PuOn5wERvnHNbbT
         g/iAIUIBpbLfOdcedvefE4UXLk0K9eUApJqXtj/LFQYFoxW60a6+REziNdDTyFE5KR8B
         5M1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=5EVHoiGX4rji3Q/RyJ5O0gIm40dX3u+2QCcviwchDto=;
        b=CRj7CC4UqaY2InKRPtYYuSWvoQYSf57q+8BhnLXU5ggCyqbZqnNhut+wocdXTCj4r7
         BksgrOjrRKivJen93fEV9JEAKVTt9aR34eO/BvZh4Wofy3cNR9s5V95QlIYYGeqr5ScL
         xJRpjG+h//NvHg2GWY8id9XT1BVDq2fgjQOnlb54x+q6S6RvgDaOWfCeB68w2EyVFKtO
         zwnkAsnwT6zCZVBr2aEJlmMCLCfO0nrONdgx6DYpZ15UG5NHeQpWWJacXDF0jap2sd3o
         2fBDr4hr/DH1NpZ7kfRNNg4/m/zPBZtWHoIbgqjwdfg3yKD1EpbmA1H3KTmJrZ3i2cqk
         VSbQ==
X-Gm-Message-State: AOAM531YyZzWagNdP0bPEJ3Voic3N+6tqV7uznbbMAjEZmSnFSRP4jfT
	IkdVauLaypZZRIJfdMZwPs3wNQ8oIbs6pA==
X-Received: by 2002:adf:ca09:: with SMTP id o9mr40105022wrh.303.1635346100692;
        Wed, 27 Oct 2021 07:48:20 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from ?IPv6:2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62? ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id 3sm16550wms.5.2021.10.27.07.48.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Oct 2021 07:48:20 -0700 (PDT)
Message-ID: <36e3a34901080637471bd619060fe9ffd65c8aaf.camel@gmail.com>
Subject: Re: [Outreachy kernel] Help maintain the First Patch Tutorial
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Outreachy Linux Kernel <outreachy-kernel@googlegroups.com>
Date: Wed, 27 Oct 2021 15:48:18 +0100
In-Reply-To: <20211025163004.GA478658@alison-desk>
References: <20211014174207.GA426328@alison-desk>
	 <9bb37f004a66b22114572ada1a3d20def81fbcff.camel@gmail.com>
	 <20211025163004.GA478658@alison-desk>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Mon, 2021-10-25 at 09:30 -0700, Alison Schofield wrote:
> Thanks for the update.
> It seems that the original was lacking the fill in the cover letter
> step...at least in this section. Going directly from format-patch >
> to send-email on a patchset would send an empty cover letter.
> See if you can fix that up.
> Thanks!

Hi Alison,

I added a description on the cover letter file. Could you take a look
and see if it looks alright?


Thanks,
Karolina

--------------------------------------------------------------------

<<Anchor(git_format_patch_patchset)>>
== Using git format-patch to send patchsets ==

First, use {{{`git log --pretty=oneline --abbrev-commit`}}} to figure
out the first commit ID you want to send. For example, say that my tree
had this git log history:

{{{
b7ca36a Docs: Move ref to Frohwalt Egerer to end of REPORTING-BUGS
bf6adaf Docs: Add a tips section to REPORTING-BUGS.
bc6bed4 Docs: Expectations for bug reporters and maintainers
2c97a63 Docs: Add info on supported kernels to REPORTING-BUGS.
7883a25 Docs: Add "Gather info" section to REPORTING-BUGS.
d60418b Docs: Step-by-step directions for reporting bugs.
3b12c21 Trivial: docs: Remove six-space indentation in REPORTING-BUGS.
bb33db7 Merge branches 'timers-urgent-for-linus', 'irq-urgent-for-
linus' and 'core-urgent-for-linus' of
git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip
41ef2d5 Linux 3.9-rc7
}}}

The first commit I want to send as part of the patchset has commit ID
3b12c21. The last patch I want to send has commit ID b7ca36a. So, I
want to pass the commit range {{{3b12c21^..b7ca36a}}} to {{{git format-
patch}}}. (Remember, the {{{git format-patch}}} range starting
commit must be the commit ''before'' the first commit you want to send,
so we use the '^' to specify the patch before commit 3b12c21). The
command will look something like this:

{{{
git format-patch -o /tmp/ --cover-letter -n --thread=shallow
3b12c21^..b7ca36a
}}}

Again, the -o flag specifies where to put the email files. The -n flag
says to add numbering to each patch (e.g. [PATCH 2/5]). The `--
thread=shallow` flag specifies that all patches will be In-Reply-To
your cover letter.

That will output files into /tmp:
{{{
/tmp/0000-cover-letter.patch
/tmp/0001-Trivial-docs-Remove-six-space-indentation-in-REPORTI.patch
/tmp/0002-Docs-Step-by-step-directions-for-reporting-bugs.patch
/tmp/0003-Docs-Add-Gather-info-section-to-REPORTING-BUGS.patch
/tmp/0004-Docs-Add-info-on-supported-kernels-to-REPORTING-BUGS.patch
/tmp/0005-Docs-Expectations-for-bug-reporters-and-maintainers.patch
/tmp/0006-Docs-Add-a-tips-section-to-REPORTING-BUGS.patch
/tmp/0007-Docs-Move-ref-to-Frohwalt-Egerer-to-end-of-REPORTING.patch
}}}

As you can see, there's an extra file called `0000-cover-letter.patch`.
This special file describes a list of commits in the patch series,
changed files and author information:

{{{
From a67edde382e1c4bc5068ce100a9370ede402695b Mon Sep 17 00:00:00 2001
Message-Id: <cover.1635340747.git.author@example.com>
From: Patchset Author <author@example.com>
Date: Wed, 27 Oct 2021 14:19:07 +0100
Subject: [PATCH 0/7] *** SUBJECT HERE ***

*** BLURB HERE ***

Patchset Author (7):
  Trivial: docs: Remove six-space indentation in REPORTING-BUGS.
  Docs: Step-by-step directions for reporting bugs.
  Docs: Add "Gather info" section to REPORTING-BUGS.
  Docs: Add info on supported kernels to REPORTING-BUGS.
  Docs: Expectations for bug reporters and maintainers
  Docs: Add a tips section to REPORTING-BUGS.
  Docs: Move ref to Frohwalt Egerer to end of REPORTING-BUGS

 REPORTING-BUGS |  162 ++++++++++++++++++++++++++++++++++++++++++++++--
--------
 1 files changed, 134 insertions(+), 28 deletions(-)

-- 
2.30.2
}}}

You need to modify this file before sending the patchset. In `***
SUBJECT HERE ***`, write a short description just like you did it for
single patches. In `*** BLURB HERE ***` briefly describe why your
patchset was created and what was changed and/or fixed.

To send the patchset, you need to provide a path that matches all of
the generated files. In this case, the `git send-email` command would
look like this:

{{{
git send-email --to <outreachy mailing list if required> --cc
<addresses from get_maintainer.pl output> /tmp/*.patch
}}}

If you would like to test your patchset emails before sending them, you
can add `--dry-run` option that will execute the command without
sending the actual emails. 



