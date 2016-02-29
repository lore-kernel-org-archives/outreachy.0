X-GM-THRID: 6254207218410848256
X-Received: by 10.67.30.161 with SMTP id kf1mr11828268pad.21.1456729381039;
        Sun, 28 Feb 2016 23:03:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.95.43 with SMTP id h40ls2199398qge.39.gmail; Sun, 28 Feb
 2016 23:03:00 -0800 (PST)
X-Received: by 10.129.72.199 with SMTP id v190mr11921894ywa.44.1456729380519;
        Sun, 28 Feb 2016 23:03:00 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x231.google.com (mail-qg0-x231.google.com. [2607:f8b0:400d:c04::231])
        by gmr-mx.google.com with ESMTPS id x5si560541ywb.2.2016.02.28.23.03.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 23:03:00 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) client-ip=2607:f8b0:400d:c04::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x231.google.com with SMTP id y9so110351519qgd.3
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 23:03:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to;
        bh=gt+yVQkseu1uDj2nZURsNeUUoEwv6M+TRdUBAzQFIUA=;
        b=C4APAz5NSQsWNw67MXM5KYAejUp21HkP9+1cgIenDx+QUTGtzLboVQ6JT3HjzgZP28
         btQfbbtPoQTDfxwymMrok3GTZhF5pWc+6KewvZA1I/eKS513XLi8dEW1khzbQOw/RDcC
         J+TBSOI+G8GmDcTvqQVLIU3r72zwkdiMa2XufbJFucu5m/QnByTIO5hDKrU9kNFuXH7Z
         tdqyvWtDDVoxBPnjKsmaGgIDXgzdh2mawo7kNkdrS79pdg8fABz3fyl7bLnRQWzLp0w2
         dOi890scmr8Nh26PsqC+Bo7ZBhPY41htJCBqCTQsz+P3S09aUyLC8GeH36euGMTvoRb6
         5Tfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to;
        bh=gt+yVQkseu1uDj2nZURsNeUUoEwv6M+TRdUBAzQFIUA=;
        b=Y2Aajh+FiOd994Mb3P3mz5EQD7SMQJ36iHk14+oTnqmmpv8Iq+TuJJOxhC7DipJr9i
         1qrHEstNG4Vny8PBP33Wf/Nr0bL6xsdJ/lecWSg7JIyQuk2h2ghtlzJrAB8zUyazCB5W
         ETyEdkFmXHpsckU4OB8C14/fina5zXP9NlEvhv9KGwWJfW3eI30whASAcsCGdaj8G2kZ
         GU6eHvxBupAswdqvCdxM2mJZU1Or2oSUHcsrcwEu3PWBc+Hhjb4lE5Ar3I8xixQ3AZ/c
         vKDmH/N/7I/wwmrVy7lKWzR2HifoJiQt7r2alo5xF+gcPHAB9ic6sQPs3T89Gn8TWpIN
         FsJw==
X-Gm-Message-State: AD7BkJJ0C/oyPOG8heLrBlf+wQklVqJhu3Ij/nlc9JFjtGwd+/CRdxCjr8Z28YLsoFe/jIxIdym/Eziq9ydGzg==
MIME-Version: 1.0
X-Received: by 10.140.233.85 with SMTP id e82mr17502066qhc.86.1456729380275;
 Sun, 28 Feb 2016 23:03:00 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Sun, 28 Feb 2016 23:03:00 -0800 (PST)
In-Reply-To: <20160222195807.GA12070@amitoj-Inspiron-3542>
References: <20160222195807.GA12070@amitoj-Inspiron-3542>
Date: Mon, 29 Feb 2016 12:33:00 +0530
Message-ID: <CA+5yK5FQ_PXZ1gBAhEtFBLTyJhaHfU9OCB5FENtsNs0LneF=jQ@mail.gmail.com>
Subject: Re: [PATCH] staging: iio: adc: spear_adc: Use devm_iio_device_register
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 23, 2016 at 1:28 AM, Amitoj Kaur Chawla
<amitoj1606@gmail.com> wrote:
> Devm_ functions allocate memory that is released when a driver
> detaches. Replace iio_device_register with the resource-managed
> version devm_iio_device_register. Subsequently, remove
> iio_device_unregister from remove function of this driver.
>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/iio/adc/spear_adc.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/iio/adc/spear_adc.c b/drivers/staging/iio/adc/spear_adc.c
> index f2c0065..0a6d0d7 100644
> --- a/drivers/staging/iio/adc/spear_adc.c
> +++ b/drivers/staging/iio/adc/spear_adc.c
> @@ -346,7 +346,7 @@ static int spear_adc_probe(struct platform_device *pdev)
>         indio_dev->channels = spear_adc_iio_channels;
>         indio_dev->num_channels = ARRAY_SIZE(spear_adc_iio_channels);
>
> -       ret = iio_device_register(indio_dev);
> +       ret = devm_iio_device_register(indio_dev->dev.parent, indio_dev);
>         if (ret)
>                 goto errout2;
>
> @@ -366,7 +366,6 @@ static int spear_adc_remove(struct platform_device *pdev)
>         struct iio_dev *indio_dev = platform_get_drvdata(pdev);
>         struct spear_adc_state *st = iio_priv(indio_dev);
>
> -       iio_device_unregister(indio_dev);
>         clk_disable_unprepare(st->clk);
>         iounmap(st->adc_base_spear6xx);
>
> --
> 1.9.1
>
This patch is incorrect and should be dropped.

Amitoj

