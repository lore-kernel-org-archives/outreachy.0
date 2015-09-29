X-GM-THRID: 6200043059490586624
X-Received: by 10.194.118.65 with SMTP id kk1mr17210wjb.5.1443561809232;
        Tue, 29 Sep 2015 14:23:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.168.68 with SMTP id r65ls3938lfe.90.gmail; Tue, 29 Sep 2015
 14:23:28 -0700 (PDT)
X-Received: by 10.152.3.131 with SMTP id c3mr23264lac.4.1443561808768;
        Tue, 29 Sep 2015 14:23:28 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ch7si731447wib.2.2015.09.29.14.23.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 14:23:28 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,609,1437429600"; 
   d="scan'208";a="180047255"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 29 Sep 2015 23:23:07 +0200
Date: Tue, 29 Sep 2015 23:23:07 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Drivers: clk: clk-mux: fixed line
 exceeding char limit and irrelevant messages
In-Reply-To: <20150929205325.GA10085@ubuntu>
Message-ID: <alpine.DEB.2.02.1509292321540.2031@localhost6.localdomain6>
References: <20150929205325.GA10085@ubuntu>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 30 Sep 2015, Shivani Bhardwaj wrote:

> Fixed warnings about line exceeding 80 characters and unnecessary error print
> statements.
> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/clk/clk-mux.c | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/clk/clk-mux.c b/drivers/clk/clk-mux.c

Again, this is not the code that you should be working on.

> index 7129c86..2ef8eda 100644
> --- a/drivers/clk/clk-mux.c
> +++ b/drivers/clk/clk-mux.c
> @@ -35,12 +35,13 @@ static u8 clk_mux_get_parent(struct clk_hw *hw)
>  	u32 val;
>  
>  	/*
> -	 * FIXME need a mux-specific flag to determine if val is bitwise or numeric
> -	 * e.g. sys_clkin_ck's clksel field is 3 bits wide, but ranges from 0x1
> -	 * to 0x7 (index starts at one)
> -	 * OTOH, pmd_trace_clk_mux_ck uses a separate bit for each clock, so
> -	 * val = 0x4 really means "bit 2, index starts at bit 0"
> -	 */
> +	* FIXME need a mux-specific flag to determine if val is
> +	* bitwise or numeric
> +	* e.g. sys_clkin_ck's clksel field is 3 bits wide, but ranges from 0x1
> +	* to 0x7 (index starts at one)
> +	* OTOH, pmd_trace_clk_mux_ck uses a separate bit for each clock, so
> +	* val = 0x4 really means "bit 2, index starts at bit 0"
> +	*/
>  	val = clk_readl(mux->reg) >> mux->shift;
>  	val &= mux->mask;
>  
> @@ -138,7 +139,7 @@ struct clk *clk_register_mux_table(struct device *dev, const char *name,
>  	/* allocate the mux */
>  	mux = kzalloc(sizeof(struct clk_mux), GFP_KERNEL);
>  	if (!mux) {
> -		pr_err("%s: could not allocate mux clk\n", __func__);
> +		/*pr_err("%s: could not allocate mux clk\n", __func__);*/

If the print is not needed, you should just drop it.  The comment makes 
clutter, and thus makes the code harder to read.  In general, code that is 
not needed should not be put under comments.  It should just be removed.

julia

>  		return ERR_PTR(-ENOMEM);
>  	}
>  
> -- 
> 2.1.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150929205325.GA10085%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.
> 

