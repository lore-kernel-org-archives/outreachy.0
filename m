X-GM-THRID: 6948745075073482752
X-Received: by 2002:ac2:4472:: with SMTP id y18mr10528693lfl.332.1617989043900;
        Fri, 09 Apr 2021 10:24:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9212:: with SMTP id k18ls2212973ljg.8.gmail; Fri, 09 Apr
 2021 10:24:02 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzb1v9zMTqrBzAi8kl3K0OeAfb6U7EiBCXkygOf4L5lLZnaJC3kUCe60TXV9EV1Hgo9f3RY
X-Received: by 2002:a05:651c:211a:: with SMTP id a26mr9690990ljq.373.1617989042019;
        Fri, 09 Apr 2021 10:24:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617989042; cv=none;
        d=google.com; s=arc-20160816;
        b=fHfu++RIrujBBmZ2coYiuC5p7PoQzWEDwDicNn2BS0d3vunmrAgSRYL9lbsPyZD+Mb
         TBIpXizEf5Booaw2SLnqhTR9AkzSZYcFUGbPbTy0DLDTwo190QOrmuR2SBqoC+lIhpBD
         6XU9f1NzKQdNCpQ5RVHdpfWTI5/sENWnr3k/Av1A7G7udsjBRiIg36WAGNJP6JJQfxJZ
         BapaMbaeHk+l3ITJ9ay8EbMnOYgrorOZZSR/Dmn1drZBim6qJOmLrICwfkt87eoak6fR
         E73HMU3XHbhtIJ/Cw5/h94J1ThQSVWvoWDwJgqn0Q1iZJMwqpKuU3k5cnUUAy803shWX
         3anA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=Ah8wmpiQPxAeYwTdTEW8MoB6jSopvkco788yN88bZbg=;
        b=0fI48eusbL9CQbebTz/vfCqo+iiXXY0iDf367FYqNE7U2PZNb/BbU1m5dV96QBHJGQ
         gOeLm3jlf6F/+kiaXpUlI0TSoYFtxx4jZj0xONdKdLamreaGTTcxZiAFCkUrIzKPUDxf
         O98jWWnohmlaPjIA63GDcyshPKra4nF1lSSHDiKUtz37d4d7m6Z8BlbR2ufSTb7yWMYG
         keCiArS2AOQDcD7nxB8sps1ysDcJIs5Uz/9wanCPv+1zVlnA7hjluknx6GH6yYOS3WF/
         b1H9mJ0DWLcqStMiAzPuvnbjxam7GFJAS7wnEUg0AV6gkNm2Za2dZvdwDT/C3mFGwzp4
         qldA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v203si257838lfa.10.2021.04.09.10.24.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Apr 2021 10:24:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3A0/2Gc6BBUteEyBzlHelN55DYdL4zR+YMi2QD?=
 =?us-ascii?q?/UZ3VBBTb4ikh9mj9c5rsSPcpT4NVBgb8uyoF7KHRRrnn6JdwY5UBru6WRmjhW?=
 =?us-ascii?q?3AFuBfxK/D5xGlJCHk7O5a0s5bAs1DIfn9F0Jzg8q/wCTQKbYd6eKK+qypmuvS?=
 =?us-ascii?q?pk0FJT1CUK1u4xx0DQyWCCRNNWp7LKAkH5mR7NcvnVSdUEkQB/7WOlA4ReTZ4/?=
 =?us-ascii?q?XEmJX6CCR2ZSIP2U2+yQml77P3CHGjsys2WTkn+9gfzVQ=3D?=
X-IronPort-AV: E=Sophos;i="5.82,210,1613430000"; 
   d="scan'208";a="378242715"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Apr 2021 19:24:00 +0200
Date: Fri, 9 Apr 2021 19:24:00 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com, 
    linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Change the type
 and use of a variable
In-Reply-To: <2106328.ujm4fZfeqs@localhost.localdomain>
Message-ID: <alpine.DEB.2.22.394.2104091923280.17316@hadrien>
References: <20210408111942.19411-1-fmdefrancesco@gmail.com> <YHBg1Sy2509vBtrA@kroah.com> <2106328.ujm4fZfeqs@localhost.localdomain>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 9 Apr 2021, Fabio M. De Francesco wrote:

> On Friday, April 9, 2021 4:12:37 PM CEST Greg KH wrote:
> > On Thu, Apr 08, 2021 at 01:19:42PM +0200, Fabio M. De Francesco wrote:
> > > Change the type of fw_current_in_ps_mode from u8 to bool, because
> > > it is used everywhere as a bool and, accordingly, it should be
> > > declared as a bool. Shorten the controlling
> > > expression of an 'if' statement.
> > >
> > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > ---
> > >
> > >  drivers/staging/rtl8723bs/hal/hal_intf.c        | 2 +-
> > >  drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 2 +-
> > >  2 files changed, 2 insertions(+), 2 deletions(-)
> >
> > I now have 3 patches, I think, for this same driver, from you, and I
> > have no idea what order they should be applied in.
> >
> > So I'm going to drop them all.  Can you please resend me a patch series,
> > with all of the outstanding patches sent to me from you that I have not
> > applied yet, so that I know which ones to look at and what order to
> > apply them in?
> >
> I just sent in the series of patches you requested. Hope the work is as you
> expected.

If you make multiple patches that touch the same files they have to be in
a series.

julia

