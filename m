X-GM-THRID: 6261584556721176576
X-Received: by 10.28.189.130 with SMTP id n124mr1471896wmf.4.1457890130597;
        Sun, 13 Mar 2016 10:28:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.11.133 with SMTP id 127ls431421wml.45.canary; Sun, 13 Mar
 2016 10:28:50 -0700 (PDT)
X-Received: by 10.194.84.40 with SMTP id v8mr2399666wjy.2.1457890130031;
        Sun, 13 Mar 2016 10:28:50 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v68si436665wmd.1.2016.03.13.10.28.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 10:28:50 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.24,332,1454972400"; 
   d="scan'208";a="168437165"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Mar 2016 18:28:49 +0100
Date: Sun, 13 Mar 2016 18:28:48 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Juliana Rodrigues <juliana.orod@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 8/8] staging: dgnc: renames TtyRefCnt
 variable to avoid camelcase
In-Reply-To: <64e3b81be7b8fd1ffcc9bfe1b565972a7dabc018.1457888423.git.juliana.orod@gmail.com>
Message-ID: <alpine.DEB.2.02.1603131828390.2064@localhost6.localdomain6>
References: <cover.1457888423.git.juliana.orod@gmail.com> <64e3b81be7b8fd1ffcc9bfe1b565972a7dabc018.1457888423.git.juliana.orod@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 13 Mar 2016, Juliana Rodrigues wrote:

> This patch renames TtyRefCnt variable in dgnc_driver.h
> in order to fix a camelcase checkpatch issue:
> 
> HECK: Avoid CamelCase: <TtyRefCnt>

The C disappeared.

julia

> +       uint            TtyRefCnt;
> 
> Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_driver.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
> index f18d40a..a37e16b 100644
> --- a/drivers/staging/dgnc/dgnc_driver.h
> +++ b/drivers/staging/dgnc/dgnc_driver.h
> @@ -216,7 +216,7 @@ struct dgnc_board {
>  	uint		dgnc_serial_major;
>  	uint		dgnc_transparent_print_major;
>  
> -	uint		TtyRefCnt;
> +	uint		tty_ref_cnt;
>  
>  	u16		dpatype;	/* The board "type",
>  					 * as defined by DPA
> -- 
> 2.7.2
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/64e3b81be7b8fd1ffcc9bfe1b565972a7dabc018.1457888423.git.juliana.orod%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

