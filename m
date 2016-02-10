X-GM-THRID: 6249584519546929152
X-Received: by 10.66.190.41 with SMTP id gn9mr37005965pac.0.1455095371107;
        Wed, 10 Feb 2016 01:09:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.6.5 with SMTP id w5ls162800igw.21.gmail; Wed, 10 Feb 2016
 01:09:30 -0800 (PST)
X-Received: by 10.50.150.98 with SMTP id uh2mr8470997igb.2.1455095370743;
        Wed, 10 Feb 2016 01:09:30 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 79si298639pft.0.2016.02.10.01.09.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 01:09:30 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,425,1449529200"; 
   d="scan'208";a="202427443"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Feb 2016 10:09:28 +0100
Date: Wed, 10 Feb 2016 10:09:27 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 6/6] staging: comedi: drivers: pcmuio:
 Merge if conditions
In-Reply-To: <20160210085942.GA14651@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1602101004060.2954@hadrien>
References: <20160210085942.GA14651@amitoj-Inspiron-3542>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1997137637-1455095367=:2710"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1997137637-1455095367=:2710
Content-Type: TEXT/PLAIN; charset=ISO-8859-1
Content-Transfer-Encoding: 8BIT



On Wed, 10 Feb 2016, Amitoj Kaur Chawla wrote:

> Merge if conditions with the same statements.
>
> Found using Coccinelle. The semantic patch used to find this is as
> follows:
>
> //<smpl>
> @@
> statement S;
> expression e,x;
> @@
>
> * if(e)
> (
> { ... return ...; }
> &
> S
> )
>
> * if(x)
> (
> { ... return ...; }
> &
> S
> )
> //</smpl>
>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/comedi/drivers/pcmuio.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/staging/comedi/drivers/pcmuio.c b/drivers/staging/comedi/drivers/pcmuio.c
> index 7ea8130..d303b48 100644
> --- a/drivers/staging/comedi/drivers/pcmuio.c
> +++ b/drivers/staging/comedi/drivers/pcmuio.c
> @@ -319,10 +319,7 @@ static void pcmuio_handle_intr_subdev(struct comedi_device *dev,
>
>  	spin_lock_irqsave(&chip->spinlock, flags);
>
> -	if (!chip->active)
> -		goto done;
> -
> -	if (!(triggered & chip->enabled_mask))
> +	if (!(chip->active && (triggered & chip->enabled_mask)))

I�m not sure that converting to only one ! in this way is a good idea.
!X || !Y could be more readable.  Here there are a lot of parentheses to
sort out.

julia

>  		goto done;
>
>  	for (i = 0; i < cmd->chanlist_len; i++) {
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160210085942.GA14651%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-1997137637-1455095367=:2710--

