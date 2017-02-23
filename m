X-GM-THRID: 6390370583469621248
X-Received: by 10.46.87.80 with SMTP id r16mr454228ljd.16.1487880070868;
        Thu, 23 Feb 2017 12:01:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.76.9 with SMTP id z9ls172335lja.26.gmail; Thu, 23 Feb 2017
 12:01:09 -0800 (PST)
X-Received: by 10.46.6.26 with SMTP id 26mr4058424ljg.31.1487880069752;
        Thu, 23 Feb 2017 12:01:09 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 14si478190wmn.2.2017.02.23.12.01.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 12:01:09 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,198,1484002800"; 
   d="scan'208";a="214526328"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Feb 2017 21:01:08 +0100
Date: Thu, 23 Feb 2017 21:01:08 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sreya Mittal <sreyamittal5@gmail.com>
cc: outreachy-kernel@googlegroups.com, w.d.hubbs@gmail.com, 
    chris@the-brannons.com, kirk@reisers.ca, samuel.thibault@ens-lyon.org, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Keep logical
 continuations on the previous line
In-Reply-To: <20170223182127.g6wkeeyemafeow2k@stayawesome>
Message-ID: <alpine.DEB.2.20.1702232058280.2103@hadrien>
References: <20170223182127.g6wkeeyemafeow2k@stayawesome>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 23 Feb 2017, Sreya Mittal wrote:

> Logical continuations (&&) are on the next line where a line has been broken up because of being longer than 80 characters. It was found by checkpatch. Keep logical continuations on the previous line.

The above line is too long.  Your commit message lines should be at most
70-75 characters.

Also the commit message should be in the imperative. So you could say
something like "Put logical continuations on the next line".

>
> Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
> ---
>  drivers/staging/speakup/i18n.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
> index 2f9b3df..c539825 100644
> --- a/drivers/staging/speakup/i18n.c
> +++ b/drivers/staging/speakup/i18n.c
> @@ -411,8 +411,8 @@ static char *next_specifier(char *input)
>  		next_percent = strchr(next_percent, '%');
>  		if (next_percent != NULL) {
>  			/* skip over doubled percent signs */
> -			while ((next_percent[0] == '%')
> -			       && (next_percent[1] == '%'))
> +			while ((next_percent[0] == '%') &&
> +				(next_percent[1] == '%'))

I think that you could remove the unnecessary parentheses at the same
time.  And line up the tests if they are not already lined up.

julia

>  				next_percent += 2;
>  			if (*next_percent == '%')
>  				found = 1;
> @@ -549,9 +549,9 @@ ssize_t spk_msg_set(enum msg_index_t index, char *text, size_t length)
>  		if (newstr) {
>  			memcpy(newstr, text, length);
>  			newstr[length] = '\0';
> -			if ((index >= MSG_FORMATTED_START
> -			&& index <= MSG_FORMATTED_END)
> -				&& !fmt_validate(speakup_default_msgs[index],
> +			if ((index >= MSG_FORMATTED_START &&
> +				index <= MSG_FORMATTED_END) &&
> +				!fmt_validate(speakup_default_msgs[index],
>  				newstr)) {
>  				kfree(newstr);
>  				return -EINVAL;
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170223182127.g6wkeeyemafeow2k%40stayawesome.
> For more options, visit https://groups.google.com/d/optout.
>

