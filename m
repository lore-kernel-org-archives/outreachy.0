X-GM-THRID: 6395412283312308224
X-Received: by 10.46.20.16 with SMTP id u16mr922448ljd.23.1489049926267;
        Thu, 09 Mar 2017 00:58:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.87.14 with SMTP id l14ls635454ljb.38.gmail; Thu, 09 Mar
 2017 00:58:45 -0800 (PST)
X-Received: by 10.46.19.1 with SMTP id 1mr2058442ljt.4.1489049925777;
        Thu, 09 Mar 2017 00:58:45 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i76si899810wmh.1.2017.03.09.00.58.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 00:58:45 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,268,1486422000"; 
   d="scan'208";a="216116206"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2017 09:58:45 +0100
Date: Thu, 9 Mar 2017 09:58:32 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca, 
    samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: speakup: i18n: Change
 return value
In-Reply-To: <9214e6265b0f7d95ac905107fa1b69b3645f78b1.1489047172.git.narcisaanamaria12@gmail.com>
Message-ID: <alpine.DEB.2.20.1703090957020.3186@hadrien>
References: <cover.1489047172.git.narcisaanamaria12@gmail.com> <9214e6265b0f7d95ac905107fa1b69b3645f78b1.1489047172.git.narcisaanamaria12@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 9 Mar 2017, Narcisa Ana Maria Vasile wrote:

> Change return value from int to bool in compare_specifiers
> and fmt_validate functions. The possible return values (0 or 1)
> for these functions represent whether a condition holds or not, so
> conceptually, they are booleans.
>
> Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> ---
>  drivers/staging/speakup/i18n.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
> index 1a3e348..00ffa4e 100644
> --- a/drivers/staging/speakup/i18n.c
> +++ b/drivers/staging/speakup/i18n.c
> @@ -479,16 +479,16 @@ static char *find_specifier_end(char *input)
>   * Return 1 if they are the same, 0 otherwise.  Advance *input1 and *input2
>   * so that they point to the character following the end of the specifier.
>   */

You need to update the documentation, for this function and the next one.

julia

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
> @@ -501,10 +501,10 @@ static int compare_specifiers(char **input1, char **input2)
>   * and that the order of specifiers is the same in both strings.
>   * Return 1 if the condition holds, 0 if it doesn't.
>   */
> -static int fmt_validate(char *template, char *user)
> +static bool fmt_validate(char *template, char *user)
>  {
> -	int valid = 1;
> -	int still_comparing = 1;
> +	bool valid = true;
> +	bool still_comparing = true;
>  	char *template_ptr = template;
>  	char *user_ptr = user;
>
> @@ -516,10 +516,10 @@ static int fmt_validate(char *template, char *user)
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/9214e6265b0f7d95ac905107fa1b69b3645f78b1.1489047172.git.narcisaanamaria12%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

