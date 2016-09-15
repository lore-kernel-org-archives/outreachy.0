X-GM-THRID: 6330205612337528832
X-Received: by 10.28.152.87 with SMTP id a84mr810708wme.7.1473967591390;
        Thu, 15 Sep 2016 12:26:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.26.150 with SMTP id a144ls420583wma.14.gmail; Thu, 15 Sep
 2016 12:26:28 -0700 (PDT)
X-Received: by 10.194.126.165 with SMTP id mz5mr1806019wjb.5.1473967588565;
        Thu, 15 Sep 2016 12:26:28 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p199si403771wmd.1.2016.09.15.12.26.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:26:28 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,340,1470693600"; 
   d="scan'208";a="193588789"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Sep 2016 21:26:27 +0200
Date: Thu, 15 Sep 2016 21:26:26 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: Ian Abbott <abbotti@mev.co.uk>, hsweeten@visionengravers.com, 
    "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v2] Staging: comedi: drivers:
 Remove unused functions
In-Reply-To: <CAOH+1jH7DWRuQDqrhep=p1Ztypak0LEuhOVBfXBcDUoLLKvV2A@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609152126010.3364@hadrien>
References: <1473949424-12322-1-git-send-email-bhumirks@gmail.com> <39752ed1-573d-dbbb-a670-a5ab9fbf287e@mev.co.uk> <CAOH+1jGH+4vvRYvFXEnRVF+FSK3KwEn-duxFLcqFvUNTNEK_4g@mail.gmail.com> <57DACFA4.3050207@mev.co.uk>
 <CAOH+1jH7DWRuQDqrhep=p1Ztypak0LEuhOVBfXBcDUoLLKvV2A@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 15 Sep 2016, Bhumika Goyal wrote:

> On Thu, Sep 15, 2016 at 10:13 PM, Ian Abbott <abbotti@mev.co.uk> wrote:
> > On 15/09/2016 16:56, Bhumika Goyal wrote:
> >>
> >> On Thu, Sep 15, 2016 at 8:57 PM, Ian Abbott <abbotti@mev.co.uk> wrote:
> >>>
> >>> On 15/09/16 15:23, Bhumika Goyal wrote:
> >>>>
> >>>>
> >>>> The functions s626_get_latch_source, s626_get_load_trig,
> >>>> s626_set_clk_pol and  s626_set_index_src are not used anywhere in
> >>>> the kernel. Therefore, remove them. The static unused functions were
> >>>> detected using Coccinelle but the change was done by hand.
> >
> > [snip]
> >>>
> >>> It will be better to get rid of all the #ifdef'ed out functions in one
> >>> go,
> >>> rather than just few at a time.  Your commit
> >>> dda68765d757c7da878b093a87f24d6a1d4cfb64 in February removed a few more
> >>> unused functions from this driver.
> >>>
> >> Ok, I will remove all the #ifdef'ed functions together. But should I
> >> send a v3 for that or a new patch?
> >> Thanks for the input.
> >
> >
> > I think you can just send it as a new patch, but also mention "s626" in the
> > patch subject, something like:
> >
> > Staging: comedi: s626: Remove unused functions
> >
> > (We don't usually bother with the "drivers:" tag after the "comedi:" tag.)
> >
>
> Ok, point noted. Thanks for explaining.

Run git log --oneline for the affected file and see what people have
commonly done.

julia

>
> Thanks,
> Bhumika
>
> > Thanks,
> > Ian.
> >
> >
> > --
> > -=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
> > -=(                          Web: http://www.mev.co.uk/  )=-
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAOH%2B1jH7DWRuQDqrhep%3Dp1Ztypak0LEuhOVBfXBcDUoLLKvV2A%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

