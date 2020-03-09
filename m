X-GM-THRID: 6802291814363561984
X-Received: by 2002:a17:906:2e4a:: with SMTP id r10mr15876405eji.142.1583787048432;
        Mon, 09 Mar 2020 13:50:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:cd53:: with SMTP id v19ls8247274edw.11.gmail; Mon, 09
 Mar 2020 13:50:47 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvCuavSIFNMXwbptiZuPshXJ2BuIiPYZII2FtCCUlGr278i/l/3CrLI4RKo8r3Q3otGxU/i
X-Received: by 2002:a50:f18c:: with SMTP id x12mr18750856edl.351.1583787046995;
        Mon, 09 Mar 2020 13:50:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583787046; cv=none;
        d=google.com; s=arc-20160816;
        b=DpWVZQ7fajZtwAhXzvqJ9x2uEubYCykZta4ipdPLNlGB32hsauFoimkTvxpkMGWGe5
         WiizPdMvB7PYkUsN/b/9DJ5FTa4HH61XiFZHME60sKiWTEtSgZE+vYPefn6GLoTi7U+U
         M4YyyXigHNUvcK1kVQgHRHEVWW5QUEdpcA30sBch/o1eUY4B8e1B2KqKRK2ENH2vf4wH
         On7k35AZmCBfPz7uJIEtEenOnV0UleQDxEjRwHzzU7kzQ4d82Ig96G4hOxd6wEBSRRKD
         cCNbiLSBN0andJ/RC8CL6SSORVs2tl5kzRQS/xu1xiAXhJbXUoNAkvsT4r71a5tJQxST
         94kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=V6u7WXmGvhBDyw7P1D+hvk6Is04Y0fdmfdg+XciUo8U=;
        b=W+A/XM8CT0y2Ln1+V2Tpt/1buH5LAUunGmGekFaGq7uqQLwrwH97Hidd/d+y+Xfwna
         rIGopKvzJdGAXUA4xJ8MInIn3uES+N8QiQyD5jkDTOrpO+v+S3qCdp3MzOsoW+dyf+m9
         MAkCi7nIznFiVMD3UgTnbIf/hoVckK1cGh1gGoUNIzLoOJIQdlqNpsmsaEwLhlq+3hpA
         ejIxsLoHB1vnCJcxp/WxbJWooBDOsue3a8dPZigqNIotDLBn/f6oGrMjX/CimQHLL8xG
         2KyRU75ysQff2FnzmEIy2+fMwX7BEvYU1mxzFTPiFzXQxnQnV24mTgF0Vfh09I0Hccgi
         1B3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d7si587163edo.5.2020.03.09.13.50.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2020 13:50:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,534,1574118000"; 
   d="scan'208";a="439559012"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2020 21:50:46 +0100
Date: Mon, 9 Mar 2020 21:50:46 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Lourdes Pedrajas <lu@pplo.net>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    forest@alittletooquiet.net
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: power.c: remove
 unused code and improve formatting
In-Reply-To: <20200309192610.23541-1-lu@pplo.net>
Message-ID: <alpine.DEB.2.21.2003092149150.2324@hadrien>
References: <20200309192610.23541-1-lu@pplo.net>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Mon, 9 Mar 2020, Lourdes Pedrajas wrote:

> Remove unused code and improve formatting.

A patch should do only one thing.  This patch does two things.

Also, it would be good to try to find something more to say in the log
message than just repeating the subject line.  Why did you consider that
it was a good idea to remove the code or to add the blank lines?

julia

>
> Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> ---
>  drivers/staging/vt6655/power.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/vt6655/power.c b/drivers/staging/vt6655/power.c
> index bfd598a93b04..f1c221f5dcd2 100644
> --- a/drivers/staging/vt6655/power.c
> +++ b/drivers/staging/vt6655/power.c
> @@ -58,14 +58,11 @@ void PSvEnablePowerSaving(struct vnt_private *priv,
>  	if (priv->op_mode != NL80211_IFTYPE_ADHOC) {
>  		/* set AID */
>  		VNSvOutPortW(priv->PortOffset + MAC_REG_AIDATIM, wAID);
> -	} else {
> -		/* set ATIM Window */
> -#if 0 /* TODO atim window */
> -		MACvWriteATIMW(priv->PortOffset, pMgmt->wCurrATIMWindow);
> -#endif
>  	}
> +
>  	/* Set AutoSleep */
>  	MACvRegBitsOn(priv->PortOffset, MAC_REG_PSCFG, PSCFG_AUTOSLEEP);
> +
>  	/* Set HWUTSF */
>  	MACvRegBitsOn(priv->PortOffset, MAC_REG_TFTCTL, TFTCTL_HWUTSF);
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200309192610.23541-1-lu%40pplo.net.
>

