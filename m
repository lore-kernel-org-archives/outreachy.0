X-GM-THRID: 6666416824026923008
X-Received: by 2002:aca:4a46:: with SMTP id x67mr733963oia.28.1552345703754;
        Mon, 11 Mar 2019 16:08:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:afc3:: with SMTP id y186ls5187324oie.4.gmail; Mon, 11
 Mar 2019 16:08:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwRMqz5izw6+jZ228dbCpPXHE+SFIq8bqSbaamtXyYsLa55+CIn6NZVBk8+M5l9maRz4KLC
X-Received: by 2002:aca:ed95:: with SMTP id l143mr713135oih.56.1552345703046;
        Mon, 11 Mar 2019 16:08:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552345703; cv=none;
        d=google.com; s=arc-20160816;
        b=EpBSJf9B+1+ZLdiPnoh+lDEilPFrwCD4uMYaLnmP0rhWQvmoZ8YihIvkVhYqOcGUBm
         IQskjSMqLMXL2cYTd2EuCyCMk0T7VFycZ3bv1bUJOVTZPjs+ddSPvsFrvpwIWHTroxJ0
         cq8H0UfF0YGXD2MyEg8oYrERQvWwAVjj923x+lFHhWaLaeIAnU9tzH0RNyhcMw4fSlUK
         rNyXGYpqlogzlcEXOA4nIxsawGljzODuft4XdEyOVflC3c8V9eB1uJxG4upPuSfJZMBO
         uHoPevLEcOXBirxVWYucwrQBmUVHL9dIQUwYCIq2fwgcCyKw5ngy61ymXqpjXDcSiGIo
         ue8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=3GXoKzscqXAmswYuUn1H2STKH1mNMGHTGHbLbuHp0jU=;
        b=qIn16hev7zqNuA6ij2sDmSIyHhB/0erAKMdU4jVlOs8r3o3EpkfyUBy9LAGuhQdSWk
         +59stnXB+BLoScVFwc4mYRP9SJq2WJMOPYPAzX+gVvKS6gWLp8Gsu5ieyJj1WHEScfUX
         Ugn74oxun0CFbpTN2+mA1mWrEyYlRgf48Hjponb8Lex0+L2owQjTVMgSe2d0xAgjvrAv
         5YW+NunbNqu7KOjK5dKhc6ZuyINoS17BZ3HSEhxJiDVh3vvUr+qdPQFt0YqgpJK01lQZ
         JWXMtbKu2E2lk/ZgxNWDZZQxwFncmezlqgbV3DG4ETB6oUv+4hDDeLVWNbFUUuxRCtbk
         GjLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1fVXCC3L;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p8si343161oig.5.2019.03.11.16.08.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 16:08:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1fVXCC3L;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.133.8.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AB0E72087F;
	Mon, 11 Mar 2019 23:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552345702;
	bh=qBWMoteqZYZPZFc7YPpzxlXpNW1UQwI+q35Aejod/XU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=1fVXCC3LvY2eXEniW/bxKN4ybxsk3ZFr5c9bnXvTEFraF/u8NphbvE7v+so7RpWKA
	 IeZbyWLPD+X4VbsFOq2gRFXMtWvDoQ87EGM1f13Zbv6kr9CrmduJyPqVKaxRsXPyLe
	 KEPyI67auLQypzZKzm6ClecmHetAzkBV3O2gYER0=
Date: Mon, 11 Mar 2019 16:08:13 -0700
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v5 2/2] staging: fbtft: ternary statement to if statement.
Message-ID: <20190311230813.GA23015@kroah.com>
References: <20190309154144.GA16379@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190309154144.GA16379@bhagyashri-Lenovo-G570>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Sat, Mar 09, 2019 at 09:11:45PM +0530, Bhagyashri Dighole wrote:
> Convert a ternary statement into a if statement which is detected while
> resolving "WARNING: line over 80 characters".
> 
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
> Changes in v5:
>   - Make patch series.
> 
> Changes in v4:
>   - Convert a ternary statement into a if statement.
>   
> Changes in v3:
>   - Make the code in original form.
>   - Use tab to line up the code.
>   
> Changes in v2:
>   - Improve code order.
>   - Make the code more readable.
> 
>  drivers/staging/fbtft/fb_ssd1306.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/fbtft/fb_ssd1306.c b/drivers/staging/fbtft/fb_ssd1306.c
> index d7c5e2e..3e1426c 100644
> --- a/drivers/staging/fbtft/fb_ssd1306.c
> +++ b/drivers/staging/fbtft/fb_ssd1306.c
> @@ -184,7 +184,10 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
>  		for (y = 0; y < yres / 8; y++) {
>  			*buf = 0x00;
>  			for (i = 0; i < 8; i++)
> -				*buf |= (vmem16[(y * 8 + i) * xres + x] ? 1 : 0) << i;
> +				if (vmem16[(y * 8 + i) * xres + x])
> +					*buf |= 1 << i;
> +				else
> +					*buf |= 0 << i;

Think about what this last line does.  Is it really needed?  :)

thanks,

greg k-h

