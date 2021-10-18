X-GM-THRID: 7020422968837668864
X-Received: by 2002:a05:6512:3a87:: with SMTP id q7mr276320lfu.425.1634569840495;
        Mon, 18 Oct 2021 08:10:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:760d:: with SMTP id r13ls2852420ljc.0.gmail; Mon, 18 Oct
 2021 08:10:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyf7ZhHzej/VyPk6xz37e5be9C1qlvoWEPKP+0FLnYSBIPFWxYQYQrzwktvEX6eBtZJyEl9
X-Received: by 2002:a05:651c:203:: with SMTP id y3mr286993ljn.335.1634569838702;
        Mon, 18 Oct 2021 08:10:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634569838; cv=none;
        d=google.com; s=arc-20160816;
        b=I2lofKEUq+rU4PhY70nfSQK4OYm7BoWSiQMRsPXiHYgXVUoFaiAVTxQXHcKb/5oHAr
         KpOXO1dGpdiY3YP+ZaU0GnHL3l2NrE7afqWNnZ9OWVs8kElfm3IQo2hsI45PVDgF1JHP
         9kYVSiEd1I0l/cwYry8PgWoo7hOqGBiQMRLjS+Yyg8XW65ZcgAJc+Z41y3ua3mGUo6cH
         SVqf7Oa8qBBjGchjb523H567y2ALrkHX5tq82pSjtE+jxOJOcuLzzf8Q3+vz0klP0K0B
         tJjBxj1oCH8tAmBqUH1nI+zbBPTily0i6wawFzLfUHEs4joVVThfmT1oFtp1i4B7Fasv
         rjQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=N3ew+a4n1w/u2YbYBcuydZX+jrLjQUf9Uo3uVfCFKKA=;
        b=cRFbinRgUHXt00u0iaYLm21GrZ/MIpHHePJbwOocGbL2swM6b6G6KsQ1UrA3jiu+3L
         Hi2dMD30OK6fQ0TShejGukf73bc2pl6r22SRkStpbuDAB/4aNas1TGgLHHB48PBe3m1L
         CkSTIRcdKK0PSHkGhjbA4hxv2N9scHFuYdFYhpccTbhVv/6tLFbruqz1IHB7i9s+oJkc
         EYERHeozkr7RqAlpI/u09wLD7UEWVGY3/3uPViLgKpkXCcUVvWl8gdfASIWmO5xsnRxR
         5McV1FOHwYmCKR784fRaS5wn638am8osLeRMDUMBFYDiKEwCgSASq7NdDKqeIOw9aHfH
         CCbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s16si1087391lfp.6.2021.10.18.08.10.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Oct 2021 08:10:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3A7B40DK1vdPNOsFLHXjpV2wqjBMckLtp133Aq?=
 =?us-ascii?q?2lEZdPU7SKClfqyV8cjzqyWbtN95YhhJ8uxoU5PufZqzz/RI3bU=3D?=
X-IronPort-AV: E=Sophos;i="5.84,326,1620684000"; 
   d="scan'208";a="534580453"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Oct 2021 17:10:37 +0200
Date: Mon, 18 Oct 2021 17:10:37 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Karolina Drobnik <karolinadrobnik@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    forest@alittletooquiet.net, linux-staging@lists.linux.dev, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: Fix line wrapping
 in rf.c file
In-Reply-To: <20211018150526.9718-1-karolinadrobnik@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2110181708110.3174@hadrien>
References: <20211018150526.9718-1-karolinadrobnik@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 18 Oct 2021, Karolina Drobnik wrote:

> Fix line length warnings raised by checkpatch.pl in
> rf.c file for `RFvWriteWakeProgSyn`,`RFbRawSetPower`
> and `RFbAL7230SelectChannelPostProcess`functions.
>
> Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
> ---
>  drivers/staging/vt6655/rf.c | 66 +++++++++++++++++++++++++++----------
>  1 file changed, 49 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
> index a6f17162d017..206d34b555bc 100644
> --- a/drivers/staging/vt6655/rf.c
> +++ b/drivers/staging/vt6655/rf.c
> @@ -699,11 +699,17 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
>  			return false;
>
>  		for (ii = 0; ii < CB_AL2230_INIT_SEQ; ii++)
> -			MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230InitTable[ii]);
> +			MACvSetMISCFifo(priv,
> +					(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
> +					dwAL2230InitTable[ii]);
>
> -		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable0[uChannel - 1]);
> +		MACvSetMISCFifo(priv,
> +				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
> +				dwAL2230ChannelTable0[uChannel - 1]);
>  		ii++;
> -		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable1[uChannel - 1]);
> +		MACvSetMISCFifo(priv,
> +				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
> +				dwAL2230ChannelTable1[uChannel - 1]);
>  		break;
>
>  		/* Need to check, PLLON need to be low for channel setting */
> @@ -716,17 +722,28 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
>
>  		if (uChannel <= CB_MAX_CHANNEL_24G) {
>  			for (ii = 0; ii < CB_AL7230_INIT_SEQ; ii++)
> -				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230InitTable[ii]);
> +				MACvSetMISCFifo(priv,
> +						(unsigned short)(MISCFIFO_SYNDATA_IDX
> +						+ ii), dwAL7230InitTable[ii]);

The placement of + ii) is not a good solution.  Can it be moved up to the
line before?  Likewise in the next case.

>  		} else {
>  			for (ii = 0; ii < CB_AL7230_INIT_SEQ; ii++)
> -				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230InitTableAMode[ii]);
> +				MACvSetMISCFifo(priv,
> +						(unsigned short)(MISCFIFO_SYNDATA_IDX
> +						+ ii),
> +					dwAL7230InitTableAMode[ii]);
>  		}
>
> -		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable0[uChannel - 1]);
> +		MACvSetMISCFifo(priv,
> +				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
> +				dwAL7230ChannelTable0[uChannel - 1]);
>  		ii++;
> -		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable1[uChannel - 1]);
> +		MACvSetMISCFifo(priv,
> +				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
> +				dwAL7230ChannelTable1[uChannel - 1]);
>  		ii++;
> -		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable2[uChannel - 1]);
> +		MACvSetMISCFifo(priv,
> +				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
> +				dwAL7230ChannelTable2[uChannel - 1]);
>  		break;
>
>  	case RF_NOTHING:
> @@ -736,7 +753,8 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
>  		return false;
>  	}
>
> -	MACvSetMISCFifo(priv, MISCFIFO_SYNINFO_IDX, (unsigned long)MAKEWORD(bySleepCount, byInitCount));
> +	MACvSetMISCFifo(priv, MISCFIFO_SYNINFO_IDX,
> +			(unsigned long)MAKEWORD(bySleepCount, byInitCount));
>
>  	return true;
>  }
> @@ -836,20 +854,32 @@ bool RFbRawSetPower(struct vnt_private *priv, unsigned char byPwr,
>  	case RF_AIROHA:
>  		ret &= IFRFbWriteEmbedded(priv, dwAL2230PowerTable[byPwr]);
>  		if (rate <= RATE_11M)
> -			ret &= IFRFbWriteEmbedded(priv, 0x0001B400 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
> +			ret &= IFRFbWriteEmbedded(priv, 0x0001B400
> +					+ (BY_AL2230_REG_LEN << 3)
> +					+ IFREGCTL_REGW);

Also not great.  Maybe there could be a newline before the 0x0001B400 too.

julia

>  		else
> -			ret &= IFRFbWriteEmbedded(priv, 0x0005A400 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
> +			ret &= IFRFbWriteEmbedded(priv, 0x0005A400
> +					+ (BY_AL2230_REG_LEN << 3)
> +					+ IFREGCTL_REGW);
>
>  		break;
>
>  	case RF_AL2230S:
>  		ret &= IFRFbWriteEmbedded(priv, dwAL2230PowerTable[byPwr]);
>  		if (rate <= RATE_11M) {
> -			ret &= IFRFbWriteEmbedded(priv, 0x040C1400 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
> -			ret &= IFRFbWriteEmbedded(priv, 0x00299B00 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
> +			ret &= IFRFbWriteEmbedded(priv, 0x040C1400
> +					+ (BY_AL2230_REG_LEN << 3)
> +					+ IFREGCTL_REGW);
> +			ret &= IFRFbWriteEmbedded(priv, 0x00299B00
> +					+ (BY_AL2230_REG_LEN << 3)
> +					+ IFREGCTL_REGW);
>  		} else {
> -			ret &= IFRFbWriteEmbedded(priv, 0x0005A400 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
> -			ret &= IFRFbWriteEmbedded(priv, 0x00099B00 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
> +			ret &= IFRFbWriteEmbedded(priv, 0x0005A400
> +					+ (BY_AL2230_REG_LEN << 3)
> +					+ IFREGCTL_REGW);
> +			ret &= IFRFbWriteEmbedded(priv, 0x00099B00
> +					+ (BY_AL2230_REG_LEN << 3)
> +					+ IFREGCTL_REGW);
>  		}
>
>  		break;
> @@ -921,7 +951,8 @@ bool RFbAL7230SelectChannelPostProcess(struct vnt_private *priv,
>  	 * register
>  	 * Channel Index 1~14
>  	 */
> -	if ((byOldChannel <= CB_MAX_CHANNEL_24G) && (byNewChannel > CB_MAX_CHANNEL_24G)) {
> +	if ((byOldChannel <= CB_MAX_CHANNEL_24G) &&
> +	    (byNewChannel > CB_MAX_CHANNEL_24G)) {
>  		/* Change from 2.4G to 5G [Reg] */
>  		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[2]);
>  		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[3]);
> @@ -930,7 +961,8 @@ bool RFbAL7230SelectChannelPostProcess(struct vnt_private *priv,
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
> 2.30.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20211018150526.9718-1-karolinadrobnik%40gmail.com.
>

