X-GM-THRID: 6339162656111329280
X-Received: by 10.36.36.68 with SMTP id f65mr2144340ita.37.1476023208693;
        Sun, 09 Oct 2016 07:26:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.147 with SMTP id u19ls6847363ota.0.gmail; Sun, 09 Oct
 2016 07:26:48 -0700 (PDT)
X-Received: by 10.159.48.216 with SMTP id k24mr7257045uab.3.1476023208246;
        Sun, 09 Oct 2016 07:26:48 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id um12si7284343pab.2.2016.10.09.07.26.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 07:26:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7496D7AA;
	Sun,  9 Oct 2016 14:26:47 +0000 (UTC)
Date: Sun, 9 Oct 2016 16:26:56 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: rtl8192e: Remove ternary operator
Message-ID: <20161009142656.GA27065@kroah.com>
References: <1475951297-10364-1-git-send-email-bhumirks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1475951297-10364-1-git-send-email-bhumirks@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sat, Oct 08, 2016 at 11:58:17PM +0530, Bhumika Goyal wrote:
> Relational and logical operators evaluate to either true or false.
> Explicit conversion is not needed so remove the ternary operator.
> Done using coccinelle:
> 
> @r@
> expression A,B;
> symbol true,false;
> binary operator b = {==,!=,&&,||,>=,<=,>,<};
> @@
> - (A b B) ? true : false
> + A b B
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtl819x_HTProc.c | 12 ++++--------
>  drivers/staging/rtl8192e/rtllib.h         |  2 +-
>  2 files changed, 5 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
> index dd9c0c8..8cd51a9 100644
> --- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
> +++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
> @@ -558,19 +558,15 @@ void HTOnAssocRsp(struct rtllib_device *ieee)
>  #endif
>  	HTSetConnectBwMode(ieee, (enum ht_channel_width)(pPeerHTCap->ChlWidth),
>  			  (enum ht_extchnl_offset)(pPeerHTInfo->ExtChlOffset));
> -	pHTInfo->bCurTxBW40MHz = ((pPeerHTInfo->RecommemdedTxWidth == 1) ?
> -				 true : false);
> +	pHTInfo->bCurTxBW40MHz = (pPeerHTInfo->RecommemdedTxWidth == 1);

Ugh, I _hate_ ? : statements.

Just write the thing out, is this easy to read as is?

>  	pHTInfo->bCurShortGI20MHz = ((pHTInfo->bRegShortGI20MHz) ?
> -				    ((pPeerHTCap->ShortGI20Mhz == 1) ?
> -				    true : false) : false);
> +				    (pPeerHTCap->ShortGI20Mhz == 1) : false);
>  	pHTInfo->bCurShortGI40MHz = ((pHTInfo->bRegShortGI40MHz) ?
> -				     ((pPeerHTCap->ShortGI40Mhz == 1) ?
> -				     true : false) : false);
> +				     (pPeerHTCap->ShortGI40Mhz == 1) : false);

Is this?  Kernel code is meant to be read by humans first, and the
compiler second.  None of this will be any different if you write out a
if () statement.  Please just do that instead.

thanks,

greg k-h

