X-GM-THRID: 6390781740145704960
X-Received: by 10.99.111.143 with SMTP id k137mr368699pgc.1.1488270139439;
        Tue, 28 Feb 2017 00:22:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.13.8 with SMTP id 8ls228562ion.43.gmail; Tue, 28 Feb 2017
 00:22:18 -0800 (PST)
X-Received: by 10.99.164.9 with SMTP id c9mr377182pgf.4.1488270138773;
        Tue, 28 Feb 2017 00:22:18 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id f7si189553pfk.5.2017.02.28.00.22.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 00:22:18 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [37.164.217.185])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 3175B826;
	Tue, 28 Feb 2017 08:22:18 +0000 (UTC)
Date: Tue, 28 Feb 2017 09:22:08 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sreya Mittal <sreyamittal5@gmail.com>
Cc: outreachy-kernel@googlegroups.com, William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>
Subject: Re: [PATCH 2/2 v4] staging: speakup: Clean up if conditions
Message-ID: <20170228082208.GB1584@kroah.com>
References: <20170228064359.30756-1-sreyamittal5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170228064359.30756-1-sreyamittal5@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Tue, Feb 28, 2017 at 12:13:59PM +0530, Sreya Mittal wrote:
> Found by checkpatch.pl
> Logical conditions are on the next line, useless parentheses present
> Clean up the if tests by
> 
> * Put logical conditions on the previous line
> * Remove useless parentheses
> * Line up the tests
> 
> Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
> 
> ---
> 
> No changes in v4
> 
> Changes in v3:
> *Correct placement of patch changes
> 
> Changes in v2:
> * More elaborate log message
> * Fit MSG_FUNCNAMES_END) on the previous line
> * Fit ch == SPEAKUP_HELP && on the previous line
> 
>  drivers/staging/speakup/keyhelp.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
> index c373762..4d00bc2 100644
> --- a/drivers/staging/speakup/keyhelp.c
> +++ b/drivers/staging/speakup/keyhelp.c
> @@ -163,17 +163,15 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
>  		}
>  		cur_item = letter_offsets[ch - 'a'];
>  	} else if (type == KT_CUR) {
> -		if (ch == 0
> -		    && MSG_FUNCNAMES_START + cur_item + 1 <=
> -		    MSG_FUNCNAMES_END)
> +		if (ch == 0 &&
> +		    MSG_FUNCNAMES_START + cur_item + 1 <= MSG_FUNCNAMES_END)

Ah, now you fix up the lines.  But really, keep the extra (), they make
things much more readable and ensure that someone didn't get the
precedence order of operations incorrect.

thanks,

greg k-h

