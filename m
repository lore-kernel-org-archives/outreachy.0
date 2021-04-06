X-GM-THRID: 6947895612953067520
X-Received: by 2002:a17:902:7401:b029:e8:e6e5:3240 with SMTP id g1-20020a1709027401b02900e8e6e53240mr13113571pll.62.1617711315781;
        Tue, 06 Apr 2021 05:15:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b942:: with SMTP id h2ls3090968pls.8.gmail; Tue, 06
 Apr 2021 05:15:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwEYJ7DShvBuzbc0Zkf59XKynoArDYd9zD7tLoweD2RviAqq/Z0EpDQ9J4hndq6eptTx6WO
X-Received: by 2002:a17:902:e788:b029:e8:c368:c48b with SMTP id cp8-20020a170902e788b02900e8c368c48bmr17936415plb.3.1617711314672;
        Tue, 06 Apr 2021 05:15:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617711314; cv=none;
        d=google.com; s=arc-20160816;
        b=c9RL78J5xVuly31OVuJX/K7AdDpFBQel5OYffCRlRzLot8hwj0EA7o6IE972raGVUi
         QPNpnd0Jwz4P8gY466E5ClWgkT3tq9MtvXn4mPrr2c+h2mpQ40ZHvqpcr7MDT4zUInbi
         UkkZNqVBwhhEYL9wSx0X+dLgStenZvfdMP2Bjlz0p2xW1orVOfc4oUQxftUzwuQiJNZH
         x+Uf47T9ITWF0uvx7DuZ0qz72T7m3dtokKVeY/BUxU0P5igVO705FHHGGz0iGiKAKFPA
         3Ov2YkkAtESYIblGbdRWkp2aRaw4xhdL3dI+EyD2rJpa3JUdP06hytT57RUMWbw9hfgF
         XZGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2ddMxIpzVpt/5njbE+fHsL/+phHO1vu7AwVfInafPr0=;
        b=Yo+NBRD1S2FAOk6gTqAIg1uow8fSY7OC5lpQxsnVf+sqo6d7iXoWlDK46cCfN/Kqeg
         7EI249ok9ACIefjgJyuH2zRKWU4/5dqU8IMGNRO6/5cZRFlfBM6xgkRq8dPgNgMTaDXx
         Xmqx/Ctdd1JH3EJT0biVk95ft3PdMK8RfcRPpg8qEr8ALNZICjdPAruo883RQbxb9+i8
         D8SDF4Llfdg9ht+4o/VAKSp0kkCtrtJR/Tu3ogn+1p/TGHrJAkBkvW1XPjCsBfETINaF
         RztOozhF2QFKBgIPVJoYMh/EwM67KySgcwWno99E7xA0Hjkw8EbyVgwgtD+KqMxv8mil
         a6hQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=WpgMMn14;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w16si222499pjq.3.2021.04.06.05.15.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Apr 2021 05:15:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=WpgMMn14;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 922D5613C2;
	Tue,  6 Apr 2021 12:15:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617711314;
	bh=1r1qDhl/nyGMeAO+ISmkxXtWjqUvvrmWiZbmOr3IQJo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WpgMMn14NA0cW0BVzklQEswq6BXkrE25DmSB7FJrFB3gJ6fhutArvSkCWO7k+vdtx
	 l2MuGipTzjBL+tTxpXOkkoT+Jf+EY1VU+QfxXhVJpE9x+wbFhGBIxHNRXw2XxOgNeW
	 Y9745Ej4LhIVrLvdCDTZrI450JMtnGjIRCsRecFY=
Date: Tue, 6 Apr 2021 14:15:10 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: hal: Remove
 camelcase in Hal8723BReg.h
Message-ID: <YGxQzu2eepziqNyg@kroah.com>
References: <20210406042320.11902-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210406042320.11902-1-fmdefrancesco@gmail.com>

On Tue, Apr 06, 2021 at 06:23:20AM +0200, Fabio M. De Francesco wrote:
> Remove camelcase in some symbols defined in Hal8723BReg.h. These symbols
> are not used anywhere else, therefore this patch does not break the driver.
> 
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>  drivers/staging/rtl8723bs/hal/Hal8723BReg.h | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)

You forgot to cc: the correct mailing lists :(

Please fix up and resend.

thanks,

greg k-h

