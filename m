X-GM-THRID: 6664555567666692096
X-Received: by 2002:a24:3608:: with SMTP id l8mr11342864itl.35.1551713366937;
        Mon, 04 Mar 2019 07:29:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:7d8e:: with SMTP id b136ls4583678itc.5.canary-gmail;
 Mon, 04 Mar 2019 07:29:26 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZI/BV1TN37rs8PX76LZ8lPVMjj72RZ4Q5O2iXwVfy2Kd/Ht2uJX+n7un8kYuHoEFTr4Kgm
X-Received: by 2002:a24:e4a:: with SMTP id 71mr12305938ite.0.1551713366029;
        Mon, 04 Mar 2019 07:29:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551713366; cv=none;
        d=google.com; s=arc-20160816;
        b=VGNPeJO6jF4gmiBwSXjlkKI2VxPWiqkIMWOxuYFVD+wHjBWgdAsOL9LZJMHiQ/McSm
         Om335e3PM0lcOcKAoytT/QiENgmahDBk1yW2e4qYYsI2Sd3VZEh+AL8LqkfoYkSdBi1x
         OV0SyfqJG5bYzkgx3tAt7VnukFOmFGpo9DeEAXUHRDChY/E0NB63sIQqLa2h456zWoBQ
         o4T96TlTA2hRNMf9IHdYZdF05AebJy/J0lpRx58a75CsUKizxtGZzm/W3UI61NS2JBBk
         9+cQujf2k5gYgE6Ow6ojZgmjkDv74hqRd2nRLHj4rg4WqoU6Yn/41JrShlRpcwojslaP
         Y5mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=SlcRHKNGBK5SwUkW1i7a4+Z0GpM5Q8tXGdJtUOf0LjA=;
        b=TRJMNTtNzNEZoznHFH7TByhlpggK8FoP5rKfT8KEzM9Y6LRQY7t0MQwS4knVpTTEJ4
         /CtCT34mycX6KkTQn6e7UqxUEDIDK7fF4A1SVjZp4AY48Hmitmip/QkIZ0tA2nFRxXdc
         49vdyfwE3j4lX8g0kbwOlPraSliau6a+vM5/LxcQjbJMptdwqSI+MeLkIGXl1kwTIFU6
         qykCVKqbJtKbCa/7qOXV6WDnt2JfYZx8WboNJBsaXMuQLzyBDt+Xwo8poPA+K9LTyX6m
         mJ+6k/7PnbINs6c8pWrpJBvOEbHwRVuUnDVyPsja7iSHyNBSoEELzUgJUaP623BMiozP
         EL1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=i+XlD0Kt;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y204si440691itb.0.2019.03.04.07.29.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 07:29:26 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=i+XlD0Kt;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CA2E820657;
	Mon,  4 Mar 2019 15:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551713365;
	bh=KL8d2/6OuFok2vN32abEZ+jFDgzZ34qiPvZpebJ87fM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i+XlD0KtObO0xk2d0gEPDGnC1By32Vbm7PmmoPNho5XZRS8UgBTx20ifeKH4hlcN2
	 DT9aX5WE75jwShUsGMlHz73xnZjMpbksLuZ5A6W5Sd80qqsdazQa+liU0fauhbpw/+
	 zEeuJ5kuzQPW4yB0Nss1BcVk3JNZrNpVJHO0bRm0=
Date: Mon, 4 Mar 2019 16:29:22 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Daniela Mormocea <daniela.mormocea@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: wlan-ng: Fix parenthesis
 alignment
Message-ID: <20190304152922.GB30431@kroah.com>
References: <20190304151918.GA28670@pthm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190304151918.GA28670@pthm>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Mon, Mar 04, 2019 at 05:19:18PM +0200, Daniela Mormocea wrote:
> Fix alignment issue with parenthesis.
> 
> Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
> ---
>  drivers/staging/wlan-ng/cfg80211.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)

What changed from v1?

That always belongs below the --- line.

> 
> diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
> index 8a862f7..7c4e8f1f8 100644
> --- a/drivers/staging/wlan-ng/cfg80211.c
> +++ b/drivers/staging/wlan-ng/cfg80211.c
> @@ -332,8 +332,7 @@ static int prism2_scan(struct wiphy *wiphy,
>  		(i < request->n_channels) && i < ARRAY_SIZE(prism2_channels);
>  		i++)
>  		msg1.channellist.data.data[i] =
> -			ieee80211_frequency_to_channel(
> -				request->channels[i]->center_freq);
> +			ieee80211_frequency_to_channel(request->channels[i]->center_freq);

You just violated another coding style rule by doing this :(

The original code is fine, leave it as-is please.

>  	msg1.channellist.data.len = request->n_channels;
>  
>  	msg1.maxchanneltime.data = 250;
> @@ -372,11 +371,9 @@ static int prism2_scan(struct wiphy *wiphy,
>  			(const u8 *)&msg2.bssid.data.data,
>  			msg2.timestamp.data, msg2.capinfo.data,
>  			msg2.beaconperiod.data,
> -			ie_buf,
> -			ie_len,
> +			ie_buf, ie_len,

This change has nothing to do with the subject :(

thanks,

greg k-h

