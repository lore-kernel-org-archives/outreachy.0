X-GM-THRID: 6249137798348013568
X-Received: by 10.25.29.211 with SMTP id d202mr3900422lfd.7.1455016186703;
        Tue, 09 Feb 2016 03:09:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.156.210 with SMTP id f201ls610851wme.46.canary; Tue, 09 Feb
 2016 03:09:45 -0800 (PST)
X-Received: by 10.194.21.99 with SMTP id u3mr3933348wje.0.1455016185413;
        Tue, 09 Feb 2016 03:09:45 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w129si770021wme.1.2016.02.09.03.09.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 03:09:45 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,420,1449529200"; 
   d="scan'208";a="202258020"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Feb 2016 12:09:40 +0100
Date: Tue, 9 Feb 2016 12:09:38 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arnd Bergmann <arnd@arndb.de>
cc: outreachy-kernel@googlegroups.com, Bhumika Goyal <bhumirks@gmail.com>
Subject: Re: [Outreachy kernel] Doubt regarding build warnings
In-Reply-To: <5477208.ntDhW1kj3a@wuerfel>
Message-ID: <alpine.DEB.2.10.1602091209240.2578@hadrien>
References: <ba8ae97e-c7c5-4383-bffc-a5eac3003e1d@googlegroups.com> <6075631.lJNnAgFSZy@wuerfel> <705062da-a84a-41ee-8905-d600ea41529c@googlegroups.com> <5477208.ntDhW1kj3a@wuerfel>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 9 Feb 2016, Arnd Bergmann wrote:

> On Tuesday 09 February 2016 01:01:37 Bhumika Goyal wrote:
> > Thank you Arnd .I am not getting any warnings with "make drivers/staging".
> > Can I know the reason for previous warnings when I used "make M" ?
> >
> >
>
> The differences are very subtle:
>
> make drivers/staging
>
>    always succeeds, does nothing at all because the directory exists
>
> make drivers/staging/
>
>    descends into that directory to build all the files in it, but does
>    not try to link the modules
>
> make M=drivers/staging
>
>    From the output you get, I think this must try to link the modules
>    against the previously-build vmlinux file, which for some reason
>    fails here. I suggested doing 'make' to rebuild everything including
>    vmlinux, so it is up-to-date with your current configuration.

CouldI add this to the wiki?

julia

>
> 	Arnd
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/5477208.ntDhW1kj3a%40wuerfel.
> For more options, visit https://groups.google.com/d/optout.
>

