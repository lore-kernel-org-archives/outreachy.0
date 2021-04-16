X-GM-THRID: 6951120130932736000
X-Received: by 2002:aa7:c9cf:: with SMTP id i15mr8971731edt.4.1618563845290;
        Fri, 16 Apr 2021 02:04:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:3592:: with SMTP id y18ls7886391edc.0.gmail; Fri,
 16 Apr 2021 02:04:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwbSCzzyoG5Hk/aGXYpR2Qqx4xeMQCNNrlwVxclmBrmfDRyD5lJrfqFi74P0MhvBuzhFS/2
X-Received: by 2002:aa7:dc0b:: with SMTP id b11mr8979654edu.124.1618563843831;
        Fri, 16 Apr 2021 02:04:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618563843; cv=none;
        d=google.com; s=arc-20160816;
        b=Kp4CJKO4ZeBRmJIKzOQGlmme5xH4FxDQ/mu9DBfqQZujiQtrXX/g0W09qnHljPRQyX
         D7u7xhCNHR45MMaQikXEBRloTeALpoTJzK8GRzroqf75pgMm8oJ/M6+ltMRlbrXTfQ+H
         VOZadReIIHARVhM7D5ajZIarAa/WeXZaTSjUm3DnYHZu3EDw1NGYUg5/anv4NmyAfxI1
         v738vWX6RucTNJImy9mMyhbZcsG0TAegEx9lnuou4iNiwMIr31RwSsa9Nt3BLg2CypZp
         y6no5Gg1Rhfh2SoEUIT3WHY35JwYmVgK6k9NJRPO0IQL+37GupZPg2eCEzwEZB+cAGke
         OLuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=rxLvuKRC74jVOTf9UXbtUy/jty2Cy2ioxE6GAeRFido=;
        b=Ok00DsDmMr9V7kqlHlhB4gFf6B1ojRjXlBDd8o9el+OBrf/wIhocwXcnCkI9QxY7Mg
         CpjcAfAZ98zfuvFM6FBp7cSzrKuooRB8T4d4tx+SRwDMSjBpzLVhG2ikK8R7/kO0pGHc
         VHXELii4Hk8gk+QcdV9LtI23bDwb8YoQCcmzzxK1PZg8xSp9V27+CtoBJ8e06QCYOmrC
         34hc2kIoiFrrUJJiDpnA54+trPZJB4aWHzlhB9yKep3lWf/+sEuXkKIPbB4lPyosGQCc
         xepKqLZxMOLQUCqgNNnzL1Vav/Ryqrv0yjN3P/0QagG9dYkF1HceMz0KCgWDydvXZ3hh
         V0HQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h7si32724ede.0.2021.04.16.02.04.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Apr 2021 02:04:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AlZylv6CjwDucrYrlHelN55DYdL4zR+YMi2QD?=
 =?us-ascii?q?/UZ3VBBTb4ikh9mj9c5rsSPcpT4NVBgb8uyoF7KHRRrnn6JdwY5UBru6WRmjhW?=
 =?us-ascii?q?3AFuBfxK/D5xGlJCHk7O5a0s5bAs1DIfn9F0Jzg8q/wCTQKbYd6eKK+qypmuvS?=
 =?us-ascii?q?pk0FJT1CUK1u4xx0DQyWCCRNNWp7LKAkH5mR7NcvnVSdUEkQB/7WOlA4ReTZ4/?=
 =?us-ascii?q?XEmJX6CCR2ZSIP2U2+yQml77P3CHGjsys2WTkn+9gfzVQ=3D?=
X-IronPort-AV: E=Sophos;i="5.82,226,1613430000"; 
   d="scan'208";a="503548861"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Apr 2021 11:03:53 +0200
Date: Fri, 16 Apr 2021 11:03:53 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sakari Ailus <sakari.ailus@linux.intel.com>
cc: Julia Lawall <julia.lawall@inria.fr>, 
    Dan Carpenter <dan.carpenter@oracle.com>, 
    Matthew Wilcox <willy@infradead.org>, 
    Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>, 
    Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    linux-media@vger.kernel.org, linux-staging@lists.linux.dev, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: media: atomisp: pci:
 Change line break to avoid an open parenthesis at the end of the line
In-Reply-To: <20210416085431.GM3@paasikivi.fi.intel.com>
Message-ID: <alpine.DEB.2.22.394.2104161101250.8503@hadrien>
References: <20210415170819.GA17534@focaruja> <20210415171409.GC2531743@casper.infradead.org> <20210415194955.GI3@paasikivi.fi.intel.com> <20210415195704.GE2531743@casper.infradead.org> <20210415195941.GF2531743@casper.infradead.org> <20210415212158.GK3@paasikivi.fi.intel.com>
 <20210416054941.GF6021@kadam> <20210416083728.GL3@paasikivi.fi.intel.com> <alpine.DEB.2.22.394.2104161045140.8503@hadrien> <20210416085431.GM3@paasikivi.fi.intel.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 16 Apr 2021, Sakari Ailus wrote:

> On Fri, Apr 16, 2021 at 10:46:54AM +0200, Julia Lawall wrote:
> > > > If you're running into the 80 character limit, then it's fine to use
> > > > two tabs.  I think we have been rejecting patches that push align the
> > > > parameters but push past the 80 character limit.  Using one tab is
> > > > confusing because it makes the decalarations line up with the code.
> > >
> > > Interesting. Do you have an example of this? I've thought checkpatch.pl
> > > gave a warning if the line ended with an opening parenthesis no matter
> > > what.
> >
> > Checkpatch is a perl script that searches for patterns that often indicate
> > code that is hard to understand.  It is not a precise definition of what
> > is allowed in the Linux kernel.  Humans have to amke compromises.
>
> Yeah... but I'd think if this is a preferred style then the warning could
> be omitted. It might not be that difficult.

No idea.  It involves looking at two successive lines, which may make it
more complicated.  Probably the biggest problem would be knowing whether
the line being looked at represents a function header.  Maybe that could
be detected by the fact that there is normally no space at the beginning
of the line?

julia

