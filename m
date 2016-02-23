X-GM-THRID: 6254188564975714304
X-Received: by 10.112.129.65 with SMTP id nu1mr4467855lbb.18.1456260391007;
        Tue, 23 Feb 2016 12:46:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.143.204 with SMTP id r195ls432419lfd.97.gmail; Tue, 23 Feb
 2016 12:46:30 -0800 (PST)
X-Received: by 10.112.54.202 with SMTP id l10mr4424013lbp.14.1456260390297;
        Tue, 23 Feb 2016 12:46:30 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w10si1171964wmw.3.2016.02.23.12.46.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 12:46:30 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,491,1449529200"; 
   d="scan'208";a="204353880"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2016 21:46:18 +0100
Date: Tue, 23 Feb 2016 21:46:17 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: Julia Lawall <julia.lawall@lip6.fr>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rts5208: Replace pci_enable_device
 with pcim_enable_device
In-Reply-To: <CA+5yK5FR5jANUfhtpaOJ_Twk8zKMwztWO5ho9LD6hpu7V3La2Q@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1602232146080.2040@localhost6.localdomain6>
References: <20160222184544.GA29097@amitoj-Inspiron-3542> <alpine.DEB.2.02.1602232037580.2040@localhost6.localdomain6> <CA+5yK5GB29KPi7ScAXNf6m10fNm8vphE2pQGrocSot-Vm+RfEw@mail.gmail.com> <alpine.DEB.2.02.1602232050240.2040@localhost6.localdomain6>
 <CA+5yK5GP=H87SE2nLsn+QZifxwL0aGhTvkGBLEXBC1bFuOndiA@mail.gmail.com> <CA+5yK5FR5jANUfhtpaOJ_Twk8zKMwztWO5ho9LD6hpu7V3La2Q@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 24 Feb 2016, Amitoj Kaur Chawla wrote:

> On Wed, Feb 24, 2016 at 1:26 AM, Amitoj Kaur Chawla
> <amitoj1606@gmail.com> wrote:
> > On Wed, Feb 24, 2016 at 1:20 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >>
> >>> >
> >>> I'll write a separate script for the latter, though a lot of people
> >>> have submitted patches for this change so there'll be less occurences
> >>> I think, nonetheless will write one.
> >>>
> >>> One of my previous patches that Greg accepted for switching to devm
> >>> functions had a similar thing so I thought it was okay. I can divide
> >>> the changes into 2 patches and send as a series separately if you
> >>> prefer.
> >>
> >> I think it would be better.  There is no relation to the devm issue.
> >>
> >> julia
> >
> I'll resend this patch without the pci_set_drvdata removal and send
> the removal in a different series which will be using the semantic
> patch I've written to remove these occurrences.

Sounds good.

julia

> 
> Amitoj
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CA%2B5yK5FR5jANUfhtpaOJ_Twk8zKMwztWO5ho9LD6hpu7V3La2Q%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

