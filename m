X-GM-THRID: 1726977409024
X-Received: by 10.112.167.98 with SMTP id zn2mr320588lbb.6.1424530628187;
        Sat, 21 Feb 2015 06:57:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.234.165 with SMTP id uf5ls389021lac.60.gmail; Sat, 21 Feb
 2015 06:57:06 -0800 (PST)
X-Received: by 10.152.1.5 with SMTP id 5mr329003lai.4.1424530626687;
        Sat, 21 Feb 2015 06:57:06 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id el6si321005wib.2.2015.02.21.06.57.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 06:57:06 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,620,1418079600"; 
   d="scan'208";a="122804754"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 15:57:06 +0100
Date: Sat, 21 Feb 2015 15:57:00 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: aybuke ozdemir <aybuke.147@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/5] Staging: lustre: Corrected code
 indentation
In-Reply-To: <1424519075-4378-3-git-send-email-aybuke.147@gmail.com>
Message-ID: <alpine.DEB.2.10.1502211556230.2480@hadrien>
References: <1424519075-4378-1-git-send-email-aybuke.147@gmail.com> <1424519075-4378-3-git-send-email-aybuke.147@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 21 Feb 2015, aybuke ozdemir wrote:

> This patch fixes these warning messages found by checkpatch.pl:
> WARNING: suspect code indent for conditional statements(8,15)

It would be good to say what you have done, rather than just that you have
fixed something.  In this case I suspect that you converted spaces to
tabs?

julia

> Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
> ---
>  drivers/staging/lustre/lustre/llite/file.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
> index 845589f..9a7ab65 100644
> --- a/drivers/staging/lustre/lustre/llite/file.c
> +++ b/drivers/staging/lustre/lustre/llite/file.c
> @@ -2822,7 +2822,7 @@ int ll_have_md_lock(struct inode *inode, __u64 *bits,  ldlm_mode_t l_req_mode)
>  	int i;
>
>  	if (!inode)
> -	       return 0;
> +		return 0;
>
>  	fid = &ll_i2info(inode)->lli_fid;
>  	CDEBUG(D_INFO, "trying to match res "DFID" mode %s\n", PFID(fid),
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424519075-4378-3-git-send-email-aybuke.147%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

