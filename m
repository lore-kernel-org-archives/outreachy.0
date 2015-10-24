X-GM-THRID: 6208975538800820224
X-Received: by 10.180.221.227 with SMTP id qh3mr1806264wic.2.1445667939017;
        Fri, 23 Oct 2015 23:25:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.147.16 with SMTP id v16ls421258lfd.63.gmail; Fri, 23 Oct
 2015 23:25:38 -0700 (PDT)
X-Received: by 10.112.55.69 with SMTP id q5mr5773798lbp.24.1445667938210;
        Fri, 23 Oct 2015 23:25:38 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o3si234144wiz.1.2015.10.23.23.25.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 23:25:38 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,190,1444687200"; 
   d="scan'208";a="151614532"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Oct 2015 08:25:37 +0200
Date: Sat, 24 Oct 2015 08:25:36 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Burcin Akalin <brcnakalin@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: Removed parentheses.
In-Reply-To: <1445639761-16571-1-git-send-email-brcnakalin@gmail.com>
Message-ID: <alpine.DEB.2.02.1510240825210.2001@localhost6.localdomain6>
References: <1445639761-16571-1-git-send-email-brcnakalin@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 24 Oct 2015, Burcin Akalin wrote:

> Removed unnecessary parentheses.Problem found using checkpatch.pl
> "CHECK: Unnecessary parentheses around brd->vpd[i + 3]"
> 
> Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_neo.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
> index 900e3ae..42005cb 100644
> --- a/drivers/staging/dgnc/dgnc_neo.c
> +++ b/drivers/staging/dgnc/dgnc_neo.c
> @@ -1841,6 +1841,6 @@ static void neo_vpd(struct dgnc_board *brd)
>  		/* Search for the serial number */
>  		for (i = 0; i < NEO_VPD_IMAGEBYTES - 3; i++)
>  			if (brd->vpd[i] == 'S' && brd->vpd[i + 1] == 'N')
> -				strncpy(brd->serial_num, &(brd->vpd[i + 3]), 9);
> +				strncpy(brd->serial_num, & brd->vpd[i + 3], 9);

You don't need a space after the & either.

julia

>  	}
>  }
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1445639761-16571-1-git-send-email-brcnakalin%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

