X-GM-THRID: 6394057541861507072
X-Received: by 10.46.33.82 with SMTP id h79mr2427115ljh.7.1488800632019;
        Mon, 06 Mar 2017 03:43:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.20 with SMTP id m20ls1377745ljb.27.gmail; Mon, 06 Mar
 2017 03:43:51 -0800 (PST)
X-Received: by 10.46.83.7 with SMTP id h7mr2502930ljb.24.1488800631368;
        Mon, 06 Mar 2017 03:43:51 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f7si971953wmg.3.2017.03.06.03.43.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 03:43:51 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,253,1484002800"; 
   d="scan'208";a="263304815"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Mar 2017 12:43:51 +0100
Date: Mon, 6 Mar 2017 12:43:39 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Coccinelle tasks
In-Reply-To: <20170306084029.GA28528@aishwarya>
Message-ID: <alpine.DEB.2.20.1703061242480.3078@hadrien>
References: <888e8142-ac49-424e-b3ca-ea308f66330a@googlegroups.com> <alpine.DEB.2.20.1703051751230.3052@hadrien> <20170306084029.GA28528@aishwarya>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-198492300-1488800619=:3078"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-198492300-1488800619=:3078
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 6 Mar 2017, Aishwarya Pant wrote:

> On Sun, Mar 05, 2017 at 05:58:10PM +0100, Julia Lawall wrote:
> >
> >
> > On Sun, 5 Mar 2017, Aishwarya Pant wrote:
> >
> > > Hi
> > > I would like to work on a Coccinelle task, but I'm not sure how to go
> > > forward.
> > > - I ran a sudo apt-get install coccinelle
> > > - And then ran  spatch --sp-file scripts/coccinelle/misc/bugon.cocci
> > > drivers/staging/dgnc/* -D report
> >
> > Don't use * in a file name when you run Coccinelle.  That will cause it to
> > consider all the files at once, which will lead to bad memory usage.  What
> > you want is to consider the files one at a time, which is done by just
> > putting the directory name, ie what you have but with no /*
> >
> > >
> > > The output of all scripts I've run has been something like this-
> > >
> > > init_defs_builtins: /usr/lib/coccinelle/standard.h
> > > HANDLING: drivers/staging/dgnc/dgnc_cls.c drivers/staging/dgnc/dgnc_cls.h
> > > drivers/staging/dgnc/dgnc_driver.c drivers/staging/dgnc/dgnc_driver.h
> > > drivers/staging/dgnc/dgnc_mgmt.c drivers/staging/dgnc/dgnc_mgmt.h
> > > drivers/staging/dgnc/dgnc_neo.c drivers/staging/dgnc/dgnc_neo.h
> > > drivers/staging/dgnc/dgnc_pci.h drivers/staging/dgnc/dgnc_tty.c
> > > drivers/staging/dgnc/dgnc_tty.h drivers/staging/dgnc/dgnc_utils.c
> > > drivers/staging/dgnc/dgnc_utils.h drivers/staging/dgnc/digi.h
> > > drivers/staging/dgnc/Kconfig drivers/staging/dgnc/Makefile
> > > drivers/staging/dgnc/TODO
> >
> > Actually, you can see what I just said in this output.  It is considering
> > all of the files at once.
> >
> > > How can I run coccinelle scripts to detect issues and write some of my own
> > > (same as coccinelle tasks?) ?
> >
> > If the above was the only output, then there was nothing for Coccinelle to
> > do on your code.  If Coccinelle finds something to change, it will emit a
> > patch.  The patch comes on standard output and the above HANDLING stuff
> > comes out on standard error.
> >
> > I would suggest to work through the tutorial at the top of the Coccinelle
> > tasks page.  I can't get to the kernelnewbies page at the moment, but the
> > link should be there somewhere.  Alternatively:
> >
> > slides: http://coccinelle.lip6.fr/papers/tutorial.pdf
> > video: https://www.youtube.com/watch?v=buZrNd6XkEw (quite optional)
>
> Thanks for the references Julia.
>
> I am now facing some issues running coccicheck. I run the command as:
>
> make coccicheck MODE=report M=drivers/staging/vc04_services/ --debug
>
> After issuing some warnings the process fails with the message:
>
> 773 777
> coccicheck failed

I would need to see the entire output.

What version of Coccinelle do you have?

julia

>
>
> > julia
> >
> > > Thanks
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups
> > > "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an
> > > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/888e8142-ac49-424e-b3ca-
> > > ea308f66330a%40googlegroups.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> > >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170306084029.GA28528%40aishwarya.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-198492300-1488800619=:3078--

