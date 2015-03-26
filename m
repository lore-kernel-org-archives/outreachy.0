X-GM-THRID: 9875324141568
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,eaa9476e3049007c
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.87.164 with SMTP id az4mr4101554wib.6.1427351699765;
        Wed, 25 Mar 2015 23:34:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.42.137 with SMTP id o9ls181696lal.65.gmail; Wed, 25 Mar
 2015 23:34:59 -0700 (PDT)
X-Received: by 10.152.4.229 with SMTP id n5mr2932886lan.1.1427351699101;
        Wed, 25 Mar 2015 23:34:59 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id na10si372994wic.0.2015.03.25.23.34.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 25 Mar 2015 23:34:59 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,469,1422918000"; 
   d="scan'208";a="130165262"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 26 Mar 2015 07:34:58 +0100
Date: Thu, 26 Mar 2015 07:34:57 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Helen Fornazier <helen.fornazier@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: i2o: Add "const" in variable
 declaration
In-Reply-To: <1427327890-5494-1-git-send-email-helen.fornazier@gmail.com>
Message-ID: <alpine.DEB.2.02.1503260734350.2066@localhost6.localdomain6>
References: <1427327890-5494-1-git-send-email-helen.fornazier@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 25 Mar 2015, Helen Fornazier wrote:

> This patch fixes the checkpatch.pl warning:
> 
> WARNING: char * array declaration might be better as static const
> +       static char *FAIL_STATUS[] = {

Your commit message should explain why this is a correct change.

julia

> Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
> ---
>  drivers/staging/i2o/debug.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/i2o/debug.c b/drivers/staging/i2o/debug.c
> index 12b783b2..f703e00 100644
> --- a/drivers/staging/i2o/debug.c
> +++ b/drivers/staging/i2o/debug.c
> @@ -69,7 +69,7 @@ void i2o_dump_message(struct i2o_message *m)
>   */
>  static void i2o_report_fail_status(u8 req_status, u32 *msg)
>  {
> -	static char *FAIL_STATUS[] = {
> +	static const char *FAIL_STATUS[] = {
>  		"0x80",		/* not used */
>  		"SERVICE_SUSPENDED",	/* 0x81 */
>  		"SERVICE_TERMINATED",	/* 0x82 */
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1427327890-5494-1-git-send-email-helen.fornazier%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

