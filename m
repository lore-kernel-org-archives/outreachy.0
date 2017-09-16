X-GM-THRID: 6466237555565133824
X-Received: by 10.28.7.196 with SMTP id 187mr476818wmh.7.1505543097218;
        Fri, 15 Sep 2017 23:24:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.137.66 with SMTP id l63ls665279wmd.18.canary-gmail; Fri, 15
 Sep 2017 23:24:56 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb4sKH2HcU/Cs896AtuKKb25bsQ4bdXnIueGeJTcnfaOZn0+tuHTG3XU8SlAOWNO6AZmVOWz
X-Received: by 10.223.160.199 with SMTP id n7mr1678796wrn.15.1505543096142;
        Fri, 15 Sep 2017 23:24:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505543096; cv=none;
        d=google.com; s=arc-20160816;
        b=MqHEou8GwG1p6u7fIf43RjbWxj07lXAYfu7bvWh9Y5g5vgOWXyByOgrUsnedrAPTXs
         7pJ2cZNoxwswE+A9/NMKPOdmCAgOY367pnV6YGwBalBvktrIizqlRrQefWXoSLgaIxOS
         9ZiL2kP7Dnz942YUvNy1TFXMuylZX/FzTIHuaE2ZC81GsWl+hCxvVlvbgRUDAq3KV3nc
         m+AD2NS8LWxv4eeIDxLnp77wmOupckk6kVEAa8YdabkREFUEUSFrx9/Y8/kzDltnNq0v
         rbExBvcpzs7dfvlCPXhVoRf5s46DeFLJOqiDR0TKJ1r05uxcoMCc2dDPttg2jlOrzOmY
         IUZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=mOgSkDUzKDNYWvYXzMf/BUEzBevqq3CCnzK59xYKeDU=;
        b=eS7WzrkN968m3fqod0Vx0BE95ub2N2S4YzKlOEgELPZcVPJwDkGaKSYPhX+pW65x4t
         9cEPmntrqNgZSHJcsXbum+zYrbOI6velnEh31lRkh/iWjzSJRu0fgu7seUP3qc2v8QdS
         3S6IaOiwkRj6ba3Q3sDZnHQ8aQm8R/O8CwLKn2GvOgCwDgLIrnEAlFXe7By50wK+fJc6
         YhtAGChWQhVLkTikSzl/hlD0pHk7A3lloYl6eKaDNETmc6duElORDdpDOhGnG8zINwz/
         72HQIb6+F11iingXsQZlkr5nQJBYnvnqGX10+Xmi8G1e+IwLxbh8Mz99J3WdtaThNZT/
         Comw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 200si67561wmj.0.2017.09.15.23.24.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 23:24:56 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,400,1500933600"; 
   d="scan'208";a="291356539"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Sep 2017 08:24:55 +0200
Date: Sat, 16 Sep 2017 08:24:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: speakup: Remove print
 following unsuccessful kmalloc
In-Reply-To: <20170916050400.GA31327@meghana-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1709160820060.2943@hadrien>
References: <20170916050400.GA31327@meghana-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Sep 2017, Meghana Madhyastha wrote:

> Remove print statement following unsuccessful kmalloc when there
> is not enough memory. Kmalloc and variants normally produce a
> backtrace in such a case. Hence, a print statement is not necessary.
>
> Found using the following Coccinelle semantic patch:
>
> @@
> identifier i;
> @@
>
> i = (\(kmalloc\|devm_kzalloc\|kmalloc_array\|
> devm_ioremap\|usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\|
> kzalloc\|kcalloc\|kmem_cache_alloc\|kmem_cache_zalloc\|
>    kmem_cache_alloc_node\|kmalloc_node\|kzalloc_node\)(...));
> (
> if (i == NULL)
> {
> -\(DBG_8723A\|printk\|pr_err\|CERROR\|DBG_88E\)(...);

In general, you don't really know what the possible printing functions
could be.  But most would have a string argument.  So you can say:

@@
identifier print;
constant char [] c;
@@

print(...,c,...);

to match a print function.  Of course it is a bit less safe, because other
functions may have a string argument.  But it is not so likely in error
handling code.  And if you get false positives, ie reports that are
incorrect, you can just ignore them.  There should not be a large number.

> ...when any
> }
> |
> if (!i)
> {
> -\(DBG_8723A\|printk\|pr_err\|CERROR\|DBG_88E\)(...);
> ...when any
> }
> )
>
> @@
> identifier i;
> @@
> (
> - if (i == NULL) {
> + if (i == NULL)
>        return ...;
> - }
> |
> - if (!i) {
> + if (!i)
>        return ...;
> - }
> )
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>  drivers/staging/speakup/spk_ttyio.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/speakup/spk_ttyio.c b/drivers/staging/speakup/spk_ttyio.c
> index 4d7d8f2..a6330e2 100644
> --- a/drivers/staging/speakup/spk_ttyio.c
> +++ b/drivers/staging/speakup/spk_ttyio.c
> @@ -51,10 +51,8 @@ static int spk_ttyio_ldisc_open(struct tty_struct *tty)
>  	speakup_tty = tty;
>
>  	ldisc_data = kmalloc(sizeof(struct spk_ldisc_data), GFP_KERNEL);
> -	if (!ldisc_data) {
> -		pr_err("speakup: Failed to allocate ldisc_data.\n");
> +	if (!ldisc_data)
>  		return -ENOMEM;
> -	}
>
>  	sema_init(&ldisc_data->sem, 0);
>  	ldisc_data->buf_free = true;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170916050400.GA31327%40meghana-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

