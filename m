X-GM-THRID: 6949513279876104192
X-Received: by 2002:a9d:19e8:: with SMTP id k95mr16646266otk.37.1618060468082;
        Sat, 10 Apr 2021 06:14:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a4a:4509:: with SMTP id y9ls28343ooa.6.gmail; Sat, 10 Apr
 2021 06:14:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzdojVjO/8Z4UbFVDSxdqd6gtPMS9gstvbhoZEkP75lRIvjwNh1MUMI9I4HVQm0LBxItJiu
X-Received: by 2002:a05:6820:20a:: with SMTP id i10mr15856941oob.6.1618060467327;
        Sat, 10 Apr 2021 06:14:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618060467; cv=none;
        d=google.com; s=arc-20160816;
        b=HDA1GMaytcjMObZo4Yn3IROF4IeTIRzv6UJpcIrPsar7aNMEIwlwlrDEas0iSARlMt
         Xr2Xe03SUoqND3WIbR1Iu0yrgKFWYCSlOcydzjXyYyvaYAlhJzLeSYg65kL8/ERlbL73
         gpGSAa3rjRHU6KhiTRiGYIgSDxjpuAmrlIyBeu0r8k9pEe8WahV3ZsqyyiXzjFJLrViY
         pIRU9QlAPLLlNWgCuUZUv1e/4ntPDzn83ejrFeS58wCmmD+e+RbkYqMSI7IbhjTW9wCt
         Z1BlHE+OL3i3YG6uzN6xvpdrY6bChPLQtFXPuTAapS2J33i/J4/oE5tuJFjZISfinjB4
         deWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=VChYNdGOYj248gY7Ukm7ACsa3ifzo3j4ZNjEfl775eM=;
        b=D+yFdvshvnqBO7y7BtBcZtXAiGVQEr3UEwpQlRaHBBTR2T8b0YKWX4WysmTc0eH4R0
         GbnHbuU8pbt5B0liNxfd4MQJy/6H4mn6zkbanTqOQ2evadvGquFPfu0O5ZqsPM080KCn
         QjEsDhyBTsHeeoX5ckb6FGLAb9RT5ghdOrf/Zko2DEiLv8GfJGvTdmzS0HKDQ0fiNp21
         GvJH+vqY6Qwg1YTUyOlNK8O7ANjkXClB+83wHKhukLyWMYKbq2KQ+bBjkWWMzF59T+6V
         m2rVv1cEPqCcuD7TRmvhNlN0+gf/5f0VN5hlB77ngSpfybWiSHfhhaOwJ0nWs0fcMNRd
         E7vA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=TC6c0r2x;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w4si255155oiv.4.2021.04.10.06.14.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 06:14:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=TC6c0r2x;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id F138E610F7;
	Sat, 10 Apr 2021 13:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618060466;
	bh=aXasx+AstFoj3HDw0Zv75AyHIuHJ93VYSUn//nda9IQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TC6c0r2xVx+5x8gxvGcVou3fB//TkwKUVuM9dbLn00CqT6NhQ6rDIeWlnoR4UW8+j
	 DTV/aOSL0zdH3W5g8bNacV2yqvyEwkAuh1cmlIs0T6CvwKMinROFXPHgx1ctV3R64D
	 Bsf95y6/1OvDMCxqjKxjygHiq7Z6KkTq4N3ZHeOA=
Date: Sat, 10 Apr 2021 15:14:24 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [PATCH v2] staging: rtl8192e: fixed pointer error by adding '*'
Message-ID: <YHGksKltkkmaUeAk@kroah.com>
References: <YHGhdtldqAlRsPHT@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YHGhdtldqAlRsPHT@kali>

On Sat, Apr 10, 2021 at 06:30:38PM +0530, Mitali Borkar wrote:
> Fixed Comparison to NULL can be written as '!...' by replacing it with
> simpler form i.e. boolean expression. This makes code more readable
> alternative.
> Reported by checkpatch.

Checkpatch did not report this specific problem, Julia did :)

And this changelog text does not reflect the commit you made here.

> 
> Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>

We need a "Reported-by:" line here to reflect that someone reported the
problem as well.

Ideally it will have a "Fixes:" tag also, but I can add that if you
don't know how to do that just yet.

thanks,

greg k-h

