Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD7D42A9E
	for <outreachy@lists.linux.dev>; Tue, 12 Mar 2024 09:03:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710234197; cv=none; b=TDGasTIj5YCtc+WqJnsJWQm3zK+5bcTpCytA6CT3MG7qBeljQKzRxM3H+OeNK6XrG7l9/GP3ZPbuxGAjW6RW1stY+fiblCgWyNHDexqFhHKuTvSJlGlybbEv+g/EUh1TcPfWS4SZpiOIbbeqy8rSJvJBBqwKHq8H+hCAoK0TNek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710234197; c=relaxed/simple;
	bh=s1TPGDD3FQrj7OxiV2Kb3nYfjuUTXMyg7DkuslLMXRc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UwEY7t/TsgXr9UH2oU0h0DPNvZwdOLUzQNMZjxupzm/vzq7iGv4v/8EuqqJfL93N7IjJXkJAHXNJS6tK6G4PGxZvj+WtjekWWpyUAfFrgTpEINbf01Vabn2suNFmjgyWbCo2spD3k2nH+7JoQv9o346yw4nAd0tvm0Kd4ONJOAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n9Lm1Vev; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n9Lm1Vev"
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a44cdb2d3a6so727846566b.2
        for <outreachy@lists.linux.dev>; Tue, 12 Mar 2024 02:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710234194; x=1710838994; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=J6i3TaLouGAS+GfFlJ9J9LI/0HUB7fKxpK6hNinsoOw=;
        b=n9Lm1VevkV1erevRbUnF09oyI6JNtEKsO1JpdwOpuErRaKZBuQykVSkxC1ytQIILhV
         1Y76hj3RZiFG7JdR+rQM7Bdphmm0TOW8Y6wgV+njjz5EHMzbJ5ZIZ/a7YqC70KjKz/9/
         XW74Z0IEZD4BDAggq/BmZMkPiKNmOMDKjc/ZKTAoONdq00B8UwR2eFyOCEy8ixyP3CUr
         4nPXPTVxLzcx+Pyb2hpG6w1nsa38Zpm21uKJAnm+EuHZ12Ch1EeRGPx8b/CL5eHLttEm
         bCPIZCxp/g8RRrppscO7nWmVzlxfge1eQnj7ns2EVa8aAwjurJW7ZUp0FGRk1wHVSPP5
         zfSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710234194; x=1710838994;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J6i3TaLouGAS+GfFlJ9J9LI/0HUB7fKxpK6hNinsoOw=;
        b=NMgdHYUBXhSV890b/XtbxUhJ3QA0cXnD9ukEH+Y7dmQEykeSrYKtrrtr3MrDUVWDE5
         70G3lrlzjJJgsKl18LseB1CL5khKssC3w1DjhI8DQ20t9y0dwkS+/XJTvWCjmrXhu6oZ
         IuH051rg0GCPu5JwZCDBMJftI3ezsDOR4/urotiZ4ipcJQM1A6P0aoSEkZOAAOjlDF8e
         9P9ubxCDWn2taRmMpX3oVYZDgjARWL5W2e6a5bXjNc1FGw01Cx3r7FBtOQxumDsi+zjL
         kVX99X9BSvoRZKLwhewMw4pczJ55rdOy9wAvEdMt9/Yp+z//PKKHTr2/xt1TFGjWXdb0
         MwOQ==
X-Forwarded-Encrypted: i=1; AJvYcCUtOJV+TBquj+x3xzbcaa8b+29IYnUSTxxEP4aN7s5b8S5i8HPUzeBXjIkzuFlcwBUhBuneYy/MuzYp3gERLuLK8M8ab/xuQeS6
X-Gm-Message-State: AOJu0Yy12jOkIabqN/O9FO4CZmkWCu7v3lj51wOOf8MzzjPxFhUDWYvw
	EhILytiEQuDH6iEnhIS+HEK3nbRzn/BiI/15b14m+rOnYkBwOFVGZ1FsSaJO+qI=
X-Google-Smtp-Source: AGHT+IGdtm50SLGxk2hDpFRAfup4txP1asLzv4Joh/YOzp2qyBoqbm6d1pprOfLQaSq5NS65zoeS+w==
X-Received: by 2002:a17:906:11da:b0:a44:dc35:df19 with SMTP id o26-20020a17090611da00b00a44dc35df19mr2047419eja.67.1710234194076;
        Tue, 12 Mar 2024 02:03:14 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id hg13-20020a1709072ccd00b00a45fefe4fc5sm3576879ejc.135.2024.03.12.02.03.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Mar 2024 02:03:13 -0700 (PDT)
Date: Tue, 12 Mar 2024 12:03:09 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: "Felix N. Kimbu" <felixkimbu1@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: p80211conv: Rename local foo to decrypt_check
Message-ID: <9bffd12a-afae-45cd-a4f3-451872146bf3@moroto.mountain>
References: <Ze9Ie67PCSvBU+og@MOLeToid>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Ze9Ie67PCSvBU+og@MOLeToid>

On Mon, Mar 11, 2024 at 07:07:55PM +0100, Felix N. Kimbu wrote:
> @@ -185,14 +185,14 @@ int skb_ether_to_p80211(struct wlandevice *wlandev, u32 ethconv,
>  		p80211_wep->data = kmalloc(skb->len, GFP_ATOMIC);
>  		if (!p80211_wep->data)
>  			return -ENOMEM;
> -		foo = wep_encrypt(wlandev, skb->data, p80211_wep->data,
> -				  skb->len,
> -				  wlandev->hostwep & HOSTWEP_DEFAULTKEY_MASK,
> -				  p80211_wep->iv, p80211_wep->icv);
> -		if (foo) {
> +		decrypt_check = wep_encrypt(wlandev, skb->data, p80211_wep->data,
> +				  					skb->len,
> +									wlandev->hostwep & HOSTWEP_DEFAULTKEY_MASK,
> +									p80211_wep->iv, p80211_wep->icv);

With the rename the indenting did need to be updated, yes.  However it
should have been:

		decrypt_check = wep_encrypt(wlandev, skb->data, p80211_wep->data,
				  	    skb->len,
					    wlandev->hostwep & HOSTWEP_DEFAULTKEY_MASK,
					    p80211_wep->iv, p80211_wep->icv);

[tab][tab][tab][tab][tab][space][space][space][space]skb->len,

See my blog for how to resend a patch:
https://staticthinking.wordpress.com/2022/07/27/how-to-send-a-v2-patch/

regards,
dan carpenter

