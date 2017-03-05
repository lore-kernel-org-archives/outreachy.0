X-GM-THRID: 6394057541861507072
X-Received: by 10.46.22.68 with SMTP id 4mr1832113ljw.14.1488733103239;
        Sun, 05 Mar 2017 08:58:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.201.79 with SMTP id z76ls284733lff.54.gmail; Sun, 05 Mar
 2017 08:58:22 -0800 (PST)
X-Received: by 10.25.56.6 with SMTP id f6mr1504410lfa.4.1488733102169;
        Sun, 05 Mar 2017 08:58:22 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h198si798888wmg.1.2017.03.05.08.58.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 08:58:22 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,249,1484002800"; 
   d="scan'208";a="215630968"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Mar 2017 17:58:21 +0100
Date: Sun, 5 Mar 2017 17:58:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Coccinelle tasks
In-Reply-To: <888e8142-ac49-424e-b3ca-ea308f66330a@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1703051751230.3052@hadrien>
References: <888e8142-ac49-424e-b3ca-ea308f66330a@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-878743061-1488733091=:3052"

--8323329-878743061-1488733091=:3052
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 5 Mar 2017, Aishwarya Pant wrote:

> Hi
> I would like to work on a Coccinelle task, but I'm not sure how to go
> forward.
> - I ran a sudo apt-get install coccinelle
> - And then ran  spatch --sp-file scripts/coccinelle/misc/bugon.cocci
> drivers/staging/dgnc/* -D report

Don't use * in a file name when you run Coccinelle.  That will cause it to
consider all the files at once, which will lead to bad memory usage.  What
you want is to consider the files one at a time, which is done by just
putting the directory name, ie what you have but with no /*

>
> The output of all scripts I've run has been something like this-
>
> init_defs_builtins: /usr/lib/coccinelle/standard.h
> HANDLING: drivers/staging/dgnc/dgnc_cls.c drivers/staging/dgnc/dgnc_cls.h
> drivers/staging/dgnc/dgnc_driver.c drivers/staging/dgnc/dgnc_driver.h
> drivers/staging/dgnc/dgnc_mgmt.c drivers/staging/dgnc/dgnc_mgmt.h
> drivers/staging/dgnc/dgnc_neo.c drivers/staging/dgnc/dgnc_neo.h
> drivers/staging/dgnc/dgnc_pci.h drivers/staging/dgnc/dgnc_tty.c
> drivers/staging/dgnc/dgnc_tty.h drivers/staging/dgnc/dgnc_utils.c
> drivers/staging/dgnc/dgnc_utils.h drivers/staging/dgnc/digi.h
> drivers/staging/dgnc/Kconfig drivers/staging/dgnc/Makefile
> drivers/staging/dgnc/TODO

Actually, you can see what I just said in this output.  It is considering
all of the files at once.

> How can I run coccinelle scripts to detect issues and write some of my own
> (same as coccinelle tasks?) ?

If the above was the only output, then there was nothing for Coccinelle to
do on your code.  If Coccinelle finds something to change, it will emit a
patch.  The patch comes on standard output and the above HANDLING stuff
comes out on standard error.

I would suggest to work through the tutorial at the top of the Coccinelle
tasks page.  I can't get to the kernelnewbies page at the moment, but the
link should be there somewhere.  Alternatively:

slides: http://coccinelle.lip6.fr/papers/tutorial.pdf
video: https://www.youtube.com/watch?v=buZrNd6XkEw (quite optional)

julia

> Thanks
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/888e8142-ac49-424e-b3ca-
> ea308f66330a%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-878743061-1488733091=:3052--

