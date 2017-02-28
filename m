X-GM-THRID: 6391984177458184192
X-Received: by 10.223.153.33 with SMTP id x30mr15891wrb.10.1488264684290;
        Mon, 27 Feb 2017 22:51:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.207.80 with SMTP id f77ls16832lfg.8.gmail; Mon, 27 Feb 2017
 22:51:23 -0800 (PST)
X-Received: by 10.25.195.206 with SMTP id t197mr77646lff.11.1488264683710;
        Mon, 27 Feb 2017 22:51:23 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f7si1006952wmg.3.2017.02.27.22.51.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 22:51:23 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,218,1484002800"; 
   d="scan'208";a="262347999"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Feb 2017 07:51:22 +0100
Date: Tue, 28 Feb 2017 07:51:22 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Problem with coccinelle.
In-Reply-To: <97a8b35a-3899-436b-8455-6fdd5d3a6ccd@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1702280749480.2078@hadrien>
References: <97a8b35a-3899-436b-8455-6fdd5d3a6ccd@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1712111592-1488264682=:2078"

--8323329-1712111592-1488264682=:2078
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 27 Feb 2017, Varsha Rao wrote:

>
> Hello,
>
> I am getting errors when I run the following command
>
> spatch --sp-file coccinelle/ret.cocci --no-includes --dir
> git/kernels/staging/drivers/staging/most/hdm-dim2/dim2_sysfs.c  > ret.out
>
> and the error which i got is:
>
> init_defs_builtins: /usr/lib64/coccinelle/standard.h
> Fatal error: exception Failure("unexpected code before the first rule: [0;
> (68, (\"\", [0], [0]))]\n")

Could you send your file ret.cocci?  Maybe try running Coccinelle from the
directory in which ret.cocci is found.  Actually, if you are running it on
only a single file, then you don't need the --dir option.  That is to
indicate that you are using a complete directory,

julia


> I have installed coccinelle successfully.
>
> Packages which were installed,
> coccinelle                   1.0.5-2.fc25
>  ocaml                        4.02.3-3.fc25
>  ocaml-compiler-libs     4.02.3-3.fc25 
>  ocaml-findlib               1.6.2-1.fc25     
>  ocaml-pcre                 7.1.5-3.fc24        
>  ocaml-runtime            4.02.3-3.fc25      
>
> I am using fedora 25 and kernel release is 4.9.11-200.fc25.x86_64.
>
> Thanks,
> Varsha
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/97a8b35a-3899-436b-8455-
> 6fdd5d3a6ccd%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1712111592-1488264682=:2078--

