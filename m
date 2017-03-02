X-GM-THRID: 6392925539112321024
X-Received: by 10.99.62.136 with SMTP id l130mr5148917pga.34.1488473488876;
        Thu, 02 Mar 2017 08:51:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.61.70 with SMTP id a64ls2265390otc.35.gmail; Thu, 02 Mar
 2017 08:51:28 -0800 (PST)
X-Received: by 10.31.151.214 with SMTP id z205mr1146476vkd.4.1488473488440;
        Thu, 02 Mar 2017 08:51:28 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id f7si1591143pfk.5.2017.03.02.08.51.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 08:51:28 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 1so9859703pgz.2
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 08:51:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=SmBYPnHwMTMbBBclbJX0HtD3NpoeGWczUfIAGWAWyG8=;
        b=YWcPP/Kq3qtsxYwaHrEj0BfG5Bt8PRoBkjKt9qECz72GOlpxS1np7OzKOa6NWe6bZ2
         Co/npnoogqKemID9fix/DhiOvxcLkhrPO1rI8i4turOupUrgp/LG9pg8qExmMlsU7rbg
         30MM3ZAxBay/bksP6G3CGe1oY5KKwOKEmTOAlZ7S37b6x9zz89y5L0XexYTjJBNB2ieG
         E3CqLhNpgGjbvoq5Eeiw6dX4+0ge6acAW2OIWRgn/E3+usoCyiDn3Q0RV0PUAqBqqdO0
         9ZRo/K6cEnXtgWhzH/t6ODM4+2KE/iCQyhJPg+mtz15CL1qXDTZHm7zEFq232D6zM5++
         L9Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=SmBYPnHwMTMbBBclbJX0HtD3NpoeGWczUfIAGWAWyG8=;
        b=oC3N+e4j4uqMyGk8FT4f4MrlOJrQUkQWE1Ra/AQtX18V8nwhpB+XwzTv/7oz3YNYDj
         hO0ZGP2ETMgX1+vJJHV1yHtjKVletMvrZHFX7Td4H2tIEB3CQ7ZLwyM0Ibij9AvVYauQ
         LmlalovN5ZO2RTd3HcMyIEZZgXENFEZceg20sDwk0UTuEpljTdJtNv6qaq+Y/6EUWuMs
         kbKEEU6pU5iGuII/9EJMVJwTmGkHjpT/mbV8ZOxIVfKaLKbUNt1NKktsN1E/XPo8tGH4
         hzmwy37K+MMVBwMGphIIk03o/biCcay5aF7MR1XvvoMyEfOITw8ipUReVPyoNZeGrgD4
         ZnfA==
X-Gm-Message-State: AMke39nAkzFLqf/NPvneqhPGbVhEkJk6uI+qpvEF1ov4ayzhbFfEYXN/63XDHM9CiDS4dA==
X-Received: by 10.98.35.146 with SMTP id q18mr16843516pfj.59.1488473488191;
        Thu, 02 Mar 2017 08:51:28 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id l19sm5454644pgo.13.2017.03.02.08.51.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 08:51:28 -0800 (PST)
Date: Thu, 2 Mar 2017 08:51:26 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com,
	outreachy-kernel@googlegroups.com, kirk@reisers.ca,
	samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org,
	speakup@linux-speakup.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 1/4] staging: speakup: Placed Logical
 on the previous line
Message-ID: <20170302165126.GB2182@d830.WORKGROUP>
References: <20170302153600.13803-1-arushisinghal19971997@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170302153600.13803-1-arushisinghal19971997@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 02, 2017 at 09:05:57PM +0530, Arushi Singhal wrote:
> Placed Logical continuations on the previous line as reported by
> checkpatch.pl.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>

Hi Arushi,
I'm not seeing the patch cover letter for this one.  That would be
your [PATCH 0/4] and would come first and then 1 through 4 follow
threaded as your've done.

Stating in imperative might look like this:

place logical continuation on previous line
insert spaces around operator
use tabs for indentation 
align open parenthesis

I didn't look into the changes themselves.

alisons






> ---
>  drivers/staging/speakup/main.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> index a12ec2b061fe..25acebb9311f 100644
> --- a/drivers/staging/speakup/main.c
> +++ b/drivers/staging/speakup/main.c
> @@ -2144,10 +2144,10 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
>  	if (up_flag || spk_killed || type == KT_SHIFT)
>  		goto out;
>  	spk_shut_up &= 0xfe;
> -	kh = (value == KVAL(K_DOWN))
> -	    || (value == KVAL(K_UP))
> -	    || (value == KVAL(K_LEFT))
> -	    || (value == KVAL(K_RIGHT));
> +	kh = (value == KVAL(K_DOWN)) ||
> +	      (value == KVAL(K_UP))  ||
> +	      (value == KVAL(K_LEFT)) ||
> +	      (value == KVAL(K_RIGHT));
>  	if ((cursor_track != read_all_mode) || !kh)
>  		if (!spk_no_intr)
>  			spk_do_flush();
> -- 
> 2.11.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170302153600.13803-1-arushisinghal19971997%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

