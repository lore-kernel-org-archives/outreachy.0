X-GM-THRID: 6754500769734459392
X-Received: by 2002:a5e:c308:: with SMTP id a8mr1161495iok.125.1572691408904;
        Sat, 02 Nov 2019 03:43:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:3552:: with SMTP id c79ls1815864ila.12.gmail; Sat, 02
 Nov 2019 03:43:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyNK/aUg9X6OU4TXHCnqI6znQ7iDebM17U10rmxwjkWGag+iUzvOZKqHb7ZgrFbjoL9Xg/l
X-Received: by 2002:a92:5d49:: with SMTP id r70mr18349448ilb.257.1572691407734;
        Sat, 02 Nov 2019 03:43:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572691407; cv=none;
        d=google.com; s=arc-20160816;
        b=f7pJNTEYGiksW8Hdc7xlAYceXgrw9Xm0wJe5gaALx2wskenln6dKi4z/tWsEclfWrU
         B8lKCVcRZzDwk6kQ4UxhBu2s0E5rC/3yo+08pXwFBhbH1maJtbEvGOO395WrXJ/Lv7Tz
         ijx9BnjZkxB0xC+NVgCrf9iCcaEepQfv125rBGWhFQKvKV7cimDhFJfiHGHd3M/8OROh
         Lk2S2ko6HVkb6gIc9aQwpQAxB9s0X2buPDhjwqOAPt6qDLprxNte9rxM+57c2RJW8CtJ
         d71JWw1rre1RRf6/xXnEHqJAonPXfAd4Gq2gQh1sQhIUGiFnznEvmh2JRirV0w18ZO2/
         Aobg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=4gfy9XBcab6YezxVw3ADrDpCKal6OpqD5YbCmcv/CpY=;
        b=UgpTZ9wsr3F30Fb4/0uMaFVKz3qGX8J3oyasCjZiowi7lpy6gnz8ffi0foFN4cHSnH
         lrEEFdd3+6ms3RtndGcI3zMm6MIDj2UxVaBT6nJ/GjiwMVilSQS510AUnnXoaKgPjgA1
         CzRKuKg+ooJS+kMq94UZa2DnknI72Svq7hDXX7NIOMejvYI0q9YTrQ0yvw2JO3cWBRBB
         q2VIECGM6PpWkVuGAOPSSxTOpZahCQrJHASaT36uJaBLclRUgz5NSBysbpuO9VeUiXA1
         TEDhcm9dsWIDobTgbdDam5nYafjYi3+hzqAVgafFglPID4fvUow+VENQB2zzreMYkbGD
         iH7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nQTqOQz3;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x18si661727ill.2.2019.11.02.03.43.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Nov 2019 03:43:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nQTqOQz3;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 86C3620679;
	Sat,  2 Nov 2019 10:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572691407;
	bh=VqO2953T7VU1LTH0YLJ9weeTqthgBoYHR7KCvyzCpNc=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=nQTqOQz3nTY2XUsZAdtSEI3ABkHmOw+ZDLwBBNzBiymP9sXR0SEhdP7XL0zAZ1X8U
	 YLtVgwTB3uT6xvD2AUi3A0gEYUj4uOeUDa+ZvyOKDPi5evi1VBSVHN81MDf6Dp///+
	 JcDiYRKUQt+q7MuJsNPzVvQUAfWuBp1m/Y15BWJI=
Date: Sat, 2 Nov 2019 11:43:24 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: rtl8723bs: Remove unnecessary conditional block
Message-ID: <20191102104324.GA184849@kroah.com>
References: <20191102003236.hjetw3qdulk7skrg@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191102003236.hjetw3qdulk7skrg@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Fri, Nov 01, 2019 at 07:32:36PM -0500, Javier F. Arias wrote:
> This patch removes a conditional block that had no effect.
> It also reformat the affected lines to set the right indentation
> after the removal.
> Issue found by Coccinelle.
> 
> Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
> ---
>  drivers/staging/rtl8723bs/hal/sdio_halinit.c | 19 +++++++------------
>  1 file changed, 7 insertions(+), 12 deletions(-)

I have 11 patches sent from you, on the same day, for this single
driver, yet I have no idea what order to apply them in :(

Please resend all of them as a single patch series so I have a clue as
to what to do here.  Be kind to maintainers :)

thanks,

greg k-h

