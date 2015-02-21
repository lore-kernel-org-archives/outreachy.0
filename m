X-GM-THRID: 1726977409024
X-Received: by 10.152.88.40 with SMTP id bd8mr328490lab.0.1424530684626;
        Sat, 21 Feb 2015 06:58:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.29.34 with SMTP id jt2ls269354wid.17.canary; Sat, 21 Feb
 2015 06:58:04 -0800 (PST)
X-Received: by 10.180.81.34 with SMTP id w2mr289980wix.2.1424530684364;
        Sat, 21 Feb 2015 06:58:04 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ta1si318732wic.1.2015.02.21.06.58.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 06:58:04 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,620,1418079600"; 
   d="scan'208";a="100855239"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 15:58:03 +0100
Date: Sat, 21 Feb 2015 15:57:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: aybuke ozdemir <aybuke.147@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/5] Staging: lustre: Added spaces
 around '='
In-Reply-To: <1424519075-4378-4-git-send-email-aybuke.147@gmail.com>
Message-ID: <alpine.DEB.2.10.1502211557150.2480@hadrien>
References: <1424519075-4378-1-git-send-email-aybuke.147@gmail.com> <1424519075-4378-4-git-send-email-aybuke.147@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 21 Feb 2015, aybuke ozdemir wrote:

> This patch fixes "spaces required around that '=' (ctx:VxV)"
> checkpatch.pl error in file.c

Likewise, here you can say "Add spaces around =, to conform to kernel
coding type.  This problem was found by checkpatch."  That says what you
have done and why.

julia

> Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
> ---
>  drivers/staging/lustre/lustre/llite/file.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
> index 9a7ab65..2dd6a8d 100644
> --- a/drivers/staging/lustre/lustre/llite/file.c
> +++ b/drivers/staging/lustre/lustre/llite/file.c
> @@ -270,7 +270,7 @@ static int ll_md_close(struct obd_export *md_exp, struct inode *inode,
>  	int lockmode;
>  	__u64 flags = LDLM_FL_BLOCK_GRANTED | LDLM_FL_TEST_LOCK;
>  	struct lustre_handle lockh;
> -	ldlm_policy_data_t policy = {.l_inodebits={MDS_INODELOCK_OPEN}};
> +	ldlm_policy_data_t policy = {.l_inodebits = {MDS_INODELOCK_OPEN}};
>  	int rc = 0;
>
>  	/* clear group lock, if present */
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424519075-4378-4-git-send-email-aybuke.147%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

