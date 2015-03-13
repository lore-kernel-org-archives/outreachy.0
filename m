X-GM-THRID: 8179991707648
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5417eb996bb2acbb
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.224.12 with SMTP id qy12mr7443747lbc.10.1426278944453;
        Fri, 13 Mar 2015 13:35:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.1.3 with SMTP id 3ls421903lai.36.gmail; Fri, 13 Mar 2015
 13:35:44 -0700 (PDT)
X-Received: by 10.112.181.166 with SMTP id dx6mr5191751lbc.17.1426278944052;
        Fri, 13 Mar 2015 13:35:44 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ew13si210926wid.0.2015.03.13.13.35.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 13 Mar 2015 13:35:44 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,396,1422918000"; 
   d="scan'208";a="103271881"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Mar 2015 21:35:43 +0100
Date: Fri, 13 Mar 2015 21:35:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: hamohammed.sa@gmail.com
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/8] Staging: rtl8192e: Remove
 parentheses around right side an assignment
In-Reply-To: <20150313171452.GA7358@haneen-vb>
Message-ID: <alpine.DEB.2.02.1503132132180.2065@localhost6.localdomain6>
References: <20150313171452.GA7358@haneen-vb>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

Your mail has a strange reply to address: 20150313165321.GA6657@haneen-vb

> diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
> index cd3c662..e208203 100644
> --- a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
> +++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
> @@ -89,8 +89,8 @@ void rtl8192_setBBreg(struct net_device *dev, u32 dwRegAddr, u32 dwBitMask,
>  	if (dwBitMask != bMaskDWord) {
>  		OriginalValue = read_nic_dword(dev, dwRegAddr);
>  		BitShift = rtl8192_CalculateBitShift(dwBitMask);
> -		NewValue = (((OriginalValue) & (~dwBitMask)) |
> -			    (dwData << BitShift));
> +		NewValue = ((OriginalValue) & (~dwBitMask)) |
> +			    (dwData << BitShift);

There are more unneeded parentheses here, on OriginalValue and ~dwBitMask.
You can use Coccinelle to address this problem as well.

julia

