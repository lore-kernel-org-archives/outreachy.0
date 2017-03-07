X-GM-THRID: 6394872359829897216
X-Received: by 10.46.84.13 with SMTP id i13mr520498ljb.2.1488924328847;
        Tue, 07 Mar 2017 14:05:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.71 with SMTP id 68ls189421ljf.34.gmail; Tue, 07 Mar 2017
 14:05:28 -0800 (PST)
X-Received: by 10.25.156.74 with SMTP id f71mr477691lfe.26.1488924328093;
        Tue, 07 Mar 2017 14:05:28 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e72si496792wma.0.2017.03.07.14.05.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 14:05:28 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,260,1486422000"; 
   d="scan'208";a="263586630"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2017 23:05:27 +0100
Date: Tue, 7 Mar 2017 23:05:27 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] media:atomisp:pci: Use error codes
 instead of bool variables
In-Reply-To: <CALta04yUrNJ2ShXUoZmHuLen=j+rWLY7wKX2uFNXuKmCuSAiMQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1703072304000.2292@hadrien>
References: <20170307213044.GA11835@fireworks> <alpine.DEB.2.20.1703072237220.2292@hadrien> <CALta04yUrNJ2ShXUoZmHuLen=j+rWLY7wKX2uFNXuKmCuSAiMQ@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 8 Mar 2017, Georgiana Chelu wrote:

> >
> > > -     return true;
> > > +     return INPUT_SYSTEM_ERR_NO_ERROR;
> > > +
> > > +exit:
> > > +     return INPUT_SYSTEM_ERR_CREATE_CHANNEL_FAIL;
> >
> > Oh...  I was hoping for standard kernel values like -ENOMEM, -EINVAL, etc.
>
> I will further investigate this. At this moment, it seemed reasonable to me
> to use those error codes. They were defined in the module, but never used,
> which made me think that they still have a purpose. So, I chose the
> error code that seemed to be related to the name of the function.

It's a reasonable strategy, but someday the code will have to use the
kernel ones, so maybe one may as well get started on that.  The code will
be hybrid for a while, but tere is no point to try to do the whole thing
at once and make mistakes.

julia

>
> >
> > Also, watch your subject lines.  Normally there is a space after each :.
> > In any case, you should pick what has been commonly used for this driver.
> >
>
> I will take care of this in the future. Thanks!
>
> > julia
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CALta04yUrNJ2ShXUoZmHuLen%3Dj%2BrWLY7wKX2uFNXuKmCuSAiMQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

