X-GM-THRID: 6675368060251013120
X-Received: by 2002:a1c:e90f:: with SMTP id q15mr731458wmc.2.1554231250292;
        Tue, 02 Apr 2019 11:54:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:5582:: with SMTP id i2ls2021485wrv.1.gmail; Tue, 02 Apr
 2019 11:54:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyR6kcVuk0cFaqZEVlMiQmbrWgy6L+r9gzo8qtuTnmGSobVYJuZVd0VLiEZ0IkcGXL+MWBL
X-Received: by 2002:a5d:4211:: with SMTP id n17mr1716680wrq.3.1554231249453;
        Tue, 02 Apr 2019 11:54:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554231249; cv=none;
        d=google.com; s=arc-20160816;
        b=oA7Jt32HthP0gtj/pE0VaDArZO5f8+F93UMUnr+wmmPEN6s/jsQip0p41ZL1WNhoMD
         VTH7jK4OhfTl0J8/GKDAuZz8EsGoxQ/eQVXrK/nkFjDXlPLbxUAGjv0HXry/aaqW0N5V
         tL2TDaBGSN16eYtjmD8KkaT/ASK8rmOqDbLHD9KxiGG19ZG6bjReSpJtTbDmAqwlmsBw
         WKSXhgPPKjsgk8CTOmw/l56pfbCcASHEikLSJXd3NpKicKYhsQhNYLNVuOnEQGIUMnhV
         QPepcE6POO65NStBOaMrXtxa3P+CaSJUwK0U+zu6tPgBovmazt7KDCSUr9cX+T1s0tPq
         D3hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=rslJsl8dJjVSdCoXcdJYC8OZCWnalNgi5WNpxfSX5Qc=;
        b=flH0a7dJB3UZbh6oX1sbIxqO1XG7bU/vW+aHA5yJeXa2Tn0vYxnVsz5vgnv4h1czTs
         CkDekS03w34C2aG4NRmnlUOGgtVaB9td/w0v+LhfER8Phzf8eOlqGbpBZZa5/AUghAUc
         w1A8ln4jSlRGPXSYUTVcqrwyT14Q+RG1GpXgcjHhhG4UEBz7tUPPJVV+MUqF+Pn5H4rz
         l3DyknaE9SKrCIZ6QMvwCTT00lbywwD+ULa8V7V7A0m3uDWSK/FU05GUd76L6SABudSK
         maHSdsQ764EjE+2mAYtLaYtef4WOEJjsWJpJjEWDL+46fZ9W1mYX7+PBARaQGSMW+vle
         XMIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id g15si110247wmg.1.2019.04.02.11.54.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 11:54:09 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,301,1549926000"; 
   d="scan'208";a="301574200"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Apr 2019 20:54:08 +0200
Date: Tue, 2 Apr 2019 20:54:08 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: rspringer@google.com, toddpoynor@google.com, benchan@chromium.org, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: gasket: Use DIV_ROUND_UP
In-Reply-To: <20190402183717.10357-1-madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1904022053420.2481@hadrien>
References: <20190402183717.10357-1-madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 2 Apr 2019, Madhumitha Prabakaran wrote:

> Use DIV_ROUND_UP in-kernel function to make code simple and efficient.

I doubt that the code is more efficient.  One could say that it is more
understandable.

julia

>
> Issue found using Coccinelle.
>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/gasket/gasket_page_table.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/gasket/gasket_page_table.c b/drivers/staging/gasket/gasket_page_table.c
> index 26755d9ca41d..600928f63577 100644
> --- a/drivers/staging/gasket/gasket_page_table.c
> +++ b/drivers/staging/gasket/gasket_page_table.c
> @@ -768,8 +768,7 @@ static bool gasket_is_extended_dev_addr_bad(struct gasket_page_table *pg_tbl,
>  	page_lvl0_idx = gasket_extended_lvl0_page_idx(pg_tbl, dev_addr);
>
>  	/* Get the count of affected level 0 pages. */
> -	num_lvl0_pages = (num_pages + GASKET_PAGES_PER_SUBTABLE - 1) /
> -		GASKET_PAGES_PER_SUBTABLE;
> +	num_lvl0_pages = DIV_ROUND_UP(num_pages, GASKET_PAGES_PER_SUBTABLE);
>
>  	if (gasket_components_to_dev_address(pg_tbl, 0, page_global_idx,
>  					     page_offset) != dev_addr) {
> @@ -1258,7 +1257,7 @@ int gasket_alloc_coherent_memory(struct gasket_dev *gasket_dev, u64 size,
>  	dma_addr_t handle;
>  	void *mem;
>  	int j;
> -	unsigned int num_pages = (size + PAGE_SIZE - 1) / PAGE_SIZE;
> +	unsigned int num_pages = DIV_ROUND_UP(size, PAGE_SIZE);
>  	const struct gasket_driver_desc *driver_desc =
>  		gasket_get_driver_desc(gasket_dev);
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190402183717.10357-1-madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

