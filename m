X-GM-THRID: 6805399652543758336
X-Received: by 2002:a5d:970e:: with SMTP id h14mr4589017iol.201.1584550860940;
        Wed, 18 Mar 2020 10:01:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:c98a:: with SMTP id b10ls204767jap.6.gmail; Wed, 18 Mar
 2020 10:00:59 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvDZK5q53F5WpcgAvDZdmOKQnVKFZcoAZ6Po/jMDzWWAJrsY799+7HJWSSkhFbAhePWH2HL
X-Received: by 2002:a05:6638:a2c:: with SMTP id 12mr5355039jao.60.1584550859692;
        Wed, 18 Mar 2020 10:00:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584550859; cv=none;
        d=google.com; s=arc-20160816;
        b=d2OesbZXynk+Xe4d8pFjJ1f5RDx4hPCsy0cbCGtIxZ9eIFzkAnfkuzgEc+Lu5ILypK
         cOjw3jmxxn7XCLM2gMkeTIo1tLf9vm18ybDe/hV4QDxR1V3gaVBhEdhnS9OcBMmFY44Z
         Jy4qsNAumFDGmfAHj5c4wDgrHw+FKDh7TwYTFW/fI9uVxXWJipF+oqKyyrA5DZv1zAeH
         VAv1eG+Hl/g2nqZd6BXlX6+hZ7ArdwHUM+5SLEWGW8iC3RczhyLEySVn4VNVHnZszgFu
         35Ict7N/RlWhYqkNpKHKHtmaTMfb3j0Up/e8Z56WzaeM58GDe56asap2yfcVsFmCOCT3
         WdTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=+lB/rzYuX4ROylVdnzkiqJeHxEdfyO+qVyE6Y4WNzPI=;
        b=0sLvQbIMJavfJCbD3zGydiMWvpsU3qYgdL1bUMTCcHbXF3do3EIeLP/cWIVHb09Jwa
         8J+DSIwPJ2ScXb3pEUOkEovUFpOc8PkpYIc0y2w6J4IwvE/F87iKhfOGxzI11hc2FxaN
         v8pKjB3Io4Lw+NpBAJyV/uNQ8Sa7TX0Kf0gJqyQUB/EfGBD19tsQHuKKykKaNp2WdQXK
         8LJEauagqFcudhhwrHlloAXxiavDnLqUpDhHtVJ4gIUpakDwTFkSGanQaovwdoxxrh4Q
         ezYjdk+KspfTdRfX2JE5M/PncwHoXUzVIbU/kV8Y4juINHSnhv6/ATkPdkn1xYxNqbuZ
         3S+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R8RrrF+C;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id v13si484431ilg.4.2020.03.18.10.00.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 10:00:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R8RrrF+C;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id d25so6195097pfn.6
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2020 10:00:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+lB/rzYuX4ROylVdnzkiqJeHxEdfyO+qVyE6Y4WNzPI=;
        b=R8RrrF+C+CxaEW0EmL1+g7SBQ/PKbK2ufGzaMEW62oRW0XZYdm5Mg8Oc1ASsu9VCUi
         5XfXwR4BXY3Yttbc/pyE2Qi5khjMlK0j9uKOYpJYf9XaXDg5xJCfBUPhy7lRQxRGK9O8
         V/5ObG/GtQkVy5rYq9DmX34DYQmQXMYRUsdbCrZzn5TZNNxtlTmb0oGXg33b4OrDq8EV
         le9sGN3i/mS9EH37ny3OF85bcqXWtiBurO87JqPKKF44BZCE+H6ff3Emo+4EXeJvuT2m
         UF7GCldMmSzqIkVgsSu1P1gL0Cx2EjCfHp/Qv8OuwhQhe86gpQMtxBM7hff1Vw+OnYAW
         ewIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=+lB/rzYuX4ROylVdnzkiqJeHxEdfyO+qVyE6Y4WNzPI=;
        b=du6yICpxUln4SPxP7vV3w5OqKpj6Me5nLrDRiTEBTWam5FcQSPjPz7jmqJJ0Nl7wwM
         3XtJdr5ijCMtUeWf6lJ5tROcEF8HuKXzGj56cCymbGBrBLdW9zjf3qKEPoItjddH3+RK
         NH9npQhrf3sgexWVPoSYdG7uXebaty5NyHOI9gzPyzlV0/5wcTUkqJuSPYb1Aid2cz8a
         Xv1tRJ5dlRZqkjV25jMQgTtzrpcZscwF7tjItzv0R9iXHjEwuCccjJklofEl4emqPp9j
         X3D9fed5KrmxTxaz5qDVyYIkwLnfHMY7jDMobKTLDt541pOnUUuW2f/bsxvmsjAqECxZ
         9ItA==
X-Gm-Message-State: ANhLgQ1PlQK6X7aNW05Hi5iO6MFJjwdALPMu5UroVUTrvg6r7uIcB4qz
	FtghKQcoxUhn+YSyGISqdR4=
X-Received: by 2002:a63:348b:: with SMTP id b133mr5708459pga.372.1584550859126;
        Wed, 18 Mar 2020 10:00:59 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.241.226.97])
        by smtp.gmail.com with ESMTPSA id u24sm6578007pgo.83.2020.03.18.10.00.55
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 18 Mar 2020 10:00:58 -0700 (PDT)
Date: Wed, 18 Mar 2020 22:30:53 +0530
From: DEEPAK VARMA <mh12gx2825@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	outreachy-kernel@googlegroups.com, daniel.baluta@gmail.com,
	kieran.bingham@ideasonboard.com, Michael.Hennerich@analog.com,
	jic23@kernel.org, knaack.h@gmx.de, pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH 2/2] staging: iio: adc: ad7280a:
 Add spaces around operators
Message-ID: <20200318170051.GA23498@deeUbuntu>
References: <cover.1584505215.git.mh12gx2825@gmail.com>
 <6703668c512dd665a2299a1f5bf14d99262314f8.1584505215.git.mh12gx2825@gmail.com>
 <20200318060038.GB1594471@kroah.com>
 <35afdc4b-bd59-7851-aa4f-3d8807668931@metafoo.de>
 <20200318151924.GB2862853@kroah.com>
 <20200318162353.GA23226@deeUbuntu>
 <alpine.DEB.2.21.2003181727440.2979@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003181727440.2979@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Mar 18, 2020 at 05:28:17PM +0100, Julia Lawall wrote:
> 
> 
> On Wed, 18 Mar 2020, DEEPAK VARMA wrote:
> 
> > On Wed, Mar 18, 2020 at 04:19:24PM +0100, Greg KH wrote:
> > > On Wed, Mar 18, 2020 at 04:12:28PM +0100, Lars-Peter Clausen wrote:
> > > > On 3/18/20 7:00 AM, Greg KH wrote:
> > > > > On Wed, Mar 18, 2020 at 09:58:13AM +0530, Deepak R Varma wrote:
> > > > > > Add spaces around operator symbols to improve readability. Warning
> > > > > > flagged by checkpatch script.
> > > > > >
> > > > > > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > > > > > ---
> > > > > >   drivers/staging/iio/adc/ad7280a.c | 4 ++--
> > > > > >   1 file changed, 2 insertions(+), 2 deletions(-)
> > > > > >
> > > > > > diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
> > > > > > index 19a5f244dcae..34ca0d09db85 100644
> > > > > > --- a/drivers/staging/iio/adc/ad7280a.c
> > > > > > +++ b/drivers/staging/iio/adc/ad7280a.c
> > > > > > @@ -825,14 +825,14 @@ static irqreturn_t ad7280_event_handler(int irq, void *private)
> > > > > >   }
> > > > > >   static IIO_DEVICE_ATTR_NAMED(in_thresh_low_value,
> > > > > > -			     in_voltage-voltage_thresh_low_value,
> > > > > > +			     in_voltage - voltage_thresh_low_value,
> > > > > >   			     0644,
> > > > > >   			     ad7280_read_channel_config,
> > > > > >   			     ad7280_write_channel_config,
> > > > > >   			     AD7280A_CELL_UNDERVOLTAGE);
> > > > > >   static IIO_DEVICE_ATTR_NAMED(in_thresh_high_value,
> > > > > > -			     in_voltage-voltage_thresh_high_value,
> > > > > > +			     in_voltage - voltage_thresh_high_value,
> > > > > >   			     0644,
> > > > > >   			     ad7280_read_channel_config,
> > > > > >   			     ad7280_write_channel_config,
> > > > >
> > > > > Did you try building this code?
> > > > >
> > > > > It catches everyone...
> > > >
> > > > The problem is it builds. The token is stringyfied and
> > > > "in_voltage - voltage_thresh_high_value" is a valid string.
> > >
> > > Ah, I thought it used to break the build when it happened.  Oh well,
> > > it's still a great "trick" to see if people understand C or not :)
> > >
> > Yes, it did build. I am sorry but I am not following you fully. Can you
> > please let me know if the change I introduced is not good. You may
> > please direct me to a document where I can read more about it.
> 
> The code involves a macro, as indicated by the capital letters.  You will
> see the issue when you look at the definition of the macro.
> 
> julia

Thank you Julia and all. I got my mistake. I will revert the change.
Sorry for the trouble.

Deepak.
> 
> >
> > Thanks,
> > Deepak.
> > > thanks,
> > >
> > > greg k-h
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200318162353.GA23226%40deeUbuntu.
> >

