X-GM-THRID: 6529011739100446720
X-Received: by 10.46.44.4 with SMTP id s4mr746693ljs.40.1520170792201;
        Sun, 04 Mar 2018 05:39:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.129.207 with SMTP id s15ls1411436ljg.10.gmail; Sun, 04 Mar
 2018 05:39:50 -0800 (PST)
X-Google-Smtp-Source: AG47ELsC+ynXmQvsuoEd8dFKBkZcTzokN2/qc39Dm0fP//xtXfO11NIFqgaeD80qR0GF6JAHniF5
X-Received: by 10.46.36.2 with SMTP id k2mr750624ljk.2.1520170790646;
        Sun, 04 Mar 2018 05:39:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520170790; cv=none;
        d=google.com; s=arc-20160816;
        b=rk9AC9QZcl3Ux/H817EmoBWJgAg5yJAQUr22ZKl+57xdfd2f8oAh8on4JQjQ8AeNA+
         Gs3p6gAn76qTZ5KOOcKYHveL0yMVizgN+yF9BNR+5KOIo1zoKQlKiStWo0m253mQ23dL
         dpK7N5PYpkekwikNZ1NcupYMKBQTO+gfgaofmn+mwmP2Yx41kQdl2BaDMwiec5T82Rzn
         AWmVFQJM4Dtltu26BJKy+M2A8CHRkQbmeIv+8OyCKAVaGVpWmdqXKfCZ217YHkmwHT+b
         VvkiRx1RndtOl3ihuXXTXhNnio6RAufnq5xuRKw7HkYygsYlvvZwCjbngwZSjjfskiK6
         t2Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=zY5JhxLFYZZqb/10mPC0xbrL5I+smqCxB4UFoRbewQg=;
        b=QNXEWi8i5EEebo+gnC5w7ADpQBkVE5kV26dkQXbwKwYKyXWOaYWqxXf3+2YiuU5rfH
         4U+feao9LbQbekTgrLxBUKTmKuyp0i0dIQVTY+WHE1bumVCrSt1okjlNHd9zH3zgR5VL
         dGNvr3TQTPdVHW2Fcf1qNLMKJ7tpnKqpzxzkOFNbWSHKdOcvSBxxu/x0PWiveIYgyB52
         qR6ijZyHaHbe3eQnDHSJ43o+zSS53h1MjXgSd/mwkc4/cUF/yfMpajPz1GjtJocYG8st
         /lrFOrCdyzZ5dwEoI/0TC9WPs3Koi0SEp3hd9U/N7vYyPt9/mJHDfITJFjqsWxFRXaXX
         rLIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id w7si409184lfc.2.2018.03.04.05.39.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 05:39:50 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (mobile-107-107-185-51.mycingular.net [107.107.185.51])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 12D951078;
	Sun,  4 Mar 2018 13:39:45 +0000 (UTC)
Date: Sun, 4 Mar 2018 14:29:01 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: ipx: Replace printk() with appropriate pr_*()
 macro
Message-ID: <20180304132901.GA4222@kroah.com>
References: <20180304085935.GA20591@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180304085935.GA20591@seema-Inspiron-15-3567>
User-Agent: Mutt/1.9.3 (2018-01-21)

On Sun, Mar 04, 2018 at 02:29:35PM +0530, Arushi Singhal wrote:
> Using pr_<loglevel>() is more concise than printk(KERN_<LOGLEVEL>).
> Replace printks having a log level with the appropriate pr_*() macros.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/ipx/af_ipx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/ipx/af_ipx.c b/drivers/staging/ipx/af_ipx.c
> index d21a9d1..27f4461 100644
> --- a/drivers/staging/ipx/af_ipx.c
> +++ b/drivers/staging/ipx/af_ipx.c
> @@ -744,7 +744,7 @@ static void ipxitf_discover_netnum(struct ipx_interface *intrfc,
>  			intrfc->if_netnum = cb->ipx_source_net;
>  			ipxitf_add_local_route(intrfc);
>  		} else {
> -			printk(KERN_WARNING "IPX: Network number collision "
> +			pr_warn("IPX: Network number collision "

It is a driver, so it would be best to use dev_warn() or even better
yet, net_warn().  Please try to make that change instead.

thanks,

greg k-h

