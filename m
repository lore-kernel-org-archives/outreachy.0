X-GM-THRID: 6668261535001870336
X-Received: by 2002:a7b:c18d:: with SMTP id y13mr298964wmi.2.1552575828842;
        Thu, 14 Mar 2019 08:03:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:40c3:: with SMTP id b3ls1193906wrq.8.gmail; Thu, 14 Mar
 2019 08:03:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzcQutqv0e9k/RMCDHTu1uafVYVM9Wc1KhvLWiaP1kImY/bnuCZKLWauRcMcGMtZJTGxHzu
X-Received: by 2002:adf:fc89:: with SMTP id g9mr873533wrr.0.1552575827535;
        Thu, 14 Mar 2019 08:03:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552575827; cv=none;
        d=google.com; s=arc-20160816;
        b=R01XAsTEniOa1wdOg/ybbJGReI6PZAcX3HbznMPwk6qqlCuKVYFoYQim4uqLRu8Dez
         rzK/mHm/8eONI7U5T2ouH0ccRjukLuY7RyWwSmGFlxA9n9NXbuef+ZMkSX7wT77Q5mJi
         MbFsvi5N9JAnSAii4B6QTOhIFdindhz9fEo2BdVoTEiZzsEG/D3EaElY51KjGHnUkUT0
         /8Ku0Kj6JxWoOzYTwbXhTRK9UyYYl1OBb/+xLHgRZuuGlK5SlnwNojNhkbowQF6KFIDK
         Z64xkKwhJh/hjukajx65mn7QsyZQwYHQZ8ZqryFCb3PJ4EhRyAPyg8MTlE9PUkUEtyip
         OB8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=9r4rXFRmAvZ7/yNjcaH4baJhk62CN4cMxTE+972hPx4=;
        b=PupMdBWtcjzzdNaQHoyo3XkSVbAXlGqvl6Um1nKKhOdANTEL9hBE71l85qWzKoemjh
         KP3d8tmExXpXqs723du/wHp0m03CVndKHA99gUSrT5zfLUmDUEFwwmoaCNe/FEoQxmtO
         bOzMbP9JJCfWoi3HWBZ3Kk4EAC84AE8xPYZh++nPivFJnsyszp8JvwrWE0cezvpZAfqX
         Eh8Ib8qeC7taUoU65ysJAwShxGIiStLsEhaazZuiGPZ6/HhakXfx4N/lCe2d7udR2Ula
         O+iPl6EsnGae9K+qXmx0PRQM9EIRsO+UZNN9z8bcTU9NewcG7ZuMfGmfYQM1sF7WNXdP
         UFMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y84si99325wmd.0.2019.03.14.08.03.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Mar 2019 08:03:47 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,478,1544482800"; 
   d="scan'208";a="299267066"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Mar 2019 16:03:46 +0100
Date: Thu, 14 Mar 2019 16:03:43 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Branden Bonaby <brandonbonaby94@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rts5208: Lines should not
 end with a '('
In-Reply-To: <20190314150017.25470-1-brandonbonaby94@gmail.com>
Message-ID: <alpine.DEB.2.20.1903141603150.19170@hadrien>
References: <20190314150017.25470-1-brandonbonaby94@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 14 Mar 2019, Branden Bonaby wrote:

> Start function arguments after initial bracket so that the
> line does not end with a opening bracket.
> CHECK: Lines should not end with a '('
>
> Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
> ---
>  drivers/staging/rts5208/rtsx_transport.c | 16 ++++++++++------
>  1 file changed, 10 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
> index 8277d7895608..d2c1dfcb95e4 100644
> --- a/drivers/staging/rts5208/rtsx_transport.c
> +++ b/drivers/staging/rts5208/rtsx_transport.c
> @@ -257,8 +257,9 @@ int rtsx_send_cmd(struct rtsx_chip *chip, u8 card, int timeout)
>  	spin_unlock_irq(&rtsx->reg_lock);
>
>  	/* Wait for TRANS_OK_INT */
> -	timeleft = wait_for_completion_interruptible_timeout(
> -		&trans_done, msecs_to_jiffies(timeout));
> +	timeleft =
> +	   wait_for_completion_interruptible_timeout(&trans_done,
> +						     msecs_to_jiffies(timeout));
>  	if (timeleft <= 0) {
>  		dev_dbg(rtsx_dev(chip), "chip->int_reg = 0x%x\n",
>  			chip->int_reg);
> @@ -284,8 +285,10 @@ int rtsx_send_cmd(struct rtsx_chip *chip, u8 card, int timeout)
>  	return err;
>  }
>
> -static inline void rtsx_add_sg_tbl(
> -	struct rtsx_chip *chip, u32 addr, u32 len, u8 option)
> +static inline void rtsx_add_sg_tbl(struct rtsx_chip *chip,
> +				   u32 addr,
> +				   u32 len,
> +				   u8 option)

There is no actual need to have one parameter per line.  Is this what is
done elsewhere in the file or in the driver?

julia

>  {
>  	__le64 *sgb = (__le64 *)(chip->host_sg_tbl_ptr);
>  	u64 val = 0;
> @@ -420,8 +423,9 @@ static int rtsx_transfer_sglist_adma_partial(struct rtsx_chip *chip, u8 card,
>
>  	spin_unlock_irq(&rtsx->reg_lock);
>
> -	timeleft = wait_for_completion_interruptible_timeout(
> -		&trans_done, msecs_to_jiffies(timeout));
> +	timeleft =
> +	   wait_for_completion_interruptible_timeout(&trans_done,
> +						     msecs_to_jiffies(timeout));
>  	if (timeleft <= 0) {
>  		dev_dbg(rtsx_dev(chip), "Timeout (%s %d)\n",
>  			__func__, __LINE__);
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190314150017.25470-1-brandonbonaby94%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

