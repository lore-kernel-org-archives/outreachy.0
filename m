X-GM-THRID: 6392087189982806016
X-Received: by 10.25.199.212 with SMTP id x203mr274847lff.9.1488287569662;
        Tue, 28 Feb 2017 05:12:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.93 with SMTP id 90ls123282ljb.13.gmail; Tue, 28 Feb 2017
 05:12:48 -0800 (PST)
X-Received: by 10.25.196.68 with SMTP id u65mr280429lff.0.1488287568580;
        Tue, 28 Feb 2017 05:12:48 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i76si1101896wmh.1.2017.02.28.05.12.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 05:12:48 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,219,1484002800"; 
   d="scan'208";a="215008359"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Feb 2017 14:12:47 +0100
Date: Tue, 28 Feb 2017 14:12:39 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Coccinelle Challenge problem 6
In-Reply-To: <CAOCi2DGfGYUfur8X3A7zqpoFpwfjM92BOmHg1uveLkvUdFVtNw@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1702281410560.3056@hadrien>
References: <CAOCi2DEcHAT-kGakEWfuO7xmYQ5OSK-MTxVmuLfPcAwkapx-yg@mail.gmail.com> <alpine.DEB.2.20.1702281118570.3056@hadrien> <CAOCi2DGfGYUfur8X3A7zqpoFpwfjM92BOmHg1uveLkvUdFVtNw@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-961533792-1488287559=:3056"

--8323329-961533792-1488287559=:3056
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 28 Feb 2017, Gargi Sharma wrote:

> On Tue, Feb 28, 2017 at 3:49 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> >
> > On Tue, 28 Feb 2017, Gargi Sharma wrote:
> >
> > > Hi,
> > > Here's my Coccinelle script for problem 6.
> > >
> > > @a@
> > > expression pos, n, mem;
> > > type t;
> > > identifier var;
> > > iterator name list_for_each_entry, list_for_each;
> > > @@
> > >
> > > - list_for_each(pos, n)
> > > + list_for_each_entry(var, n, mem)
> > >   {
> > >   ... when != var
> >
> > I think you want when != pos here too?Yeah, I do. I'll correct that. What
> I also want to do is remove the declaration for "pos" 
> if it not being used in the function anywhere once list_for_each and
> list_entry has
> been removed. I'm drawing a blank as to how to approach that. Any
> suggestions that
> you might have?

The easiest thing to do would be to just remove declarations of variables
of type struct list_head * that are not used anywhere in the function.
Probably there would not be any such unused variables in the original
code.

julia

>
> thanks,
> gargi
>
>
> >
> > julia
> >
> > > - var = list_entry(pos, t, mem);
> > >   ... when != pos
> > >   }
> > >
> > > Thanks,
> > > Gargi
> > >
> > > --
> > > You received this message because you are subscribed to the Google
> Groups
> > > "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send
> an
> > > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the webvisithttps://groups.google.com/d/msgid/outreachy-kernel/CAOCi2DEcHAT-kGakEW
> fuO7x
> > > mYQ5OSK-MTxVmuLfPcAwkapx-yg%40mail.gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.17022811
> 18570.3056%40hadrien.
> > For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-961533792-1488287559=:3056--

