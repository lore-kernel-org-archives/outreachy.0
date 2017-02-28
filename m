X-GM-THRID: 6391984177458184192
X-Received: by 10.25.33.67 with SMTP id h64mr273535lfh.22.1488290206881;
        Tue, 28 Feb 2017 05:56:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.83.93 with SMTP id t29ls125757ljd.29.gmail; Tue, 28 Feb
 2017 05:56:45 -0800 (PST)
X-Received: by 10.46.88.70 with SMTP id x6mr296836ljd.22.1488290205868;
        Tue, 28 Feb 2017 05:56:45 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 14si176106wmn.2.2017.02.28.05.56.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 05:56:45 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,219,1484002800"; 
   d="scan'208";a="215015910"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Feb 2017 14:56:45 +0100
Date: Tue, 28 Feb 2017 14:56:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: Problem with coccinelle.
In-Reply-To: <465dc1ff-b520-4ad1-862f-0fa268803f06@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1702281455380.3056@hadrien>
References: <97a8b35a-3899-436b-8455-6fdd5d3a6ccd@googlegroups.com> <465dc1ff-b520-4ad1-862f-0fa268803f06@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1755407096-1488290196=:3056"

--8323329-1755407096-1488290196=:3056
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 28 Feb 2017, Varsha Rao wrote:

>  Hello,
>
>   I tried spatch command again with few other files and it ran successfully.
> (with the same ret.cocci file I sent)
>
>   spatch --sp-file ret.cocci --no-includes
> ~/git/kernels/staging/drivers/staging/sm750fb/ddk750_chip.c > ret.out
>   init_defs_builtins: /usr/lib64/coccinelle/standard.h
>   HANDLING:
> /home/euri/git/kernels/staging/drivers/staging/sm750fb/ddk750_chip.c
>   diff =
>
>    output of ret.out
>
>    ---
> /home/varsha/git/kernels/staging/drivers/staging/sm750fb/ddk750_chip.c
> +++ /tmp/cocci-output-3058-919028-ddk750_chip.c
> @@ -397,13 +397,11 @@ unsigned int sm750_format_pll_reg(struct
>       * register. On returning a 32 bit number, the value can be
>       * applied to any PLL in the calling function.
>       */
> -    reg = PLL_CTRL_POWER |
> +    return PLL_CTRL_POWER |
>  #ifndef VALIDATION_CHIP
>          ((POD << PLL_CTRL_POD_SHIFT) & PLL_CTRL_POD_MASK) |
>  #endif
>          ((OD << PLL_CTRL_OD_SHIFT) & PLL_CTRL_OD_MASK) |
>          ((N << PLL_CTRL_N_SHIFT) & PLL_CTRL_N_MASK) |
>          ((M << PLL_CTRL_M_SHIFT) & PLL_CTRL_M_MASK);
> -
> -    return reg;
>  }
>
>   
>    But nothing with dim2_sysfs.c file and even ret.out file is empty. But no
> errors this time.
>
>   spatch --sp-file ret.cocci --no-includes
> ~/git/kernels/staging/drivers/staging/most/hdm-dim2/dim2_sysfs.c  > ret.out
>   init_defs_builtins: /usr/lib64/coccinelle/standard.h
>   HANDLING:
> /home/euri/git/kernels/staging/drivers/staging/most/hdm-dim2/dim2_sysfs.c
>   
>   Does coccinelle need driver to be compiled as a module? As hdm_dim2 driver
> is not but sm750fb driver is compiled as a module. Does coccinelle require
> executable file to work?

No, it just looks at the source code.  It doesn't care about modules, etc.

Could you try the original experiment again?  Maybe the problem is somehow
resolved.

julia



>
>   Thanks,
>   Varsha
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/465dc1ff-b520-4ad1-862f-
> 0fa268803f06%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1755407096-1488290196=:3056--

