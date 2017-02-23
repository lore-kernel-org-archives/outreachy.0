X-GM-THRID: 6390410842112786432
X-Received: by 10.223.146.230 with SMTP id 93mr862214wrn.16.1487883870513;
        Thu, 23 Feb 2017 13:04:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.20.223 with SMTP id 92ls295128lfu.33.gmail; Thu, 23 Feb
 2017 13:04:29 -0800 (PST)
X-Received: by 10.46.20.72 with SMTP id 8mr4311370lju.19.1487883869583;
        Thu, 23 Feb 2017 13:04:29 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f7si585206wmg.3.2017.02.23.13.04.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 13:04:29 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,198,1484002800"; 
   d="scan'208";a="214529755"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Feb 2017 22:04:28 +0100
Date: Thu, 23 Feb 2017 22:04:28 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sreya Mittal <sreyamittal5@gmail.com>
cc: outreachy-kernel@googlegroups.com, w.d.hubbs@gmail.com, 
    chris@the-brannons.com, kirk@reisers.ca, samuel.thibault@ens-lyon.org, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: speakup: Put logical
 continuations on the next line and remove useless parentheses
In-Reply-To: <20170223205739.bogznf7diy26ew2t@stayawesome>
Message-ID: <alpine.DEB.2.20.1702232200230.2103@hadrien>
References: <20170223205739.bogznf7diy26ew2t@stayawesome>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 24 Feb 2017, Sreya Mittal wrote:

> Put logical continuations on the next line and remove useless parentheses.
> Found by checkpatch.pl

You have the same comment in the subject line and the commit message.
For the subject line, it is better to be shorter - you want to give the
idea quickly.  I'm actually going to make yet another suggestion on this
code, so the subject line could be just "clean up if tests".  The in the
log message you can put the details about the cleanups you did.

>
> Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
> ---
>  drivers/staging/speakup/i18n.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
> index 2f9b3df..b9698bf 100644
> --- a/drivers/staging/speakup/i18n.c
> +++ b/drivers/staging/speakup/i18n.c
> @@ -411,8 +411,8 @@ static char *next_specifier(char *input)
>  		next_percent = strchr(next_percent, '%');
>  		if (next_percent != NULL) {
>  			/* skip over doubled percent signs */
> -			while ((next_percent[0] == '%')
> -			       && (next_percent[1] == '%'))
> +			while (next_percent[0] == '%' &&
> +				next_percent[1] == '%')

It would be good to line up the second line of the while with the right
side of the ( in the first line.  Then there would be a small difference
between the while test and the code in the loop body.

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
> +			if (index >= MSG_FORMATTED_START &&
> +				index <= MSG_FORMATTED_END &&
> +				!fmt_validate(speakup_default_msgs[index],
>  				newstr)) {

You can make the same alignment change here.  It is very useful to be
ableto quicky see the difference between the if test and the then branch.
Currently they are indented the same, so they all run together.  And if
you move the continuation lines of the if test to the left, then maybe you
can get the whole fmt_validate callon one line.

julia

>  				kfree(newstr);
>  				return -EINVAL;
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170223205739.bogznf7diy26ew2t%40stayawesome.
> For more options, visit https://groups.google.com/d/optout.
>

