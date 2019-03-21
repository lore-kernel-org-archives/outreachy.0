X-GM-THRID: 6670962205822812160
X-Received: by 2002:a7b:c3d7:: with SMTP id t23mr831908wmj.62.1553205095173;
        Thu, 21 Mar 2019 14:51:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:2d06:: with SMTP id t6ls994805wmt.10.gmail; Thu, 21 Mar
 2019 14:51:34 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwg8L1nZr9Dzyzap664i7AIrm7gsLQJ73Vw2fgB1HOhL7103QI8z7aeLehw46wS5eGZJPpo
X-Received: by 2002:a1c:2885:: with SMTP id o127mr883283wmo.135.1553205094438;
        Thu, 21 Mar 2019 14:51:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553205094; cv=none;
        d=google.com; s=arc-20160816;
        b=al0q2cE4MlvmSZNPH7VRB5XAPxMJUAZx4K4vDAsAVC33yaan/eO3w741xUzeO2JsSy
         vNuVZgBRVhRIzQJP7fwiQXzfP2U2+EFRAp/jHK1OaqH2qA2BB5xlvRCy12oVPjvUXbvL
         BIN7PkjSHATXGwS/0jUqcKOFeEBOVdOg4iByiqRLES2lBlt2G2r7PKHJSQmMJlIhAyPv
         bELP7chcnhhrzhB4ngUWtPLoz2y6rqk1m9u5CtRwh7veDbzwU2mOuvTjr+L0SOy90ZTi
         MOKOJz7Ksl56Dm91DYRF0WPzcmzKNM0iR/qWurTqYYF7fiFy4nSoS12wPUaPDOvBDlG5
         /cWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=tMb8FKaSznlQp8LJM1bb5/gT2cHL3muL4kHctXGWgT0=;
        b=dJSHFAIQqwhI5+JO1M3hTZCwdZiQnRfLjTQ/XLosyIrcqR1fBQuRspUL5amQt5lgBk
         gu1OWlTzJAYgiiRo2zMcFvd9ztD7cQoBlvNFXwgo54eqZ6vRwL4PHcSJzmefFfGJ4i+o
         hLzjiWFIy1ZG1wLt2a4SgsWLY+gSTQ3AuOqC5S1kIxevaeSLUxU0RlIBM9uBjMU02BXJ
         9dR9EEiezvS2sW/IoWc0GERjiodt1kwhcidtGBbJk2OwBWCJ8AQIAdS9vvg7NYwOjIJ/
         MbGlXF8vMoDTcRN+VOow967eLP4eqf57L7rgyITNvE9JvcENOTt2MoCiDpPnVygqNvkD
         liFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id n5si391945wrj.0.2019.03.21.14.51.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 14:51:34 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,254,1549926000"; 
   d="scan'208";a="300300165"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Mar 2019 22:51:33 +0100
Date: Thu, 21 Mar 2019 22:51:33 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatsala Narang <vatsalanarang@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 2/3] staging: vt6655: Add spaces around
 operator
In-Reply-To: <20190321214005.15907-1-vatsalanarang@gmail.com>
Message-ID: <alpine.DEB.2.21.1903212250560.4720@hadrien>
References: <20190321214005.15907-1-vatsalanarang@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 22 Mar 2019, Vatsala Narang wrote:

> Add spaces around '-' operator to get rid of checkpatch warning.
>
> Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
> ---
>  drivers/staging/vt6655/rf.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
> index 8d1caa4b19e8..6b8a69df509d 100644
> --- a/drivers/staging/vt6655/rf.c
> +++ b/drivers/staging/vt6655/rf.c
> @@ -702,9 +702,9 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
>  		for (ii = 0; ii < CB_AL2230_INIT_SEQ; ii++)
>  			MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230InitTable[ii]);
>
> -		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable0[uChannel-1]);
> +		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable0[uChannel - 1]);


These lines are really long.  You could fix that as well, in another patch
in the series.

julia

>  		ii++;
> -		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable1[uChannel-1]);
> +		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable1[uChannel - 1]);
>  		break;
>
>  		/* Need to check, PLLON need to be low for channel setting */
> @@ -723,11 +723,11 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
>  				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230InitTableAMode[ii]);
>  		}
>
> -		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable0[uChannel-1]);
> +		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable0[uChannel - 1]);
>  		ii++;
> -		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable1[uChannel-1]);
> +		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable1[uChannel - 1]);
>  		ii++;
> -		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable2[uChannel-1]);
> +		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable2[uChannel - 1]);
>  		break;
>
>  	case RF_NOTHING:
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190321214005.15907-1-vatsalanarang%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

