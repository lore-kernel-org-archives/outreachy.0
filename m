X-GM-THRID: 6389954613563359232
X-Received: by 10.25.162.77 with SMTP id l74mr1740868lfe.31.1487777779063;
        Wed, 22 Feb 2017 07:36:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.207.80 with SMTP id f77ls108067lfg.8.gmail; Wed, 22 Feb
 2017 07:36:18 -0800 (PST)
X-Received: by 10.25.79.23 with SMTP id d23mr3322019lfb.27.1487777778097;
        Wed, 22 Feb 2017 07:36:18 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f7si206649wmg.3.2017.02.22.07.36.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Feb 2017 07:36:18 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,194,1484002800"; 
   d="scan'208";a="214371118"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Feb 2017 16:36:17 +0100
Date: Wed, 22 Feb 2017 16:36:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    johan@kernel.org, elder@kernel.org
Subject: Re: [Outreachy kernel] [PATCH v3] staging: greybus: loopback_test:
 fix device-name lea
In-Reply-To: <1487777111-7267-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1702221635120.3145@hadrien>
References: <1487777111-7267-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

lea -> leak in the subject line.

Actually, Johan said that you could add his Reviewed-by tage if you
resend.  You could put that under your Signed-off-by.  Name and email,
just like for your name.

julia

On Wed, 22 Feb 2017, Gargi Sharma wrote:

> All the device names were being always leaked. Also,
> illegal free was being called upon namelist[n] which
> was coincidentally NULL. The pointer to dirent structures
> must be individually freed before freeing the pointer array.
>
> Coccinelle Script:
> @@
> expression arr,ex1,ex2;
> @@
>
> for(ex1 = 0; ex1 < ex2; ex1++) { <...
>   arr[
> - ex2
> + ex1
>   ]
>   ...> }
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
> Changes in v3:
> 	-Edited the commit message.
> Changes in v2:
> 	-Made the commit message clearer.
> ---
>  drivers/staging/greybus/tools/loopback_test.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
> index 18d7a3d..1c01833 100644
> --- a/drivers/staging/greybus/tools/loopback_test.c
> +++ b/drivers/staging/greybus/tools/loopback_test.c
> @@ -636,7 +636,7 @@ int find_loopback_devices(struct loopback_test *t)
>  	ret = 0;
>  done:
>  	for (i = 0; i < n; i++)
> -		free(namelist[n]);
> +		free(namelist[i]);
>  	free(namelist);
>  baddir:
>  	return ret;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1487777111-7267-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

