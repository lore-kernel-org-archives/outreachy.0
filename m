X-GM-THRID: 7921078370304
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8823c9a19443c648
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.6.232 with SMTP id e8mr9515142laa.2.1426539749759;
        Mon, 16 Mar 2015 14:02:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.6.38 with SMTP id x6ls739787lax.63.gmail; Mon, 16 Mar 2015
 14:02:29 -0700 (PDT)
X-Received: by 10.152.6.232 with SMTP id e8mr9515137laa.2.1426539749162;
        Mon, 16 Mar 2015 14:02:29 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ew13si776804wid.0.2015.03.16.14.02.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 16 Mar 2015 14:02:29 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,411,1422918000"; 
   d="scan'208";a="103592887"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 16 Mar 2015 22:02:28 +0100
Date: Mon, 16 Mar 2015 22:02:27 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Cristina Opriceana <cristina.opriceana@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: drivers: Remove unecessary
 return value
In-Reply-To: <f972425373892a028f783e456e9990fa1ffba62a.1426538724.git.cristina.opriceana@gmail.com>
Message-ID: <alpine.DEB.2.02.1503162158460.2057@localhost6.localdomain6>
References: <f972425373892a028f783e456e9990fa1ffba62a.1426538724.git.cristina.opriceana@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 16 Mar 2015, Cristina Opriceana wrote:

> Change _SUCCESS return value for function loadparam to void as it never
> changes and it's also never used when calling the function.
> 
> Done with coccinelle:
> @rule@
> typedef uint;
> @@
> 
> (
> -uint
> |
> -int
> )
> +void
> loadparam(...)
> {
> 	...
> -return _SUCCESS;
> }

... does check that all of the posible execution paths have the property, 
but it is willing to overlook failure paths, ie paths under

if (...) {
  ...
  return ...;
}

The idea is that such paths may cut short the expected execution.  Here, 
however, you want to be sure that you end up with _SUCCESS on all paths, 
whether representing success or failure.  In that case, you can pu when 
strict after the ..., to be sure that really every path is taken into 
account.

For the return type, you could just put a metavariable T.  You don't 
really care how it it written.  It will be some description of _SUCCESS.

With those changes, you could try replacing load param by an identifier 
metavariable.  Maybe there are some other functions that have the same 
pattern.

julia

> 
> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
> ---
> Changes in v2:
>  - use coccinelle script to apply the changes easier
>  - reaply patch on the refreshed tree
> 
>  drivers/staging/rtl8188eu/os_dep/os_intfs.c | 3 +--
>  drivers/staging/rtl8723au/os_dep/os_intfs.c | 3 +--
>  2 files changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/os_dep/os_intfs.c b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
> index 750c87b..218c69a 100644
> --- a/drivers/staging/rtl8188eu/os_dep/os_intfs.c
> +++ b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
> @@ -510,7 +510,7 @@ void rtw_proc_remove_one(struct net_device *dev)
>  }
>  #endif
>  
> -static uint loadparam(struct adapter *padapter,  struct  net_device *pnetdev)
> +static void loadparam(struct adapter *padapter,  struct  net_device *pnetdev)
>  {
>  	struct registry_priv  *registry_par = &padapter->registrypriv;
>  
> @@ -581,7 +581,6 @@ static uint loadparam(struct adapter *padapter,  struct  net_device *pnetdev)
>  	snprintf(registry_par->ifname, 16, "%s", ifname);
>  	snprintf(registry_par->if2name, 16, "%s", if2name);
>  	registry_par->notch_filter = (u8)rtw_notch_filter;
> -	return _SUCCESS;
>  }
>  
>  static int rtw_net_set_mac_address(struct net_device *pnetdev, void *p)
> diff --git a/drivers/staging/rtl8723au/os_dep/os_intfs.c b/drivers/staging/rtl8723au/os_dep/os_intfs.c
> index db6a1597..0f1ae47 100644
> --- a/drivers/staging/rtl8723au/os_dep/os_intfs.c
> +++ b/drivers/staging/rtl8723au/os_dep/os_intfs.c
> @@ -172,7 +172,7 @@ MODULE_PARM_DESC(debug, "Set debug level (1-9) (default 1)");
>  
>  static int netdev_close(struct net_device *pnetdev);
>  
> -static int loadparam(struct rtw_adapter *padapter,  struct net_device *pnetdev)
> +static void loadparam(struct rtw_adapter *padapter,  struct net_device *pnetdev)
>  {
>  	struct registry_priv  *registry_par = &padapter->registrypriv;
>  
> @@ -233,7 +233,6 @@ static int loadparam(struct rtw_adapter *padapter,  struct net_device *pnetdev)
>  	snprintf(registry_par->if2name, 16, "%s", if2name);
>  	registry_par->notch_filter = (u8)rtw_notch_filter;
>  	registry_par->regulatory_tid = (u8)rtw_regulatory_id;
> -	return _SUCCESS;
>  }
>  
>  static int rtw_net_set_mac_address(struct net_device *pnetdev, void *p)
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/f972425373892a028f783e456e9990fa1ffba62a.1426538724.git.cristina.opriceana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

