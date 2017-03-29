X-GM-THRID: 6402914629157126144
X-Received: by 10.223.163.206 with SMTP id m14mr43197wrb.15.1490796999811;
        Wed, 29 Mar 2017 07:16:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.33.207 with SMTP id h76ls105392lji.9.gmail; Wed, 29 Mar
 2017 07:16:38 -0700 (PDT)
X-Received: by 10.25.145.17 with SMTP id t17mr107127lfd.25.1490796998552;
        Wed, 29 Mar 2017 07:16:38 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id t131si414775wmf.1.2017.03.29.07.16.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 07:16:38 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,241,1486422000"; 
   d="scan'208";a="218491061"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Mar 2017 16:16:36 +0200
Date: Wed, 29 Mar 2017 16:16:35 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: outreachy-kernel@googlegroups.com, Wensong Zhang <wensong@linux-vs.org>, 
    Simon Horman <horms@verge.net.au>, Julian Anastasov <ja@ssi.bg>, 
    Pablo Neira Ayuso <pablo@netfilter.org>, 
    Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>, 
    "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org, 
    lvs-devel@vger.kernel.org, netfilter-devel@vger.kernel.org, 
    coreteam@netfilter.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] net: netfilter: remove unused
 variable
In-Reply-To: <20170329133848.GA1336@arushi-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1703291616070.2989@hadrien>
References: <20170329133848.GA1336@arushi-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 29 Mar 2017, Arushi Singhal wrote:

> This patch uses the following coccinelle script to remove
> a variable that was simply used to store the return
> value of a function call before returning it:
>
> @@
> identifier len,f;
> @@
>
> -int len;
>  ... when != len
>      when strict
> -len =
> +return
>         f(...);
> -return len;
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  net/netfilter/ipvs/ip_vs_ftp.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/net/netfilter/ipvs/ip_vs_ftp.c b/net/netfilter/ipvs/ip_vs_ftp.c
> index d30c327bb578..9e1e682610ef 100644
> --- a/net/netfilter/ipvs/ip_vs_ftp.c
> +++ b/net/netfilter/ipvs/ip_vs_ftp.c
> @@ -482,11 +482,9 @@ static struct pernet_operations ip_vs_ftp_ops = {
>
>  static int __init ip_vs_ftp_init(void)
>  {
> -	int rv;
>
> -	rv = register_pernet_subsys(&ip_vs_ftp_ops);
>  	/* rcu_barrier() is called by netns on error */
> -	return rv;
> +	return register_pernet_subsys(&ip_vs_ftp_ops);

It looks like you end up with an unnecessary blank line at the beginning
of the function.

julia

>  }
>
>  /*
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170329133848.GA1336%40arushi-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

