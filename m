X-GM-THRID: 6389890697918414848
X-Received: by 10.28.17.11 with SMTP id 11mr218132wmr.9.1488004443894;
        Fri, 24 Feb 2017 22:34:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.67 with SMTP id 64ls34223ljf.43.gmail; Fri, 24 Feb 2017
 22:34:03 -0800 (PST)
X-Received: by 10.46.0.147 with SMTP id e19mr744127lji.6.1488004443344;
        Fri, 24 Feb 2017 22:34:03 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v70si297545wmf.0.2017.02.24.22.34.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 22:34:03 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,202,1484002800"; 
   d="scan'208";a="262024841"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Feb 2017 07:34:02 +0100
Date: Sat, 25 Feb 2017 07:34:02 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: Julia Lawall <julia.lawall@lip6.fr>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, arnaud.patard@rtp-net.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: xgifb: function prototype
 argument should have an identifier name
In-Reply-To: <CA+XqjF91bd_er+idvUBPZCTYFHaxF6Mgf1oQ6vTz9gmk6ggC6Q@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1702250733180.2088@hadrien>
References: <20170222111918.GA25063@arushi-HP-Pavilion-Notebook> <20170224163130.GA29645@kroah.com> <CA+XqjF_sihk6_UhgLzUH6FVSFMu02Vadp1tjatQft-UJ14SJeA@mail.gmail.com> <alpine.DEB.2.20.1702241748000.3089@hadrien>
 <CA+XqjF91bd_er+idvUBPZCTYFHaxF6Mgf1oQ6vTz9gmk6ggC6Q@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-2084284952-1488004443=:2088"

--8323329-2084284952-1488004443=:2088
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 25 Feb 2017, Arushi Singhal wrote:

>
>
> On Fri, Feb 24, 2017 at 10:18 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>       On Fri, 24 Feb 2017, Arushi Singhal wrote:
>
>       >
>       >
>       > On Fri, Feb 24, 2017 at 10:01 PM, Greg Kroah-Hartman
>       > <gregkh@linuxfoundation.org> wrote:
>       >       On Wed, Feb 22, 2017 at 04:49:19PM +0530, Arushi Singhal
>       wrote:
>       >       > function prototype arguments like 'struct
>       vb_device_info
>       >       *','unsigned
>       >       > long' etc. should have an identifier name.
>       >       >
>       >       > Signed-off-by: Arushi Singhal
>       >       <arushisinghal19971997@gmail.com>
>       >       > ---
>       >       > Changes in v3:
>       >       >   - By mistake one irrelevant line was added which is
>       removed
>       >       in this
>       >       >     patch.
>       >       >   - write the changes done in previous version in
>       correct
>       >       format.
>       >       >   - make the commit subject more relevant and
>       accurate.
>       >
>       >       This patch doesn't apply to my tree at all :(
>       >
>       > Why this is so?
>
>       Maybe someone else made a change on the same lines as yours. 
>       Check that
>       your tree is up to date.
>
> Is all the changes being done by someone before?

I don't know.  Just update your tree and try to apply your patch again.
Or look at the code that your patch should apply to.  It should be easy to
see what is wrong.

julia

>
>       julia
>
>       > thanks
>       > Arushi
>       >       sorry,
>       >
>       >       greg k-h
>       >
>       >
> > --
> > You received this message because you are subscribed to the Google
> Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> send an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to
> outreachy-kernel@googlegroups.com.
> > To view this discussion on the webvisithttps://groups.google.com/d/msgid/outreachy-kernel/CA%2BXqjF_sihk6_Uhg
> LzUH6
> > FVSFMu02Vadp1tjatQft-UJ14SJeA%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CA%2BXqjF91bd_er%2BidvUB
> PZCTYFHaxF6Mgf1oQ6vTz9gmk6ggC6Q%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-2084284952-1488004443=:2088--

