X-GM-THRID: 6528402715160084480
X-Received: by 10.80.189.195 with SMTP id z3mr2138609edh.8.1520013056136;
        Fri, 02 Mar 2018 09:50:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.190.10 with SMTP id a10ls5212656edi.6.gmail; Fri, 02 Mar
 2018 09:50:54 -0800 (PST)
X-Google-Smtp-Source: AG47ELsGleMy+mQpvS14krKT/OwpD/Jg8IdKc0XaaiBYUn1IsVw25/wzD60BUZS9Y1lv/ZuCXMuT
X-Received: by 10.80.138.132 with SMTP id j4mr2141312edj.4.1520013054615;
        Fri, 02 Mar 2018 09:50:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520013054; cv=none;
        d=google.com; s=arc-20160816;
        b=bcbvz6JvFgLzgafI6SUzkf/aFK+h6/bjUKLGYUmeiIeNLR+1XMySWW1mX3+0TlD7KP
         ZKEeaUt4LoLq0c4qX3GJ6rW6pKB0ooU0WOz4OqFm1DElbjuhvWYzqvjLlqKYFul0kc0D
         O2OamB4+lYeFN7pYPCiqOGGl3T32k/0cq1XOLbXa47toR8Qz2JvdzcwGGjRNZ+1uNQCO
         HrkvoLZq/0nP6NO+KQPojnKmiT2YNQeUHbgwCthrV9hVo/1asygrk6EIFfII62hjRo6l
         m8/DkcyMzvlek3T1M2cVWvdZzlxNpoalBOG1/57A4KYbMLcrft8a8pMvF+Va/TwwpPZw
         sXUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=Xc1MDvra/uENIFhW6BS2xlzS2inkCfbdOD1zUzwLXqc=;
        b=yQgLzoaQ1k+LmuyeJ160DA4cU8HCgt7hzyo0eRCfmspjzjepbycuHf+Uqkpg0g7K0d
         yP/QLdt3903NlH9J77QluNfVCkY82pbUhjn68/1NsX5P6YTX3OrCCa+zwFoFPs54WCLJ
         6HfiblBdpI8wWBFiAOwu2bmjY5/Sj8IXGuATZkGiGMljgV7pA4DBYQ/IuihsH7FmcErO
         75oC4NWVNQkO99zSmYfWBj4NSsurtMgbhq53DzQzNYhaQVdAlkG/IZHq4VB1zR0bw5T1
         VxE81UwliJtnYCTAPLDp+M0SAghmX6NS2eLRfDMdKbUfL/gN8qmsJkeaRoMVgu+PS2wj
         hc5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h9si320730edi.4.2018.03.02.09.50.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 09:50:54 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,413,1515452400"; 
   d="scan'208";a="316116116"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2018 18:50:54 +0100
Date: Fri, 2 Mar 2018 18:50:52 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: Larry.Finger@lwfinger.net, 
    Florian Schilhabel <florian.c.schilhabel@googlemail.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: match alignment
 with open parenthesis
In-Reply-To: <20180302173619.GA8598@seema-Inspiron-15-3567>
Message-ID: <alpine.DEB.2.20.1803021849200.17455@hadrien>
References: <20180302173619.GA8598@seema-Inspiron-15-3567>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 2 Mar 2018, Arushi Singhal wrote:

> This patch fixes the checks reported by checkpatch.pl for alignment
> should match open parenthesis.
>
> Signed-off-by: Arushi Singhal <arushisinghal@gmail.com>

Your Signed-off-by email address should be the same as the one in the From
line.  You have arushisinghal19971997@gmail.com.

The commit log should be in the imperative and should explain what you did
and not just what you fixed.  Try to start the commit log message with
"Add".

The change looks fine.

julia

> ---
>  drivers/staging/rtl8712/mlme_linux.c | 2 +-
>  drivers/staging/rtl8712/os_intfs.c   | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/mlme_linux.c b/drivers/staging/rtl8712/mlme_linux.c
> index 3c7c4a4..baaa52f 100644
> --- a/drivers/staging/rtl8712/mlme_linux.c
> +++ b/drivers/staging/rtl8712/mlme_linux.c
> @@ -36,7 +36,7 @@ static void sitesurvey_ctrl_handler(struct timer_list *t)
>  {
>  	struct _adapter *adapter =
>  		from_timer(adapter, t,
> -			mlmepriv.sitesurveyctrl.sitesurvey_ctrl_timer);
> +			   mlmepriv.sitesurveyctrl.sitesurvey_ctrl_timer);
>
>  	_r8712_sitesurvey_ctrl_handler(adapter);
>  	mod_timer(&adapter->mlmepriv.sitesurveyctrl.sitesurvey_ctrl_timer,
> diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
> index e7df5d7..d6d27da 100644
> --- a/drivers/staging/rtl8712/os_intfs.c
> +++ b/drivers/staging/rtl8712/os_intfs.c
> @@ -230,7 +230,7 @@ struct net_device *r8712_init_netdev(void)
>  static u32 start_drv_threads(struct _adapter *padapter)
>  {
>  	padapter->cmdThread = kthread_run(r8712_cmd_thread, padapter, "%s",
> -			      padapter->pnetdev->name);
> +					  padapter->pnetdev->name);
>  	if (IS_ERR(padapter->cmdThread))
>  		return _FAIL;
>  	return _SUCCESS;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180302173619.GA8598%40seema-Inspiron-15-3567.
> For more options, visit https://groups.google.com/d/optout.
>

