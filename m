X-GM-THRID: 6249738568007155712
X-Received: by 10.25.18.227 with SMTP id 96mr750511lfs.4.1455136163491;
        Wed, 10 Feb 2016 12:29:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.150.17 with SMTP id y17ls120541lfd.98.gmail; Wed, 10 Feb
 2016 12:29:22 -0800 (PST)
X-Received: by 10.112.162.101 with SMTP id xz5mr5138035lbb.20.1455136162930;
        Wed, 10 Feb 2016 12:29:22 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w129si1084960wme.1.2016.02.10.12.29.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 12:29:22 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,427,1449529200"; 
   d="scan'208";a="164247498"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Feb 2016 21:29:21 +0100
Date: Wed, 10 Feb 2016 21:29:21 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Alison Schofield <amsfield22@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: compress return
 logic into one line
In-Reply-To: <20160210185723.GA15085@d830.WORKGROUP>
Message-ID: <alpine.DEB.2.02.1602102129041.2075@localhost6.localdomain6>
References: <20160210185723.GA15085@d830.WORKGROUP>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 10 Feb 2016, Alison Schofield wrote:

> Simplify function return by merging assignment and return into
> one command line. Remove (now) unused local variable.
> 
> Found using Coccinelle:
> @@
> expression e, ret;
> @@
> 
> -ret =
> +return
> 	e;
> -return ret;
> 
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/speakup/i18n.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
> index 12f880e..8960079 100644
> --- a/drivers/staging/speakup/i18n.c
> +++ b/drivers/staging/speakup/i18n.c
> @@ -393,10 +393,7 @@ static const  int num_groups = ARRAY_SIZE(all_groups);
>  
>  char *spk_msg_get(enum msg_index_t index)
>  {
> -	char *ch;
> -
> -	ch = speakup_msgs[index];
> -	return ch;
> +	return speakup_msgs[index];
>  }
>  
>  /*
> -- 
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160210185723.GA15085%40d830.WORKGROUP.
> For more options, visit https://groups.google.com/d/optout.
> 

