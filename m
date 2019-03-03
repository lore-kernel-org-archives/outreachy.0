X-GM-THRID: 6663863789016842240
X-Received: by 2002:a1c:a8c1:: with SMTP id r184mr627779wme.4.1551593784965;
        Sat, 02 Mar 2019 22:16:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4488:: with SMTP id j8ls2767956wrq.1.gmail; Sat, 02 Mar
 2019 22:16:24 -0800 (PST)
X-Google-Smtp-Source: APXvYqziizrbOoRzDqWsDIRIrG5l23tEHTOWQMZ000NiujJn00Q9Kb6KJ4IVqZvoVu3mEDqRM4zs
X-Received: by 2002:a5d:5111:: with SMTP id s17mr614601wrt.13.1551593784279;
        Sat, 02 Mar 2019 22:16:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551593784; cv=none;
        d=google.com; s=arc-20160816;
        b=jfc/XPOi4Bb2iC4lGQn8nCmtDatHY6Imwy2KtApZ/7yAA9SvuUU8NGMDero85M/TXq
         sgbEHkkEtNPnYTQbM5OH/zA52H3tl1WArXCGgueIuu5YSPT1xATH5EBbWC0HndZO2PBr
         Q6DDI4X4IN77yG4IlhX5E6rlJ2TMepGqS7VXthTEioPrEssC///hLHFvIck4OFDPoqMY
         Pk/VRXAACI1IjynuV0pacSB6aU4NQr4cDGheFhsARIEmLj4qlBDNFnFPoj6Br35cWixR
         NGZIyeGsXrcXpKnQ8Gd5fgVyYOyEel0FZNggcRz5pujU/aKg9aVlZJor3gNqTz5v194T
         3jtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=muuNpEtbRygAzf2MWLs52oWPaCjs1HdFrQdZdntJSpw=;
        b=zZFLv0OqNahRgcPkV7Bnx/adeXmeiAUnin+Qrgzwu5w1d6ckYfPMwe6lmm+xXBTgtU
         5OY5mxi4mLoyiWKqIeXDyNWjnc3LfP7890O0EZUz1eLjBUgYIdOz3t8laGphrck3g5/g
         3FRJugQdyqfXv72JVS1ZHMN0M54jzAbBwYFfHHo68HlZSuoKTsCdG52f29fVPDiaT0ej
         efp9KH23jDCskhsXdxhALNa+ODOXwlaf2PjmvOBejZkr6G9e3lqU6M0a0Fd+wObQNxSY
         gSgjTSN5y//P1ANJIdkj6xSgkxEunqQoLlf55y56FP4gOztnBhowDz7TQ6ezbAxQA/F7
         rZDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b8si144870wru.1.2019.03.02.22.16.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 22:16:24 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,434,1544482800"; 
   d="scan'208";a="371654584"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2019 07:16:23 +0100
Date: Sun, 3 Mar 2019 07:16:23 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumthia Prabakaran <madhumithabiw@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v4 0/2] Fix checkpatch.pl issues
In-Reply-To: <20190303052106.GA31969@madhuleo>
Message-ID: <alpine.DEB.2.21.1903030716070.3207@hadrien>
References: <cover.1551552831.git.madhumithabiw@gmail.com> <20190302211850.GA21688@kroah.com> <20190303052106.GA31969@madhuleo>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 2 Mar 2019, Madhumthia Prabakaran wrote:

> On Sat, Mar 02, 2019 at 10:18:50PM +0100, Greg KH wrote:
> > On Sat, Mar 02, 2019 at 01:04:25PM -0600, Madhumitha Prabakaran wrote:
> > > This patchset fixes the comment styles of SPDX-License Identifier based
> > > on License Identifier syntax.
> > >
> > > Madhumitha Prabakaran (2):
> > >   Staging: vt6655: channel.h: Fix comment style of SPDX License Identifier
> > >   Staging: vt6655: desc.h: Fix comment style of SPDX License Identifier
> >
> > Again, these look fine.
> >
> > Now go look at the subject lines of the patches you sent out.  It does
> > not match these.
> >
> > Something is really wrong with either how you are generating this
> > message, or the patches, it does not make sense at all.  They should
> > always match up identically as git should do it all for you.
> >
> > Please try sending the series to only yourself next, to verify you got
> > it right, before sending it to everyone.
> >
> > thanks,
> >
> > greg k-h
>
> I fixed this using the below link. https://wiki.umbc.edu/pages/viewpage.action?pageId=1867916.

Not sure to see any connection.

julia

>
> please correct me if I'm wrong
>
> Thanks
>
> Madhumitha
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190303052106.GA31969%40madhuleo.
> For more options, visit https://groups.google.com/d/optout.
>

