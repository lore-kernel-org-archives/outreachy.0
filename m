X-GM-THRID: 6670961947938127872
X-Received: by 2002:a5d:48ca:: with SMTP id p10mr7994901wrs.141.1553281114688;
        Fri, 22 Mar 2019 11:58:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c403:: with SMTP id k3ls1322239wmi.2.gmail; Fri, 22 Mar
 2019 11:58:34 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx6amOT28Te7++6Xxm1oyJeVQfuGGuYaO3AXCBFPYZrOBA2jPvjXCQgkON1JQ7qHVhoi9UN
X-Received: by 2002:a1c:c68b:: with SMTP id w133mr4314472wmf.80.1553281113965;
        Fri, 22 Mar 2019 11:58:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553281113; cv=none;
        d=google.com; s=arc-20160816;
        b=AMJKqmOH0hY2VSSddU4sZPcoak/DPQ80fHQ947SgobyBLbu/COJTkxVb+bMaHbzKfY
         jYEZPW+ACuu6jkk6A8a8KPhqSz5Dv61wcU/uHwRb3Psu/kqepYclgjrRYUPvy62pD2+0
         xgdeHJi6ZhBiHuYFMTTHaXxtVr7Km8S0ABvhVl2uXRcgdQO19OHrlyVb86z1bHUoa8k/
         wZ+PRt/4h/fSX1DrD64B4pf2hQ4Eut6Fr6NYcGcTviCRa6Mlev/hxZUn6Y+xlEfL3FIu
         QhJD1WMTJOc07a+sgj6AcgBgEPIpFqRipJHJuWSKHwhqMYpXLuUlR54C2iwGK2WiWGCk
         OeCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=X6BKA7+kYusOqGsTFp0N29LyU/g6O57O8uPLdoHIsqw=;
        b=fNoNjaOpUF2/83ZrL9fbyMnivE6EAaS4T84SL5bJicbvIF864cXhrPUzGplIM0b2vs
         1F5Bs7RxddWp++F7fUccHV6Co6CSnhe8t17V1rsBPyTZ99aaM7wsAHkn4ZnOZx2ysBdm
         byFAS9uiaU5hw8E8MrRNYhixJEtes0sU/I/nnZstpWiUwjtHiGfH7AKvce92IDnDgvDc
         SKC+oevDsVfsa2iGjMS9kQ0tcN80EPzajdXXg0NbFAvSHql/5NnMNoldxtgyuj0y6IME
         08mBZvNSltmhwPwdlIbElAjkoe/smUDgJUySTUylaCv2NB/KiQB3xU4gwTwXZKua/jRt
         jKqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n5si531628wrj.0.2019.03.22.11.58.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 11:58:33 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="375357137"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Mar 2019 19:58:33 +0100
Date: Fri, 22 Mar 2019 19:58:33 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatsala Narang <vatsalanarang@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2 1/3] staging: vt6655: line over 80
 characters
In-Reply-To: <20190322183641.22025-1-vatsalanarang@gmail.com>
Message-ID: <alpine.DEB.2.21.1903221958130.2433@hadrien>
References: <20190322183641.22025-1-vatsalanarang@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 23 Mar 2019, Vatsala Narang wrote:

> Align function to prevent it from going over the 80 character a line to
> get rid of checkpatch warning.
>
> Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
> ---
> changes v2:
>  -corrected identation issue
>  -aligned the lines from patch 3/3 that went over 80 character
>
>  drivers/staging/vt6655/rf.c | 24 ++++++++++++++++--------
>  1 file changed, 16 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
> index fd09b9771cf5..5f43ccfbd746 100644
> --- a/drivers/staging/vt6655/rf.c
> +++ b/drivers/staging/vt6655/rf.c
> @@ -702,9 +702,11 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
>  		for (ii = 0; ii < CB_AL2230_INIT_SEQ; ii++)
>  			MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230InitTable[ii]);
>
> -		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable0[uChannel-1]);
> +		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX +
> +				ii), dwAL2230ChannelTable0[uChannel-1]);

It would be better to cut at the commas instead of in the middle of an
expression.

julia

>  		ii++;
> -		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable1[uChannel-1]);
> +		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX +
> +				ii), dwAL2230ChannelTable1[uChannel-1]);
>  		break;
>
>  		/* Need to check, PLLON need to be low for channel setting */
> @@ -723,11 +725,14 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
>  				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230InitTableAMode[ii]);
>  		}
>
> -		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable0[uChannel-1]);
> +		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX +
> +				ii), dwAL7230ChannelTable0[uChannel-1]);
>  		ii++;
> -		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable1[uChannel-1]);
> +		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX +
> +				ii), dwAL7230ChannelTable1[uChannel-1]);
>  		ii++;
> -		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable2[uChannel-1]);
> +		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX +
> +				ii), dwAL7230ChannelTable2[uChannel-1]);
>  		break;
>
>  	case RF_NOTHING:
> @@ -737,7 +742,8 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
>  		return false;
>  	}
>
> -	MACvSetMISCFifo(priv, MISCFIFO_SYNINFO_IDX, (unsigned long)MAKEWORD(bySleepCount, byInitCount));
> +	MACvSetMISCFifo(priv, MISCFIFO_SYNINFO_IDX,
> +			(unsigned long)MAKEWORD(bySleepCount, byInitCount));
>
>  	return true;
>  }
> @@ -933,7 +939,8 @@ bool RFbAL7230SelectChannelPostProcess(struct vnt_private *priv,
>  	 * register
>  	 * Channel Index 1~14
>  	 */
> -	if ((byOldChannel <= CB_MAX_CHANNEL_24G) && (byNewChannel > CB_MAX_CHANNEL_24G)) {
> +	if ((byOldChannel <= CB_MAX_CHANNEL_24G) &&
> +	    (byNewChannel > CB_MAX_CHANNEL_24G)) {
>  		/* Change from 2.4G to 5G [Reg] */
>  		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[2]);
>  		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[3]);
> @@ -942,7 +949,8 @@ bool RFbAL7230SelectChannelPostProcess(struct vnt_private *priv,
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190322183641.22025-1-vatsalanarang%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

