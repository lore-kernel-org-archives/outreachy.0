X-GM-THRID: 6249137798348013568
X-Received: by 10.112.199.136 with SMTP id jk8mr4169918lbc.11.1455032975294;
        Tue, 09 Feb 2016 07:49:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.142.77 with SMTP id q74ls747113lfd.15.gmail; Tue, 09 Feb
 2016 07:49:33 -0800 (PST)
X-Received: by 10.112.169.5 with SMTP id aa5mr4065941lbc.12.1455032973683;
        Tue, 09 Feb 2016 07:49:33 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w10si524527wmw.3.2016.02.09.07.49.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 07:49:33 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,421,1449529200"; 
   d="scan'208";a="202315280"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Feb 2016 16:49:33 +0100
Date: Tue, 9 Feb 2016 16:49:31 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arnd Bergmann <arnd@arndb.de>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Doubt regarding build warnings
In-Reply-To: <2431688.NvBMsGsSsv@wuerfel>
Message-ID: <alpine.DEB.2.10.1602091649200.2578@hadrien>
References: <ba8ae97e-c7c5-4383-bffc-a5eac3003e1d@googlegroups.com> <2688292.r6RqQzfV0D@wuerfel> <alpine.DEB.2.10.1602091618300.2578@hadrien> <2431688.NvBMsGsSsv@wuerfel>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 9 Feb 2016, Arnd Bergmann wrote:

> On Tuesday 09 February 2016 16:18:55 Julia Lawall wrote:
> >     make M=drivers/staging: This seems to try to link the modules in a
> > previously build vmlinux file.
> >
> > Make path/ could be a reasonable choice for a localized change within a
> > single driver, or for a change localized to drivers staging. In any case,
> > as a minimum always check that compilation produces a .o file for every
> > file that your patch changes. If there is no .o file, you have not
> > compiled the file, and you need to look for other compiler options.
>
> Ok, sounds good. I've added a little bit more detail now:
>
> http://kernelnewbies.org/FirstKernelPatch?action=diff&rev2=25&rev1=24

Thanks.  What is -sj2?

julia

