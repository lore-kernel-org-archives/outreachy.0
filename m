X-GM-THRID: 6665413421410811904
X-Received: by 2002:a9d:6e97:: with SMTP id a23mr7862293otr.54.1551989031873;
        Thu, 07 Mar 2019 12:03:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:b446:: with SMTP id d67ls1420032oif.3.gmail; Thu, 07 Mar
 2019 12:03:50 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYVLbSsvW56u4dCSDqzQiDg+ZteMi/Y+50NrSUM6DSP4IMk0vZhsTBOD+NU5F8kdltcvJ+f
X-Received: by 2002:aca:aa94:: with SMTP id t142mr21736118oie.17.1551989030731;
        Thu, 07 Mar 2019 12:03:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551989030; cv=none;
        d=google.com; s=arc-20160816;
        b=NBm3ieMXscF3dESadW2HuY+8L5KDIk/masIsfASy15qAX2frzMTcGC+L0OQfTe1rBW
         vguN+B5ukZtEAeHXuhiVX3FfS38W0kw0c/cvkBf323DxiCEZYJEfdC9ZkSpBioS+KOc6
         NJVCimzzetqBz+q5zo/nkefDYd5CBvnxcuBndLN7wag6YRs1yBB0JZl0m7qmWQkLp1U0
         AOEYCs+PsQlL0CePecyaQbP58dzQRunT0bDEOQ54MycOxXC3Eo63l4qecxuh+EQlcKRa
         sxwhd1Yyh9Z6j8JlPfqRLuCkawYsyZXB/58ktIFtv+JMEwEmwt+XX9eptR/YAkAj7Zkt
         3fMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Igklhl3S+fWipA0M3eRNHlsS1xj3/It73x9UNqWdo2I=;
        b=rqv0Lsl19eyvTRCYrztvViLARE53wixhrV3NR7aNO2R4PC7LulzU2bvxtmFaLCw0q6
         QOZ3VDWHamSB9OlHb8pRLuhvE0C3Ko/OHanfioZQj362zHaHYn3JB2uo+12sgHnmxL+j
         zRpa6K/deNjyQxH5DrcE8YFoxU9kw5ivOtqg0z+gSUi9XqzVJOibO7SydcckNEDtLA9w
         qf3ncK3LEzsY+CPDN862J6xsisvNZpM1vZn258uqMMNyhSas8ZDJzJfpU/Pu9RLoGSlX
         Y/3Zig0Wl+QNHKWI5DHRaDsatWOnRw5KsMJu3lDZOW8s8zzxfSsayuzXot1YRle/qDqi
         HPQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="teEPKk+/";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v129si308745oib.0.2019.03.07.12.03.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 12:03:50 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="teEPKk+/";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5EF97205C9;
	Thu,  7 Mar 2019 20:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551989029;
	bh=+R2s5EE/ap6MQSiHEMmjnRwuvR8T/S0waHJcmZtmwsw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=teEPKk+/gOlEhyU01/H1cvdifJQaaaldpo0rGA7arIG8KwCMkPjFjaiXtLoJ5trcW
	 BY3IGhulHCspvoZCxuzMoJTOBi5+DtZns9/A1qUk1DGtqJDHIh2Lb+/oji9WTmB09s
	 d0/AY01np91pMkkbrlOJA/EiYHAOPgwNUxZaKczc=
Date: Thu, 7 Mar 2019 21:03:47 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: fwserial: Convert macro into an inline function
Message-ID: <20190307200347.GB27056@kroah.com>
References: <20190306224809.12524-1-madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190306224809.12524-1-madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Wed, Mar 06, 2019 at 04:48:09PM -0600, Madhumitha Prabakaran wrote:
> Convert macro into an inline function to make codebase better
> 
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/fwserial/fwserial.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/fwserial/fwserial.c b/drivers/staging/fwserial/fwserial.c
> index a1b90ea7fcb8..aec0f19597a9 100644
> --- a/drivers/staging/fwserial/fwserial.c
> +++ b/drivers/staging/fwserial/fwserial.c
> @@ -19,7 +19,10 @@
>  
>  #include "fwserial.h"
>  
> -#define be32_to_u64(hi, lo)  ((u64)be32_to_cpu(hi) << 32 | be32_to_cpu(lo))
> +inline u64 be32_to_u64(__be32 hi, __be32 lo)
> +{
> +	return ((u64)be32_to_cpu(hi) << 32 | be32_to_cpu(lo));
> +}

For some reason I thought the kernel had a function that already did
this, but it doesn't, which is really odd.  Anyway, that's something
that could be done in the future, as this is done all over the place in
different drivers.

thanks,

greg k-h

