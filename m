X-GM-THRID: 6675312425405775872
X-Received: by 2002:a25:d47:: with SMTP id 68mr853204ybn.6.1554227889366;
        Tue, 02 Apr 2019 10:58:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:1582:: with SMTP id 124ls1179832ybv.5.gmail; Tue, 02 Apr
 2019 10:58:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwfQTEL8XNNyF52lFcVjXhgYujBDYfnZL0ACPQ859UFIDEVHQOHHPgGDC4c4RY9Ox8pUHpO
X-Received: by 2002:a25:370a:: with SMTP id e10mr707336yba.81.1554227886586;
        Tue, 02 Apr 2019 10:58:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554227886; cv=none;
        d=google.com; s=arc-20160816;
        b=p/QOwk9lqNU495EgIwAiY34lRXP9axTjeF/Itdl7raZ9hyHg0/evdOqGUmUSCp8qXL
         vjZzcpd9dyKqvFi+lSHi+hc5WbhrNSh1YmL5ylwnQN7H17MNk0hdqR2X8H3eqi7d1zsS
         jiGk9Gkqlp0wTwukaRG4bjnB3E6ntxTWlBojo5n+PjPsq5dMYrIud7gHUw4kzXgmuRkM
         otCv3HJP0Stf9SAc4eWCIru6SnTsGt1sd/w6tJnN9mA+k+MxhDOaxZClW9OeJaHM0ANj
         YB3ktNN5BIBGGYHrmCDprrf51tOFDEzypcX7qTHu7Asa4wsRF7MalT4b1IFBs1iO86A8
         hw8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=VLcnJwo3Atmvq5n73wB++XQts7bnrP26yyU62GACzRY=;
        b=dPPkmb/XscUjwupEBV/sJT7ggYsWj+Pl+rD45DDPKqt91BeV5VDo+puCLoT7wMcwTR
         Ox9aLxFCaC/K0kvVagjGcddEXGivHWZjHvT8RekG8pAc9UoYcQPklYu03qIwEk9h/cVa
         Hksdzb2JZhc/uYMBesFzosgLNmpOoJO7vKHBYXevIwl1xd3BMvsACiJIEqwWNPdeVTit
         H1vJfCokOmPd2ycxndvs+r0i5kIBd7x0rGo8EENDaiqcgSfx0CwfwlmQvRXm0WIyvmlx
         Z6+hM21QYZNxjEnbjLDT6066BrL4nmGvjRsh1QMgi8+coPXYTY7Go/ifUaTXUl/e3xin
         c/vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=X8TauWFt;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 204si759004ywd.4.2019.04.02.10.58.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 10:58:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=X8TauWFt;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 179D92070B;
	Tue,  2 Apr 2019 17:58:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1554227885;
	bh=dLRvBhA778Jy5cBbV5m5f6nLzwxKHITo7jLzXAvLdgY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X8TauWFtrKQFWRauRLMZZSfKqhTNhXtGofUpXGSuVmELhCLATu+FPzYemZBkzRE/o
	 q0a5Vc1mhBTtDKqhvD7QRTRdsWNIdvHTxlN+HdNmZZvZd3HOZ2tfpu38uT7uHjKZBG
	 cYdSsOcDOPsO2jEBGhouXbBEJeVEZW9Itm9XdRlc=
Date: Tue, 2 Apr 2019 19:57:48 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: ddk750_chip.c:
 Replace bit shifting with BIT macro
Message-ID: <20190402175748.GA25662@kroah.com>
References: <1554217272-10859-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1554217272-10859-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Tue, Apr 02, 2019 at 08:31:12PM +0530, Payal Kshirsagar wrote:
> Challenge suggested by coccinelle.
> Prefer using BIT and replace bit shifting with the BIT(x) macro.
> 
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index 4c1f00f..eea4c08 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -45,7 +45,7 @@ static unsigned int get_mxclk_freq(void)
>  	OD = (pll_reg & PLL_CTRL_OD_MASK) >> PLL_CTRL_OD_SHIFT;
>  	POD = (pll_reg & PLL_CTRL_POD_MASK) >> PLL_CTRL_POD_SHIFT;
>  
> -	return DEFAULT_INPUT_CLOCK * M / N / (1 << OD) / (1 << POD);
> +	return DEFAULT_INPUT_CLOCK * M / N / BIT(OD) / BIT(POD);
>  }
>  
>  /*

This patch does not apply to my tree :(

