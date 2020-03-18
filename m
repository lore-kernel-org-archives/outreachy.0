X-GM-THRID: 6805399652543758336
X-Received: by 2002:a63:e70d:: with SMTP id b13mr5108688pgi.8.1584544188234;
        Wed, 18 Mar 2020 08:09:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:16d5:: with SMTP id 204ls5925109pfw.3.gmail; Wed, 18 Mar
 2020 08:09:46 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vufYT03N5H+r8n9bdQLu/xz2s8Cp0of20juP5ZMvX8Ft6jMJ6HwwZEeunTWEfX3PifQJqna
X-Received: by 2002:a62:1a50:: with SMTP id a77mr4894906pfa.289.1584544186165;
        Wed, 18 Mar 2020 08:09:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584544186; cv=none;
        d=google.com; s=arc-20160816;
        b=aJLfWsCAO0ia0s32Xjobrsjn09xMTDkE+BiCVmzFzePReKWSb0Jh6ESfXBP1ubM2xY
         CJPcWRknmnqUg0NTkrMSR788zXGfox9XQRbByWVw1vALfVOyVcp8NY15ttRabBLJtlpj
         ih+w1MnhsP39vPOo4fu8iIMtf0eGeTcVJNCDuq+86JlY8++mOSwkdN8Gtuy9FIYiD8PR
         8YXkj9Ya1FnrGd3tF9jzdYinzMjl4xjVJNSy8jIFXVkUa8miwCv+6+MaUM7++up2Ql/U
         HJ6vS7TGlG1zShq/xZT8R1Qns2CroW/PfVSe7J0rwlz5vHTmNs4K6bHLjdSK32eE9BBR
         vqmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=a5+eGpLd/ZyNdymY7en9Tb95ipkb72Q/3sFZJa0Gpyg=;
        b=FSB+k9lxmheqzHDtDl5si0YsxCeHvyNDmWwJ2M0S3h/dJ2oFH0yoJOGykRsNusawfa
         paFR5FHm+UW0QY2ORGgz3Q3CNcSiCTxl4LLghfCFoGwdIOl3n/D21lHz/D3E0PlPYBG0
         niMggL22d192X/WfATRKaW5Tjog363hvmPVpEKIn6JkL5Ao7f2Iwq/bRHFgAR+Ha3qj9
         yGCzrIKlwWSOj/OdwUF1AFUKcCGw+UdAOOa2AfYUmsgnK7dWhblNojSWuc5T/yHEKLax
         TKuLE4QBm2jhmOK58bwfD8HSEj+U8vcw3XmMtTyfPwm4p+RaSNfl5ZUu0Y9Kfd/iI63Y
         MJBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sxCMnEaK;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id f29si384533pga.0.2020.03.18.08.09.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 08:09:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sxCMnEaK;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id 23so14070067pfj.1
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2020 08:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=a5+eGpLd/ZyNdymY7en9Tb95ipkb72Q/3sFZJa0Gpyg=;
        b=sxCMnEaKy87cE/ac1DmsV4CXX/Ik2LiAhg8nPj5rDgx4ia2rQsuRbmWpg0dIfQ0AiV
         UFaWAG80VbqAv1JV8Y/lpRvYSAMBZDIpjzm+pyR8koyNcG5Lgws2xPBh23NHXMx3VgRM
         tsK/Ynf4tocyQECrvFB2HaoXqARZRJlnXgQXEM9nFdRT/qwkDtHTUAn5lLBLy2mOekQ7
         XTLZ1G8GVU/5CgB6XY74V6I8kQ/pdQvSdp9SCRmiAZHgk6aj2WKotCym/++nwnUIF26u
         Wy18v7CzybbGDWCdpfSznOFsl72NL7XjVLixOU9v5L+0g+ZOuQomV1xicSXWreFXx21g
         dS9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=a5+eGpLd/ZyNdymY7en9Tb95ipkb72Q/3sFZJa0Gpyg=;
        b=XQeLkcXhWm0afMBrOrg+vAfP5NqdvzijdJHgR6/2nNHFkbCRG2nXUATLMzL4BJ3h+4
         DWnT4fj6IYXD5TxrDTclKgYhgelm73xnYIbkDtxU04Uk1W1b6FCBMWxOe6bj6VJd7IW2
         Ad0sZJyAEy7ecfx+yRjAFPaAB7XUQhhBZu0O3k2r8+jYnOXrT+UHO0jmujZk0RJAtYqC
         WqVn3P7sufg0WQYdGRxkUByztefX+bXuWpeJLomHCsNCexA6aD1am/41w5XhhejiNrk5
         brRrw+PUD1l+R8H1/V7f9Y/7P9/j2FJhkYH7LbTehkoTshTgX2NTXYrkQOcq5VtwCzBX
         Z6iw==
X-Gm-Message-State: ANhLgQ1K7N3Ur4LdUyyyUcTK/xiqpW/5rUTPiIXU1gZBCTox5FYD9qi8
	KTsKKRI2bePlGfjEovXqlss=
X-Received: by 2002:a63:d658:: with SMTP id d24mr5203839pgj.340.1584544185875;
        Wed, 18 Mar 2020 08:09:45 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.241.226.97])
        by smtp.gmail.com with ESMTPSA id j4sm7038445pfg.133.2020.03.18.08.09.42
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 18 Mar 2020 08:09:45 -0700 (PDT)
Date: Wed, 18 Mar 2020 20:39:39 +0530
From: DEEPAK VARMA <mh12gx2825@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, daniel.baluta@gmail.com,
	kieran.bingham@ideasonboard.com, lars@metafoo.de,
	Michael.Hennerich@analog.com, stefan.popa@analog.com,
	jic23@kernel.org, knaack.h@gmx.de, pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org
Subject: Re: [PATCH 2/2] staging: iio: adc: ad7280a: Add spaces around
 operators
Message-ID: <20200318150937.GA22841@deeUbuntu>
References: <cover.1584505215.git.mh12gx2825@gmail.com>
 <6703668c512dd665a2299a1f5bf14d99262314f8.1584505215.git.mh12gx2825@gmail.com>
 <20200318060038.GB1594471@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200318060038.GB1594471@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Mar 18, 2020 at 07:00:38AM +0100, Greg KH wrote:
> On Wed, Mar 18, 2020 at 09:58:13AM +0530, Deepak R Varma wrote:
> > Add spaces around operator symbols to improve readability. Warning
> > flagged by checkpatch script.
> > 
> > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > ---
> >  drivers/staging/iio/adc/ad7280a.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
> > index 19a5f244dcae..34ca0d09db85 100644
> > --- a/drivers/staging/iio/adc/ad7280a.c
> > +++ b/drivers/staging/iio/adc/ad7280a.c
> > @@ -825,14 +825,14 @@ static irqreturn_t ad7280_event_handler(int irq, void *private)
> >  }
> >  
> >  static IIO_DEVICE_ATTR_NAMED(in_thresh_low_value,
> > -			     in_voltage-voltage_thresh_low_value,
> > +			     in_voltage - voltage_thresh_low_value,
> >  			     0644,
> >  			     ad7280_read_channel_config,
> >  			     ad7280_write_channel_config,
> >  			     AD7280A_CELL_UNDERVOLTAGE);
> >  
> >  static IIO_DEVICE_ATTR_NAMED(in_thresh_high_value,
> > -			     in_voltage-voltage_thresh_high_value,
> > +			     in_voltage - voltage_thresh_high_value,
> >  			     0644,
> >  			     ad7280_read_channel_config,
> >  			     ad7280_write_channel_config,
> 
> Did you try building this code?
> 
> It catches everyone...

yes sir, I did. See this:

  CC [M]  drivers/staging/fbtft/fbtft.mod.o
  CC [M]  drivers/staging/iio/adc/ad7192.mod.o
  LD [M]  drivers/staging/iio/adc/ad7280a.ko
  LD [M]  drivers/staging/media/ipu3/ipu3-imgu.ko
  LD [M]  drivers/staging/fbtft/fbtft.ko
  LD [M]  drivers/staging/iio/adc/ad7192.ko

Let me know if I missed something.

Thank you,
Deepak.

> 
> greg k-h

