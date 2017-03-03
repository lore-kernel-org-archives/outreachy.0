X-GM-THRID: 6392991510876389376
X-Received: by 10.25.151.69 with SMTP id z66mr629062lfd.12.1488566248819;
        Fri, 03 Mar 2017 10:37:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.213 with SMTP id 204ls1082826ljj.51.gmail; Fri, 03 Mar
 2017 10:37:27 -0800 (PST)
X-Received: by 10.46.20.72 with SMTP id 8mr761365lju.19.1488566247936;
        Fri, 03 Mar 2017 10:37:27 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b186si410986wme.1.2017.03.03.10.37.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 10:37:27 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,238,1484002800"; 
   d="scan'208";a="263048891"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2017 19:37:27 +0100
Date: Fri, 3 Mar 2017 19:37:26 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
cc: Sakari Ailus <sakari.ailus@iki.fi>, mchehab@kernel.org, 
    Greg KH <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH 1/7] staging: media: Remove
 unnecessary typecast of c90 int constant
In-Reply-To: <CALrZqyOeOK2k1K8Z2Yt3SmvJQ8A+vigNBsd39-paPwkRAY6CVQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1703031936290.2133@hadrien>
References: <1488484322-5928-1-git-send-email-singhalsimran0@gmail.com> <20170303174552.GP3220@valkosipuli.retiisi.org.uk> <CALrZqyOeOK2k1K8Z2Yt3SmvJQ8A+vigNBsd39-paPwkRAY6CVQ@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 3 Mar 2017, SIMRAN SINGHAL wrote:

> On Fri, Mar 3, 2017 at 11:15 PM, Sakari Ailus <sakari.ailus@iki.fi> wrote:
> > Hi Simran,
> >
> > On Fri, Mar 03, 2017 at 01:21:56AM +0530, simran singhal wrote:
> >> This patch removes unnecessary typecast of c90 int constant.
> >>
> >> WARNING: Unnecessary typecast of c90 int constant
> >>
> >> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> >
> > Which tree are these patches based on?
> Can you please explain what's the problem with this patch. And
> please elaborate your question.

It is probably staging-testing.

julia


>
> >
> > --
> > Regards,
> >
> > Sakari Ailus
> > e-mail: sakari.ailus@iki.fi     XMPP: sailus@retiisi.org.uk
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CALrZqyOeOK2k1K8Z2Yt3SmvJQ8A%2BvigNBsd39-paPwkRAY6CVQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

