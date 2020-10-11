X-GM-THRID: 6882312665802211328
X-Received: by 2002:a1c:3283:: with SMTP id y125mr6527614wmy.61.1602414368928;
        Sun, 11 Oct 2020 04:06:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:cd8c:: with SMTP id q12ls5299376wrj.0.gmail; Sun, 11 Oct
 2020 04:06:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzvVhkKHOYJjHm3AZq1B95ydkW3nk+qWfaW/b2rI+DfVGMurDgT/fpP4xMB1+vNspbUjZlw
X-Received: by 2002:a5d:684d:: with SMTP id o13mr26103567wrw.302.1602414366990;
        Sun, 11 Oct 2020 04:06:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602414366; cv=none;
        d=google.com; s=arc-20160816;
        b=RYS+s2aDjapjG5coxbXgHtHleKW6ctT63GM2u+pQd4RMj4I4AvZ4P5XsB++abcnzjG
         KeLCSekUUck2hwgEQQA89MlhSwErt+1fueRmiDR/SyEo8lgzQ61oyY7fB/93WtnED01L
         ZUJg8Y8+7tSJ5NMXh51LRrR6mT7AJ/gEaCkoCajRa5aDYe2p/ObrtYQYeMWDbxUyZQig
         n7OtdBsFysreCjONKIO2rJq2o4B+AWzOgGD1jX1mHg7jSn8v0rPIP/6ssj00e5qBvC4I
         DoWo5iaV874HXZDyCSCZb3w4+wMjphJzjO33wOLee7F1R6Cg7d+UUrbOM8i6tBD1tZgb
         r9GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=4Zu5VjnmjbAqjBd4qIELD6rtqgZ9JllNJ6lQpoA0wro=;
        b=Yq5uQJBZFlUoAfnQ1rNjFCXUN2jnB7aKjqW5nEFpYDbFzEwXykp9q9jNFPcpHdO06S
         +RWVUK1Cg5GvTJvOLDrV/M2wbK6ymM1PECIOGKgxpT/OTrE1If/YYUjHz53JNLW2+OZW
         oggigNx2AotMJSWQLRykLc1MyMWe9Vow2vavSsXMMJhdmwzZ3AWlqNcHSPD2WvcGRJbk
         vHI4fjDxbuP7kv6AbP3mJeQrouB4LmcxMTuPReYR1Wet4DQEkeClF8bFF2OJBDq1qzwk
         ZWwDoetcNL6cKN1yJkv4rAho5F30x4/jiVwTIqpvZBUQTwG99GJDlm7mu7XEo9SE/TRH
         90DA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n19si239702wmk.1.2020.10.11.04.06.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Oct 2020 04:06:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.77,362,1596492000"; 
   d="scan'208";a="471985188"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Oct 2020 13:06:06 +0200
Date: Sun, 11 Oct 2020 13:06:06 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak R Varma <mh12gx2825@gmail.com>
cc: Lars-Peter Clausen <lars@metafoo.de>, 
    Michael Hennerich <Michael.Hennerich@analog.com>, 
    Jonathan Cameron <jic23@kernel.org>, 
    Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: adis16240: add blank
 line before struct definition
In-Reply-To: <20201011104800.GA29412@ubuntu204>
Message-ID: <alpine.DEB.2.22.394.2010111303540.2716@hadrien>
References: <20201011104800.GA29412@ubuntu204>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 11 Oct 2020, Deepak R Varma wrote:

> Add a blank line before starting structure definition as per coding
> style guidelines. Issue reported by checkpatch script.
>
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>

Acked-by: Julia Lawall <julia.lawall@inria.fr>

> ---
>  drivers/staging/iio/accel/adis16240.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/staging/iio/accel/adis16240.c b/drivers/staging/iio/accel/adis16240.c
> index 5064adce5f58..8d3afc6dc755 100644
> --- a/drivers/staging/iio/accel/adis16240.c
> +++ b/drivers/staging/iio/accel/adis16240.c
> @@ -426,6 +426,7 @@ static int adis16240_probe(struct spi_device *spi)
>
>  	return devm_iio_device_register(&spi->dev, indio_dev);
>  }
> +
>  static const struct of_device_id adis16240_of_match[] = {
>  	{ .compatible = "adi,adis16240" },
>  	{ },
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20201011104800.GA29412%40ubuntu204.
>

