X-GM-THRID: 6397330480733093888
X-Received: by 10.129.120.201 with SMTP id t192mr18643045ywc.118.1489501525158;
        Tue, 14 Mar 2017 07:25:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.127.209 with SMTP id r200ls5999itc.20.gmail; Tue, 14 Mar
 2017 07:25:24 -0700 (PDT)
X-Received: by 10.36.120.16 with SMTP id p16mr783200itc.12.1489501524271;
        Tue, 14 Mar 2017 07:25:24 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id y90si3673332pfa.6.2017.03.14.07.25.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 07:25:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id g2so20344233pge.2
        for <outreachy-kernel@googlegroups.com>; Tue, 14 Mar 2017 07:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=vGa8c72HxvR70hqSdqGtu4SEhT3KZdB+J8yJlALSPHc=;
        b=rQ4QO+HcWSEqMrgu4fNGu2bzHPUzv83QaTRvZv8UC9/Y+rOuwlS6XO2aPUffkbQtK2
         pZSFKEwFRZ4caDqJsaWLw4FOAO6A0hNe56SX67Y7BUY92yRB3z1ctq/ojzg8e6/TjXwM
         PVSAW3ZeSpwXQPKZRqc9x+w090OB1+Qmw2VdJ0ZXeGeYfh9+c0XQNrzOUMLil3yp7MdQ
         57h6sphrQc6GOyNZE0KcMfwYFA4zazm2UecQuyMELRi2/CckkAuEsKWR6U+fCoQ6+rfK
         i3ZVI9mbYiUH/LDk7wVRrr1/ZwC+Y6ghZhWIuw+dhR/sVVyRRhmUqdUN2qq9kzumP9MJ
         WkXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=vGa8c72HxvR70hqSdqGtu4SEhT3KZdB+J8yJlALSPHc=;
        b=PDGJf2K54rmQ9ZDbHjVjfAYE+jb/1A/9q0PZTSHngciIuLSEy1xv1Ygf34cjMC85xm
         tg40ppULJHmUaQTchM4iBmoV7agP9Dy0xIGmtGVFJkaX6aRieXmmbqo5r7E7mA9U1t69
         V3v1HSO2MCknOaMjrIU+ehMpWHjBJktSbYRsXjypokDe05GqKUkPknTxbQKrfAZp+Hii
         xVDHrxWWxhvIRAKycTipk6THdavs8V6EL56t6AoLkqhZPxO4Hm2FIawJQqfkHFzBoY2r
         Hpwix7UpVoyxZxQhOEDohywJZawCVUQQcxp84ahkQVSSQNBLzvp6w+K6ctgJQNMGaWpD
         gOyw==
X-Gm-Message-State: AMke39ktebgTpLq0sD8bdy6V3jBhCOTnd2cRTHLo7mR7Y8iSBLgJ7TTE+QyoGLLoLnEO1A==
X-Received: by 10.98.63.140 with SMTP id z12mr45404977pfj.129.1489501523984;
        Tue, 14 Mar 2017 07:25:23 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([117.195.100.155])
        by smtp.gmail.com with ESMTPSA id g29sm39121629pfg.37.2017.03.14.07.25.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 07:25:23 -0700 (PDT)
Date: Tue, 14 Mar 2017 03:39:49 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [IIO] Help understanding iio_priv(..)
Message-ID: <20170313220949.GA30622@aishwarya>
References: <20170313201511.GA12957@aishwarya>
 <alpine.DEB.2.20.1703141342300.3174@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703141342300.3174@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Mar 14, 2017 at 01:43:08PM +0100, Julia Lawall wrote:
> 
> 
> On Tue, 14 Mar 2017, Aishwarya Pant wrote:
> 
> > Hi
> >
> > I have been looking at the IIO task and came across this function
> > iio_priv(..). It is defined as-
> >
> >
> > static inline void *iio_priv(const struct iio_dev *indio_dev)
> > {
> >         return (char *)indio_dev + ALIGN(sizeof(struct iio_dev),
> > 	IIO_ALIGN);
> > }
> >
> > It returns a void pointer and used as struct dev_state = iio_priv(indio_dev).
> > Looks like it is used to store an iio device state private to the file.
> >
> > Could someone help me understand what exactly is happening inside here?
> 
> Probably it would help to look at how the priv pointer is initialized.

Looking at how iio_dev is defined helped :)

struct iio_dev indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*chip))

> 
> julia
> 
> >
> > Thanks
> > Aishwarya
> >
> >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170313201511.GA12957%40aishwarya.
> > For more options, visit https://groups.google.com/d/optout.
> >

