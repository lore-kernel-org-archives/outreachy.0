X-GM-THRID: 1543619215360
X-Received: by 10.152.26.74 with SMTP id j10mr9972lag.10.1424472322652;
        Fri, 20 Feb 2015 14:45:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.74.229 with SMTP id x5ls184397wiv.8.gmail; Fri, 20 Feb
 2015 14:45:21 -0800 (PST)
X-Received: by 10.180.91.76 with SMTP id cc12mr39152wib.7.1424472321370;
        Fri, 20 Feb 2015 14:45:21 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i7si203856wif.0.2015.02.20.14.45.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 14:45:21 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,617,1418079600"; 
   d="scan'208";a="100807096"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2015 23:45:20 +0100
Date: Fri, 20 Feb 2015 23:45:19 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: vt6655: changed C99 //
 comments
In-Reply-To: <1424472008-9544-1-git-send-email-haticeerturk27@gmail.com>
Message-ID: <alpine.DEB.2.02.1502202344060.2054@localhost6.localdomain6>
References: <1424472008-9544-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-901455144-1424472320=:2054"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-901455144-1424472320=:2054
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sat, 21 Feb 2015, Hatice ERTÜRK wrote:

> // erased and replace it with /**/ used.
> Error found with checkpatch.pl
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
> v2:
> *Some /**/ deleted.A row in a single comment line was made.Added a space between the ; and the /*.

Looks better.  The * at the beginning of the line does not seem necessary.  
When you put punctuation (comma, period, etc) put at least one space after 
it.

You don't have to send a new version for these issues, because the text is 
below the line.  Just remember for next time.

julia

> ---
>  drivers/staging/vt6655/rf.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
> index 0b58927..d5fae3e 100644
> --- a/drivers/staging/vt6655/rf.c
> +++ b/drivers/staging/vt6655/rf.c
> @@ -438,13 +438,13 @@ static bool s_bAL7230Init(struct vnt_private *priv)
>  	MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
>  
>  	/* Calibration */
> -	MACvTimer0MicroSDelay(dwIoBase, 150);/* 150us */
> +	MACvTimer0MicroSDelay(dwIoBase, 150); /* 150us */
>  	/* TXDCOC:active, RCK:disable */
>  	bResult &= IFRFbWriteEmbedded(priv, (0x9ABA8F00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW));
> -	MACvTimer0MicroSDelay(dwIoBase, 30);/* 30us */
> +	MACvTimer0MicroSDelay(dwIoBase, 30); /* 30us */
>  	/* TXDCOC:disable, RCK:active */
>  	bResult &= IFRFbWriteEmbedded(priv, (0x3ABA8F00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW));
> -	MACvTimer0MicroSDelay(dwIoBase, 30);/* 30us */
> +	MACvTimer0MicroSDelay(dwIoBase, 30); /* 30us */
>  	/* TXDCOC:disable, RCK:disable */
>  	bResult &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[CB_AL7230_INIT_SEQ-1]);
>  
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424472008-9544-1-git-send-email-haticeerturk27%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 
--8323328-901455144-1424472320=:2054--

