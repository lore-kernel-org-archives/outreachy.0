X-GM-THRID: 6883182191980838912
X-Received: by 2002:a05:6638:d49:: with SMTP id d9mr1806281jak.85.1602651294083;
        Tue, 13 Oct 2020 21:54:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:8897:: with SMTP id d23ls265326ioo.10.gmail; Tue, 13 Oct
 2020 21:54:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy58Qo4OnwSTKbYLBIbGn4dugzS1DoSAY8PM1O7KRcd9xDVZkK6AUEHbnZT388lBNwQOymA
X-Received: by 2002:a6b:9243:: with SMTP id u64mr1543755iod.197.1602651292795;
        Tue, 13 Oct 2020 21:54:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602651292; cv=none;
        d=google.com; s=arc-20160816;
        b=CnbMgqrW0SyAAC9d74dxBt63YF+02onMXYSP9ZpD/xZFgFOGFNWD6aLssK2/IpN+5N
         nGFccdbQjA0XJRVrhIuHB2Rx03mUMYU3EUVb4d2uNDWdRPVzDupt8yM3WtrSfeBrdGFf
         NuG2Eranb05CNNIHMqXCGS1eBvrqHNKHOTvuspcXPqjeX6U8N5ZA0LoYuoiO/kLk5S4i
         nYopfXR0oAeLVB0K2tI51ZMwj2oNNyBp7Uk3E5+bhml//6jVeBoGfWF1vuB0m2VCuAit
         i/XHBjG1S4z19mkUJQjOaNjz2igHEfyJVC9xFXrHSxVz/KmKUyzyJmuAvHDyf6LhBLq5
         q0ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dzTAMEAd0v6kyNlfes+fu5NsQv5ql/na/psFvk3q7ao=;
        b=q9fJOJLdurijtOhOU9y+YwYrhuQibjLBAI+f69ad0y5TSrXIEIMlLG6vVCWMHTyMUH
         QCmXSMVooOuKsxfMtvF19107hIoihPjzjg6FTr4XAvha0GexDaQH31aANs/jk82ntvre
         w5kEDnA6e49qtQgC5tAScCcnfaoNtl2zuu0u13aRR8AirdQxpPuWcgFnIHuS3ErNrWG3
         ldvXwaA0xIYD/FTAgwUD3ieBh4/d+eEhD4I2lOgXFg8qa9Fsm5f/UL87pMkyo4XcnXhw
         PmRIrwXcmE5ljuzLSs9tBjVux47YX9BltjQ3Vk1khs92Ynj0+F2QnSkrvTNXyN92/MsU
         jGyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NauBoTjT;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e19si161593ill.2.2020.10.13.21.54.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2020 21:54:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NauBoTjT;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4B4D520BED;
	Wed, 14 Oct 2020 04:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1602651291;
	bh=/PpP/I6y7YTr/UF4bmfoVzb5tCadMi5efMN7RJol32I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NauBoTjTj2k0E8Htf1Ii3Dg/WZAfvTim0ulIxvKHSJlovNAe17oMglLGM3fSfaXJ+
	 LAL2e8XXNg+FDdw9lYrN43XWdPxkVTqd+m+ptgUOKXbwsMADs8tTgYivu3cGRvu34M
	 /Mwd2lhK53yNKUwSsuzyoAqBKcaV1Fs3SO96xdTI=
Date: Wed, 14 Oct 2020 06:54:49 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	William Breathitt Gray <vilhelm.gray@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: Re: [PATCH v2] gpio: 104-idi-48: improve code indentation
Message-ID: <20201014045449.GA347654@kroah.com>
References: <20201013190212.GA85788@ubuntu204>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201013190212.GA85788@ubuntu204>

On Wed, Oct 14, 2020 at 12:32:12AM +0530, Deepak R Varma wrote:
> Address code indentation warning messages by checkpatch script. Combine
> split function parameters on one line. This also resolves the "use tabs
> instead of space" warning by checkpatch script.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> 
> ---
> Changes since v1:
>    - Correct subject line per feedback from Greg KH.
> 
>  drivers/gpio/gpio-104-idi-48.c | 6 ++----

For the outreachy project application, they do not accept patches
outside of drivers/staging, as per the documentation.  So I do not know
why you are sending a patch for this to the outreachy list and not to
the "correct" list for gpio patches.

Please do not work outside of drivers/staging/ for the outreachy process
at this point in time.

thanks,

greg k-h

