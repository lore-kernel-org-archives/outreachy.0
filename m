Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B17691119B
	for <outreachy@lists.linux.dev>; Wed, 13 Mar 2024 05:39:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710308358; cv=none; b=P/MeKMJeKPQhN0EvkO47k8RFBHcxc8rRtXAf2QoZfHYzwrWijAGE074q4JU7wzMAKpgHxdVGZ2BzxDEQulosBJopxRaQBDWqZKOYjPah3xSN0JNa1Fhqc6Fnji3N5mfuAx5+ZPgKcEL1VJEMkAPs3TNuGjIS2Lsgmll3NTKSkZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710308358; c=relaxed/simple;
	bh=qv9E0ryVzOnQqUuvfK/MZ3ePXhFc9C6pWJ33POv+pnE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TVPT6rP0L6n3yUrxISE4rDd0wn6ev1bt242BXsD0nc7i+ndEcUkKu71HHD4FOdUO8QGu1pmLXEajGUDWhMmGqkG6OYOC/+etJhFjY9HHxlpR2hVxqVwvFpsDD8lpCQdHYvi1voHbbJd0bMGyfpktvZ+TgQoXUAQa+d7+ovwsBAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=neqdYVRD; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="neqdYVRD"
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a45f257b81fso594967866b.0
        for <outreachy@lists.linux.dev>; Tue, 12 Mar 2024 22:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710308355; x=1710913155; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NSWceIUzISd19ErGqmK4nWkvRpe4eyaho/RKTDtrGmc=;
        b=neqdYVRDEECDNUICuspR1ytBGRrmAnZpEApyc9JpNKBpAJ9CwB69tw/PLI4lvArDAZ
         pqsSGju0tag2hVS6L/7DKvcDKLYgc4MtSQ+dp9DxNUXp3DKXC4B1IXiaC/1Wy4KHKaJh
         +zMBI5MuEG/PF2WVOiv78OOM5Tcs94K6WgOgpOfcLuuooolmOHf7eZWy0Lr4huz6qxJu
         uxEumyiMEwRoUF3h5Loycx0tHeijOvbRDUv1vYnwFC0Bm4Q/SJvWrFluaWLDoAbtaQ21
         josDladaLYGzJFwDeOlask1cwa+8KlMwIsbTrSwf2yST7gQV7/sOtUO6/KJ6FVU6KBbi
         Xe0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710308355; x=1710913155;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NSWceIUzISd19ErGqmK4nWkvRpe4eyaho/RKTDtrGmc=;
        b=PU3zr1kV9i6ToURR96ua22ZLteRNRTUsvuE+O09sFWE7tMSPj6ZAsNK54lOrCFgG3N
         JWXajsIuAFLThZJNbMzH2Moke24PSMMNO3vfb46cwrjQ3tBgJaYLXYf1RmJGDKUMR37L
         jxy0JvTgKAz6/bYrzi06pJivtndKdQahst6yTtyks5o2GjDGnhLuWScGK5xGiVJz2SLP
         4EUDpfWB2IGPa6f9s1cjEUCEdxFHfseRysso5f4V+VQ2crUGN3/+Rjy2HzaeDifewDWV
         zFURaYUQ0UleVi6HHFjWSGOVPptGscEMPSns77sbFTklPl9ghE9plnajRgZznonpAjbJ
         BeZg==
X-Forwarded-Encrypted: i=1; AJvYcCU4oz3bvjUg4KRJOg2MWarc4xKOSf99+kkDqrZDDbEIJZbt/lQc3xGGi+wAWMM5sBtad9vDBbXVapU7mRwre9ebVZ9+JW6tg+Rl
X-Gm-Message-State: AOJu0YyUpHbESrbwI+9B+lN/ommxK6U5TrypaCEjF1DGK7HgdbD33nYz
	2IjA/OlcLSs7ZequAnp9F5jqDcT0aRU+Wj0l9gnTLrEBPlznKjVKDbLBTkpjsD0=
X-Google-Smtp-Source: AGHT+IHIl2MZeMkBVrLJIRHhVpuSEJV9aPJOnnzBZz3010xMAZ4WjFN325JjVYWACAPKVHCN6Hpa3Q==
X-Received: by 2002:a17:906:bf47:b0:a46:22a3:4798 with SMTP id ps7-20020a170906bf4700b00a4622a34798mr5890684ejb.46.1710308354976;
        Tue, 12 Mar 2024 22:39:14 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id zh16-20020a170906881000b00a44d01aff81sm4525776ejb.97.2024.03.12.22.39.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Mar 2024 22:39:14 -0700 (PDT)
Date: Wed, 13 Mar 2024 08:39:11 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: "Felix N. Kimbu" <felixkimbu1@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev
Subject: Re: [PATCH v4] staging: wlan-ng: Rename 'foo' to 'rc' in p80211conv.c
Message-ID: <f6f5e779-4881-4fcd-b162-8a8dde514b2c@moroto.mountain>
References: <ZfEvTF7qwYZORGsY@MOLeToid>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZfEvTF7qwYZORGsY@MOLeToid>

On Wed, Mar 13, 2024 at 05:45:00AM +0100, Felix N. Kimbu wrote:
> Rename identifier 'foo' to 'rc' in skb_p80211_to_ether() and
> skb_ether_to_p80211() to match the common kernel coding style.
> 
> Signed-off-by: Felix N. Kimbu <felixkimbu1@gmail.com>
> ---

Thanks!

Reviewed-by: Dan Carpenter <dan.carpenter@linaro.org>

regards,
dan carpenter

