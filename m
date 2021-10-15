X-GM-THRID: 7019340367563587584
X-Received: by 2002:a05:651c:988:: with SMTP id b8mr13500092ljq.187.1634317535191;
        Fri, 15 Oct 2021 10:05:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:7f06:: with SMTP id a6ls1762172ljd.9.gmail; Fri, 15 Oct
 2021 10:05:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzbPR6oUtUJ4eeJl3pH45mjM8YmrpFgclQeQ9KSyWTykfMpNcb2iGuhjMhoBRyNPzwBJCxf
X-Received: by 2002:a05:651c:504:: with SMTP id o4mr13955628ljp.393.1634317533148;
        Fri, 15 Oct 2021 10:05:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634317533; cv=none;
        d=google.com; s=arc-20160816;
        b=BJpi4Aqv8+r9Z4XcgeZ9LBkDD+kHUR1mB3MoOTVk10+SxNxWROiTKFH6j2a5ti7WsJ
         fbzVghWspy+vGfaq5dJhzbx8+0HhwEmGwiz40DXdsi+QqQdY03R98bUGDSwYaQR3xiSy
         JwH9kyp/iqtyMwaEJOZRcCSJ3jv5LAGjWgyhwVm51He0RfnNzep3RLukxarsnGevBhDn
         B4kXC27SPf/A/S8QqUYeEwvdzdsBjZ1l1cN4NeIl6U8Ge6stJymx6kBQQq1qKoHgjdv4
         0raX++lV9A2z0+nU3zYiuKsayZ58hemcxh3AbyCy7BjXAykQ8GMqUSxiBKpxvJ/KTCz3
         Hlgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date;
        bh=0zXX2R4ErSSUqvJnvJYoH4GoEQyuIu+qID8bmYmPyU8=;
        b=xcJgouKZaSyQoK1qV/4hHxVTMMhJ30A9np2Gu1Ekgs+qcggd997FtFXvWjB8hJksG0
         ZaefzFfWPC23qyJwSSeXBXHgm4dTJh4fOTf51MYx6I5fy3YfZ4FNx6eZhuOXUmVTEGUe
         DSh9FhvsQBk3YFnRUxuf8n26Tr+K/qXeHnEAXtBkwjz93qj7Lq1FJjf/4xWAWXnXIdFz
         XPFNwQbQWwZBzzOhdjp07NDZwAsxpymls/SWABkeUU6EGfhNoV/0G2pGg5WauN5gkFk8
         p0BWfEs30bC14mEJl/FfkYcs4kpmF2YWO1fYv/jfImzdiuyNU3E0BL7iPJXi5zyDtIBH
         ckSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <alison.schofield@intel.com>
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id g28si377513lfv.3.2021.10.15.10.05.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Oct 2021 10:05:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
X-IronPort-AV: E=McAfee;i="6200,9189,10138"; a="215117405"
X-IronPort-AV: E=Sophos;i="5.85,376,1624345200"; 
   d="scan'208";a="215117405"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Oct 2021 10:05:29 -0700
X-IronPort-AV: E=Sophos;i="5.85,376,1624345200"; 
   d="scan'208";a="716568150"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Oct 2021 10:05:29 -0700
Date: Fri, 15 Oct 2021 10:13:31 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy-kernel@googlegroups.com>
Cc: gregkh@linuxfoundation.org
Subject: Outreachy PATCHES To: Cc:
Message-ID: <20211015171331.GA431883@alison-desk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


Hi all,

(I know...tl;dr ;))

This has popped up in a couple of email threads and Karolina has
offered to update the First Patch Tutorial. It has some outdated
comments.

The short answer is that applicants send all patches:

To: outreachy-kernel@googlegroups.com
Cc: The *key* individuals and all the lists derived from get_maintainers.pl

Do not exclude any individual or list that this patch would have gone
to, had it not been in Outreachy. We only add the Outreachy list.

I don't know what the presiding thoughts are about including LKML
(linux-kernel@vger.kernel.org). I recall it being always included,
but now I see it left out frequently, not just by Outreachy.
(Today, I don't care and I wouldn't NAK a patch either way, but if
someone has an official position - let us know.)

How do you get the *key* individuals and list out of get_maintainers.pl?

Familiarize yourself with the get_maintainers.pl options. Play around
with it a bit. Try to avoid taking someone else's format, feeding it to
git send-email (and hope it works OK) That's my advice for most of the
tips and tricks you will receive. Make sure you do it the hard way first,
ie manually try things out, before adopting someone elses bundle of scripts. 

Having said that - Karolina will update the tutorial with a good example
usage, and here's an example below of trying out the get_maintainers.pl
options to get a 'CC list.

Refer to: perl scripts/get_maintainer.pl --help

For drivers/staging/vt6655/baseband.c

1) No options:

$ perl scripts/get_maintainer.pl -f drivers/staging/vt6655/baseband.c

Forest Bond <forest@alittletooquiet.net> (odd fixer:STAGING - VIA VT665X DRIVERS)
Greg Kroah-Hartman <gregkh@linuxfoundation.org> (supporter:STAGING SUBSYSTEM,commit_signer:3/3=100%)
Madhumitha Prabakaran <madhumithabiw@gmail.com> (commit_signer:1/3=33%,authored:1/3=33%,added_lines:3/5=60%,removed_lines:3/7=43%)
Lucas Henneman <lucas.henneman@linaro.org> (commit_signer:1/3=33%,authored:1/3=33%,removed_lines:2/7=29%)
Yujia Qiao <rapiz@foxmail.com> (commit_signer:1/3=33%,authored:1/3=33%,added_lines:2/5=40%,removed_lines:2/7=29%)
linux-staging@lists.linux.dev (open list:STAGING SUBSYSTEM)
linux-kernel@vger.kernel.org (open list)

It is giving me everyone who has committed, they are not necessarily 
maintainers or reviewers. And, if they are indeed interested in watching
the changes in this file, they'll be on its mailing list.

2) Options --nogit-faillback (Get rid of all those commit-signers)

$ perl scripts/get_maintainer.pl --nogit-fallback  -f drivers/staging/vt6655/baseband.c
Forest Bond <forest@alittletooquiet.net> (odd fixer:STAGING - VIA VT665X DRIVERS)
Greg Kroah-Hartman <gregkh@linuxfoundation.org> (supporter:STAGING SUBSYSTEM)
linux-staging@lists.linux.dev (open list:STAGING SUBSYSTEM)
linux-kernel@vger.kernel.org (open list)

Getting cleaner, now let's get rid of the rolestats.

3) Options --nogit-faillback --norolestats

$ perl scripts/get_maintainer.pl --nogit-fallback --no-rolestats -f drivers/staging/vt6655/baseband.c
Forest Bond <forest@alittletooquiet.net>
Greg Kroah-Hartman <gregkh@linuxfoundation.org>
linux-staging@lists.linux.dev
linux-kernel@vger.kernel.org

BINGO - That's a good list. What about the other options suggested for
get_maintainers.pl? Left as an exercise for the user. Use the help of
the get_maintainer.pl. 

You are welcome to ask for help on this list if you are unsure of your
CC list. And, if you make a mistake, there is always a [PATCH v#] where
you can fix it up. 

Alison







