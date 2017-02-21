X-GM-THRID: 6389607750950715392
X-Received: by 10.46.71.15 with SMTP id u15mr3049448lja.9.1487698296104;
        Tue, 21 Feb 2017 09:31:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.222.213 with SMTP id v204ls1681869wmg.23.canary-gmail; Tue,
 21 Feb 2017 09:31:35 -0800 (PST)
X-Received: by 10.223.171.81 with SMTP id r17mr1066279wrc.12.1487698295224;
        Tue, 21 Feb 2017 09:31:35 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v70si1171459wmf.0.2017.02.21.09.31.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 09:31:35 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,190,1484002800"; 
   d="scan'208";a="214248845"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Feb 2017 18:31:34 +0100
Date: Tue, 21 Feb 2017 18:31:28 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    johan@kernel.org, elder@kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: loop variable to
 loop index
In-Reply-To: <1487696353-11316-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1702211830560.3448@hadrien>
References: <1487696353-11316-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 21 Feb 2017, Gargi Sharma wrote:

> Change array index from the loop bound variable to loop index.
> Once all the loopback devices have been found, free the pointer
> array containing the dirent structures. The pointer to dirent
> structures must be individually freed before freeing the pointer
> array.
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

I guess this is a test, so no one ever tried running it :)

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1487696353-11316-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

