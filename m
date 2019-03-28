X-GM-THRID: 6673505851539456000
X-Received: by 2002:adf:ef50:: with SMTP id c16mr873538wrp.24.1553798920371;
        Thu, 28 Mar 2019 11:48:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:53cb:: with SMTP id a11ls496wrw.0.gmail; Thu, 28 Mar
 2019 11:48:39 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyrKlP1iVtSNS+XksIZ00bkH+hxPOtU3zaByPd0X5spFzWRTcKFAOehacGQ6oKhwPcNZeQg
X-Received: by 2002:adf:f152:: with SMTP id y18mr1076947wro.21.1553798919333;
        Thu, 28 Mar 2019 11:48:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553798919; cv=none;
        d=google.com; s=arc-20160816;
        b=mY1XOXfNV2hqJVaIySSm5bluf8vki9rN7vRYhC5B+9KW8FI5sfEj5xGDv6kUqbz7n0
         oHRFUG4j8tLBDAPptT8GjIUiiTxDXoYzsGZLcYxCnviigoxE0FL0ormksf9w4f0eFaKw
         lwS1dcdxE3es/kCWw4hOmSims1cfgPfgUPGOl98GxF6kis4AVKQqeoRg6Xo4xxiqUIIL
         G/xwUiRlr7DL2/LwYeewGgOF0Dv/PgCT54cbW8XsXe9V6tqaA1Fit/xpQJNvlaLPfWQ5
         Q+CWXJoc04Ag6KPRysQsmnOKsPpA7VlTs4FxknAQwX+o3zmULRUceZoQoqMZD26fj9tw
         p04g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=z+hGzxpehD/vV+7UHmJzcB/MqocXhlCAy+cpkqgCuws=;
        b=HLEC4ZwzIyNvFKyM+Z5JWN8QZkJ02vdfRE5IyD3nGBU1mf0Q3VeD0Y+ej1HEepYh2r
         PR0qFYXEPdzLHGxADcPo2sYP1tvMJ80qEPVotjvecLRfOdN4yRjsTH2V0cxdmm/cGiRm
         qTx/lpnmoaXU6MyYhoYqDFhYDfHUyJDy1Bbj463dxBpCLf3q2GxFXI4KR1dlESZdI5Tt
         6nywbAOrFJ0DQB6MoIyOd24ume8ANJ0WjMlswzzripu1RN8t7VoBBBgeFvcdiXsmVU7j
         gy+HFkfxSpvDnMcSoLUDeZV1CzwIYVKn5b2NI/iG1RHa0E8/t+pa+7CoHRITtlYIEEVh
         V/FA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f14si130948wme.2.2019.03.28.11.48.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 11:48:39 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,281,1549926000"; 
   d="scan'208";a="376226873"
Received: from unknown (HELO hadrien) ([94.134.122.206])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Mar 2019 19:48:38 +0100
Date: Thu, 28 Mar 2019 19:48:38 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: wilc_spi.c: Modify
 return statement.
In-Reply-To: <20190328181046.30172-1-sanjana99reddy99@gmail.com>
Message-ID: <alpine.DEB.2.21.1903281947570.2760@hadrien>
References: <20190328181046.30172-1-sanjana99reddy99@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 28 Mar 2019, Sanjana Sanikommu wrote:

> The last two lines in the function could
> be compressed into one. Avoid usage of local variable.
> Issue found with Coccinelle using ret.cocci.
>
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_spi.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
> index 4a1be9e60d74..9959a794edc7 100644
> --- a/drivers/staging/wilc1000/wilc_spi.c
> +++ b/drivers/staging/wilc1000/wilc_spi.c
> @@ -934,9 +934,8 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
>  	int k = IRG_FLAGS_OFFSET + 5;
>
>  	if (spi_priv->has_thrpt_enh) {
> -		ret = spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
> +		return spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
>  					int_status);

In this case and in the next one, the final argument needs to be moved one
space to the right, because the function call has been moved one space to
the right.

julia

> -		return ret;
>  	}
>  	ret = wilc_spi_read_reg(wilc, WILC_VMM_TO_HOST_SIZE, &byte_cnt);
>  	if (!ret) {
> @@ -982,9 +981,8 @@ static int wilc_spi_clear_int_ext(struct wilc *wilc, u32 val)
>  	u32 tbl_ctl;
>
>  	if (spi_priv->has_thrpt_enh) {
> -		ret = spi_internal_write(wilc, 0xe844 - WILC_SPI_REG_BASE,
> +		return spi_internal_write(wilc, 0xe844 - WILC_SPI_REG_BASE,
>  					 val);
> -		return ret;
>  	}
>
>  	flags = val & (BIT(MAX_NUM_INT) - 1);
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190328181046.30172-1-sanjana99reddy99%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

