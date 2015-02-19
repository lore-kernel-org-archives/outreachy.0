X-GM-THRID: 746747592704
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,35770f706c8015
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.199.69 with SMTP id ji5mr834685lbc.0.1424376613010;
        Thu, 19 Feb 2015 12:10:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.27.135 with SMTP id t7ls196785lag.45.gmail; Thu, 19 Feb
 2015 12:10:12 -0800 (PST)
X-Received: by 10.112.130.70 with SMTP id oc6mr842743lbb.13.1424376612812;
        Thu, 19 Feb 2015 12:10:12 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ew5si9108429wid.1.2015.02.19.12.10.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 12:10:12 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,610,1418079600"; 
   d="scan'208";a="100662650"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Feb 2015 21:10:12 +0100
Date: Thu, 19 Feb 2015 21:10:11 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: drivers: dma: ste_dma40:
 fixed trailing statements
In-Reply-To: <1424376441-29634-1-git-send-email-haticeerturk27@gmail.com>
Message-ID: <alpine.DEB.2.02.1502192109500.2192@localhost6.localdomain6>
References: <1424376441-29634-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1153240736-1424376612=:2192"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1153240736-1424376612=:2192
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Thu, 19 Feb 2015, Hatice ERTÜRK wrote:

> ERROR: trailing statements should be on next line
> chackpatch.pl error in ste_dma40.c

Again, say what you have done rather than just repeating the chckpatch 
message.

julia

> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/dma/ste_dma40.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/dma/ste_dma40.c b/drivers/dma/ste_dma40.c
> index 796c070..308795e 100644
> --- a/drivers/dma/ste_dma40.c
> +++ b/drivers/dma/ste_dma40.c
> @@ -2372,9 +2372,11 @@ static struct dma_chan *d40_xlate(struct of_phandle_args *dma_spec,
>  
>  	switch (D40_DT_FLAGS_MODE(flags)) {
>  	case 0:
> -		cfg.mode = STEDMA40_MODE_LOGICAL; break;
> +		cfg.mode = STEDMA40_MODE_LOGICAL;
> +		break;
>  	case 1:
> -		cfg.mode = STEDMA40_MODE_PHYSICAL; break;
> +		cfg.mode = STEDMA40_MODE_PHYSICAL;
> +		break;
>  	}
>  
>  	switch (D40_DT_FLAGS_DIR(flags)) {
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424376441-29634-1-git-send-email-haticeerturk27%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 
--8323328-1153240736-1424376612=:2192--

