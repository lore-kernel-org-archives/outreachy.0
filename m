X-GM-THRID: 6808004693646639104
X-Received: by 2002:a1f:2d8a:: with SMTP id t132mr246863vkt.67.1585139749925;
        Wed, 25 Mar 2020 05:35:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:7717:: with SMTP id z23ls157054uaq.8.gmail; Wed, 25 Mar
 2020 05:35:48 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuawIuMLqWfG+75vUpHLyYLB8kA+JxMIh1HOg3+9pjU3Cr0vfW9EFOnekGG/klJ8OVPSIjM
X-Received: by 2002:ab0:718b:: with SMTP id l11mr2255967uao.100.1585139748641;
        Wed, 25 Mar 2020 05:35:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585139748; cv=none;
        d=google.com; s=arc-20160816;
        b=cH6TOG5RAyozGGIOwc1seF13mAEh4EC51oGBGR8joaZ3RpLcfMvuZyrlzX+wl4Ft0K
         mAd7b0auKBMflJd2K4/NqZO+2jjzODp9sVCIvJoPJIUO6RICsW3yuEBt+nh1e/3wc48Q
         5FUplf26Oz7+28L8oVUfCY0T7oExlrl9qwMSHTGMARoWRXwUZq5A2bqcCbh7TwBdUDJ7
         YLk77yfHJDIE7dU2mq5gF8mZzCwhrXbdNZtaF6nfxcNh+n5jaMI42WNljH6zBl9QuEXR
         xrhykVs3mdfWM/Ay0xBbaPqgdT5cgKaGXmlIo17So/msDlQ4NBjEBdOC58/LLxu6TZUG
         D33A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=cQ7yUMYtGxO4r9omAoYdoNNVXTqPA9EZyIpHm5edSDE=;
        b=nmvMjq3ZuVE/DF8jMKhTUHv4kwF9IR00wisc4+NfRFj+DctA1E72pUtxkqI3YudHYf
         3CxtZzuIfwH7FYF8cbYIb96YtU6iS7wWqQhTJv1k5gnLqXae35teqVAzifbFpNLelrah
         XVvZlw0FcpZRSMuVnLpqQiAbboqN7ssdZogjpYCzwe1UaDKLy1toNBcJc5STL12FSEeQ
         CqQ8fGMt5zeQcCYpbNPh1KdV3gp51ByBvmu7gDMB8nNwsuHQCQuhYozQAvgapeczi6Qc
         k8wB7hphlDw2mMEwQtyQRqs9HHWmYg2NyZTUDM3tp77KqYGO3aLXQ1Nb0Kk2fy9g1oY0
         pF6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KmykCrAE;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s124si1381668vka.1.2020.03.25.05.35.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2020 05:35:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KmykCrAE;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E58FC2076A;
	Wed, 25 Mar 2020 12:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585139747;
	bh=jJvGXiTysyRszi/BxtfkPkwBnUYWxZhs0o3ALhSwhNk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KmykCrAEV+SgV4cbWua5EOsbFzwQo/avdWPW3TrNAHIm2zkYLpn1TNMcx63IGXJA6
	 GYNP0A4fg98/SqOmXwPRBJXrGti/BivNXVvl3EV03SZXxSNFSN8TDSu7xbPG55xUFD
	 reYTw+zyCbgn7SL2VC9OvOwYoRixWTsietN/8e78=
Date: Wed, 25 Mar 2020 13:35:45 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Briana Oursler <briana.oursler@gmail.com>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy} [PATCH] Staging: vt6655: Refactor switch case
 statement.
Message-ID: <20200325123545.GB3430583@kroah.com>
References: <20200325045500.88046-1-briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200325045500.88046-1-briana.oursler@gmail.com>

On Tue, Mar 24, 2020 at 09:55:00PM -0700, Briana Oursler wrote:
> Replaces nested if-else within switch case with ternary logic and variable
> setting to limit returns. Exposes primary logic to aid
> readability.

Wrap your changelog at the same size for each line, don't make it up :)

> 
> Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> ---
>  drivers/staging/vt6655/rxtx.c | 101 +++++++++++++---------------------
>  1 file changed, 39 insertions(+), 62 deletions(-)

Where did the "}" character come from on the subject line?


> 
> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> index 37fcc42ed000..eb7b20286ae2 100644
> --- a/drivers/staging/vt6655/rxtx.c
> +++ b/drivers/staging/vt6655/rxtx.c
> @@ -240,6 +240,7 @@ s_uGetDataDuration(
>  {
>  	bool bLastFrag = false;
>  	unsigned int uAckTime = 0, uNextPktTime = 0;
> +	unsigned int len;
>  
>  	if (uFragIdx == (uMACfragNum - 1))
>  		bLastFrag = true;
> @@ -254,17 +255,18 @@ s_uGetDataDuration(
>  				return 0;
>  			}
>  		} else {/* First Frag or Mid Frag */
> -			if (uFragIdx == (uMACfragNum - 2))
> -				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wRate, bNeedAck);
> -			else
> -				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
> +			len = (uMacfragNum - 2 == uFragIdx) ?
> +				cbLastFragmentSize : cbFrameLength;

Ugh, I hate ? : logic.

Spell it out, be specific, this is just much harder to read now than
before.

> +			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wRate, bNeedAck);
>  
>  			if (bNeedAck) {
> -				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
> -				return pDevice->uSIFS + uAckTime + uNextPktTime;
> +				uAckTime = BBuGetFrameTime(pDevice->byPreambleType,
> +							   byPktType, 14, pDevice->byTopCCKBasicRate);

You didn't wrap this properly?


>  			} else {
> -				return pDevice->uSIFS + uNextPktTime;
> +				uAckTime = 0;
>  			}
> +
> +			return pDevice->uSIFS + uAckTime + uNextPktTime;
>  		}
>  		break;
>  
> @@ -277,17 +279,18 @@ s_uGetDataDuration(
>  				return 0;
>  			}
>  		} else {/* First Frag or Mid Frag */
> -			if (uFragIdx == (uMACfragNum - 2))
> -				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wRate, bNeedAck);
> -			else
> -				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
> +			len = (uMacfragNum - 2 == uFragIdx) ?
> +				cbLastFragmentSize : cbFrameLength;

Same here, this makes it harder to understand.

thanks,

greg k-h

