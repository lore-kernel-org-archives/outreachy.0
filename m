X-GM-THRID: 6748590079853199360
X-Received: by 2002:aca:cc51:: with SMTP id c78mr3194457oig.1.1571316790804;
        Thu, 17 Oct 2019 05:53:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:d6e:: with SMTP id 101ls410920oti.12.gmail; Thu, 17 Oct
 2019 05:53:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxvEPWduzLJ41ZvYQGwikzJsAto1Ge8Ogdew3yYyBOMlq8D6CXst1cJeG/y+KPwlFnB5GAP
X-Received: by 2002:a9d:3e4e:: with SMTP id h14mr3052777otg.198.1571316789059;
        Thu, 17 Oct 2019 05:53:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571316789; cv=none;
        d=google.com; s=arc-20160816;
        b=nHU63Mrl+8UXjakr5r98L3IwtbjLvB8C7E4V9Gk+UX7bkPoqI0xm0ZZB33tuPWL6Fa
         IWvaZHiFl2Rpka+gI6LBAtC8+LV2X1ulfGTLibIQqlsm8LoLXuf/BCqk2sEiTYudUqEe
         ZpGOrCZM13325BlJUr2AgTN7C4R1PSOcrZEKQF2m03covvEI4jBc6UTLqqX20DBz0p/D
         8sQ0WlegaViB+u1ENq5KxKAOISQC3QglW3MtTcjExArgBiCYI/fIA262750t+BS5ga5G
         nC7/Gt+cJ0UplHmQigXVDtEtbsHSFvxK/u6s5fq0jwsNSk6fcmTQPx1ywAiKhOQGrLnd
         dcFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=+wtvMfGXKKWaYFCX5ZGq4RW9dkcw2FZi0HerCZbD5Xs=;
        b=sRBOM36ib3xTkTrKMJbg6mfDoTa1Mc4/C1lAK+lloCnIMAVwVaFGHcQfhujPuLcoAX
         ma1XLH08QJzh90GHefIciky+7aPICDSRdGPfeq7W+NaS7+0BlZu7jK1x1BbYK/hAwMhL
         alrg3MNsZ7c6EFCcXQ/KpheYqmkmQis2A5dOSOBJ8rZOg2K1lUR7e8HcFQB5mBAPVxBS
         yXFNYms8GodQffCy8A3TIvPCVBaGOF+/KUunWDskBi/RRZXfac3TkkkzQyt2+r1Y3FNa
         XJnjaqCA1RL4sNqM2iEhVGab7n4bOqQIrmAtSJE4ZUcBNZaKBisGIFvJaZs/96fLLhQd
         lNuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NvA61cDP;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i19si101045otk.0.2019.10.17.05.53.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Oct 2019 05:53:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NvA61cDP;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [209.136.236.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2308220854;
	Thu, 17 Oct 2019 12:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1571316788;
	bh=pndf9zjH2sEkYvvidabrwP4hWMB64EsEtS5f+N7PqY0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NvA61cDP4JYs3kRMk7WZEjVZD41fH5KyWTJhP1XIKXYOmYEi972oFSXxuKOXXga6p
	 DAzjrsBCCPyizuTOmpF1Yhv8j1oR1kEYy1mJUKG78BT2EL5YrvIRr3/2Of06VtAmI1
	 R8jW9eTTGpHq9i/G8pHZ0Sm5g8Z6N/f4eUtYPb8o=
Date: Thu, 17 Oct 2019 05:53:07 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Jamal Shareef <jamal.k.shareef@gmail.com>
Cc: outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com
Subject: Re: [PATCH] staging: sm750fb: Edit CamelCase in ddk750_mode files
Message-ID: <20191017125307.GA1029242@kroah.com>
References: <20191017021551.2951-1-jamal.k.shareef@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191017021551.2951-1-jamal.k.shareef@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Wed, Oct 16, 2019 at 07:15:51PM -0700, Jamal Shareef wrote:
> Edit CamelCase naming in ddk750 files and
> in dependent file sm750_hw.c.
> 
> Issue found by checkpatch.
> 
> Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_mode.c | 86 +++++++++++++--------------
>  drivers/staging/sm750fb/ddk750_mode.h |  2 +-
>  drivers/staging/sm750fb/sm750_hw.c    |  2 +-
>  3 files changed, 45 insertions(+), 45 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
> index e00a6cb31947..f08dcab29172 100644
> --- a/drivers/staging/sm750fb/ddk750_mode.c
> +++ b/drivers/staging/sm750fb/ddk750_mode.c
> @@ -14,13 +14,13 @@
>   * in bit 29:27 of Display Control register.
>   */
>  static unsigned long
> -displayControlAdjust_SM750LE(struct mode_parameter *pModeParam,
> -			     unsigned long dispControl)
> +display_control_adjust_SM750LE(struct mode_parameter *p_mode_param,

Hm, sorry, but this isn't going to work.

Look at the variable name and try to understand why the original name
was called that.  The name was using something called Hungarian notation
for how it was called.  That "method" involves putting the "type" of the
variable in the name itself, and comes from before we had compilers that
would check those types of things (pun intended...)

The "p" here means "pointer".  When renaming it, you don't need that "p"
at all, so it should just be "mode_param" instead.

So please fix up everywhere.

thanks,

greg k-h

