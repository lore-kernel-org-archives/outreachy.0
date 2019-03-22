X-GM-THRID: 6670961947938127872
X-Received: by 2002:a5d:6682:: with SMTP id l2mr7410790wru.33.1553285677488;
        Fri, 22 Mar 2019 13:14:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:55c5:: with SMTP id j188ls1356111wmb.13.canary-gmail;
 Fri, 22 Mar 2019 13:14:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzU6EQdMEzTNl7Flrzzkvl5JzHfjl8yuReU9xNjlAJmysoMI4HYHLr05iT4i+DhOO1KyrOT
X-Received: by 2002:a1c:f20e:: with SMTP id s14mr4294447wmc.69.1553285676699;
        Fri, 22 Mar 2019 13:14:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553285676; cv=none;
        d=google.com; s=arc-20160816;
        b=oRzB+Cbs9AlfslpQhNZ7Sko+T+spurjozjfVXLwEHXhQzaRR5NucJWtFQ0C9BiLZEB
         6f8w8xFOIc6ZmXBr0yML42YJaLcaj8pB5ibD7OlNBNkIzDW+GhNGBCxnZEyB9GmpbuqS
         P5fMf3hXbLAqcmuvTP9yRStdZmbB2ZWg/rSuwwh/GQD2wqkTWt1YLjPQOJFWTgMig89q
         DX6GbeE/B/J6U8ZNYCip2+b/U3YAsu9o4CpeCNM9g6AJijCunPEFHuM/OPVfzt4kEUbE
         kIOLY6cWon+aq41iqW46i3w9vTPlR4+XsL7d+67pj1An9qkcQuNsUIWO+F9l1ab9qqX7
         P+qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=UCFEK/cCDFoTzu4dudxZ6h8JJo/2gm4NFjtmnjN8KPs=;
        b=fQpqUvsTfKwAP2jcHrlMLSk3aV/DDSCWvzmQ8y+p1ua2eI99ejmP3sM5o+6a3f4LAe
         3wv960ykgKxE0NqY/4GfPMH/2QRuWgOUdLgI64KziwtSF0waoshwvWFHDfqnUplaCTAp
         I05U4WkAZYbXU9yKzvTF3NP/NiDTUS7OaWMOhnTGkTix7uMXFC88UMQSveGAK8UJKoWC
         nZ4bj/H00JRe3ozEcY4EDEQfXsZf+RavHxyPCBtZuh9jtWRLF/8i570HSHpJ+UKtvIcm
         lfiR2oBTNEEEPpdxsAESE/RhYevlqYE6DDZx5VB7+ALceFL52CNMqPMU79pSwqJsKohN
         5M2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f14si305561wme.2.2019.03.22.13.14.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 13:14:36 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="300442470"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Mar 2019 21:14:35 +0100
Date: Fri, 22 Mar 2019 21:14:35 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatsala Narang <vatsalanarang@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v3 1/3] staging: vt6655: line over 80
 characters
In-Reply-To: <20190322200747.23965-1-vatsalanarang@gmail.com>
Message-ID: <alpine.DEB.2.21.1903222113270.2433@hadrien>
References: <20190322200747.23965-1-vatsalanarang@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 23 Mar 2019, Vatsala Narang wrote:

> Align function to prevent it from going over 80 character a line to get
> rid of checkpatch warning.
>
> Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
> ---
> changes in v3:
>  -to cut line at the commas
>
> changes in v2:
>  -corrected identation issue
>  -aligned the lines from patch 3/3 that are over 80 character
>
>  drivers/staging/vt6655/rf.c | 29 +++++++++++++++++++++--------
>  1 file changed, 21 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
> index fd09b9771cf5..0b3a2097ba10 100644
> --- a/drivers/staging/vt6655/rf.c
> +++ b/drivers/staging/vt6655/rf.c
> @@ -702,9 +702,13 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
>  		for (ii = 0; ii < CB_AL2230_INIT_SEQ; ii++)
>  			MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230InitTable[ii]);
>
> -		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable0[uChannel-1]);
> +		MACvSetMISCFifo(priv,
> +				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
> +				 dwAL2230ChannelTable0[uChannel-1]);

dwAL2230ChannelTable0 needs to go one space to the left.  It should be
lined up with the other arguments.  It is not inside the ( above it, but
rather parallel to it.

If checkpatch suggested to add the extra space, you can ignore it.

julia

>  		ii++;
> -		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable1[uChannel-1]);
> +		MACvSetMISCFifo(priv,
> +				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
> +				 dwAL2230ChannelTable1[uChannel-1]);
>  		break;
>
>  		/* Need to check, PLLON need to be low for channel setting */
> @@ -723,11 +727,17 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
>  				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230InitTableAMode[ii]);
>  		}
>
> -		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable0[uChannel-1]);
> +		MACvSetMISCFifo(priv,
> +				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
> +				 dwAL7230ChannelTable0[uChannel-1]);
>  		ii++;
> -		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable1[uChannel-1]);
> +		MACvSetMISCFifo(priv,
> +				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
> +				 dwAL7230ChannelTable1[uChannel-1]);
>  		ii++;
> -		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable2[uChannel-1]);
> +		MACvSetMISCFifo(priv,
> +				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
> +				 dwAL7230ChannelTable2[uChannel-1]);
>  		break;
>
>  	case RF_NOTHING:
> @@ -737,7 +747,8 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
>  		return false;
>  	}
>
> -	MACvSetMISCFifo(priv, MISCFIFO_SYNINFO_IDX, (unsigned long)MAKEWORD(bySleepCount, byInitCount));
> +	MACvSetMISCFifo(priv, MISCFIFO_SYNINFO_IDX,
> +			(unsigned long)MAKEWORD(bySleepCount, byInitCount));
>
>  	return true;
>  }
> @@ -933,7 +944,8 @@ bool RFbAL7230SelectChannelPostProcess(struct vnt_private *priv,
>  	 * register
>  	 * Channel Index 1~14
>  	 */
> -	if ((byOldChannel <= CB_MAX_CHANNEL_24G) && (byNewChannel > CB_MAX_CHANNEL_24G)) {
> +	if ((byOldChannel <= CB_MAX_CHANNEL_24G) &&
> +	    (byNewChannel > CB_MAX_CHANNEL_24G)) {
>  		/* Change from 2.4G to 5G [Reg] */
>  		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[2]);
>  		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[3]);
> @@ -942,7 +954,8 @@ bool RFbAL7230SelectChannelPostProcess(struct vnt_private *priv,
>  		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[10]);
>  		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[12]);
>  		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[15]);
> -	} else if ((byOldChannel > CB_MAX_CHANNEL_24G) && (byNewChannel <= CB_MAX_CHANNEL_24G)) {
> +	} else if ((byOldChannel > CB_MAX_CHANNEL_24G) &&
> +		   (byNewChannel <= CB_MAX_CHANNEL_24G)) {
>  		/* Change from 5G to 2.4G [Reg] */
>  		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[2]);
>  		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[3]);
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190322200747.23965-1-vatsalanarang%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

