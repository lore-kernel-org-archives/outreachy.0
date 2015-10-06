X-GM-THRID: 6202300337979654144
X-Received: by 10.112.145.3 with SMTP id sq3mr5192734lbb.7.1444096800290;
        Mon, 05 Oct 2015 19:00:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.15.156 with SMTP id 28ls556491lfp.5.gmail; Mon, 05 Oct 2015
 18:59:59 -0700 (PDT)
X-Received: by 10.112.151.9 with SMTP id um9mr5793683lbb.19.1444096799574;
        Mon, 05 Oct 2015 18:59:59 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id xl3si609483wib.1.2015.10.05.18.59.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 18:59:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x230.google.com with SMTP id lk2so138614122wic.1
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Oct 2015 18:59:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=zJ3/yWJ0s7pEwwr4EhWq8w9hb0wFFkE8H7b7D5CjTQo=;
        b=xgpXD7HOB5hjXatzvQC1rdbwLHbzwCDN3XI160QBSqRWtGytsq2jBkT9+1TLU8v0Pw
         fcbq2ozCV8hFIPWZ0wwWBRAhR6PGMbAl4cTnvjIGtDUk216qzzYIS84vVh697bz3v2RF
         3BaI88Jvko0PiEcXB7XKVysKilFbfrMxTWdm4Cv7wEEDlOr7XE2RBK+NbKLLhUhVfmLl
         UvINZx8oVHmKZMiBLPhWJ3+HcP+FqzBX5n+DROM0M9okSHi8mVPmCOIwJhhJDjsAc2I4
         3a6jLV4YoYFQT1um1W16xFu6ZN2joL7kQULAgIwqzhCNUYqYkFCGnBJmSQp2sQpsWdHn
         HOcQ==
MIME-Version: 1.0
X-Received: by 10.194.176.6 with SMTP id ce6mr33257836wjc.101.1444096799412;
 Mon, 05 Oct 2015 18:59:59 -0700 (PDT)
Received: by 10.194.67.99 with HTTP; Mon, 5 Oct 2015 18:59:59 -0700 (PDT)
In-Reply-To: <1444085556-3809-1-git-send-email-aybuke.147@gmail.com>
References: <1444085556-3809-1-git-send-email-aybuke.147@gmail.com>
Date: Tue, 6 Oct 2015 07:29:59 +0530
Message-ID: <CAK-LDb+zi0VGRfWB6D7WZRvvsvDaHvybNgG_nGjow-jnHXTsOg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] Staging: wilc1000: fix spelling mistake.
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Aybuke Ozdemir <aybuke.147@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 6, 2015 at 4:22 AM, Aybuke Ozdemir <aybuke.147@gmail.com> wrote:
> This patch organizing missing written word missing.
> Found by checkpatch.pl:
> CHECK: 'funcion' may be misspelled - perhaps 'function'?

Hi,

The commit log looks confusing to me. It is not clear what you are doing
here. Probably you should write something like this:

"This patch corrects the spelling of the word function by adding missing
letter.
Problem found by checkpatch.pl :
<check>"

Thanks.

> Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
> ---
> Changed v1:
> * "Added" commit message title in the form of the "fixed" has been changed.
> ---
>  drivers/staging/wilc1000/coreconfigurator.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
> index 65a130d..9f87d05 100644
> --- a/drivers/staging/wilc1000/coreconfigurator.c
> +++ b/drivers/staging/wilc1000/coreconfigurator.c
> @@ -264,7 +264,7 @@ static inline u16 get_assoc_resp_cap_info(u8 *data)
>         return cap_info;
>  }
>
> -/* This funcion extracts the association status code from the incoming       */
> +/* This function extracts the association status code from the incoming       */
>  /* association response frame and returns association status code            */
>  static inline u16 get_asoc_status(u8 *data)
>  {
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1444085556-3809-1-git-send-email-aybuke.147%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali

