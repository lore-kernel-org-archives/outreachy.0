X-GM-THRID: 6391984177458184192
X-Received: by 10.28.166.144 with SMTP id p138mr79425wme.1.1488287650698;
        Tue, 28 Feb 2017 05:14:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.65 with SMTP id y1ls107370ljd.17.gmail; Tue, 28 Feb 2017
 05:14:10 -0800 (PST)
X-Received: by 10.25.40.17 with SMTP id o17mr268990lfo.25.1488287650274;
        Tue, 28 Feb 2017 05:14:10 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y19si1181982wmd.0.2017.02.28.05.14.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 05:14:10 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,219,1484002800"; 
   d="scan'208";a="215008678"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Feb 2017 14:14:09 +0100
Date: Tue, 28 Feb 2017 14:14:00 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vaishali Thakkar <vthakkar1994@gmail.com>
cc: Varsha Rao <rvarsha016@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: Problem with coccinelle.
In-Reply-To: <CAK-LDbKHYUe_Hs79ie52FHtLFZG4rGb8kbds5EaQb2kMUEMqKA@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1702281413100.3056@hadrien>
References: <97a8b35a-3899-436b-8455-6fdd5d3a6ccd@googlegroups.com> <c2f9d539-fe98-4541-b86c-f71555d44020@googlegroups.com> <alpine.DEB.2.20.1702280747380.2078@hadrien> <68311bc4-09a6-4baf-ab04-b0ce5916c4c9@googlegroups.com>
 <CAK-LDbKHYUe_Hs79ie52FHtLFZG4rGb8kbds5EaQb2kMUEMqKA@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 28 Feb 2017, Vaishali Thakkar wrote:

> On Tue, Feb 28, 2017 at 4:08 PM, Varsha Rao <rvarsha016@gmail.com> wrote:
> >
> >> This seems likely fine.  How did you get to this situation?  Did you
> >> install it from your package manager or did you compile it on your
> >> machine.  When you run spatch, does it work?
> >>
> >    I have installed using package manager.
> >    when I run spatch, it gives following errors:
> >
> >    spatch --sp-file ret.cocci --no-includes
> > ~/git/kernels/staging/drivers/staging/most/hdm-dim2/dim2_sysfs.c  > ret.out
> >
> >   init_defs_builtins: /usr/lib64/coccinelle/standard.h
> >   minus: parse error:
> >   File "ret.cocci", line 10, column 0, charpos = 80
> >   around = '',
> >   whole content =
>
> The file[ret.cocci] sent by you works perfectly fine for me without any parsing
> error. Are you sure there is nothing else in the same file [ret.cocci]?
>
> Parsing error is shown at the line 10 and file has 9 lines. Also, in your
> first mail you seemed to have something else as an error. [Exception
> failure]

This is understandable.  If the parser is confused at the end of the file,
it will show an error past the last line in the file, at least is there is
a newline at the end of the last line.

julia

>
> >  [varsha@varsha coccinelle]$ spatch --sp-file ret.cocci --no-includes
> > ~/git/kernels/staging/drivers/staging/most/hdm-dim2/dim2_sysfs.c  > ret.out
> >  init_defs_builtins: /usr/lib64/coccinelle/standard.h
> >  HANDLING:
> > /home/varsha/git/kernels/staging/drivers/staging/most/hdm-dim2/dim2_sysfs.c
>
> If you have installed coccinelle from package manager then what is under
> coccinelle directory? Have you cloned coccinelle code and have tried to
> install it manually as well?
>
> >  Thanks,
> >  Varsha
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> > https://groups.google.com/d/msgid/outreachy-kernel/68311bc4-09a6-4baf-ab04-b0ce5916c4c9%40googlegroups.com.
> > For more options, visit https://groups.google.com/d/optout.
>
>
>
> --
> Vaishali
> http://vaishalithakkar.in/
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAK-LDbKHYUe_Hs79ie52FHtLFZG4rGb8kbds5EaQb2kMUEMqKA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

