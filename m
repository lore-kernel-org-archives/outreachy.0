X-GM-THRID: 2858768400384
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,976b70dea6a25f72
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.159.227 with SMTP id xf3mr1520518lbb.11.1424711952049;
        Mon, 23 Feb 2015 09:19:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.164.193 with SMTP id ys1ls578593lab.39.gmail; Mon, 23 Feb
 2015 09:19:11 -0800 (PST)
X-Received: by 10.112.174.36 with SMTP id bp4mr1484038lbc.15.1424711951628;
        Mon, 23 Feb 2015 09:19:11 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i7si738863wif.0.2015.02.23.09.19.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 09:19:11 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,631,1418079600"; 
   d="scan'208";a="123037241"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2015 18:19:10 +0100
Date: Mon, 23 Feb 2015 18:19:03 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: slicoss: Fix quoted sting
 split across the line
In-Reply-To: <1424710271-3310-1-git-send-email-ksenija.stanojevic@gmail.com>
Message-ID: <alpine.DEB.2.10.1502231817130.2479@hadrien>
References: <1424710271-3310-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 23 Feb 2015, Ksenija Stanojevic wrote:

> This patch fixes the warning issued by checkpatch.pl
> by adding split string with '+'.
>
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/slicoss/slicoss.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
> index 42d62ef..5594cbb 100644
> --- a/drivers/staging/slicoss/slicoss.c
> +++ b/drivers/staging/slicoss/slicoss.c
> @@ -99,7 +99,7 @@
>  #include "slic.h"
>
>  static uint slic_first_init = 1;
> -static char *slic_banner = "Alacritech SLIC Technology(tm) Server "
> +static char *slic_banner = "Alacritech SLIC Technology(tm) Server"+
>  		"and Storage Accelerator (Non-Accelerated)";

+ is not the way of concatenating strings in C.  It will just add the
pointers together.  And if it did work, you would have removed
the space between Server and and.  Checkpatch is suggesting that you just
concatenate the strings to make one big string, even though it will exceed
80 columns.  The idea is that the ability to grep for the string, without
worrying about where it is cut up, is more beneficial than respecting 80
columns in this case.

julia

>
>  static char *slic_proc_version = "2.0.351  2006/07/14 12:26:00";
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424710271-3310-1-git-send-email-ksenija.stanojevic%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

