X-GM-THRID: 6619380955766325248
X-Received: by 2002:a17:902:d714:: with SMTP id w20-v6mr232913ply.108.1541226704068;
        Fri, 02 Nov 2018 23:31:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:1c1:: with SMTP id 184-v6ls6952272pgb.4.gmail; Fri, 02
 Nov 2018 23:31:43 -0700 (PDT)
X-Google-Smtp-Source: AJdET5eb1Oo/puxY4eiiALjHj/3x65F2t/SUTLRb7c94knZO2WBl3SMr75/PLucJhW987ISCHPeV
X-Received: by 2002:aa7:8118:: with SMTP id b24-v6mr443598pfi.64.1541226703114;
        Fri, 02 Nov 2018 23:31:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541226703; cv=none;
        d=google.com; s=arc-20160816;
        b=CylZ/ORW1EtueS8VoESM4k5xVObGEusSwuKDoabVemsI3J0wyCNxoODAHuspvNoubL
         ZPvV7G1QEkQ6uAp2+H8zARbJXDBrSb3GVfVjRgcTPQhIZtGRnBWd07avLnNuQw1yMtTJ
         n62yimvORi7MtiTeHgcMyD7JsrvTYCVW6p9K3HlAx0iBNfLUypJF/y27CwpjhYuSMEkv
         MTNJCnjx19L/CGZwnA0fGibq3Qdu93WvK2uyZiM/KbJuprNKhrQuEYncC2X6nSNpz5gd
         4b7cyMxhxVnlV+xHwlxWE1G9U0ckTYktCwIsRnyFfGu4ZISG9gweWSRqXnr/4EMUKOX9
         ND4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=knCHLPs/NXXeZFkrzkjQ6/rmphm1XPZZYOnvJzFdBgw=;
        b=F14ukNcsOklmF6BnNM8mKR7VyHORxN1xf9+aUjdd/05gIpbygg7hfk+4NAHD2ALyI5
         495jzebjo59l1n/5PUldpGBfOZgVlM302WoZjDKDD0syau4Z2C/97+exGXWvP9IYZNlo
         rOsy8iBgLhfiQmV0aDJNtECOubjVZGE2vLUHIGK/NB1/xaPmSlhY3k7WQHdYzug7Srou
         LJ1SQa529ZhgpR1HKhXyZl7VhELPUcEuUEvk0Ubhvol2605ZW5pizvrjKEe2J6B+INjg
         5OCrQkRIo7/Au+WWnw3jEaVrqBTfe6tZbm+AEUFl7XyIjLQ4PTVRoD6Q/aFuXJhYGm0r
         odyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Iyht2LY9;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com. [2607:f8b0:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id v9-v6si1375820plp.1.2018.11.02.23.31.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 23:31:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) client-ip=2607:f8b0:4864:20::52f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Iyht2LY9;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52f.google.com with SMTP id c10-v6so1908969pgq.4
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Nov 2018 23:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=knCHLPs/NXXeZFkrzkjQ6/rmphm1XPZZYOnvJzFdBgw=;
        b=Iyht2LY9YU33MIfu5Q8thmbWiaz7SWYLw4pAlUGpBS1ET4llgdGv0KufL/Of/oggKl
         1iaJxyvkpXL9YKmGbmvkUNbTZ4joWCtZm3yXBYuL76U2AVeWQ1kvs0XQQKfjmQRDMVaI
         IJ0q4XtGNaZw5NqblHhZdQmqSibvIs99OTFzvpbvGkceZTkLMdVGKlaRQsK1PcQurHCm
         4ZngWgw7PZmppiY3AA7xof7uq2hpbAnJBh6o1kToZE/WwljKgmHzg06fVljJ35V69SQW
         J7sbCaJa9ybuLv8f60tpx8lsvxKhLBkNiPmwhnY9V7rSUzs0mwIj3YWRHI8XxhGIOC1E
         Q2JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=knCHLPs/NXXeZFkrzkjQ6/rmphm1XPZZYOnvJzFdBgw=;
        b=o4axHVNP1+7LwKx9xM89bJnyg+MOmiwnNHMXZFChS5mCQC9/EkogdGvZsXe6ia6k5i
         T4PgTlcJT29anjbopwR/aeq/aA6xWE0IE3dln3sRcCw26ZeWMZ0SZMVb+ByiPzGxdS9D
         KxLz31f7QJFNsGb5k2kkhdtdSxnrPZ99SsSFRX/e3/mM6tgcgqGqdoS9fCX1y8iIL+Kk
         jcci+UfEEiCLXaehj2Pg7K1e88aHBRqJ8jvULTl/Ec3huOEVFyIM8TEbOEQmMkrJj9k4
         5Oray0haEJ0b6kDQlXJCsbOFVcTbYPpfGjS+mlVMKiqiTd414zUEpB5/BinNyTdsqyB8
         9ITg==
X-Gm-Message-State: AGRZ1gIeOmoGF4HvEzQdglqedTlLscykDbBO8X/lUnTSoGFSSALvisrV
	zmTrwHNcZss/Ki8HBy9V039eWHHm
X-Received: by 2002:a62:c42:: with SMTP id u63-v6mr14583129pfi.43.1541226702708;
        Fri, 02 Nov 2018 23:31:42 -0700 (PDT)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id g123-v6sm73058371pfc.67.2018.11.02.23.31.40
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 02 Nov 2018 23:31:42 -0700 (PDT)
Date: Sat, 3 Nov 2018 12:01:36 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Ioannis Valasakis <code@wizofe.uk>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v3 5/5] staging: greybus Shorten
 comparison to NULL
Message-ID: <20181103063136.GE6145@himanshu-Vostro-3559>
References: <cover.1541194567.git.code@wizofe.uk>
 <1f66a183a15277e3fe96368d6165e1e601c87605.1541194567.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1f66a183a15277e3fe96368d6165e1e601c87605.1541194567.git.code@wizofe.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Fri, Nov 02, 2018 at 09:39:44PM +0000, Ioannis Valasakis wrote:
> Shorten pointer NULL check by simple truth test
> Reported by checkpatch.
> 
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/greybus/core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/core.c b/drivers/staging/greybus/core.c
> index d28773e06838..0ed3b0ffee5a 100644
> --- a/drivers/staging/greybus/core.c
> +++ b/drivers/staging/greybus/core.c
> @@ -48,7 +48,7 @@ static bool greybus_match_one_id(struct gb_bundle *bundle,
>  static const struct greybus_bundle_id *
>  greybus_match_id(struct gb_bundle *bundle, const struct greybus_bundle_id *id)
>  {
> -	if (!id == NULL)
> +	if (id)

I don't think the original code was `if (!id == NULL)`


-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

