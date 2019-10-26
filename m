X-GM-THRID: 6751781491192102912
X-Received: by 2002:a5d:5388:: with SMTP id d8mr7938693wrv.92.1572105101203;
        Sat, 26 Oct 2019 08:51:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:9e01:: with SMTP id u1ls7991326wre.15.gmail; Sat, 26 Oct
 2019 08:51:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzIZh1BDkYVRADSUoGsq4r4h1+qAZz2LT9DDp5KHWSZNfwToblWT3lQQI4UtYg+hNu3khb3
X-Received: by 2002:adf:a50b:: with SMTP id i11mr8275689wrb.308.1572105100365;
        Sat, 26 Oct 2019 08:51:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572105100; cv=none;
        d=google.com; s=arc-20160816;
        b=Q2ugn+z+lKMTA9tuIX80jMCL/ZHPSCT3z0GyxkVB6JtbW134pif8ailJH/3xrR9QOW
         ciHP5wFg8gVm2yE9BM0XZb7D91x+RzIDJPNeoR3+PrdsAUzje5eB/WyKYdnSqLyJ9Xs+
         lrbq02pKUDC8KgDWcgdkpPfhLi4VNhY4CO2Oe189ltAYMKaecjnffw5NUQsofOLyFgCS
         JmHf96kjA/Zpn6guQuq1mNi/p+qW+lB8QOdfpU3e8nAmhAJURs5JISdlW1lLCWbkTEhI
         x2V/yy7oexYmRNEf+Fdzvowwh5ZwgjVC8Q+JASeJIdu5iuEYMnDhEsERfdixK0mpaB8e
         1Y/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=OtOG6i14kYsAB72zlrlrbndjPPRoZ+J4e+1GeRjjYts=;
        b=xHxKZsekVHng0fUjqT3AKphwIhRYapjqpjiafhxHyS3feOVs5QeM+PCOCH/NJBQLU4
         kwsjZqJPWAHxaA5HdyN1yUuyOGr58u+mIVWGcYveqcKCO/k2+nM2XY/0FRRw/+9TtY1n
         VRYeXGnpBXFuP2R0M9migvmWm2Y777Hz/sgu2bOGj2EKyX+iF6hG3rgC6PkKlc0HMtK8
         GOxU+sLKBdNsIL1usLkPXvWIyM9y/IZ1K2ThRaREz78OCEYRiFWv/lXb4fPoMVrwK2hL
         keeEPYk1pYodFr6ZnVQ43ZuAamqDzcply4x/Mo1nNNFNxVAhO0REtHJ3IBb+2dmfSxvO
         PbIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e17si221014wre.3.2019.10.26.08.51.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Oct 2019 08:51:40 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,232,1569276000"; 
   d="scan'208";a="324507287"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien) ([89.2.166.121])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Oct 2019 17:51:39 +0200
Date: Sat, 26 Oct 2019 17:51:39 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Using coccinelle in a specific file
In-Reply-To: <20191026152913.GA17539@cristiane-Inspiron-5420>
Message-ID: <alpine.DEB.2.21.1910261751060.5545@hadrien>
References: <357e73d8-a1e8-4924-816d-bc93a1b20054@googlegroups.com> <alpine.DEB.2.21.1910251847290.3307@hadrien> <20191026152913.GA17539@cristiane-Inspiron-5420>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-241253049-1572105099=:5545"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-241253049-1572105099=:5545
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8BIT



On Sat, 26 Oct 2019, Cristiane Naves wrote:

> On Fri, Oct 25, 2019 at 06:49:14PM +0200, Julia Lawall wrote:
> >
> >
> > On Fri, 25 Oct 2019, Cristiane Naves wrote:
> >
> > > Is there a way to specify a file to use the coccicheck? I'm trying to use�
> > > make coccicheck M=drivers/staging/rtl8712/ MODE=patch, but I'm getting the
> > > error: coccicheck failed
> > > Makefile:1707: recipe for target 'coccicheck' failed
> > > make: *** [coccicheck] Error 2
> >
> > Maybe adding V=1 will give more information.
> >
> > julia
> >
> I am receiving the following information:
>
> Running (4 in parallel): /usr/bin/spatch -D patch --very-quiet
> --cocci-file scripts/coccinelle/misc/semicolon.cocci --no-includes
> --include-headers --patch . --dir drivers/staging/rtl8712 -I
> ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I
> ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I
> ./include/uapi -I ./include/generated/uapi --include
> ./include/linux/kconfig.h --jobs 4 --chunksize 1
> coccicheck failed
> Makefile:1707: recipe for target 'coccicheck' failed
> make: *** [coccicheck] Error 2
>
> And I also used sudo apt-get build-dep coccinelle but it's not
> working yet.
>
>
> In the github page in install.txt are asked to run the command
> ./autogen and ./configure, in which directory do I need to execute these
> commands? In the git/kernels/staging directory I'm getting bash:
> ./configure: No such file or directory

In the directory where you downloaded Coccinelle.

julia

> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups
> > > "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an
> > > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/357e73d8-a1e8-4924-816d-
> > > bc93a1b20054%40googlegroups.com.
> > >
> > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1910251847290.3307%40hadrien.
>
>
--8323329-241253049-1572105099=:5545--

