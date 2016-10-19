X-GM-THRID: 6342441922054848512
X-Received: by 10.194.42.70 with SMTP id m6mr283686wjl.23.1476856917267;
        Tue, 18 Oct 2016 23:01:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.37.67 with SMTP id l64ls72364lfl.19.gmail; Tue, 18 Oct 2016
 23:01:56 -0700 (PDT)
X-Received: by 10.25.72.82 with SMTP id v79mr286871lfa.20.1476856916319;
        Tue, 18 Oct 2016 23:01:56 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t64si128764wmt.0.2016.10.18.23.01.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Oct 2016 23:01:56 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,513,1473112800"; 
   d="scan'208";a="241357480"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Oct 2016 08:01:55 +0200
Date: Wed, 19 Oct 2016 08:01:40 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Muraru Mihaela <mihaela.muraru21@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: emxx_udc: Make a read-only
 structure
In-Reply-To: <20161018213912.GA14750@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.20.1610190800410.2721@hadrien>
References: <20161018204221.GA7799@domino-MS-16Y1> <alpine.DEB.2.20.1610182247190.2247@hadrien> <20161018213912.GA14750@domino-MS-16Y1>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 19 Oct 2016, Muraru Mihaela wrote:

> On Tue, Oct 18, 2016 at 10:48:54PM +0200, Julia Lawall wrote:
> > On Tue, 18 Oct 2016, Mihaela Muraru wrote:
> >
> > > This patch add const qualifier at the declaration of the structure,
> > > because it contains information about usb hardware device and those
> > > values shoud not be overwritten.
> >
> > This focuses on the intent, which makes sense, but one really wants to be
> > sure that we won't end up with a const value floating into a modification
> > context, which would cause a runtime error.  So it would be good to
> > describe how the structure is used.  For example, is it only passed to
> > another function where the corresponding parameter is declared as const?
>
> The structure is declared and used only in emxx_udc.c. I searched it in all
> staging driver.
>
> And is passed as a patameter only to the sizeof operetor,
> that doesn't change the variable of the structure.
>
> To be 100% sure I will search on all the files of the kernel,
> it would take some time, and I will tell you what is the result, if is
> ok for you.

If the structure is static, then there is normally no need to check other
files.  The question though is how is it used in the current file.  Sizeof
is indeed not an issue, but what are the other ways in which it is used.

julia

