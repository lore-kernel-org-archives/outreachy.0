X-GM-THRID: 6330646891713265664
X-Received: by 10.46.32.154 with SMTP id g26mr2084211lji.3.1474004872260;
        Thu, 15 Sep 2016 22:47:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.33.71 with SMTP id h68ls408397ljh.53.gmail; Thu, 15 Sep
 2016 22:47:51 -0700 (PDT)
X-Received: by 10.25.141.85 with SMTP id p82mr2074467lfd.10.1474004871718;
        Thu, 15 Sep 2016 22:47:51 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e21si531882wmc.2.2016.09.15.22.47.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 22:47:51 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,343,1470693600"; 
   d="scan'208";a="193614817"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 16 Sep 2016 07:47:50 +0200
Date: Fri, 16 Sep 2016 07:47:49 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Dilger, Andreas" <andreas.dilger@intel.com>
cc: "bankarsandhya512@gmail.com" <bankarsandhya512@gmail.com>, 
    Julia Lawall <julia.lawall@lip6.fr>, 
    "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>, 
    "Drokin, Oleg" <oleg.drokin@intel.com>, 
    James Simmons <jsimmons@infradead.org>, 
    Greg KH <gregkh@linuxfoundation.org>, 
    "Xiong, Jinshan" <jinshan.xiong@intel.com>, 
    "Siyao, Lai" <lai.siyao@intel.com>, "Xu, Bobijam" <bobijam.xu@intel.com>, 
    "mike.rapoport@gmail.com" <mike.rapoport@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Convert array index
 from the loop bound to the loop index.
In-Reply-To: <706CE650-AC74-4C04-97F7-54A6A03E6C27@intel.com>
Message-ID: <alpine.DEB.2.10.1609160743350.3122@hadrien>
References: <20160915194341.GA30843@sandhya> <alpine.DEB.2.10.1609152203580.3364@hadrien> <CAA3ASzn3u-kcLjy69W27oeT2eabtay7UHySdrVz0cV6dXUgWBA@mail.gmail.com> <706CE650-AC74-4C04-97F7-54A6A03E6C27@intel.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 15 Sep 2016, Dilger, Andreas wrote:

>
> > On Sep 15, 2016, at 14:53, sandhya bankar <bankarsandhya512@gmail.com> wrote:
> >
> > The structure cl_env_percpu[NR_CPUS] have been initializing for each
> > possible cpu (i.e 0 to i) but during initialization if any error will
> > occurred this come to the error handling code in which the
> > cl_env_percpu should be uninitialized upto i but currently

Sandhya,

"should be uninitialized" is a bit unclear, because it could describe the
state that should hold, or the state that you should achieve.  It could be
better to say "the error handling code which should
uninitialize/free/release (whatever seems best) the cl_env_percpu ...".

Andreas's suggestion is also good.  It says that same thing in another
way, and thus makes everything more clear.

Congratulations on finding a real bug :)

julia

> > uninitialization happening for the cl_env_percpu[i] which does not
> > seems to be correct. That is why proposing this fix. Please Correct me
> > ,If I am wrong. Should I send patch v2 with this issue description ?
>
> This is definitely a bug, though thankfully only in an error handling path.
>
> Your description is much more clear.  You might want to write
>
> "... but currently cleanup is happening repeatedly for the same
>  cl_env_percpu[i] element."
>
> Cheers, Andreas
>
> > On Fri, Sep 16, 2016 at 1:35 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >>
> >>
> >> On Fri, 16 Sep 2016, Sandhya Bankar wrote:
> >>
> >> > Convert array index from the loop bound to the loop index.
> >> > Used below semantic patch to identify this issue:
> >>
> >> This is a really nice idea!  However, it would be good for the commit
> >> message to explain why the change is correct.  Certainly the code is
> >> suspicious, but why is it actually wrong?  The idea would be to consider
> >> what is done with cle on each iteration.
> >>
> >> julia
> >>
> >> > @@
> >> > expression e1,e2,ar;
> >> > @@
> >> >
> >> > for(e1 = 0; e1 < e2; e1++) { <...
> >> >   ar[
> >> > - e2
> >> > + e1
> >> >   ]
> >> >   ...> }
> >> >
> >> >
> >> > Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> >> > ---
> >> >  drivers/staging/lustre/lustre/obdclass/cl_object.c |    2 +-
> >> >  1 files changed, 1 insertions(+), 1 deletions(-)
> >> >
> >> > diff --git a/drivers/staging/lustre/lustre/obdclass/cl_object.c b/drivers/staging/lustre/lustre/obdclass/cl_object.c
> >> > index 91a5806..eeccd30 100755
> >> > --- a/drivers/staging/lustre/lustre/obdclass/cl_object.c
> >> > +++ b/drivers/staging/lustre/lustre/obdclass/cl_object.c
> >> > @@ -1000,7 +1000,7 @@ static int cl_env_percpu_init(void)
> >> >                * thus we must uninitialize up to i, the rest are undefined.
> >> >                */
> >> >               for (j = 0; j < i; j++) {
> >> > -                     cle = &cl_env_percpu[i];
> >> > +                     cle = &cl_env_percpu[j];
> >> >                       lu_context_exit(&cle->ce_ses);
> >> >                       lu_context_fini(&cle->ce_ses);
> >> >                       lu_env_fini(&cle->ce_lu);
> >> > --
> >> > 1.7.1
> >> >
> >> > --
> >> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160915194341.GA30843%40sandhya.
> >> > For more options, visit https://groups.google.com/d/optout.
> >> >
> >>
>
>

