X-GM-THRID: 10161736384512
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,95867e213b91c555
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.43.16.70 with SMTP id px6mr47759681icb.28.1427522860475;
        Fri, 27 Mar 2015 23:07:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.143.100 with SMTP id sd4ls477919igb.16.canary; Fri, 27 Mar
 2015 23:07:39 -0700 (PDT)
X-Received: by 10.50.110.42 with SMTP id hx10mr2899267igb.8.1427522859939;
        Fri, 27 Mar 2015 23:07:39 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f15si638073igq.0.2015.03.27.23.07.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 27 Mar 2015 23:07:39 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,483,1422918000"; 
   d="scan'208";a="107454648"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Mar 2015 07:07:37 +0100
Date: Sat, 28 Mar 2015 07:07:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Cristina Opriceana <cristina.opriceana@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8712: Remove duplicated
 argument to |
In-Reply-To: <20150328013012.GA7624@Inspiron>
Message-ID: <alpine.DEB.2.02.1503280706330.2060@localhost6.localdomain6>
References: <20150328013012.GA7624@Inspiron>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 28 Mar 2015, Cristina Opriceana wrote:

> Delete duplicated argument to | for the state argument in
> the _clr_fwstate_() function call as it is redundant.
> Detected with coccinelle.
> 
> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_ioctl_set.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_set.c b/drivers/staging/rtl8712/rtl871x_ioctl_set.c
> index bd1d1b7..22262b3 100644
> --- a/drivers/staging/rtl8712/rtl871x_ioctl_set.c
> +++ b/drivers/staging/rtl8712/rtl871x_ioctl_set.c
> @@ -266,8 +266,7 @@ void r8712_set_802_11_infrastructure_mode(struct _adapter *padapter,
>  		/* clear WIFI_STATION_STATE; WIFI_AP_STATE; WIFI_ADHOC_STATE;
>  		 * WIFI_ADHOC_MASTER_STATE */
>  		_clr_fwstate_(pmlmepriv, WIFI_STATION_STATE | WIFI_AP_STATE |
> -			      WIFI_ADHOC_STATE | WIFI_ADHOC_MASTER_STATE |
> -			      WIFI_AP_STATE);
> +			      WIFI_ADHOC_STATE | WIFI_ADHOC_MASTER_STATE);

For these, you should normally check the nearby code to see if they 
actually meant something else, but thanks to the comment that seems 
unlikely in this case.  How did you find it?

julia

>  		switch (networktype) {
>  		case Ndis802_11IBSS:
>  			set_fwstate(pmlmepriv, WIFI_ADHOC_STATE);
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150328013012.GA7624%40Inspiron.
> For more options, visit https://groups.google.com/d/optout.
> 

