X-GM-THRID: 6666437691631992832
X-Received: by 2002:a25:c544:: with SMTP id v65mr16448952ybe.5.1552345095787;
        Mon, 11 Mar 2019 15:58:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:2f02:: with SMTP id v2ls3247933ywv.5.gmail; Mon, 11 Mar
 2019 15:58:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxt9TgO6ljos5rfyYHE4MwoK665FrH6Hs52kF/coaVYd3AkWnzay/DFDH8x6UysxWldv+nG
X-Received: by 2002:a81:8546:: with SMTP id v67mr15656577ywf.1.1552345094987;
        Mon, 11 Mar 2019 15:58:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552345094; cv=none;
        d=google.com; s=arc-20160816;
        b=IGNiz6eTRjSlagpA2YqFlLI39LNtQg6gfICAay4e8VPfTGamcb4xn18g/T/4tQXQ3t
         qgK09Lc1lA0ISNF1RcYrZlI2aofG+gvK9HakmaSn5NYgmR4BQGKJHhPQgOlsnBIKBTvs
         xJR9Sjp7awVTx7B3Q+ZxcAhu79LoKBD5ZPLBChTKtXc+zh49fYW/V8PgzfSyjh1/oTZ4
         HszGc2k/pficBXepUltBYT5h7FvdXSmI14vUgdEzZFV6w8pSpFvS8xgL4MAd45Be41oC
         5E1w0OdM2b7mmKW7+pR3ECdSsu7Hcfad7qWt580y2jflR7RPRX3KTsWhRT5Whuq9JDeR
         Je8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=N3fjIJ/E/GY1L02neVCeIxutBw0dY/aIVWJFFk0yiDI=;
        b=hHf65SmZNYQ6QHmZHgBKlaIJ5qxmpebdhWLbwwfxzGvqq4r/I1w9a2UwCGeYnzIAHo
         s41J+ldcfwReF2xVW5dVTYp5YVq5G/qL3H0VU7CpkcQwxpXw/8dyUQCQDvwAC59Y6v6B
         cmS+zsROWPo0vsVNduRzIv8h0PfIoppHDZaBh07nohEBCaX7XhDMM4foUKzQDKQua4EN
         D6EneEEErNsYwwZ3xxNa/cbIbksS8AM4ccQ5pIn9mcjc2mpt2/YXnBjQo03sf5PsKeDJ
         Ac23VHKGRIo7Jb8JVuKrhugDnus70ndVWDgcHMAkjlxqKZ7Yjb3tJvQTuOT+ysXdcHWr
         QLYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=q7RHTUie;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x187si283424ybc.5.2019.03.11.15.58.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 15:58:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=q7RHTUie;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.133.8.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E97742087F;
	Mon, 11 Mar 2019 22:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552345094;
	bh=7BABYaf/9QtRWtVR2TwFo3/mLGnI4G9SMrJ48n/Y2rY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q7RHTUie1iza80x+yWbzf0Nrfo4TMoLJVR4usGQjoPO5VRIxpK2+ZqnC9O1pkkAKr
	 gTMGTn9PNppv3Gc3ftK1lL8vqGQaDa5rX2XT4Dd7PAHRANlgZg3uC1SjwBHbs9lEu2
	 oJ8+pzU61q44YPuPR06pK1/lXPrdc739LGXd8wFk=
Date: Mon, 11 Mar 2019 15:58:13 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Aarushi Mehta <mehta.aaru20@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: board: replace macro with function
Message-ID: <20190311225813.GB1008@kroah.com>
References: <0ce45d3e104e179cbf124d6c41aee442d6ed03cb.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0ce45d3e104e179cbf124d6c41aee442d6ed03cb.camel@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Sat, Mar 09, 2019 at 10:32:50PM +0530, Aarushi Mehta wrote:
> >From b0da5fe54699fd2b4b627344fa5a118d6d985853 Mon Sep 17 00:00:00 2001
> From: Aarushi Mehta <mehta.aaru20@gmail.com>
> Date: Sat, 9 Mar 2019 22:16:42 +0530
> Subject: [PATCH 51/51] staging: board: replace macro with function
> 
> Signed-off-by: Aarushi Mehta <mehta.aaru20@gmail.com>
> ---
>  drivers/staging/board/board.h | 21 ++++++++++-----------
>  1 file changed, 10 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/staging/board/board.h b/drivers/staging/board/board.h
> index 5609daf4d869..a2119ae1bac1 100644
> --- a/drivers/staging/board/board.h
> +++ b/drivers/staging/board/board.h
> @@ -31,16 +31,15 @@ int board_staging_register_clock(const struct board_staging_clk *bsc);
>  int board_staging_register_device(const struct board_staging_dev *dev);
>  void board_staging_register_devices(const struct board_staging_dev *devs,
>  				    unsigned int ndevs);
> -
> -#define board_staging(str, fn)			\
> -static int __init runtime_board_check(void)	\
> -{						\
> -	if (of_machine_is_compatible(str))	\
> -		fn();				\
> -						\
> -	return 0;				\
> -}						\
> -						\
> -device_initcall(runtime_board_check)
> +static void board_staging(str, fn)
> +{
> +	static inline int __init runtime_board_check(void)
> +	{
> +		if (of_machine_is_compatible(str))
> +			fn();
> +		return 0;
> +	}
> +	device_initcall(runtime_board_check)
> +}

This will not build properly with some compilers, and really isn't
correct code at all :(

thanks,

greg k-h

