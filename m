X-GM-THRID: 6206247613706010624
X-Received: by 10.194.156.193 with SMTP id wg1mr3651917wjb.3.1445005667480;
        Fri, 16 Oct 2015 07:27:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.29.103 with SMTP id jv7ls151063wid.16.gmail; Fri, 16 Oct
 2015 07:27:46 -0700 (PDT)
X-Received: by 10.180.89.41 with SMTP id bl9mr952644wib.1.1445005666806;
        Fri, 16 Oct 2015 07:27:46 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id cm6si212063wib.1.2015.10.16.07.27.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 07:27:46 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,689,1437429600"; 
   d="scan'208";a="150790234"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 16 Oct 2015 16:27:46 +0200
Date: Fri, 16 Oct 2015 16:27:40 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: tsl2x7x_core: Remove
 extra parentheses from DIV_ROUND_UP
In-Reply-To: <20151016141011.GA14411@ubuntu>
Message-ID: <alpine.DEB.2.10.1510161621210.2459@hadrien>
References: <20151016141011.GA14411@ubuntu>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 16 Oct 2015, Shivani Bhardwaj wrote:

> Remove parentheses surrounding the first argument of the macro
> DIV_ROUND_UP as they are not required.
> Semantic patch used:
>
> @@
> expression n,d;
> @@
>
> - DIV_ROUND_UP((n),d)
> + DIV_ROUND_UP(n,d)

This is just a comment; no need to change anything.

In Coccinelle, there is a notion of isomorphism, where it will take the
term that you write and convert it to other terms that are "pretty much"
the same.  One of these isomorphisms is to remove parentheses.  Thus, if
you run spatch --parse-cocci this_sp.cocci, you will see that it matches
both the case where the parentheses are there and the case where they are
not there, and transforms both of them according to your + code.  In your
case, this will amount to saying

- DIV_ROUND_UP(n, d)
+ DIV_ROUND_UP(n, d)

which looks completely useless.  But it doesn't actually necessarily do
nothing at all.  Actually, it will remove DIV_ROUND_UP(n, d), and then use
its own strategy for pretty printing DIV_ROUND_UP(n, d) again.  Thus the
output might have some newline that the original code didn't have.  (This
might be a good thing :).

To avoid it removing code and putting the same code back, you could write
your rule as:

@@
@@

DIV_ROUND_UP(
- (
  n
- )
  ,d)

Now it knows that the () are important to the rule, because they are
annotated with - and the rest is not.  It will only transform cases that
actually have the parentheses in this case.

julia


>
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/iio/light/tsl2x7x_core.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/iio/light/tsl2x7x_core.c b/drivers/staging/iio/light/tsl2x7x_core.c
> index 010e607..bf9627e 100644
> --- a/drivers/staging/iio/light/tsl2x7x_core.c
> +++ b/drivers/staging/iio/light/tsl2x7x_core.c
> @@ -418,9 +418,9 @@ static int tsl2x7x_get_lux(struct iio_dev *indio_dev)
>  	if (p->ratio == 0) {
>  		lux = 0;
>  	} else {
> -		ch0lux = DIV_ROUND_UP((ch0 * p->ch0),
> +		ch0lux = DIV_ROUND_UP(ch0 * p->ch0,
>  			tsl2X7X_als_gainadj[chip->tsl2x7x_settings.als_gain]);
> -		ch1lux = DIV_ROUND_UP((ch1 * p->ch1),
> +		ch1lux = DIV_ROUND_UP(ch1 * p->ch1,
>  			tsl2X7X_als_gainadj[chip->tsl2x7x_settings.als_gain]);
>  		lux = ch0lux - ch1lux;
>  	}
> @@ -1057,7 +1057,7 @@ static ssize_t tsl2x7x_als_persistence_store(struct device *dev,
>  	z = y * TSL2X7X_MIN_ITIME;
>
>  	filter_delay =
> -		DIV_ROUND_UP(((result.integer * 1000) + result.fract), z);
> +		DIV_ROUND_UP((result.integer * 1000) + result.fract, z);
>
>  	chip->tsl2x7x_settings.persistence &= 0xF0;
>  	chip->tsl2x7x_settings.persistence |= (filter_delay & 0x0F);
> @@ -1103,7 +1103,7 @@ static ssize_t tsl2x7x_prox_persistence_store(struct device *dev,
>  	z = y * TSL2X7X_MIN_ITIME;
>
>  	filter_delay =
> -		DIV_ROUND_UP(((result.integer * 1000) + result.fract), z);
> +		DIV_ROUND_UP((result.integer * 1000) + result.fract, z);
>
>  	chip->tsl2x7x_settings.persistence &= 0x0F;
>  	chip->tsl2x7x_settings.persistence |= ((filter_delay << 4) & 0xF0);
> --
> 2.1.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151016141011.GA14411%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.
>

