X-GM-THRID: 6390415872559677440
X-Received: by 10.25.223.67 with SMTP id q3mr138262lfj.0.1487917035363;
        Thu, 23 Feb 2017 22:17:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.154.9 with SMTP id c9ls369928lfe.28.gmail; Thu, 23 Feb 2017
 22:17:14 -0800 (PST)
X-Received: by 10.25.79.23 with SMTP id d23mr125324lfb.27.1487917034433;
        Thu, 23 Feb 2017 22:17:14 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y19si65215wmd.0.2017.02.23.22.17.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 22:17:14 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,200,1484002800"; 
   d="scan'208";a="261882634"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Feb 2017 07:17:13 +0100
Date: Fri, 24 Feb 2017 07:17:13 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sreya Mittal <sreyamittal5@gmail.com>
cc: outreachy-kernel@googlegroups.com, William Hubbs <w.d.hubbs@gmail.com>, 
    Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>, 
    Samuel Thibault <samuel.thibault@ens-lyon.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v4] staging: speakup: Clean up if
 tests
In-Reply-To: <20170223220800.al7uozdiwezmni3x@stayawesome>
Message-ID: <alpine.DEB.2.20.1702240716160.2095@hadrien>
References: <20170223220800.al7uozdiwezmni3x@stayawesome>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 24 Feb 2017, Sreya Mittal wrote:

> Put logical continuations on the next line, remove useless parentheses and line up the tests.
>
> Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
> ---
>
> Changes since v3:
> *Line up the tests
>
>  drivers/staging/speakup/i18n.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
> index 2f9b3df..73645bf 100644
> --- a/drivers/staging/speakup/i18n.c
> +++ b/drivers/staging/speakup/i18n.c
> @@ -411,8 +411,8 @@ static char *next_specifier(char *input)
>  		next_percent = strchr(next_percent, '%');
>  		if (next_percent != NULL) {
>  			/* skip over doubled percent signs */
> -			while ((next_percent[0] == '%')
> -			       && (next_percent[1] == '%'))
> +			while (next_percent[0] == '%' &&
> +			       next_percent[1] == '%')
>  				next_percent += 2;
>  			if (*next_percent == '%')
>  				found = 1;
> @@ -549,10 +549,10 @@ ssize_t spk_msg_set(enum msg_index_t index, char *text, size_t length)
>  		if (newstr) {
>  			memcpy(newstr, text, length);
>  			newstr[length] = '\0';
> -			if ((index >= MSG_FORMATTED_START
> -			&& index <= MSG_FORMATTED_END)
> -				&& !fmt_validate(speakup_default_msgs[index],
> -				newstr)) {
> +			if (index >= MSG_FORMATTED_START &&
> +			    index <= MSG_FORMATTED_END &&
> +			    !fmt_validate(speakup_default_msgs[index],
> +			    newstr)) {

I see that the argument newstr still doesn't fit up on the same line as
the function call, but it should be lined up with the right side of the (,
so that one can see that it is part of the argument list, and not another
test.

julia

>  				kfree(newstr);
>  				return -EINVAL;
>  			}
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170223220800.al7uozdiwezmni3x%40stayawesome.
> For more options, visit https://groups.google.com/d/optout.
>

