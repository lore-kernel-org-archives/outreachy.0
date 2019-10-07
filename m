X-GM-THRID: 6744769542622281728
X-Received: by 2002:a5d:9814:: with SMTP id a20mr24729792iol.19.1570444113289;
        Mon, 07 Oct 2019 03:28:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:85e2:: with SMTP id d89ls1585339jai.4.gmail; Mon, 07 Oct
 2019 03:28:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzscf6PNzYa5iYAvooaL/1TJmMASrduKGGkn6QeJwEBQOfosY1+lVRZtHwjsHum13Wo1d5A
X-Received: by 2002:a02:6017:: with SMTP id i23mr9318025jac.0.1570444111934;
        Mon, 07 Oct 2019 03:28:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570444111; cv=none;
        d=google.com; s=arc-20160816;
        b=ds3P/XG1lUaz/RnBHPQQy09s5a9VdCinExfXdGaLBf0lQxfya4ZmjPb9L1JUBeolYQ
         yDLM5g8wFBJlL/qs/41u6jrfXzCrNAJWcCsnVloOpo+9qSuK2CyqaE+AFQNAjFaWTSE6
         M/xwxVvYU8flxi30GmXO+5L0Cdyv4lMrs15yIzzlooxouBXxh57TTpobF10hf4FMZEjb
         BMDfOrTsqF2a3GbaABeyApN3QYsAgx+1s/hg8cWhBEtcWffRpYwBaXHYdqLRBuiFMa8y
         RGw+CRB1b/JrTyB1vZJgYKzMI0tt8PUFJKouQzHdpRTQHsc6mYCcvvwUJDpBsgNcuIVR
         ufHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=brtsixG0HqBX8Aw24Kvko4bzSMWbJykETLl4Fq3Mcpw=;
        b=eC3erMN4qoHfLbVR7UHnxZP2vTvuFvW67OEsPr+TD3ewKhgYrVXHzuCHBpNKHPyNkh
         lB5ScMXGdLStrD8PUkDQeVOgieXU9U023DRQGBXj69yI3rfniWDWM51+aJdB2bYqFfD/
         CDaV8ki1I3j8Uvj0FoWzw2xz/NCfdQSJ2IaiZmaOBE/IHL9InUowCeYRvJUoc+2lL8tx
         RR2s25aGCDHY1NpegtSMFyXgTEBZEY3JV0Gq945zud7XOXihOYMDtoq1R0Oov1qvLjlY
         INJR+dcDXSTLslBDRO7XgPzTHM3TEjiohW7oDnsKwP7AnrkRulMT7ldnk0EUsEOfv4ne
         ZvsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OZQCysyb;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z21si558726ilc.3.2019.10.07.03.28.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Oct 2019 03:28:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OZQCysyb;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AFBC7206BB;
	Mon,  7 Oct 2019 10:28:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1570444111;
	bh=aD1WI8OBgBUNj/w60M7OWbmnZ/6/q1VQAbqU1+hyA1A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OZQCysyb70+qo3q16j2r7puNwBpwFSqAsT7eQAS26bg8Fnguv81G4iCsLqxyqi5RX
	 7mbyEblRKM7VUOfsXL1zyS3FkrQL8foU/57AbEEiorqzjIPA8nny6LzD6qEsortM7H
	 E61gKvwh5iPiu9eYOVYYDfM4y1K3eQeIj1W6l7Xs=
Date: Mon, 7 Oct 2019 12:28:28 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: vt6656: align arguments with open parenthesis
Message-ID: <20191007102828.GA366705@kroah.com>
References: <20191006191020.7435-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191006191020.7435-1-gabrielabittencourt00@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Sun, Oct 06, 2019 at 04:10:20PM -0300, Gabriela Bittencourt wrote:
> Cleans up CHECKs of "Alignment should match open parenthesis"
> 
> Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
> ---
>  drivers/staging/vt6656/rxtx.c | 63 +++++++++++++++++++++++------------
>  1 file changed, 41 insertions(+), 22 deletions(-)

This patch does not apply to my staging-next branch either :(

Please rebase and resend it.

thanks,

greg k-h

