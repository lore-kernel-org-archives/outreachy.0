X-GM-THRID: 6669782350096760832
X-Received: by 2002:aca:de02:: with SMTP id v2mr11556279oig.0.1552931577672;
        Mon, 18 Mar 2019 10:52:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:62c:: with SMTP id 41ls3079801otn.2.gmail; Mon, 18 Mar
 2019 10:52:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxfzrE7bUZG80jxpWWViH5/RYzm/g9IOvk7EP/zYYL3IaoI5zGbjn4Db68rBW3ZUFkscjwq
X-Received: by 2002:a9d:6418:: with SMTP id h24mr11031541otl.29.1552931576310;
        Mon, 18 Mar 2019 10:52:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552931576; cv=none;
        d=google.com; s=arc-20160816;
        b=ph6uEtAFlUkCKw+POdPNMF+ZCDNUhogZ70nTISZiAv+twBfHj2s5LCxZyuuTgFmypr
         Wo6q0AGTobmTiMbjVMzKvCWNeii6WXc+ctTZIFpTx+eIbQmfr1Y4dJAC1/5xqtyIh07n
         ZedCg2E2C8Ak0oQNpj9Wbj8UFvi2DbK6yWbdAD3wZzVPwzYC0xH5MJsBTf1+vxn+QEGJ
         uLgJNkgyfkjLzu5td0NLM3IRrmKM97WGSjtyivErF5epuU1jDsh1uMGe8D6DC7FUWp2n
         z5nSLHQkjCcSdUwbGaybSHh3mvag8gRFiClTreApvlAZoctrcNJn1eUBKBSwtkMKnUC5
         6txg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=/fRPS+jR+9u+xHHEx7sqUR07vSFgVNvclncR/dkSJ4s=;
        b=Ht9ipT5P7QJqudU6phtyx/8heuvmtR3WOAV7juflyrIld+wM+aOHvYzdKpv+y1XNEO
         b1yOUw0fRHhd+iBm3jt2A0vHGyMtpXt6bqA0rwKbAPoke/Lx1x5yWOmwsv31v8MJ75E1
         KLzJfJqOuYzZJS/uDwbQgUS0QxIva5dJGRkeUD7VvQy1h0N1vZu09re9SvufBv//yALA
         aSi2EBV1N0gYtm8IH79mXvlQEvxWTIOXironjcMec9uRVFB4Nm5ps+Rzf035q9IO7Qnn
         KW8O31sp3qKjceMl5+ahT8c4xPuZSF0YpK29DaS8fs7C7ZIPC1L8Yhu0ofkhQZpoAHmk
         CEPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Lo2beUEL;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l26si592820otf.0.2019.03.18.10.52.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 10:52:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Lo2beUEL;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 103232064A;
	Mon, 18 Mar 2019 17:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552931575;
	bh=NFuOODGd9e6IUaKkksPK/pC7xvjurU/4jDQlsAETzNI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Lo2beUELiuP50xRFhvvAbagk/w+mPq7UU03L49VuHrb7qzHg0H6nAeM+FyhkFboj/
	 ei08YKnJVWgYdlVeOMIBDP9ju3CdwHpmd9NZmUfUOTTC4AeMMu97xJfoeNrdTeoUV6
	 Lj56Hl87DFE2EFV+ZOw+FZxsN/XnUYMrJGaGXhqw=
Date: Mon, 18 Mar 2019 18:52:52 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Branden Bonaby <brandonbonaby94@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3 1/2] staging: wlan-ng: Tabspaces in macro definition
Message-ID: <20190318175252.GA23963@kroah.com>
References: <4ac095466db03b6d17609ffac12a95a7daeb4df7.1552927880.git.brandonbonaby94@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4ac095466db03b6d17609ffac12a95a7daeb4df7.1552927880.git.brandonbonaby94@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Mon, Mar 18, 2019 at 01:21:44PM -0400, Branden Bonaby wrote:
> Remove tabspace in macro definition to conform to Linux kernel
> coding style. Replaced each tabspace with a single white space.
> 
> Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
> ---
>  drivers/staging/wlan-ng/hfa384x.h | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
> index 992ebaa1071f..da4e6db36679 100644
> --- a/drivers/staging/wlan-ng/hfa384x.h
> +++ b/drivers/staging/wlan-ng/hfa384x.h
> @@ -517,13 +517,12 @@ struct hfa384x_tx_frame {
>  	HFA384x_TXSTATUS_DISCON | HFA384x_TXSTATUS_AGEDERR | \
>  	HFA384x_TXSTATUS_RETRYERR))
>  
> -#define	HFA384x_TX_SET(v, m, s)		((((u16)(v)) << ((u16)(s))) & ((u16)(m)))
> -
> -#define	HFA384x_TX_MACPORT_SET(v)	HFA384x_TX_SET(v, HFA384x_TX_MACPORT, 8)
> -#define	HFA384x_TX_STRUCTYPE_SET(v)	HFA384x_TX_SET(v, \
> -						HFA384x_TX_STRUCTYPE, 3)
> -#define	HFA384x_TX_TXEX_SET(v)		HFA384x_TX_SET(v, HFA384x_TX_TXEX, 2)
> -#define	HFA384x_TX_TXOK_SET(v)		HFA384x_TX_SET(v, HFA384x_TX_TXOK, 1)
> +#define HFA384x_TX_SET(v, m, s) ((((u16)(v)) << ((u16)(s))) & ((u16)(m)))
> +#define HFA384x_TX_MACPORT_SET(v) HFA384x_TX_SET(v, HFA384x_TX_MACPORT, 8)
> +#define HFA384x_TX_STRUCTYPE_SET(v) HFA384x_TX_SET(v, \
> +						    HFA384x_TX_STRUCTYPE, 3)

That's a lot harder to understand now, right?

The original code here should be fine.

thanks,

greg k-h

