X-GM-THRID: 9490543935488
X-Received: by 10.52.170.129 with SMTP id am1mr61792897vdc.1.1427007976958;
        Sun, 22 Mar 2015 00:06:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.69 with SMTP id ru5ls957870igb.2.canary; Sun, 22 Mar
 2015 00:06:16 -0700 (PDT)
X-Received: by 10.42.89.205 with SMTP id h13mr12950077icm.25.1427007976738;
        Sun, 22 Mar 2015 00:06:16 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a11si690672yho.7.2015.03.22.00.06.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 22 Mar 2015 00:06:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,445,1422918000"; 
   d="scan'208";a="127554836"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Mar 2015 08:06:15 +0100
Date: Sun, 22 Mar 2015 08:06:14 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 10/10] Staging: rtl8712: Fix incorrect
 assignment type in rtl871x_mlme.c
In-Reply-To: <261a202e9bb9aea62a09d14a42b1050f47b13e27.1426983594.git.vatikaharlalka@gmail.com>
Message-ID: <alpine.DEB.2.02.1503220805130.2040@localhost6.localdomain6>
References: <5f860bc9d9ff4bd82c61c4bbe7a80b88d1176847.1426983594.git.vatikaharlalka@gmail.com> <261a202e9bb9aea62a09d14a42b1050f47b13e27.1426983594.git.vatikaharlalka@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 22 Mar 2015, Vatika Harlalka wrote:

> This patch is to fix Sparse warning due to incorrect
> assignment in rtl871x_mlme.c

You should explain why your fix is correct.  What was incorrect about the 
original code.  What is more correct about your new code.  Just making the 
warning not appear any more does not make the code correct.

julia


> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_mlme.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
> index 2241e94..5d9c295 100644
> --- a/drivers/staging/rtl8712/rtl871x_mlme.c
> +++ b/drivers/staging/rtl8712/rtl871x_mlme.c
> @@ -1639,30 +1639,30 @@ void r8712_update_registrypriv_dev_network(struct _adapter *adapter)
>  	struct security_priv	*psecuritypriv = &adapter->securitypriv;
>  	struct wlan_network	*cur_network = &adapter->mlmepriv.cur_network;
>  
> -	pdev_network->Privacy = cpu_to_le32(psecuritypriv->PrivacyAlgrthm
> -					    > 0 ? 1 : 0); /* adhoc no 802.1x */
> +	pdev_network->Privacy = psecuritypriv->PrivacyAlgrthm
> +					    > 0 ? 1 : 0; /* adhoc no 802.1x */
>  	pdev_network->Rssi = 0;
>  	switch (pregistrypriv->wireless_mode) {
>  	case WIRELESS_11B:
> -		pdev_network->NetworkTypeInUse = cpu_to_le32(Ndis802_11DS);
> +		pdev_network->NetworkTypeInUse = Ndis802_11DS;
>  		break;
>  	case WIRELESS_11G:
>  	case WIRELESS_11BG:
> -		pdev_network->NetworkTypeInUse = cpu_to_le32(Ndis802_11OFDM24);
> +		pdev_network->NetworkTypeInUse = Ndis802_11OFDM24;
>  		break;
>  	case WIRELESS_11A:
> -		pdev_network->NetworkTypeInUse = cpu_to_le32(Ndis802_11OFDM5);
> +		pdev_network->NetworkTypeInUse = Ndis802_11OFDM5;
>  		break;
>  	default:
>  		/* TODO */
>  		break;
>  	}
> -	pdev_network->Configuration.DSConfig = cpu_to_le32(
> -					       pregistrypriv->channel);
> +	pdev_network->Configuration.DSConfig = pregistrypriv->channel;
> +
>  	if (cur_network->network.InfrastructureMode == Ndis802_11IBSS)
> -		pdev_network->Configuration.ATIMWindow = cpu_to_le32(3);
> -	pdev_network->InfrastructureMode = cpu_to_le32(
> -				cur_network->network.InfrastructureMode);
> +		pdev_network->Configuration.ATIMWindow = 3;
> +	pdev_network->InfrastructureMode = 
> +				cur_network->network.InfrastructureMode;
>  	/* 1. Supported rates
>  	 * 2. IE
>  	 */
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/261a202e9bb9aea62a09d14a42b1050f47b13e27.1426983594.git.vatikaharlalka%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

