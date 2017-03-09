X-GM-THRID: 6395412283312308224
X-Received: by 10.25.212.76 with SMTP id l73mr2085694lfg.13.1489092236825;
        Thu, 09 Mar 2017 12:43:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.137 with SMTP id f9ls836626lji.7.gmail; Thu, 09 Mar 2017
 12:43:56 -0800 (PST)
X-Received: by 10.46.7.80 with SMTP id i16mr2467455ljd.5.1489092236224;
        Thu, 09 Mar 2017 12:43:56 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l138si8350wmg.0.2017.03.09.12.43.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 12:43:56 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,137,1486422000"; 
   d="scan'208";a="263926087"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2017 21:43:55 +0100
Date: Thu, 9 Mar 2017 21:43:55 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca, 
    samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] staging: speakup: i18n: Change
 return type from int to bool
In-Reply-To: <02ddf8f1b64cf7b893b462042c5c4a78116a645b.1489088501.git.narcisaanamaria12@gmail.com>
Message-ID: <alpine.DEB.2.20.1703092143210.2306@hadrien>
References: <cover.1489047172.git.narcisaanamaria12@gmail.com> <cover.1489088501.git.narcisaanamaria12@gmail.com> <02ddf8f1b64cf7b893b462042c5c4a78116a645b.1489088501.git.narcisaanamaria12@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 9 Mar 2017, Narcisa Ana Maria Vasile wrote:

> The possible return values (0 or 1) for compare_specifiers
> and fmt_validate represent whether a condition holds or not, so
> conceptually, they are booleans.
>
> Update documentation for these two functions.
>
> Change type of variable 'still_comparing' from int to bool too,
> inside fmt_validate, because it is intended to hold truth values
> of logic as well.
>
> Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> ---
>  drivers/staging/speakup/i18n.c | 23 ++++++++++++-----------
>  1 file changed, 12 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
> index ac1ebea..522d719 100644
> --- a/drivers/staging/speakup/i18n.c
> +++ b/drivers/staging/speakup/i18n.c
> @@ -476,19 +476,20 @@ static char *find_specifier_end(char *input)
>  /*
>   * Function: compare_specifiers
>   * Compare the format specifiers pointed to by *input1 and *input2.
> - * Return 1 if they are the same, 0 otherwise.  Advance *input1 and *input2
> - * so that they point to the character following the end of the specifier.
> + * Return true if they are the same, false otherwise.
> + * Advance *input1 and *input2 so that they point to the character following
> + * the end of the specifier.
>   */
> -static int compare_specifiers(char **input1, char **input2)
> +static bool compare_specifiers(char **input1, char **input2)
>  {
> -	int same = 0;
> +	bool same = false;
>  	char *end1 = find_specifier_end(*input1);
>  	char *end2 = find_specifier_end(*input2);
>  	size_t length1 = end1 - *input1;
>  	size_t length2 = end2 - *input2;
>
>  	if ((length1 == length2) && !memcmp(*input1, *input2, length1))
> -		same = 1;
> +		same = true;
>
>  	*input1 = end1;
>  	*input2 = end2;
> @@ -499,12 +500,12 @@ static int compare_specifiers(char **input1, char **input2)
>   * Function: fmt_validate
>   * Check that two format strings contain the same number of format specifiers,
>   * and that the order of specifiers is the same in both strings.
> - * Return 1 if the condition holds, 0 if it doesn't.
> + * Return true if the condition holds, false if it doesn't.
>   */
> -static int fmt_validate(char *template, char *user)
> +static bool fmt_validate(char *template, char *user)
>  {
> -	int valid = 1;
> -	int still_comparing = 1;
> +	bool valid = 1;
> +	bool still_comparing = 1;

These should be true, not 1.

julia

>  	char *template_ptr = template;
>  	char *user_ptr = user;
>
> @@ -516,10 +517,10 @@ static int fmt_validate(char *template, char *user)
>  			valid = compare_specifiers(&template_ptr, &user_ptr);
>  		} else {
>  			/* No more format specifiers in one or both strings. */
> -			still_comparing = 0;
> +			still_comparing = false;
>  			/* See if one has more specifiers than the other. */
>  			if (template_ptr || user_ptr)
> -				valid = 0;
> +				valid = false;
>  		}
>  	}
>  	return valid;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/02ddf8f1b64cf7b893b462042c5c4a78116a645b.1489088501.git.narcisaanamaria12%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

