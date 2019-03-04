X-GM-THRID: 6664555567666692096
X-Received: by 2002:a25:d6cc:: with SMTP id n195mr10447383ybg.33.1551713361791;
        Mon, 04 Mar 2019 07:29:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:a223:: with SMTP id b32ls1081668ybi.6.gmail; Mon, 04 Mar
 2019 07:29:20 -0800 (PST)
X-Google-Smtp-Source: APXvYqw/NpJSrkV2x/il/4ib5kvSGE8EAHB9cDtUs04431FMeHe40FbLDQPG8+9L5g9ptPsXW4vO
X-Received: by 2002:a25:50c7:: with SMTP id e190mr9341276ybb.37.1551713360976;
        Mon, 04 Mar 2019 07:29:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551713360; cv=none;
        d=google.com; s=arc-20160816;
        b=cJYN2ujoyHUNqdRu3z43kK1U5oeTzaqeKNd8sLpMbzUN3M5AK1W9SEpab1yn6uz90v
         dOZXfYgHre5w81BKioZM9g4IQYth3IxXv1NYMfbQIAJOW835W69mSasiM6kxE7NGwDQl
         mhNkUZMJ7CQJvJ6enKzPiD6kY3GV5mBytr6m0YzHYhb7cVkFgqSUKVKtemeI6i01jale
         b9ujeG/AeqTJCa1DUgwyhXzoIdonoot3uJG716DIGLPcgGTtHDlswApqaCxRXGbf9fiA
         CClqWH/UZnyMoSa+nDnDIZUTfRsu11A+tfdQCATti+mtlTYFvrOFeZ9fW8TXudEZ61y4
         wDzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=SlcRHKNGBK5SwUkW1i7a4+Z0GpM5Q8tXGdJtUOf0LjA=;
        b=Yr4Jkzo8kEhzkSiJQA8In2IvJcAKiDVjDHxSpuEG1Tnc0Mm9zZ9rE/8bVjPhBtt3cQ
         wYZM53k9yo2Bo816sAS2VSoPQFAPVPVfPJVpwvZgGAVTBuMVg8UPVzPRLLH8tivQZ9kg
         6hFXkOD0bjJ8BJzRmLu/26w4Q5UFyskabX9ZnDRgBq2Uv24wyoSG4hlZ0BZeo8bKPh9G
         2UPNhBjBO237i0Hcl9W+YgboHz9Ze9Ji83QS0az2JOhD2otOVqD0+DrZxVIf7MLBGXyl
         GRI+OpRkK1OXwUV5pP8bmqVinj8SZjmOtaR1bsTdCHyPxfv2AJnDu60Z15CG8diDGuFL
         Citg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=FQsBfb3B;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=79vOeTcE;
       spf=pass (google.com: domain of greg@kroah.com designates 64.147.123.25 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com. [64.147.123.25])
        by gmr-mx.google.com with ESMTPS id l39si380343ywh.5.2019.03.04.07.29.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 07:29:20 -0800 (PST)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 64.147.123.25 as permitted sender) client-ip=64.147.123.25;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=FQsBfb3B;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=79vOeTcE;
       spf=pass (google.com: domain of greg@kroah.com designates 64.147.123.25 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 8DB78368D;
	Mon,  4 Mar 2019 10:29:19 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Mon, 04 Mar 2019 10:29:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=SlcRHKNGBK5SwUkW1i7a4+Z0GpM
	5Q8tXGdJtUOf0LjA=; b=FQsBfb3Bmgaik6KnJN/LvBvo5A2HfyepKOuPJVH9dxh
	noykE8m70V1HplwxtbqbfHZ7MTzOC5S1jlrQSl5R7JoDYJhSip0IwIUmiNe9fIgZ
	qTGSMiRf/nhTPVK9xQePm21JXgVA1LmOCSi7F9abaw/3Qh9AQiOqd2Kzffdc8Atb
	1LroondQjIOLGpQCuBoF3v94m/kRvJdv3tnh8hqBePGoJoHdWAdE2AZMwSlZdeTd
	GBEIrKW63fbuobk+GnuWrflmg1EpA/QuEAO94vRG3qlU2U7Sv9gxDFK1TLkVxKrm
	O72zTRbEg5CxozoK7XaRZkJSdd3GlwWgiWinp7HPY+Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=SlcRHK
	NGBK5SwUkW1i7a4+Z0GpM5Q8tXGdJtUOf0LjA=; b=79vOeTcEb1s2ktYMDnhqHi
	IjXmKH7xbLwE3sXnIh8vsKkEwGg/HMGeGo4f7NASA5WAu7gETOA7Hp+NwjYt6A3e
	5/7v3Bpp+/Rmrk2vcUs4r0FO0AsFdeB2SMWwmyxsaq8xuVi2A2GElv1eAt96I3lg
	CGC+dLTEnwWb12JWB+CYx7dPPsCofA6T4FL6ywUxiqtce6jZ0rSSvjHhD3M02X5v
	AnlS6HKcIihA24nRXDH9Dtu7gX/b3XRHgUaxaNxzFIpalIzRSNU/Ggd+wSeprxOR
	ty4cjZeFqdzi+CfBQgZfO7EjjNh0Bs5VQuBN1spvfrzHcGlMt0D7MAXJYedvixqg
	==
X-ME-Sender: <xms:TkR9XC5t1T1hkpNXlViBxz-z2utVaaZuSx4b2_iaWZprbRcurjCCpw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedutddrfedugdejiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpefirhgvghcu
    mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucffohhmrghinheptggrphhinhhfoh
    druggrthgrpdgsshhsihgurdgurghtrgdpmhgrgigthhgrnhhnvghlthhimhgvrdgurght
    rgdptghhrghnnhgvlhhlihhsthdruggrthgrpdgsvggrtghonhhpvghrihhougdruggrth
    grpdhtihhmvghsthgrmhhprdgurghtrgenucfkphepkeefrdekiedrkeelrddutdejnecu
    rfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomhenucevlhhush
    htvghrufhiiigvpedt
X-ME-Proxy: <xmx:TkR9XF_bSDdeXbtHQUH_teVgMmUsqvLQ4yjO9a5Vis_AM6t020--pg>
    <xmx:TkR9XGYNW6pAVDv3CWjGDAOaNGTIv4Sitv4QakDXSgUPRR9C20EHqQ>
    <xmx:TkR9XG47xJ70mHT4k6T7Th3X5Z3pvAQuKHsxTzLgZi7XAZzfm0Z9QQ>
    <xmx:T0R9XHmMq6hCLSFkncLAXmaAvucG1vidT1fpjT2c3ulfQCKQ0m0z3w>
Received: from localhost (5356596b.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id 7D1BEE44A3;
	Mon,  4 Mar 2019 10:29:18 -0500 (EST)
Date: Mon, 4 Mar 2019 16:29:15 +0100
From: Greg KH <greg@kroah.com>
To: Daniela Mormocea <daniela.mormocea@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: wlan-ng: Fix parenthesis
 alignment
Message-ID: <20190304152915.GA30431@kroah.com>
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

