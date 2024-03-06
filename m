Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B14B85381
	for <outreachy@lists.linux.dev>; Wed,  6 Mar 2024 04:59:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709701189; cv=none; b=E26oRNz4ixNoGnfQrtMAMTPzfPLHSNzujZWdWcabNW/po3lngFBcPVQhyf5Or3sw1KWVol1asHt4yBb6PtIYO9VKA+oZY53VYvwxpZDY6HMOWuywPqCo4BiCGY4a8sSQ9K3cFYAx94EFgq2k31744ZAMDjQWYOJG+5ilWD0Apcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709701189; c=relaxed/simple;
	bh=CS5/u6oEIV3D2Q8rTKYtBOZSOpW9K8Q0aBvfZgSffrE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nVYXFiFbb0O3/J+AWt4KADi0BbAndpnE7gxwCT8H7zcc+gUhYFrlrWAwX/0U2JHsu8RClZrNnql4ZecwIBhw0XAtCW1BZlA4vAAkOf330WBflda1FgDaOuUwogI7RGIGmXSDMp8a2jM/Q/4AK03CR6Uig409RpneMcxnFLeQZ5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LFd8kaGe; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LFd8kaGe"
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-412f1ccf8d8so4772665e9.1
        for <outreachy@lists.linux.dev>; Tue, 05 Mar 2024 20:59:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709701185; x=1710305985; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hprKIsL33w5QQg1W409HkLCjKgql+fd6wR2Huo+0dp8=;
        b=LFd8kaGetTlb/xQCIOt9uUNYEF/iKhWLnN0CNU5ptwJuW+JRhN53JGefmECwYq+d5E
         q6Rcx/CI1DBOxqCm2c3ygqvL0h8hsOlbndwFCH2CIikpMepBow2G9phxPgASHW82qfe/
         Lxs9Se4AEwkmAt9T93c6v/u1zIjyKwMeL7i0ENl4QhPQDsQs0vMWyFiCUmkcyLhqzjuj
         taO/8YK1Udpod9Up8ceBc6NfuqjqEncEWCmXgaaFBsl6b2oNNz8hKwEmglNfM1f/pmsJ
         MSmo8WKrM+mOocXbjEaNKOwyh5QCAZ50xsPh+4uqdcu/WpkUq9w+K1FOx/d6BFTwKUu3
         YAUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709701185; x=1710305985;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hprKIsL33w5QQg1W409HkLCjKgql+fd6wR2Huo+0dp8=;
        b=ViwLxaymX8Tcctb1sGS7xVqTwaeKB73TGtZAbQQkfvSxcR7yYPDHc4KKRs5IgthYmE
         4VGFYtKkd82bLULURCJcVCbAMPD0ROFOeqAOz40gmk1KqE6/O1VHa/zrRAuKHkYNI5vp
         N0wpl1npfp1MjHu824C1UCDRNwQZXWFGUsHjb+7IHBZf0+9zsmcbXzqAcE9Qzzd1u21o
         kldu/Eo6cImvjEpLGBnm4TnvF1Fd5GBmBmeqREmn1h7ZUb8Ej2PoYVEhi3h6o+X3nV5I
         n2G/SPovgH++LaixVJd4Pko2FixCMKND1mthX90HGQh719lXDeTqtRYU2P/1wpO9XwsV
         kkwA==
X-Forwarded-Encrypted: i=1; AJvYcCXLWCZyvPbNU9rarnopZrbVGFkwYz/u4pgxxWp5Af1OQRnXsZDvzThKqX7rmpHVhLPOAxRwjK7CobMyS0yDEdc0eorw9viUP87Z
X-Gm-Message-State: AOJu0Yy2zb3mbtuf77skS/5FGwS+/M8Q8i9ZpjeU6sMNkGpn7qj43smU
	PckXt04pp06rOsE3QecBypj/fyB3VTVhjug/2yF+Z6OydoZGWu3KwW6aJdgW4+o=
X-Google-Smtp-Source: AGHT+IGNx6oFyrh2qIFYO2uiKmvlhsTk+Kkc344zSLR8+Ll41GK0MZhkVT9Ua4dhquxwseOotb5uLA==
X-Received: by 2002:adf:f74d:0:b0:33e:cc6:a998 with SMTP id z13-20020adff74d000000b0033e0cc6a998mr8947282wrp.6.1709701184840;
        Tue, 05 Mar 2024 20:59:44 -0800 (PST)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id n3-20020adfe783000000b0033b79d385f6sm16308390wrm.47.2024.03.05.20.59.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Mar 2024 20:59:44 -0800 (PST)
Date: Wed, 6 Mar 2024 07:59:39 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Philipp Hortmann <philipp.g.hortmann@gmail.com>
Cc: Dorine Tipo <dorine.a.tipo@gmail.com>, gregkh@linuxfoundation.org,
	linux-staging@lists.linux.dev, outreachy@lists.linux.dev
Subject: Re: [PATCH v6] staging: vt6655: Match open parentheses
Message-ID: <8add5a04-baab-49b8-b1b0-7b85131902f3@moroto.mountain>
References: <20240305091410.2798-1-dorine.a.tipo@gmail.com>
 <20240305093213.4280-1-dorine.a.tipo@gmail.com>
 <f76416c1-157f-4c31-8443-a63194a630be@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f76416c1-157f-4c31-8443-a63194a630be@gmail.com>

On Tue, Mar 05, 2024 at 11:01:09PM +0100, Philipp Hortmann wrote:
> On 3/5/24 10:32, Dorine Tipo wrote:
> > Align the function parameters to silence a checkpatch warning.
> > 
> > Signed-off-by: Dorine Tipo<dorine.a.tipo@gmail.com>
> > ---
> 
> Hi Dorine,
> I tried to apply your patch but it failed. I do not really understand why.
> Have you edited the patch manually or was it created by git?
> 
> Thanks for your support.

When you resend, could you start a new thread?  We used to advise people
to reply to the same thread but these days we always tell people to
start a new thread for a new version.

regards,
dan carpenter

