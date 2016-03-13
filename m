X-GM-THRID: 6261369966950350848
X-Received: by 10.28.146.70 with SMTP id u67mr1201754wmd.4.1457840091825;
        Sat, 12 Mar 2016 19:34:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.0.136 with SMTP id 130ls615676lfa.109.gmail; Sat, 12 Mar
 2016 19:34:51 -0800 (PST)
X-Received: by 10.112.145.225 with SMTP id sx1mr1274818lbb.23.1457840091196;
        Sat, 12 Mar 2016 19:34:51 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c7si310701wmf.2.2016.03.12.19.34.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 19:34:51 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.24,328,1454972400"; 
   d="scan'208";a="207446531"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Mar 2016 04:34:49 +0100
Date: Sun, 13 Mar 2016 04:34:49 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Juliana Rodrigues <juliana.orod@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: dgnc: renamed
 dgnc_Major_TransparentPrint_Registered to avoid camelcase in dgnc_driver.h
In-Reply-To: <936d6cc0ebe887a86581f5d9af2c2832b1ec1698.1457838430.git.juliana.orod@gmail.com>
Message-ID: <alpine.DEB.2.02.1603130433260.2069@localhost6.localdomain6>
References: <cover.1457838430.git.juliana.orod@gmail.com> <936d6cc0ebe887a86581f5d9af2c2832b1ec1698.1457838430.git.juliana.orod@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

The subject is too complicated.  It is not necessary to provide the 
variable name and the file name in the part after the final :.

On Sun, 13 Mar 2016, Juliana Rodrigues wrote:

> This patch fixes the following issue on checkpatch.pl:

On the other hand, this is sort of too concise.  Try to write a commit 
message that doesn't use the word "fix".  Explain instead what you did to 
make the fix.

julia

> CHECK: Avoid CamelCase: <dgnc_Major_TransparentPrint_Registered>
> +       bool            dgnc_Major_TransparentPrint_Registered;
> 
> Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_driver.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
> index 98ff648..6d91abd 100644
> --- a/drivers/staging/dgnc/dgnc_driver.h
> +++ b/drivers/staging/dgnc/dgnc_driver.h
> @@ -211,7 +211,7 @@ struct dgnc_board {
>  	char		PrintName[200];
>  
>  	bool		dgnc_major_serial_registered;
> -	bool		dgnc_Major_TransparentPrint_Registered;
> +	bool		dgnc_major_transparent_print_registered;
>  
>  	uint		dgnc_Serial_Major;
>  	uint		dgnc_TransparentPrint_Major;
> -- 
> 2.7.2
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/936d6cc0ebe887a86581f5d9af2c2832b1ec1698.1457838430.git.juliana.orod%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

