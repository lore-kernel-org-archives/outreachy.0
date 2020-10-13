X-GM-THRID: 6883171070944215040
X-Received: by 2002:a9d:1a2:: with SMTP id e31mr687296ote.181.1602614058086;
        Tue, 13 Oct 2020 11:34:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a4a:c694:: with SMTP id m20ls35468ooq.8.gmail; Tue, 13 Oct
 2020 11:34:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyhh4twyfwxGBr+NhUqOvGi50sZfhybp51ESSG4Ru564V2nH+RKFLAhkXt5qU+vWwmhAu7j
X-Received: by 2002:a4a:cf09:: with SMTP id l9mr560209oos.30.1602614056732;
        Tue, 13 Oct 2020 11:34:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602614056; cv=none;
        d=google.com; s=arc-20160816;
        b=gDpMyFSYLobwC3c71LUIOBLou4gFntJXe41DJy+q8dvII2xQjtI757zt3FAKt7/22I
         LR9hPZGJSYXUsKUJy/8RlM2quHai1/NRKDdvPX7uOn3R7nWvSMq8PvlfSC68c7JqD3Gb
         fe/DZhtaDDjz6kTIsAwjNKIn5qSKAWXR3o7eFwgY2dMkT9FavrNB6wJ8eL/vQz+ccZZM
         Wv7A5wtziPk1TeRMdAfcagX+KlcA7CFahVtG4QURUaeut/PqIbok3Vn72PNMH68lqIdd
         v0d8tPtU3IxCJMP/P1YS9sIWXvLqYpQVvcfBfIez20sQe2z4mNFVUdKPun9b5QlMSMWc
         +pbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=TopvsvvHijR7jdv95QF3p1S35On5GmOJq1vkr3e69rk=;
        b=SElmKuBv0tThtZmvVzAMYF6xsbsidRof4BimOQARkAqUHjpLbYWp7W/DykIlZ0kr6v
         vZ4X42dw9wZ/ja9VmDHwZpHKKWpfWArPXYiXJF82LeKdQG67oBN/pfiId42gvYEYfuPW
         e+zX4dteLWXVUJ+iW2w+PENJovKt7YTT0pCurs+TUYc/3i5dFqhxDl5SyQdKuaelDR73
         QI7rz/JxXGBvlRW6Q8gHil0fBTKUxOumE9XluV7SU8Q1M/vY6Hdwu88eYvnKyvy+FO6H
         Dt7Vv7FCifqDZx+4Zz1t8sC8Y411CtKy0NGcS8depWVrIu+4lH9tWw+dQJWtJhhJ5zAs
         NceQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aJHPR3Gw;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q10si85374oov.2.2020.10.13.11.34.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2020 11:34:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aJHPR3Gw;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 37E54208D5;
	Tue, 13 Oct 2020 18:34:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1602614055;
	bh=bwUWY/f5+RHrKoYWEX0GwTpHnUc7jFbVzMw4xM4TYL8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aJHPR3Gw9qy1ioeIwkCgPhDksKhONb56rmMjuTKA/3iknk4UnsANHGkCnzQm+fV/S
	 rQyjC/ltEqYvG5o9G6lVImpSBfG5Y+rtHbbkUbr/XeVtyfcTwpZelMA4S4wM+0GT3F
	 MvJehMCR9VqGH7g5DB9NL7HukyI9a1PXOY5R7M8Q=
Date: Tue, 13 Oct 2020 20:34:51 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	William Breathitt Gray <vilhelm.gray@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: Re: [PATCH] staging: gpio: 104-idi-48: improve code indentation
Message-ID: <20201013183451.GA2679019@kroah.com>
References: <20201013181903.GA67299@ubuntu204>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201013181903.GA67299@ubuntu204>

On Tue, Oct 13, 2020 at 11:49:03PM +0530, Deepak R Varma wrote:
> Address code indentation warning messages by checkpatch script. Combine
> split function parameters on one line. This also resolves the "use tabs
> instead of space" warning by checkpatch script.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> 
> ---
> 
>  drivers/gpio/gpio-104-idi-48.c | 6 ++----

Your subject line is incorrect based on the file you changed :(


