X-GM-THRID: 6330117409963245568
X-Received: by 10.25.206.200 with SMTP id e191mr311681lfg.3.1473845606645;
        Wed, 14 Sep 2016 02:33:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.215.39 with SMTP id o39ls26945lfg.25.gmail; Wed, 14 Sep
 2016 02:33:25 -0700 (PDT)
X-Received: by 10.25.206.200 with SMTP id e191mr311671lfg.3.1473845605948;
        Wed, 14 Sep 2016 02:33:25 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e21si236927wmc.2.2016.09.14.02.33.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 02:33:25 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,333,1470693600"; 
   d="scan'208";a="193088243"
Received: from unknown (HELO hadrien.local) ([128.93.86.88])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Sep 2016 11:33:25 +0200
Date: Wed, 14 Sep 2016 11:33:14 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: speakup: i18n: Use x instead
 of x != NULL.
In-Reply-To: <20160914092903.GA2663@sandhya>
Message-ID: <alpine.DEB.2.10.1609141131530.3161@hadrien>
References: <20160914092903.GA2663@sandhya>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 14 Sep 2016, Sandhya Bankar wrote:

> Use x instead of x != NULL.
> The patch removes the explicit NULL comparisons.This patch is detected by checkpatch.pl.

Please always put at least one space after the end of a sentence, if i is
followed by another one.

>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/speakup/i18n.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
> index 8960079..41b56d6 100644
> --- a/drivers/staging/speakup/i18n.c
> +++ b/drivers/staging/speakup/i18n.c
> @@ -407,9 +407,9 @@ static char *next_specifier(char *input)
>  	int found = 0;
>  	char *next_percent = input;
>
> -	while ((next_percent != NULL) && !found) {
> +	while ((next_percent) && !found) {

You could really drop the parentheses at the same time.  They were not
necessary before, but they are even less necessary when only a single
variable is involved.

julia

>  		next_percent = strchr(next_percent, '%');
> -		if (next_percent != NULL) {
> +		if (next_percent) {
>  			/* skip over doubled percent signs */
>  			while ((next_percent[0] == '%')
>  			       && (next_percent[1] == '%'))
> --
> 1.8.2.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160914092903.GA2663%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
>

