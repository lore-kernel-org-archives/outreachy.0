X-GM-THRID: 6391984177458184192
X-Received: by 10.25.223.67 with SMTP id q3mr306925lfj.1.1488292791136;
        Tue, 28 Feb 2017 06:39:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.132.13 with SMTP id g13ls269668wmd.16.gmail; Tue, 28 Feb
 2017 06:39:50 -0800 (PST)
X-Received: by 10.28.31.196 with SMTP id f187mr92524wmf.10.1488292790231;
        Tue, 28 Feb 2017 06:39:50 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f7si1125489wmg.3.2017.02.28.06.39.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 06:39:50 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,219,1484002800"; 
   d="scan'208";a="215024186"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Feb 2017 15:39:49 +0100
Date: Tue, 28 Feb 2017 15:39:40 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: Problem with coccinelle.
In-Reply-To: <2c41d6b9-a3f8-4229-87ba-a31145c451c5@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1702281539210.3872@hadrien>
References: <97a8b35a-3899-436b-8455-6fdd5d3a6ccd@googlegroups.com> <465dc1ff-b520-4ad1-862f-0fa268803f06@googlegroups.com> <alpine.DEB.2.20.1702281455380.3056@hadrien> <2c41d6b9-a3f8-4229-87ba-a31145c451c5@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-929184476-1488292780=:3872"

--8323329-929184476-1488292780=:3872
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 28 Feb 2017, Varsha Rao wrote:

>    
>       >   Does coccinelle need driver to be compiled as a module? As
>       hdm_dim2 driver
>       > is not but sm750fb driver is compiled as a module. Does
>       coccinelle require
>       > executable file to work?
>
>       No, it just looks at the source code.  It doesn't care about
>       modules, etc.
>
>    
>     Then it is strange, as I tried again with different drivers, few of them
> work and few others don't.
>    
>     Drivers compiled as module and got output : iio and sm750fb
>     Drivers not compiled as module but still got output: lustre and greybus
>     Drivers not compiled as module and no output: most (all drivers) and
> netlogic
>
>
>       Could you try the original experiment again?  Maybe the problem
>       is somehow
>       resolved.
>
>     Same output.
>    
>    spatch --sp-file ret.cocci --no-includes 
> ~/git/kernels/staging/drivers/staging/most/hdm-dim2/dim2_sysfs.c  > ret.out
>    init_defs_builtins: /usr/lib64/coccinelle/standard.h
>    HANDLING:
>   /home/varsha/git/kernels/staging/drivers/staging/most/hdm-dim2/dim2_sysfs.c

So there is no problem?

julia

>
>
>    Thanks,
>    Varsha
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/2c41d6b9-a3f8-4229-87ba-
> a31145c451c5%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-929184476-1488292780=:3872--

