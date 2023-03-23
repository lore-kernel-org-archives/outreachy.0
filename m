Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5936F28E8
	for <outreachy@lists.linux.dev>; Thu, 23 Mar 2023 08:15:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=VWi1QTgkZLZmKBsVeeFbwQZMhD8B0WXmuOjn75QWe6M=;
  b=mcqTpDYQcgutZV/zNXqYIwpjUNlSIGzTJI/V+22zqwRfGcpdUbae+9Zh
   X4oudPcqfJHD1TVBSIpO6kWW4b1X+pUehkNZXL7gNZbosnLq4BPzrhCBo
   W/sdrF7pLunNLuJFBK4OQCJLYsn7OjsGW6OS50nmc+vvcubIhMdm4lsg6
   0=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,283,1673910000"; 
   d="scan'208";a="51001290"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Mar 2023 09:15:48 +0100
Date: Thu, 23 Mar 2023 09:15:47 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sumitra Sharma <sumitraartsy@gmail.com>
cc: Ira Weiny <ira.weiny@intel.com>, outreachy@lists.linux.dev
Subject: Re: Warn on macros with flow control statements
In-Reply-To: <20230323062853.GB155612@sumitra.com>
Message-ID: <alpine.DEB.2.22.394.2303230905520.2866@hadrien>
References: <20230316080834.GA43491@sumitra.com> <64154d438f0c8_28ae5229421@iweiny-mobl.notmuch> <alpine.DEB.2.22.394.2303180703470.3122@hadrien> <641557e06a958_28dc5f294d7@iweiny-mobl.notmuch> <20230323062853.GB155612@sumitra.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 22 Mar 2023, Sumitra Sharma wrote:

> On Fri, Mar 17, 2023 at 11:19:12PM -0700, Ira Weiny wrote:
> > Julia Lawall wrote:
> > > > Based on the flow control I would do something like this.  It is a bit more
> > > > verbose but is very clear what is happening.
> > > >
> > >
> > > Ira, what do you think of my suggestion of
> > >
> > > err = err || qlge_fill_seg_(...);
> > >
> > > It would avoid 40 lines of ifs, and would still avoid calling
> > > qlge_fill_seg_ as soon as there is a failure.  On ther other hand, I don't
> > > recall this being done elsewhere, so maybe all the ifs would be
> > > preferable.
> >
> > Oh sorry.  I miss read your suggestion and I thought it was going to
> > continue running qlge_fill_seg_() for all the other calls.  I read this
> > as:
> >
> > err = err | qlge_fill_seg_(...);
> >
> > Not sure why.  Just late I guess.
> >
> > Yes your suggestion would work.  I do think it is a bit odd though.
> >
>
> Hi Ira,
>
> I would like to know why do you think this is odd?

err = err || ... is not a very common pattern.  I looked through te full
Linux kernel for them, and found a few.

You can see one in the function rtl8723_dequeue_writeport in
staging/rtl8723bs/hal/rtl8723bs_xmit.c.  This one is completely useless,
so it's another cleanup opportunity :)

Some others are in loops, like (scripts/dtc/checks.c):

        for (i = 0; i < c->num_prereqs; i++) {
                struct check *prq = c->prereq[i];
                error = error || run_check(prq, dti);
                if (prq->status != PASSED) {
                        c->status = PREREQ;
                        check_msg(c, dti, NULL, NULL, "Failed prerequisite '%s'",
                                  c->prereq[i]->name);
                }
        }

The complete set of files containing this pattern is:

drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
drivers/net/ethernet/intel/i40e/i40e_txrx.c
drivers/net/ethernet/hisilicon/hns3/hns3_enet.c
scripts/dtc/checks.c
kernel/rcu/tree.c
arch/mips/pci/pci-legacy.c
drivers/s390/block/dasd_devmap.c
drivers/net/ethernet/intel/iavf/iavf_txrx.c

So not many.  But in your case the err = err || ... would be a lot omre
concise than the version that has ifs everywhere and it owuld be a little
more understandable than the version that hides the early returns in the
macro definition.

julia


>
> PS: I was trying to implement your suggestion and was able to connect to
> what julia wrote here.
>
> For reference this is the link to your suggestion https://lore.kernel.org/outreachy/64154d438f0c8_28ae5229421@iweiny-mobl.notmuch/
>
> Regards,
> Sumitra
>
> > Ira
>
