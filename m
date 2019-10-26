X-GM-THRID: 6751781491192102912
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 2002:a5d:6787:: with SMTP id v7mr8356111wru.392.1572110035422;
        Sat, 26 Oct 2019 10:13:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:106:: with SMTP id 6ls6993429wmb.1.gmail; Sat, 26 Oct
 2019 10:13:54 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxL0NldosSMvyPqWnq/lvCCGLAO8C7+VQZOZu72Kqnbz6/Po6JYeP16u0i6UK6FrFpUNcnQ
X-Received: by 2002:a1c:9c0c:: with SMTP id f12mr8515157wme.133.1572110034401;
        Sat, 26 Oct 2019 10:13:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572110034; cv=none;
        d=google.com; s=arc-20160816;
        b=tQ4x2Zrgw9vJIbC8NWJi0kzPhD2kuBTswkBVU5uxfnMa/UyVc+x/vqEtViXAdyEa4C
         5tRdt2vUWa/m/JuGxNmzlos9dpLODAn6ADgoirrhYFNsh2hz4CKnrIFnsaev3pVGZ5G5
         S0pVMVIzj5FS10RHoKxrZESYkTG6ABUhKlpjxrYDOSF/fY/GpRofTbhdD/ieU2KVs6Vf
         h6Iwhda4oq4W06/EQsiSFmFYfj1V+pswVUSQfGm6MTmrdKsahQbqNRWBz32xN2KJzNKA
         YnW8khyN2p/zZJ6lqX4jVsA6FBCu7cxkmZBxn/7CxaAx++k3rXlrNg4ZLHxwZ8EzskOV
         Ad9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=RScnl7VGVQldlSMgBMzvRSrTdu4SM4RDAGhzEf2Fqtg=;
        b=qKkavY0O2qFq0hs6KFg61BiyUeVfHXJT+7cDL9BBlMRCwsF6OL6nZvkm1h7j5v6RqL
         uCh9tXbRaWuvxfy1QSKc49gmWcgZamefTJ/RAt/H7g4JKTFnFbfCDfV0EbZT00mSgpVi
         3CBXStCrvAFrt/VFgBf/MEl+tofuWJqfboTGh7NMLRHRG3fxfQ7d+SsgvbGGCO+BaNRZ
         h3QR56X1aI2D9mYxKR8ldfPOqdNJFI7Lr0hOH53r9+TYWY83mEdgLIT9z4SyqqALwK5B
         I9mF7Ppi+g5KSNIQlh8QHqnvDRO7nLJNOVgWIo6VolM6+JqoSvO7t4yuSKqdJdfsXlk6
         Kx0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id n25si60437wmi.0.2019.10.26.10.13.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Oct 2019 10:13:54 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,233,1569276000"; 
   d="scan'208";a="324516748"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien) ([89.2.166.121])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Oct 2019 19:13:53 +0200
Date: Sat, 26 Oct 2019 19:13:53 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Using coccinelle in a specific file
In-Reply-To: <20191026165422.GA3704@cristiane-Inspiron-5420>
Message-ID: <alpine.DEB.2.21.1910261913300.5545@hadrien>
References: <357e73d8-a1e8-4924-816d-bc93a1b20054@googlegroups.com> <alpine.DEB.2.21.1910251847290.3307@hadrien> <20191026152913.GA17539@cristiane-Inspiron-5420> <alpine.DEB.2.21.1910261751060.5545@hadrien> <20191026165422.GA3704@cristiane-Inspiron-5420>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-75634145-1572110033=:5545"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-75634145-1572110033=:5545
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8BIT



On Sat, 26 Oct 2019, Cristiane Naves wrote:

> On Sat, Oct 26, 2019 at 05:51:39PM +0200, Julia Lawall wrote:
> >
> >
> > On Sat, 26 Oct 2019, Cristiane Naves wrote:
> >
> > > On Fri, Oct 25, 2019 at 06:49:14PM +0200, Julia Lawall wrote:
> > > >
> > > >
> > > > On Fri, 25 Oct 2019, Cristiane Naves wrote:
> > > >
> > > > > Is there a way to specify a file to use the coccicheck? I'm trying to use�
> > > > > make coccicheck M=drivers/staging/rtl8712/ MODE=patch, but I'm getting the
> > > > > error: coccicheck failed
> > > > > Makefile:1707: recipe for target 'coccicheck' failed
> > > > > make: *** [coccicheck] Error 2
> > > >
> > > > Maybe adding V=1 will give more information.
> > > >
> > > > julia
> > > >
> > > I am receiving the following information:
> > >
> > > Running (4 in parallel): /usr/bin/spatch -D patch --very-quiet
> > > --cocci-file scripts/coccinelle/misc/semicolon.cocci --no-includes
> > > --include-headers --patch . --dir drivers/staging/rtl8712 -I
> > > ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I
> > > ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I
> > > ./include/uapi -I ./include/generated/uapi --include
> > > ./include/linux/kconfig.h --jobs 4 --chunksize 1
> > > coccicheck failed
> > > Makefile:1707: recipe for target 'coccicheck' failed
> > > make: *** [coccicheck] Error 2
> > >
> > > And I also used sudo apt-get build-dep coccinelle but it's not
> > > working yet.
> > >
> > >
> > > In the github page in install.txt are asked to run the command
> > > ./autogen and ./configure, in which directory do I need to execute these
> > > commands? In the git/kernels/staging directory I'm getting bash:
> > > ./configure: No such file or directory
> >
> > In the directory where you downloaded Coccinelle.
> >
> > julia
> >
>
> It worked! I reinstalled coccinelle using the github source code.
> Thank you for your help.

Super :).  Good to know that all is well.

julia

> > > > >
> > > > > --
> > > > > You received this message because you are subscribed to the Google Groups
> > > > > "outreachy-kernel" group.
> > > > > To unsubscribe from this group and stop receiving emails from it, send an
> > > > > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/357e73d8-a1e8-4924-816d-
> > > > > bc93a1b20054%40googlegroups.com.
> > > > >
> > > > >
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1910251847290.3307%40hadrien.
> > >
> > >
>
>
--8323329-75634145-1572110033=:5545--

