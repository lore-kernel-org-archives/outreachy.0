X-GM-THRID: 6666918096348905472
X-Received: by 2002:a17:902:f089:: with SMTP id go9mr9754867plb.111.1552273659560;
        Sun, 10 Mar 2019 20:07:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:246:: with SMTP id 67ls5490329pgc.11.gmail; Sun, 10 Mar
 2019 20:07:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzPWaJtXRFtdKdbihSijw7CDk+goVjarKwd7s4ofy/MQP+KFa96ozbJqNcw8YSJnDJo2k5A
X-Received: by 2002:a65:6104:: with SMTP id z4mr5913179pgu.8.1552273658718;
        Sun, 10 Mar 2019 20:07:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552273658; cv=none;
        d=google.com; s=arc-20160816;
        b=h7SXIWQfzi54Tt0n8EEe/S+dtyCeJ13ryf3x5wonVWzXWeuQjL8djZNvA1n6K0F/QJ
         pW9ou505RC4SD4cFuZ6LLxln7XFPOa2oM4IVxXSGRhkjigKv72pr4ecd9A/UrTLpgtjy
         YRgzNXUclBXYdfHN2uOy/p4GUGfMf1sT2TFAbfKIV8kbSQ+2p8HAcpca2uYhH61Wbgh3
         soZOAsHuXFwxoT47heFnMYp3r8hbpT6g3sez/Wf8YCLEf8bdnPhQNHyKl7vNxLg3DD3P
         F5SiPRpmZavaThWErtOZZ8RWKnkbBXq3RZt964QvIS2LHQ8oW/AaCO8qg23U3uEb2+07
         oYJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=RmASwtenpfzP19pN/Xbj2nUU1EUJkFKY36QDM/Ve43E=;
        b=UTrx+2VOrGH0IgwqD82GoDKA5PM6Z4oTYK5nN2+jMUzndyD8XE0EunO27g9euegfL9
         ACYTlS1EC7eUUE1py3i1G/FnUCpBu4miw7a+GVRfaQMNROWaRvpVn42GATKf7Um7hdpR
         r82MaKkeYYfFIqg628pi2K0xi8KfDNz8RoSyz8VxAk8BLT9HBmucvBF5/UbsvdjSXVel
         GaaQGatNFwWsc2JEwajzZFj8rH8h2hPRbBNgkOTMNoLn/MDXHvxUb6tGj3xCt8kvCYQv
         /UyIai3au090BWbM6atZyHESTiBc1Wv292YoqVBuA8qxAYorJdaw7a1MG+pVXpxFNbwL
         ulOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JGsGS5Ds;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e71si190348pfc.1.2019.03.10.20.07.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 20:07:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JGsGS5Ds;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [12.27.65.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 617AB206DF;
	Mon, 11 Mar 2019 03:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552273658;
	bh=U4jhAYG4H9SiQXBOZ8uBTxYEBeZsMi18aBMvzS48sR4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JGsGS5DsFnrCTIED9Z4ArhvOE+YQJjvTjlYVYoz/pSwWQ2+QIuJh5MjddC/tndBTl
	 L5LFc+hDyEBDXhJIB4QfHuqxMOVxpsE9jyoVUHh6YQctfKakuncKBxiushNfkWGf7L
	 nnGAg8/hbVWofzfHpGMf1dev+TLtBDpyLQm9UVNQ=
Date: Mon, 11 Mar 2019 04:07:37 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v1 3/3] staging: rtl8192e: fix line over 80 characters
 warning
Message-ID: <20190311030737.GB17063@kroah.com>
References: <20190311000702.12740-1-jbi.octave@gmail.com>
 <20190311000702.12740-4-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190311000702.12740-4-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Mon, Mar 11, 2019 at 12:07:02AM +0000, Jules Irenge wrote:
> Replace dot11d_info with dt1d_inf to fix checkpatch.pl warning
>  Issue found by checkpatch.pl:
>  "WARNING: line over 80 characters"
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/rtl8192e/dot11d.c | 48 +++++++++++++++----------------
>  1 file changed, 24 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192e/dot11d.c b/drivers/staging/rtl8192e/dot11d.c
> index 721892cef3a7..17738859b197 100644
> --- a/drivers/staging/rtl8192e/dot11d.c
> +++ b/drivers/staging/rtl8192e/dot11d.c
> @@ -37,14 +37,14 @@ static struct channel_list channel_array[] = {
>  
>  void dot11d_init(struct rtllib_device *ieee)
>  {
> -	struct rt_dot11d_info *dot11d_info = GET_DOT11D_INFO(ieee);
> +	struct rt_dot11d_info *dt1d_inf = GET_DOT11D_INFO(ieee);

No, the original variable name is fine, don't shorten things for no good
reason.

>  
> -	dot11d_info->enabled = false;
> +	dt1d_inf->enabled = false;
>  
> -	dot11d_info->state = DOT11D_STATE_NONE;
> -	dot11d_info->country_len = 0;
> -	memset(dot11d_info->channel_map, 0, MAX_CHANNEL_NUMBER + 1);
> -	memset(dot11d_info->max_tx_power_list, 0xFF, MAX_CHANNEL_NUMBER + 1);
> +	dt1d_inf->state = DOT11D_STATE_NONE;
> +	dt1d_inf->country_len = 0;
> +	memset(dt1d_inf->channel_map, 0, MAX_CHANNEL_NUMBER + 1);
> +	memset(dt1d_inf->max_tx_power_list, 0xFF, MAX_CHANNEL_NUMBER + 1);
>  	RESET_CIE_WATCHDOG(ieee);
>  }
>  EXPORT_SYMBOL(dot11d_init);

None of those lines were over 80 characters, so why did you change
anything here?

> @@ -93,29 +93,29 @@ EXPORT_SYMBOL(dot11d_channel_map);
>  
>  void dot11d_reset(struct rtllib_device *ieee)
>  {
> -	struct rt_dot11d_info *dot11d_info = GET_DOT11D_INFO(ieee);
> +	struct rt_dot11d_info *dt1d_inf = GET_DOT11D_INFO(ieee);
>  	u32 i;
>  
> -	memset(dot11d_info->channel_map, 0, MAX_CHANNEL_NUMBER + 1);
> -	memset(dot11d_info->max_tx_power_list, 0xFF, MAX_CHANNEL_NUMBER + 1);
> +	memset(dt1d_inf->channel_map, 0, MAX_CHANNEL_NUMBER + 1);
> +	memset(dt1d_inf->max_tx_power_list, 0xFF, MAX_CHANNEL_NUMBER + 1);
>  	for (i = 1; i <= 11; i++)
> -		(dot11d_info->channel_map)[i] = 1;
> +		(dt1d_inf->channel_map)[i] = 1;
>  	for (i = 12; i <= 14; i++)
> -		(dot11d_info->channel_map)[i] = 2;
> -	dot11d_info->state = DOT11D_STATE_NONE;
> -	dot11d_info->country_len = 0;
> +		(dt1d_inf->channel_map)[i] = 2;
> +	dt1d_inf->state = DOT11D_STATE_NONE;
> +	dt1d_inf->country_len = 0;
>  	RESET_CIE_WATCHDOG(ieee);
>  }

Same with this function, what is wrong with it as-is?

>  
>  void dot11d_update_country(struct rtllib_device *dev, u8 *address,
>  			   u16 country_len, u8 *country)
>  {
> -	struct rt_dot11d_info *dot11d_info = GET_DOT11D_INFO(dev);
> +	struct rt_dot11d_info *dt1d_inf = GET_DOT11D_INFO(dev);
>  	u8 i, j, number_of_triples, max_channel_number;
>  	struct chnl_txpow_triple *triple;
>  
> -	memset(dot11d_info->channel_map, 0, MAX_CHANNEL_NUMBER + 1);
> -	memset(dot11d_info->max_tx_power_list, 0xFF, MAX_CHANNEL_NUMBER + 1);
> +	memset(dt1d_inf->channel_map, 0, MAX_CHANNEL_NUMBER + 1);
> +	memset(dt1d_inf->max_tx_power_list, 0xFF, MAX_CHANNEL_NUMBER + 1);
>  	max_channel_number = 0;
>  	number_of_triples = (country_len - 3) / 3;
>  	triple = (struct chnl_txpow_triple *)(country + 3);

Same here.

> @@ -135,8 +135,8 @@ void dot11d_update_country(struct rtllib_device *dev, u8 *address,
>  		}
>  
>  		for (j = 0; j < triple->num_channels; j++) {
> -			dot11d_info->channel_map[triple->first_channel + j] = 1;
> -			dot11d_info->max_tx_power_list[triple->first_channel + j] =
> +			dt1d_inf->channel_map[triple->first_channel + j] = 1;
> +			dt1d_inf->max_tx_power_list[triple->first_channel + j] =
>  						 triple->max_tx_power;
>  			max_channel_number = triple->first_channel + j;
>  		}

Ok, that one line is "too long", but really, it is fine as-is, no need
to change it.

> @@ -146,18 +146,18 @@ void dot11d_update_country(struct rtllib_device *dev, u8 *address,
>  
>  	UPDATE_CIE_SRC(dev, address);
>  
> -	dot11d_info->country_len = country_len;
> -	memcpy(dot11d_info->country_buffer, country, country_len);
> -	dot11d_info->state = DOT11D_STATE_LEARNED;
> +	dt1d_inf->country_len = country_len;
> +	memcpy(dt1d_inf->country_buffer, country, country_len);
> +	dt1d_inf->state = DOT11D_STATE_LEARNED;
>  }
>  
>  void dot11d_scan_complete(struct rtllib_device *dev)
>  {
> -	struct rt_dot11d_info *dot11d_info = GET_DOT11D_INFO(dev);
> +	struct rt_dot11d_info *dt1d_inf = GET_DOT11D_INFO(dev);
>  
> -	switch (dot11d_info->state) {
> +	switch (dt1d_inf->state) {
>  	case DOT11D_STATE_LEARNED:
> -		dot11d_info->state = DOT11D_STATE_DONE;
> +		dt1d_inf->state = DOT11D_STATE_DONE;
>  		break;
>  	case DOT11D_STATE_DONE:
>  		dot11d_reset(dev);

Why change these lines?

As was said before, checkpatch is a hint, not a hard rule.  You always
need to think when making changes.

thanks,

greg k-h

