X-GM-THRID: 6394971085965623296
X-Received: by 10.25.151.69 with SMTP id z66mr1651802lfd.12.1489057567087;
        Thu, 09 Mar 2017 03:06:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.215.94 with SMTP id o91ls87254lfg.16.gmail; Thu, 09 Mar
 2017 03:06:06 -0800 (PST)
X-Received: by 10.46.83.76 with SMTP id t12mr2218017ljd.26.1489057566049;
        Thu, 09 Mar 2017 03:06:06 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e72si1002500wma.0.2017.03.09.03.06.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 03:06:06 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,268,1486422000"; 
   d="scan'208";a="263831608"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2017 12:05:36 +0100
Date: Thu, 9 Mar 2017 12:05:23 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, mchehab@kernel.org, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: media: atomisp: Remove
 useless cast.
In-Reply-To: <53167cf4-2fc5-4178-b963-c616822ae3b1@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1703091203100.3186@hadrien>
References: <cover.1488944614.git.varshar186@gmail.com> <58bf8051.081a620a.e7433.8064@mx.google.com> <alpine.DEB.2.20.1703081016060.3156@hadrien> <53167cf4-2fc5-4178-b963-c616822ae3b1@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1610295187-1489057523=:3186"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1610295187-1489057523=:3186
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Thu, 9 Mar 2017, Varsha Rao wrote:

>
> Hello,
>
>       Did Coccinelle really find this case for you?  Because void and void * are
>       not the same.
>
>    Yes, it was found using Coccinelle. I got the output as following.
>
>    diff -u -p a/media/atomisp/pci/atomisp2/css2400/sh_css.c b/media/atomisp/pci/atomisp2/css2400/sh_css.c
> --- a/media/atomisp/pci/atomisp2/css2400/sh_css.c
> +++ b/media/atomisp/pci/atomisp2/css2400/sh_css.c
> @@ -1335,7 +1335,7 @@ static int pc_monitoring(void *data)
>  {
>         int i = 0;
>
> -       (void)data;
> +       data;
>         while (true) {
>                 if (sh_binary_running) {
>                         sh_css_metrics_sample_pcs();
>  
>  @@
> type T;    //Here if we assume T to be type void
> T *ptr,p;  //ptr is pointer to void and p is of type void.
> @@
>
> As you said void and void * are different.
> (
> - (T *)(&p)
> + &p
> |
> - (T *)ptr
> + ptr
> |
> - (T *)(ptr)
> + ptr
> |
> - (T)(p)   It is taking this case.
> + p
> )
>
> But p and ptr are also different, then why is it considering p? Is it giving false positive?
> To  check this, I just changed the declaration.
>
> @@
> type T;
> T *ptr;
> T p;
> @@
> (
> - (T *)(&p)
> + &p
> |
> - (T *)ptr
> + ptr
> |
> - (T *)(ptr)
> + ptr
> |
> - (T)(p)
> + p
> )
>
> However, here it does not match void and void * . Also gives no output for this particular file.
> Why is it not recognizing the difference between ptr and p ? (with the earlier coccinelle script)

Because there is a bug in the parsing of metavariable identifiers.  I knew
this, but haven't thought about it recently...  I think that once it sees
a *, it applies the * to everything that comes after.  Or more likely, it
is probably parsing the metavariables as T * being the type, and the list
of names coming after.

I'll make a note to fix it.

thanks,
julia


>
> Thanks,
> Varsha
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/53167cf4-2fc5-4178-b963-c616822ae3b1%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1610295187-1489057523=:3186--

