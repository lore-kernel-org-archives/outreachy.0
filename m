X-GM-THRID: 6802607426621145088
X-Received: by 2002:a0d:f947:: with SMTP id j68mr1720422ywf.247.1583910144403;
        Wed, 11 Mar 2020 00:02:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5b:984:: with SMTP id c4ls247302ybq.1.gmail; Wed, 11 Mar
 2020 00:02:23 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsNQ3ontwAuLQruWb3EhTDYo3G9WEwMqU63n91hfkNtoWSjm42zbRgPIrSDn7gKH+7c17K/
X-Received: by 2002:a25:cc4d:: with SMTP id l74mr1615264ybf.54.1583910142966;
        Wed, 11 Mar 2020 00:02:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583910142; cv=none;
        d=google.com; s=arc-20160816;
        b=ywVfbAHxGbZYnMj2GphecTcuBfKO5mgW/P3m7qBqTRn3n4IxyNNAxHeWmZ2jG6Gk0K
         NC3NZwqJPiuViLF/zGg42kLRkO98BBm0s2uWL4mFC5mxN3oSkX/vBNmyUOKVCKQPaBaU
         bYePk6xUnGr++TGkmp/RjEfCk6UEKHWw7pFNJMyqFY64OLV1NrqbgTPxdG+Llev5qztF
         aU/+xzicfdzax7O5iShpr4ltI8Br4jKtoRKsDvL+Vus8l5wEzDfzFIFewj9PtDTcUJcz
         7Y3jhQUBUtaQxsxi3BYCrFnsq96qS8rfPYnGqbvIj3+bMI6IOmBP8GJDFLtgOQ7pJ09C
         3eHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0T7IUfFakYaqktTvnQdjG7BJn7PuC6ev0PnTNmyZ4WA=;
        b=R49PrVloI6HEBmrPWE/id6WNPdVrrqRn67oWu6PWKOi9yRHUZI35ggkXLWMUlm2zMI
         bSvB1b1Jxd2EsBIUtlGmTVqwWTD1H5z2E/UDkKd1w8OKQr4itn0HW9TVRWZKkgfqtSAD
         1GjRdHUmmjfYQEqClmuQqsplrdsS+JY+FkFTU/o5y27sLYGyLstx0euqfhCk51vDtrK2
         I173WhUFR+/vCGz8BPq1F48GhVNL4eMFOKkE0Q9bMWASy3N+M71FMHvC1g3LAsqU2WRm
         YkLM+WJo25nQl+7jMFYM5ypzDKQU/z+DiGVjMU3ZUe2e+zJj6Pz0QFpGv1k3DEYnRPf9
         fJlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Nk8a7Vth;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y19si103901yby.1.2020.03.11.00.02.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 00:02:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Nk8a7Vth;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8DC5620873;
	Wed, 11 Mar 2020 07:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1583910142;
	bh=RUpTE2+cE/Hm8CeF9DnnYx37WV6xcO6C7C/Psk48wHs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Nk8a7VthSMbDTGcUNv89RSIfPXbAFpSbv4UHPZTaA2/GggmhPIsUeWvhkgRhRoyDr
	 y0YJQk/Q7eiU1LTHhCjUeDrpkZ1TLxTrtiyUZe/mY82xlISmLcbNOgq86Ptdu0fDZS
	 UECj5idjsrbi7GMh9wBDt05nm808ceoM1BcyjdoM=
Date: Wed, 11 Mar 2020 08:02:18 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, abbotti@mev.co.uk,
	hsweeten@visionengravers.com, daniel.baluta@gmail.com
Subject: Re: [PATCH v3] staging: comedi: dt2801: remove old unused code
Message-ID: <20200311070218.GA3572180@kroah.com>
References: <20200310201419.GA3417@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200310201419.GA3417@deeUbuntu>

On Wed, Mar 11, 2020 at 01:44:22AM +0530, Deepak R Varma wrote:
> There are two #if 0 blocks that have no recent history of any change.
> Remove those code blocks for improved readability of the code.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
> Changes in V3:
> 	- moved patch revision comments for v2 into this area
> Changes in V2:
> 	- Removed extra spaces after colon in patch description
> ---
>  drivers/staging/comedi/drivers/dt2801.c | 22 ----------------------
>  1 file changed, 22 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/dt2801.c b/drivers/staging/comedi/drivers/dt2801.c
> index a29880981d81..aad02faa2f83 100644
> --- a/drivers/staging/comedi/drivers/dt2801.c
> +++ b/drivers/staging/comedi/drivers/dt2801.c
> @@ -87,17 +87,6 @@
>  #define DT2801_STATUS		1
>  #define DT2801_CMD		1
>  
> -#if 0
> -/* ignore 'defined but not used' warning */
> -static const struct comedi_lrange range_dt2801_ai_pgh_bipolar = {
> -	4, {
> -		BIP_RANGE(10),
> -		BIP_RANGE(5),
> -		BIP_RANGE(2.5),
> -		BIP_RANGE(1.25)
> -	}
> -};
> -#endif

These should be left alone, as they document hardware that doesn't
happen to be supported at the moment.

thanks,

greg k-h

