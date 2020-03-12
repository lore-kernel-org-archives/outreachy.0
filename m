X-GM-THRID: 6803023005726277632
X-Received: by 2002:a17:90a:5d97:: with SMTP id t23mr4646984pji.61.1584024900409;
        Thu, 12 Mar 2020 07:55:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:84d9:: with SMTP id x25ls2456994pfn.2.gmail; Thu, 12 Mar
 2020 07:54:58 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtQJV62NUO4ou6MXW677HEgHgjdy1uwFxP8hBY46PQSEtZKtdEq39PKm1nw8QhezeTbN8Zh
X-Received: by 2002:a62:f24d:: with SMTP id y13mr8862227pfl.27.1584024898743;
        Thu, 12 Mar 2020 07:54:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584024898; cv=none;
        d=google.com; s=arc-20160816;
        b=vvGuObCylcw2DJ/9TwsqGTxav0SnQ8jo+4GPHd5d6fzOFuWUqaEBmSQRHSR0kn0SVK
         MrPJemThaqt7KXpdhmj/H70X+sBwm8909cjt/nZ+/RVvtkQ4dH4DR3Nq+q0t67mx4WDD
         pvT8BVaCdVoAjbxCeK/uoYr6kXg7ZIrvu3aFsSrjGFymW1FdXVtWIn7H/BwbEfhpXS2l
         HpK1PsETmRZHSlGHMdQv2x5OOvfGovfMjc//qqWEgw7DY7iODSSs/6FzjzQNEVTgGXNL
         NXEVZyUUSsrKjN7ZJzswjKPQAuCevfNNGjwn4AoixqgI82DxuC8QJRqo+UhRx1RHFeQp
         NKWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=9yFFa0kjMaS7TrAXDFmNk8v+Kkh/MN7Amw6M9TXHjOU=;
        b=STGAOZwTsFfd9FDHJxnbXg+y2kSYjbMeBRpGTsiZzXkYfNbqnnMjge7Ezn76zC8pTX
         IOyD7FI6EpzPxMEhsV+vOx7Js44dbvl4UYy+bGGbozjuuPa4oXv/LmN3RbJdaVhPLxCX
         z/A0nGFOXV1AF+nZ55nhnowNSvJv33IXGJdZ4XorA5+C2iQ7H5xjKK3RHT3kGHcvG0Ty
         5ZmRrDA+L4NxEvv5tZNeOpp3NKUxdc03QIquWEmaV+es66Uo7/uwOLMG/YccKKToZ/W9
         tH0R6MLEMQJOG/xlLIKcGCOIGuwQIRZ0URdkpLIaqvdyA0igTbd+lg5L9Xa4JdwnHXrU
         jmZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=D+ETrRII;
       spf=neutral (google.com: 2607:f8b0:4864:20::644 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id e2si372279pjp.1.2020.03.12.07.54.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 07:54:58 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::644 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=D+ETrRII;
       spf=neutral (google.com: 2607:f8b0:4864:20::644 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pl1-x644.google.com with SMTP id b22so2750032pls.12
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 07:54:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=9yFFa0kjMaS7TrAXDFmNk8v+Kkh/MN7Amw6M9TXHjOU=;
        b=D+ETrRIIsitbsTYEdJdN58QcXoA/qLkNWdCE0TpgkObZuXP3Y37+h8yslJDNdgGMnv
         i7T0GTwyPu2mYE9K2lGa0bnMNmEHZV6PDXjmL5wvJ1Go0LKoKUTNMumok/WqAAQ36SMb
         3KKiyg3InL/zQ0C+Dx7zK4hmv4lIGtcbt0D6N2p88TJZYryWyTw9SAD+MhD6EPxRhZiI
         X7xpACMzOl65MSfQ7sjD0um7vbaLL4MBbSs4y8ZduYjSiRmnorX8Dd4ApKSzLE5BDOxh
         un+byTABaUm/u1BuTW6mOurmFfUDOV8gxYVZbu5qL55atIhVi7E6D6vNPl3k22NPB1xP
         As2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=9yFFa0kjMaS7TrAXDFmNk8v+Kkh/MN7Amw6M9TXHjOU=;
        b=OYxz5a+3IKsi7qGg2l6ynYEJQxb5DOP6MG7zewy5Uwb6H9QDec1blfdTvzmI096Vdu
         VUSt+u86jjpDE5/Gg+6SlLkUC3WcHnotFWz3RgTWmL+FmMYmcrEQsZ2C9geagPLdYa6A
         IStZXfa7m/l7cy7qSLjcGU8B7eYaCjY3vBOuQSVeeddG+7i5nq4WaR7NsX1AyFDWY87A
         X4GtRJkc5+hXMCiMyxN2FpWSSlw7GH3QLE9JTtHBO9bphhEEQmDGLdtTH/12//YlFc6n
         7tqztCOu9TATet7fQHrc9UWbIubrAMMnGzdHTyRc0h+8r/totqZjWKkFer973btwdIbO
         9drg==
X-Gm-Message-State: ANhLgQ0/2eI47roUxWR/KLOtGFHqV300AGdNG1EhS/kVLalqJ13Akkp1
	tk9+20so9zedrPjhj+8nvS/kaQ==
X-Received: by 2002:a17:90a:cc02:: with SMTP id b2mr454759pju.125.1584024898227;
        Thu, 12 Mar 2020 07:54:58 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.175])
        by smtp.gmail.com with ESMTPSA id b25sm55731814pfo.38.2020.03.12.07.54.55
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 12 Mar 2020 07:54:57 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Thu, 12 Mar 2020 20:24:50 +0530
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>, Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/5] staging: comedi: check condition in one statement
Message-ID: <20200312145450.GD30896@kaaira-HP-Pavilion-Notebook>
References: <20200311184327.25338-1-kgupta@es.iitr.ac.in>
 <20200311184327.25338-3-kgupta@es.iitr.ac.in>
 <20200312081702.GC11746@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200312081702.GC11746@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Mar 12, 2020 at 09:17:02AM +0100, Greg Kroah-Hartman wrote:
> On Thu, Mar 12, 2020 at 12:13:24AM +0530, Kaaira Gupta wrote:
> > check two conditions in one `if` statement rather than two since both
> > return same thing in file usbdux.c
> > 
> > Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> > ---
> >  drivers/staging/comedi/drivers/usbdux.c | 4 +---
> >  1 file changed, 1 insertion(+), 3 deletions(-)
> > 
> > diff --git a/drivers/staging/comedi/drivers/usbdux.c b/drivers/staging/comedi/drivers/usbdux.c
> > index 0350f303d557..8eff7f140560 100644
> > --- a/drivers/staging/comedi/drivers/usbdux.c
> > +++ b/drivers/staging/comedi/drivers/usbdux.c
> > @@ -617,9 +617,7 @@ static int receive_dux_commands(struct comedi_device *dev, unsigned int command)
> >  		ret = usb_bulk_msg(usb, usb_rcvbulkpipe(usb, 8),
> >  				   devpriv->insn_buf, SIZEINSNBUF,
> >  				   &nrec, BULK_TIMEOUT);
> > -		if (ret < 0)
> > -			return ret;
> > -		if (le16_to_cpu(devpriv->insn_buf[0]) == command)
> > +		if (ret < 0 || le16_to_cpu(devpriv->insn_buf[0]) == command)
> >  			return ret;
> 
> The original is better, please leave it as-is.

OKay! 
Thanks!

> 
> thanks,
> 
> greg k-h

