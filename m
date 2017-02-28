X-GM-THRID: 6391810462293426176
X-Received: by 10.98.85.67 with SMTP id j64mr206454pfb.33.1488270088321;
        Tue, 28 Feb 2017 00:21:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.59.194 with SMTP id k60ls503286otc.22.gmail; Tue, 28 Feb
 2017 00:21:27 -0800 (PST)
X-Received: by 10.13.207.66 with SMTP id r63mr314960ywd.21.1488270087894;
        Tue, 28 Feb 2017 00:21:27 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id c123si192006pfa.4.2017.02.28.00.21.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 00:21:27 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [37.164.217.185])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2AF50826;
	Tue, 28 Feb 2017 08:21:27 +0000 (UTC)
Date: Tue, 28 Feb 2017 09:21:17 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sreya Mittal <sreyamittal5@gmail.com>
Cc: outreachy-kernel@googlegroups.com, William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>
Subject: Re: [PATCH 1/2 v4] staging: speakup: Clean up parentheses
Message-ID: <20170228082117.GA1584@kroah.com>
References: <20170228064042.30034-1-sreyamittal5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170228064042.30034-1-sreyamittal5@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Tue, Feb 28, 2017 at 12:10:42PM +0530, Sreya Mittal wrote:
> Align next line of print statements
> to the right of open parentheses and
> remove extra parentheses.
> 
> Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
> ---
> 
> No changes from previous patch.
> 
>  drivers/staging/speakup/keyhelp.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
> index ce94cb1..c373762 100644
> --- a/drivers/staging/speakup/keyhelp.c
> +++ b/drivers/staging/speakup/keyhelp.c
> @@ -115,9 +115,9 @@ static void say_key(int key)
>  		if (state & masks[i])
>  			synth_printf(" %s", spk_msg_get(MSG_STATES_START + i));
>  	}
> -	if ((key > 0) && (key <= num_key_names))
> +	if (key > 0 && key <= num_key_names)

Why are these "extra"?  They make sense to keep to me, they make it more
obvious to the reader what is going on here.

>  		synth_printf(" %s\n",
> -				spk_msg_get(MSG_KEYNAMES_START + (key - 1)));
> +			     spk_msg_get(MSG_KEYNAMES_START + (key - 1)));

This is a different type of change than the one above, so it should be
in a separate patch.  Rememeber, only do one "type" of thing per patch.

>  static int help_init(void)
> @@ -164,7 +164,7 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
>  		cur_item = letter_offsets[ch - 'a'];
>  	} else if (type == KT_CUR) {
>  		if (ch == 0
> -		    && (MSG_FUNCNAMES_START + cur_item + 1) <=
> +		    && MSG_FUNCNAMES_START + cur_item + 1 <=
>  		    MSG_FUNCNAMES_END)

Again, ick, no.

Really, the statement should look like:
 		if (ch == 0 &&
		    (MSG_FUNCNAMES_START + cur_item + 1) <= MSG_FUNCNAMES_END)

which is much more readable by a person, don't you think?

thanks,

greg k-h

