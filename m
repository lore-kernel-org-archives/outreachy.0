X-GM-THRID: 6393343309495926784
X-Received: by 10.46.21.11 with SMTP id s11mr748576ljd.23.1488566719420;
        Fri, 03 Mar 2017 10:45:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.198 with SMTP id s189ls1123182lja.6.gmail; Fri, 03 Mar
 2017 10:45:18 -0800 (PST)
X-Received: by 10.25.145.17 with SMTP id t17mr663796lfd.23.1488566718952;
        Fri, 03 Mar 2017 10:45:18 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h62si210478wme.2.2017.03.03.10.45.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 10:45:18 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,238,1484002800"; 
   d="scan'208";a="215504461"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2017 19:45:17 +0100
Date: Fri, 3 Mar 2017 19:45:17 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: w.d.hubbs@gmail.com, chris@the-brannons.com, 
    outreachy-kernel@googlegroups.com, kirk@reisers.ca, 
    samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org, 
    speakup@linux-speakup.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 2/6] staging: speakup: simple_strtoul
 is replaced with kstrtoul
In-Reply-To: <20170303183707.14830-3-arushisinghal19971997@gmail.com>
Message-ID: <alpine.DEB.2.20.1703031944310.2133@hadrien>
References: <20170303183707.14830-1-arushisinghal19971997@gmail.com> <20170303183707.14830-3-arushisinghal19971997@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 4 Mar 2017, Arushi Singhal wrote:

> This patch fixes "simple_strtoul is obsolete, use kstrtoul instead"
> warning.
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/speakup/kobjects.c    | 4 ++--
>  drivers/staging/speakup/main.c        | 2 +-
>  drivers/staging/speakup/varhandlers.c | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
> index edde9e68779e..a82698c66568 100644
> --- a/drivers/staging/speakup/kobjects.c
> +++ b/drivers/staging/speakup/kobjects.c
> @@ -152,7 +152,7 @@ static ssize_t chars_chartab_store(struct kobject *kobj,
>  			continue;
>  		}
>
> -		index = simple_strtoul(cp, &temp, 10);
> +		index = kstrtoul(cp, &temp, 10);

It seems unlikely that you actually compiled this code.  The argument list
for kstrtoul has a completely different set of types.

julia

>  		if (index > 255) {
>  			rejected++;
>  			cp = linefeed + 1;
> @@ -785,7 +785,7 @@ static ssize_t message_store_helper(const char *buf, size_t count,
>  			continue;
>  		}
>
> -		index = simple_strtoul(cp, &temp, 10);
> +		index = kstrtoul(cp, &temp, 10);
>
>  		while ((temp < linefeed) && (*temp == ' ' || *temp == '\t'))
>  			temp++;
> diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> index 17df20ec94be..b43e2e156602 100644
> --- a/drivers/staging/speakup/main.c
> +++ b/drivers/staging/speakup/main.c
> @@ -1945,7 +1945,7 @@ static int handle_goto(struct vc_data *vc, u_char type, u_char ch, u_short key)
>  		return 1;
>  	}
>
> -	goto_pos = simple_strtoul(goto_buf, &cp, 10);
> +	goto_pos = kstrtoul(goto_buf, &cp, 10);
>
>  	if (*cp == 'x') {
>  		if (*goto_buf < '0')
> diff --git a/drivers/staging/speakup/varhandlers.c b/drivers/staging/speakup/varhandlers.c
> index cc984196020f..5107533bb45a 100644
> --- a/drivers/staging/speakup/varhandlers.c
> +++ b/drivers/staging/speakup/varhandlers.c
> @@ -325,7 +325,7 @@ char *spk_s2uchar(char *start, char *dest)
>  {
>  	int val;
>
> -	val = simple_strtoul(skip_spaces(start), &start, 10);
> +	val = kstrtoul(skip_spaces(start), &start, 10);
>  	if (*start == ',')
>  		start++;
>  	*dest = (u_char)val;
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170303183707.14830-3-arushisinghal19971997%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

