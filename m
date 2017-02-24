X-GM-THRID: 6390415872559677440
X-Received: by 10.25.205.129 with SMTP id d123mr469830lfg.20.1487953609399;
        Fri, 24 Feb 2017 08:26:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.18.225 with SMTP id 94ls122094lfs.32.gmail; Fri, 24 Feb
 2017 08:26:48 -0800 (PST)
X-Received: by 10.46.84.13 with SMTP id i13mr411574ljb.2.1487953608496;
        Fri, 24 Feb 2017 08:26:48 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v201si145637wmv.3.2017.02.24.08.26.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 08:26:48 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,201,1484002800"; 
   d="scan'208";a="261977407"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Feb 2017 17:26:48 +0100
Date: Fri, 24 Feb 2017 17:26:41 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sreya Mittal <sreyamittal5@gmail.com>
cc: outreachy-kernel@googlegroups.com, William Hubbs <w.d.hubbs@gmail.com>, 
    Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>, 
    Samuel Thibault <samuel.thibault@ens-lyon.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v6] staging: speakup: Clean up if
 tests
In-Reply-To: <20170224160014.did4hrxkmmbfatbu@stayawesome>
Message-ID: <alpine.DEB.2.20.1702241726250.3089@hadrien>
References: <20170224160014.did4hrxkmmbfatbu@stayawesome>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 24 Feb 2017, Sreya Mittal wrote:

> Put logical continuations on the next line;
> remove useless parentheses;
> and line up the tests.
>
> Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>
> Changes since v5:
> * Put newline to break up the commit log message
>
>  drivers/staging/speakup/i18n.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
> index 2f9b3df..4514776 100644
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
> +			                  newstr)) {
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170224160014.did4hrxkmmbfatbu%40stayawesome.
> For more options, visit https://groups.google.com/d/optout.
>

