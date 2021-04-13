X-GM-THRID: 6950332332596264960
X-Received: by 2002:ad4:4b2a:: with SMTP id s10mr31104631qvw.39.1618300319155;
        Tue, 13 Apr 2021 00:51:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:622a:1101:: with SMTP id e1ls358128qty.7.gmail; Tue, 13
 Apr 2021 00:51:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwHccCDveEZBpkFNbmXnObwM819SwR5alpmkItp2krWzQBBm6DD+T5XZgFqaOtSzzsjMYiu
X-Received: by 2002:ac8:4a16:: with SMTP id x22mr9156425qtq.364.1618300318369;
        Tue, 13 Apr 2021 00:51:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618300318; cv=none;
        d=google.com; s=arc-20160816;
        b=iJfpQwb224twSIQtx21e4rjl7TRQKEULJdyEkhJXzP/QUpc17RlaLEEuLiEnI3+VQD
         LKE7gV/7eDQXdYf0R7AJaXGf7MjKJjt4tTmwGoiYzzEt66WGeftd2G3NVEGlk8oCG6hz
         BLowXAOMsSu89cmaV7rHbkXIxCnqDy81tN2cRMH6Ux3RD7UCQZ7dYNITJgUCqgd5tw/S
         WXydDhQljyFFLcRFAcNbBOe9eghEQhz24MuZ+qsdjkN6gLlt8X8GIadtptsUFSWcTpRy
         r4vJYhhxVV01FDqwWTK80yaXrULq7nM1rZ4+2S2bf83JOnQpEeAqnh4GnA7hGEetAtpC
         XOXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rqCtfOsQqPvkp6QI+sYLdYBAY4ao0uzRDt9DhQdsgYY=;
        b=jAmgtsmyP8CJ2zKdMn27Z0IPnk4mXK3J4UvFC98gWVdZUh5/s1YM1GFAzQ110sJ6xl
         7rKBUUvUHn2JLfO6Q3P3+xiuEgWJeRHS3fj2r6xAugVkso2rW9wg6/2ob51v7mb0eMvY
         BQ+autoey1WwNjopLyAwI69JaGlEYY/HyBFmxlMr5h9Gn9HrrQPconkg7opMpSXIofHU
         miTlT+2XkxiSeSb5UfRCdrqDcOqFXVDp3He3dtEzwvXIfFd5HaYbOrg0QIBPiE+TvtCO
         C44cQFWx5aseZqhROQG8Ecw4GeZAy85v1cSvm9Q1VsItWfN9OPkbVThPi2VybzpgQy5X
         f3oQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=EfyifVtZ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k1si1619602qtg.2.2021.04.13.00.51.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 00:51:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=EfyifVtZ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id A9230613B1;
	Tue, 13 Apr 2021 07:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618300317;
	bh=kH6tzlgbDeOX411elnJ/YrqiObxFCB2d+i2jEGP6EVM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EfyifVtZP+00T6KM/wUeCHuGZbvos4c60CfXdKSe1HM5C/MJOypnszg+TY/YTfQ3F
	 G3MJKorJ8mYVYR51as0PxCb+sAk2sWrfhTCDjd5PZeAmRJYLTnGJq/OmlI7NWvToT7
	 50flA6rU2+1jtClNXN3Bt8gbHqrnQfW5IRvA4Uv8=
Date: Tue, 13 Apr 2021 09:51:54 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 0/2] Remove spaces and blank lines
Message-ID: <YHVNmqagCRLbicR/@kroah.com>
References: <20210412175903.17819-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210412175903.17819-1-fmdefrancesco@gmail.com>

On Mon, Apr 12, 2021 at 07:59:01PM +0200, Fabio M. De Francesco wrote:
> Removed spaces before tabs and multiple blank lines from Hal8723BReg.h
> for readability improvement. Issues detected by checkpatch.pl.
> 
> Fabio M. De Francesco (2):
>   staging: rtl8723bs: hal Remove spaces before tabs
>   staging: rtl8723bs: hal: Remove multiple blank lines
> 
>  drivers/staging/rtl8723bs/hal/Hal8723BReg.h | 43 +++++++++------------
>  1 file changed, 18 insertions(+), 25 deletions(-)

This series does not apply to my tree, please rebase and resend.

thanks,

greg k-h

