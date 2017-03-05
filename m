X-GM-THRID: 6392947062257745920
X-Received: by 10.99.97.83 with SMTP id v80mr4599207pgb.137.1488694533215;
        Sat, 04 Mar 2017 22:15:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.34.211 with SMTP id i202ls3865803ioi.51.gmail; Sat, 04 Mar
 2017 22:15:32 -0800 (PST)
X-Received: by 10.99.163.92 with SMTP id v28mr4525511pgn.147.1488694532475;
        Sat, 04 Mar 2017 22:15:32 -0800 (PST)
Received: by 10.55.154.202 with SMTP id c193msqke;
        Sat, 4 Mar 2017 16:53:50 -0800 (PST)
X-Received: by 10.46.33.163 with SMTP id h35mr1652032lji.17.1488675230117;
        Sat, 04 Mar 2017 16:53:50 -0800 (PST)
Return-Path: <jsimmons@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:770:15f::2])
        by gmr-mx.google.com with ESMTPS id h198si641895wmg.1.2017.03.04.16.53.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 16:53:50 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of jsimmons@infradead.org designates 2001:770:15f::2 as permitted sender) client-ip=2001:770:15f::2;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org;
       spf=pass (google.com: best guess record for domain of jsimmons@infradead.org designates 2001:770:15f::2 as permitted sender) smtp.mailfrom=jsimmons@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	 bh=MNPYHjBy4iDsfYqrO+ST3q5exDxO0AlzgfcbvGGIXmM=; b=wNwxRHjeKimaD2OnN982yFIJK
	YzLjHEiDtbvjZJ9xKMFi6b2+kfWr8FeAp51qigBZWh0IXFFmiIlQerbdPzWExSIzO+N/Fx/jZG9l3
	3sHVLoxOpWx7abJ/49fFk9S7W9+GvuJaoY3t9rRZ6hlabCympG9y7j5cq7HB+yoKEX395vsNCFCZ6
	1dAJkjtSg8xsK5/PbikbSFKNALe1rt0uP7e5nBUHJ4cz/fOjrle/v0l9PNjWvPyR6n8//EzldTCcJ
	4eUyf5znp9wxuCqnNrq5POoUffZS555zr3Hx98j4G9I3Mfm+gLugJH9nHeMzLpdacIA2mfdl7Lpwl
	bAU4FYIkw==;
Received: from jsimmons (helo=localhost)
	by casper.infradead.org with local-esmtp (Exim 4.87 #1 (Red Hat Linux))
	id 1ckKQl-00032s-HZ; Sun, 05 Mar 2017 00:53:49 +0000
Date: Sun, 5 Mar 2017 00:53:47 +0000 (GMT)
From: James Simmons <jsimmons@infradead.org>
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, oleg.drokin@intel.com, 
    andreas.dilger@intel.com, gregkh@linuxfoundation.org
Subject: Re: [PATCH] staging: lustre: lnet: Constify kernel_param_ops
 structure
In-Reply-To: <1488473835-13701-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.LFD.2.20.1703050053320.10898@casper.infradead.org>
References: <1488473835-13701-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20170305_005347_607004_F7074696 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.1 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 NO_RELAYS              Informational: message was not relayed via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]


> The structure is used as an argument to module_param macro. This
> macro calls a bunch of other macros and finally assigns the instance
> of the kernel_param_ops structure to the const struct
> kernel_param_ops* field of a variable of type kernel_param. Hence,
> const can be added to the structure.
> 
> Coccinelle Script:
> 
> @r disable optional_qualifier@
> identifier i;
> position p;
> @@
> static struct kernel_param_ops i@p = { ... };
> 
> @ok1@
> identifier r.i;
> expression e;
> position p;
> @@
> e = i@p
> 
> @script:python s@
> i << r.i;
> t;
> @@
> coccinelle.t = i[10:];
> 
> @ok2@
> declarer name module_param;
> expression e1,e2;
> position p;
> @@
> module_param(e1,s.t@p,e2);
> 
> @bad@
> position p != {r.p,ok1.p,ok2.p};
> identifier r.i;
> @@
> e@i@p
> 
> @depends on !bad disable optional_qualifier@
> identifier r.i;
> @@
> static
> +const
> struct kernel_param_ops i = { ... };
> 
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>

Reviewed-by: James Simmons <jsimmons@infradead.org>

> ---
>  drivers/staging/lustre/lnet/libcfs/debug.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lnet/libcfs/debug.c b/drivers/staging/lustre/lnet/libcfs/debug.c
> index 3408041..c56e992 100644
> --- a/drivers/staging/lustre/lnet/libcfs/debug.c
> +++ b/drivers/staging/lustre/lnet/libcfs/debug.c
> @@ -80,7 +80,7 @@ static int libcfs_param_debug_mb_set(const char *val,
>   * it needs quite a bunch of extra processing, so we define special
>   * debugmb parameter type with corresponding methods to handle this case
>   */
> -static struct kernel_param_ops param_ops_debugmb = {
> +static const struct kernel_param_ops param_ops_debugmb = {
>  	.set = libcfs_param_debug_mb_set,
>  	.get = param_get_uint,
>  };
> @@ -138,7 +138,7 @@ static int param_set_console_max_delay(const char *val,
>  				      libcfs_console_min_delay, INT_MAX);
>  }
>  
> -static struct kernel_param_ops param_ops_console_max_delay = {
> +static const struct kernel_param_ops param_ops_console_max_delay = {
>  	.set = param_set_console_max_delay,
>  	.get = param_get_delay,
>  };
> @@ -156,7 +156,7 @@ static int param_set_console_min_delay(const char *val,
>  				      1, libcfs_console_max_delay);
>  }
>  
> -static struct kernel_param_ops param_ops_console_min_delay = {
> +static const struct kernel_param_ops param_ops_console_min_delay = {
>  	.set = param_set_console_min_delay,
>  	.get = param_get_delay,
>  };
> @@ -188,7 +188,7 @@ static int param_set_uintpos(const char *val, const struct kernel_param *kp)
>  	return param_set_uint_minmax(val, kp, 1, -1);
>  }
>  
> -static struct kernel_param_ops param_ops_uintpos = {
> +static const struct kernel_param_ops param_ops_uintpos = {
>  	.set = param_set_uintpos,
>  	.get = param_get_uint,
>  };
> -- 
> 2.7.4
> 
> 

