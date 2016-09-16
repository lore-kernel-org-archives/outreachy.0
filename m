X-GM-THRID: 6330646891713265664
X-Received: by 10.28.199.201 with SMTP id x192mr1215011wmf.1.1474015123483;
        Fri, 16 Sep 2016 01:38:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.150.140 with SMTP id y134ls646483wmd.12.canary; Fri, 16 Sep
 2016 01:38:42 -0700 (PDT)
X-Received: by 10.28.199.201 with SMTP id x192mr1215003wmf.1.1474015122814;
        Fri, 16 Sep 2016 01:38:42 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y6si323522wmg.0.2016.09.16.01.38.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 01:38:42 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,343,1470693600"; 
   d="scan'208";a="237064245"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 16 Sep 2016 10:38:42 +0200
Date: Fri, 16 Sep 2016 10:38:42 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sandhya bankar <bankarsandhya512@gmail.com>
cc: Julia Lawall <julia.lawall@lip6.fr>, 
    "Dilger, Andreas" <andreas.dilger@intel.com>, 
    "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>, 
    "Drokin, Oleg" <oleg.drokin@intel.com>, 
    James Simmons <jsimmons@infradead.org>, 
    Greg KH <gregkh@linuxfoundation.org>, 
    "Xiong, Jinshan" <jinshan.xiong@intel.com>, 
    "Siyao, Lai" <lai.siyao@intel.com>, "Xu, Bobijam" <bobijam.xu@intel.com>, 
    "mike.rapoport@gmail.com" <mike.rapoport@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Convert array index
 from the loop bound to the loop index.
In-Reply-To: <CAA3ASz=t4wZOkk=Bj8iYLMFHwzCj+E+0BbC9UsV+L17oToh3ZA@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609161038330.3049@hadrien>
References: <20160915194341.GA30843@sandhya> <alpine.DEB.2.10.1609152203580.3364@hadrien> <CAA3ASzn3u-kcLjy69W27oeT2eabtay7UHySdrVz0cV6dXUgWBA@mail.gmail.com> <706CE650-AC74-4C04-97F7-54A6A03E6C27@intel.com> <alpine.DEB.2.10.1609160743350.3122@hadrien>
 <CAA3ASz=t4wZOkk=Bj8iYLMFHwzCj+E+0BbC9UsV+L17oToh3ZA@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-619504752-1474015122=:3049"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-619504752-1474015122=:3049
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 16 Sep 2016, sandhya bankar wrote:

> Thanks Julia and Andreas.
> Should I need to send patch v2 as per your suggestions ?

Yes.

julia

>
> On Fri, Sep 16, 2016 at 11:17 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>       On Thu, 15 Sep 2016, Dilger, Andreas wrote:
>
>       >
>       > > On Sep 15, 2016, at 14:53, sandhya bankar
>       <bankarsandhya512@gmail.com> wrote:
>       > >
>       > > The structure cl_env_percpu[NR_CPUS] have been initializing
>       for each
>       > > possible cpu (i.e 0 to i) but during initialization if any
>       error will
>       > > occurred this come to the error handling code in which the
>       > > cl_env_percpu should be uninitialized upto i but currently
>
>       Sandhya,
>
>       "should be uninitialized" is a bit unclear, because it could
>       describe the
>       state that should hold, or the state that you should achieve. 
>       It could be
>       better to say "the error handling code which should
>       uninitialize/free/release (whatever seems best) the
>       cl_env_percpu ...".
>
>       Andreas's suggestion is also good.  It says that same thing in
>       another
>       way, and thus makes everything more clear.
>
>       Congratulations on finding a real bug :)
>
>       julia
>
>       > > uninitialization happening for the cl_env_percpu[i] which
>       does not
>       > > seems to be correct. That is why proposing this fix. Please
>       Correct me
>       > > ,If I am wrong. Should I send patch v2 with this issue
>       description ?
>       >
>       > This is definitely a bug, though thankfully only in an error
>       handling path.
>       >
>       > Your description is much more clear.  You might want to write
>       >
>       > "... but currently cleanup is happening repeatedly for the
>       same
>       >  cl_env_percpu[i] element."
>       >
>       > Cheers, Andreas
>       >
>       > > On Fri, Sep 16, 2016 at 1:35 AM, Julia Lawall
>       <julia.lawall@lip6.fr> wrote:
>       > >>
>       > >>
>       > >> On Fri, 16 Sep 2016, Sandhya Bankar wrote:
>       > >>
>       > >> > Convert array index from the loop bound to the loop
>       index.
>       > >> > Used below semantic patch to identify this issue:
>       > >>
>       > >> This is a really nice idea!  However, it would be good for
>       the commit
>       > >> message to explain why the change is correct.  Certainly
>       the code is
>       > >> suspicious, but why is it actually wrong?  The idea would
>       be to consider
>       > >> what is done with cle on each iteration.
>       > >>
>       > >> julia
>       > >>
>       > >> > @@
>       > >> > expression e1,e2,ar;
>       > >> > @@
>       > >> >
>       > >> > for(e1 = 0; e1 < e2; e1++) { <...
>       > >> >   ar[
>       > >> > - e2
>       > >> > + e1
>       > >> >   ]
>       > >> >   ...> }
>       > >> >
>       > >> >
>       > >> > Signed-off-by: Sandhya Bankar
>       <bankarsandhya512@gmail.com>
>       > >> > ---
>       > >> >  drivers/staging/lustre/lustre/obdclass/cl_object.c |   
>       2 +-
>       > >> >  1 files changed, 1 insertions(+), 1 deletions(-)
>       > >> >
>       > >> > diff --git
>       a/drivers/staging/lustre/lustre/obdclass/cl_object.c
>       b/drivers/staging/lustre/lustre/obdclass/cl_object.c
>       > >> > index 91a5806..eeccd30 100755
>       > >> > --- a/drivers/staging/lustre/lustre/obdclass/cl_object.c
>       > >> > +++ b/drivers/staging/lustre/lustre/obdclass/cl_object.c
>       > >> > @@ -1000,7 +1000,7 @@ static int cl_env_percpu_init(void)
>       > >> >                * thus we must uninitialize up to i, the
>       rest are undefined.
>       > >> >                */
>       > >> >               for (j = 0; j < i; j++) {
>       > >> > -                     cle = &cl_env_percpu[i];
>       > >> > +                     cle = &cl_env_percpu[j];
>       > >> >                       lu_context_exit(&cle->ce_ses);
>       > >> >                       lu_context_fini(&cle->ce_ses);
>       > >> >                       lu_env_fini(&cle->ce_lu);
>       > >> > --
>       > >> > 1.7.1
>       > >> >
>       > >> > --
>       > >> > You received this message because you are subscribed to
>       the Google Groups "outreachy-kernel" group.
>       > >> > To unsubscribe from this group and stop receiving emails
>       from it, send an email to
>       outreachy-kernel+unsubscribe@googlegroups.com.
>       > >> > To post to this group, send email to
>       outreachy-kernel@googlegroups.com.
>       > >> > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20160915194341.GA30843%4
>       0sandhya.
>       > >> > For more options, visit
>       https://groups.google.com/d/optout.
>       > >> >
>       > >>
>       >
>       >
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAA3ASz%3Dt4wZOkk%3DBj8i
> YLMFHwzCj%2BE%2B0BbC9UsV%2BL17oToh3ZA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-619504752-1474015122=:3049--

