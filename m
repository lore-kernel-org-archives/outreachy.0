X-GM-THRID: 3247770173440
X-Received: by 10.180.81.34 with SMTP id w2mr2352389wix.2.1424806433704;
        Tue, 24 Feb 2015 11:33:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.179.4 with SMTP id dc4ls86607lac.73.gmail; Tue, 24 Feb
 2015 11:33:53 -0800 (PST)
X-Received: by 10.112.189.227 with SMTP id gl3mr2427558lbc.2.1424806433218;
        Tue, 24 Feb 2015 11:33:53 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ta1si967011wic.1.2015.02.24.11.33.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 24 Feb 2015 11:33:53 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,640,1418079600"; 
   d="scan'208";a="101194736"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Feb 2015 20:33:52 +0100
Date: Tue, 24 Feb 2015 20:33:51 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/6] Staging: rtl8192u: Replace TRUE
 with true
In-Reply-To: <4ceaa6f20532b3112484ecaa074106d1c130c6c6.1424798953.git.ksenija.stanojevic@gmail.com>
Message-ID: <alpine.DEB.2.02.1502242032591.2049@localhost6.localdomain6>
References: <cover.1424798953.git.ksenija.stanojevic@gmail.com> <4ceaa6f20532b3112484ecaa074106d1c130c6c6.1424798953.git.ksenija.stanojevic@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> -	if (priv->bDynamicTxLowPower == TRUE) {
> +	if (priv->bDynamicTxLowPower == true) {

One could wonder if this could just be:

if (priv->bDynamicTxLowPower) { ...

To check this, you have to go find all of the initializations of this 
field and check that 0 and 1 are the only possible values.

julia

>  		if (priv->CustomerID == RT_CID_819x_Netcore)
>  			TxAGC = 0x22;
>  		else
> @@ -275,7 +275,7 @@ void PHY_SetRF8256OFDMTxPower(struct net_device *dev, u8 powerlevel)
>  			priv->Pwr_Track = writeVal_tmp;
>  		}
>  
> -		if (priv->bDynamicTxHighPower == TRUE) {
> +		if (priv->bDynamicTxHighPower == true) {
>  			/*Add by Jacken 2008/03/06
>  			 *Emily, 20080613. Set low tx power for both MCS and legacy OFDM
>  			 */
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/4ceaa6f20532b3112484ecaa074106d1c130c6c6.1424798953.git.ksenija.stanojevic%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

