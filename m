X-GM-THRID: 6258546120721432576
X-Received: by 10.112.181.33 with SMTP id dt1mr584873lbc.22.1457181475583;
        Sat, 05 Mar 2016 04:37:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.92.14 with SMTP id q14ls334634wmb.30.gmail; Sat, 05 Mar
 2016 04:37:55 -0800 (PST)
X-Received: by 10.28.225.8 with SMTP id y8mr398462wmg.7.1457181475177;
        Sat, 05 Mar 2016 04:37:55 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c7si83399wmf.2.2016.03.05.04.37.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 04:37:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,540,1449529200"; 
   d="scan'208";a="206033985"
Received: from 155.212.120.153.west.global.crust-r.net (HELO hadrien.local) ([153.120.212.155])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 05 Mar 2016 13:37:53 +0100
Date: Sat, 5 Mar 2016 21:37:48 +0900 (JST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Replace del_timer
 with del_timer_sync
In-Reply-To: <20160305123517.GA11630@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1603052137020.2670@hadrien>
References: <20160305123517.GA11630@amitoj-Inspiron-3542>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 5 Mar 2016, Amitoj Kaur Chawla wrote:

> Use del_timer_sync to ensure timer is stopped on all CPUs before
> the driver exists.

I think that you need to give more information about the need for this.
When would the change not be needed, for example?

julia

>
> The Coccinelle semantic patch used to make this change is as
> follows:
> // <smpl>
> @r@
> declarer name module_exit;
> identifier ex;
> @@
>
> module_exit(ex);
>
> @@
> identifier r.ex;
> @@
>
> ex(...) {
>   <...
> - del_timer
> + del_timer_sync
>     (...)
>   ...>
> }
> // </smpl>
>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/speakup/main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> index eb8d65a..07b1af4 100644
> --- a/drivers/staging/speakup/main.c
> +++ b/drivers/staging/speakup/main.c
> @@ -2265,7 +2265,7 @@ static void __exit speakup_exit(void)
>  	unregister_vt_notifier(&vt_notifier_block);
>  	speakup_unregister_devsynth();
>  	speakup_cancel_paste();
> -	del_timer(&cursor_timer);
> +	del_timer_sync(&cursor_timer);
>  	kthread_stop(speakup_task);
>  	speakup_task = NULL;
>  	mutex_lock(&spk_mutex);
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160305123517.GA11630%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>

