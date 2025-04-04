Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1660114EC5B
	for <outreachy@lists.linux.dev>; Fri,  4 Apr 2025 11:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743767241; cv=none; b=FPnX9AsylmIWvQXB3hH3qXtWwTGb8PZff380q9dSlG+Od4A2F0REE49wnmtm7VMlCpehSJO9DSnzlKyP/vSIt48O8O3Mgze7vMK1ysjd5k9J+F7AXR7f5bD7sn2dy6vcdAT4Fpl+1pfooPFwYW1FxEgEJWERisgTGSUyEzg1Ifw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743767241; c=relaxed/simple;
	bh=wPPcnnB5KcUF6Z/rHkaL7q8cRxlq5b4nBxTxZ96MBdk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZGLo2k4e7l/r2Py6hxnHvAZuOfckn9wkfiEGEjctRaeE+zAWYRpZwFKk8h/Vp174b3ANM8sTEUOZz25f31aUWsPTMkcMF2vOGi3egxYVvpavQksArgYXvOHAU0l98rl80napA8kJBQajRSUczKQeoEtWJ0YbQXzd2PMkFlo94l0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rm5neUva; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rm5neUva"
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43948f77f1aso14037375e9.0
        for <outreachy@lists.linux.dev>; Fri, 04 Apr 2025 04:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743767238; x=1744372038; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=foHY1R4cfF4wZYmB2kM8uswb/b+LSqz8E6rYMWvAhS4=;
        b=rm5neUvaGQimqCdYZcFytymQjidec3EowVPc/xosBczAiXZNZ8+iOkohKf8brmlZFi
         9+TeU0JxolvQLNfPLfl0J1itZztWOoDMdPIaOI43J5bAq8cq/gi+d5YXbHzyQK73FKxL
         pnPLAEyJ+/9hAVQ6J2u53DuFrqdviOd4eEtg3V+4jZSS9ByUgmNnuoQ60EFf6RmO0M1A
         nS0jOe+TFSzARrqspPXU5/xasgBAY/mOBxh3M/uTXWZZff8132LgCp6fyjukrVkfpiLB
         CzLL1qtmLHX0MXoyJjjYDfNE/dLMAZC8k+1gX5KEplazXfK9ubv8CoDc/i7Sfmup/0Tb
         wQWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743767238; x=1744372038;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=foHY1R4cfF4wZYmB2kM8uswb/b+LSqz8E6rYMWvAhS4=;
        b=e7Q62rvjz/s3Q9qJGMXT0vrHIutj1JM6nC8MJ49Vsavasm24eTJVmDYZoHnzj1dZgW
         EZcutMDWHTKCWL79eg/oOZCz3+vJQLXv+OJvQ+mHodN+gDlprwLNVLN3MMZYHPcglVfp
         MhZFLkI/MGs6KYP+2YtsEz8OWwXYuUUQSR/oRt7zaTvh+KDTHnKjp/kjRo1fe7tvVwm1
         NoSW2VOgP3i1aARsSN58VrCRs5DiHBUrUU9OBvX29NRFtYBdDLLaMPC+yeuvsWfdC5Vy
         STVfsiDOJyzhQw5VENVM54h3+lsceIJjk++p/Z7GHK1D62Hn7KVVfWTnXyUGfIdUmepA
         8SqA==
X-Forwarded-Encrypted: i=1; AJvYcCUGBi5ot3mbPNEc3l0Xc7AoCj2wZGe2iJzIu2LR0+D7pBviB1asQdMLcUF0rj1SDEUR1XT/BKfY0eU=@lists.linux.dev
X-Gm-Message-State: AOJu0Yw3QjqOvuh6MJRU8wM/n6GbXbuzzn3q8YAB7vlaY5aPBd+caA3g
	6bjAX1EI4T7WgITpGDaUzdnCHvQzq+8NC7oDsHIrqGHAYkX8nP86FzxEUN6gYoM=
X-Gm-Gg: ASbGncuDD7n9Syrl+w78IQpZxfepvY9BT9j87TnTLezuLK3HlAkYcgGmAyKnDWldvPt
	Y8uStyKI1ab4+F7YmgXioOKH5Wfv8ovwWZpiP/uWx9am9F1TiSNrBs60OiNN+GE7x0fyPrd03C9
	KSwx+DYIRXiaudRbaltvKSWoLOps2KlXuKk+ZB7U7qv6Gqh8Sc/bwJKg6FBxWiXalx+o2WzabHy
	xqVVaJw18pxgmgU/kMBzugf6VwMRuZc4oL6tDhNuA/LTopcXto+XS9sXrMLlqQ4QwpGMV7L0cT7
	wjtf6shpCHwgS3+5d0HNUYavH6PecSlp6rxCeNMvyFYvvkx11g==
X-Google-Smtp-Source: AGHT+IEn+z7u+lSPJLWOtn7Q6pSS9JHe2rPVPZmR3y2zmH/SRyuuPhwWUCfFa1TU/icWhcfsVbxRLA==
X-Received: by 2002:a05:600c:3109:b0:43c:f629:66f4 with SMTP id 5b1f17b1804b1-43ecf57edb7mr31256785e9.0.1743767238380;
        Fri, 04 Apr 2025 04:47:18 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-43ec1660bcesm46939825e9.10.2025.04.04.04.47.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Apr 2025 04:47:17 -0700 (PDT)
Date: Fri, 4 Apr 2025 14:47:14 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Abraham Samuel Adekunle <abrahamadekunle50@gmail.com>,
	outreachy@lists.linux.dev, julia.lawall@inria.fr,
	gregkh@linuxfoundation.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, andy@kernel.org
Subject: Re: [v3 1/1] staging: rtl8723bs: Prevent duplicate NULL tests on a
 value
Message-ID: <2aa7d5da-c53c-4bab-8fbf-2caebddc9b7a@stanley.mountain>
References: <cover.1743723590.git.abrahamadekunle50@gmail.com>
 <6fe7cb92811d07865830974cb366d99981ab1755.1743723591.git.abrahamadekunle50@gmail.com>
 <CAHp75Vem1E9wmmfXWsbawj2f+F=UkfzML7HyAnhTdsUqvjW91g@mail.gmail.com>
 <33a8d769-33b9-43df-9914-99175605b026@stanley.mountain>
 <CAHp75VfDOaK0EXNc79cM1mNWapm7fhshU550q1mAKQdtRbUNwg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHp75VfDOaK0EXNc79cM1mNWapm7fhshU550q1mAKQdtRbUNwg@mail.gmail.com>

On Fri, Apr 04, 2025 at 01:53:16PM +0300, Andy Shevchenko wrote:
> > Also if the change accidentally introduces a bug, I want it to be a
> > one liner change and not something hidden inside a giant reformat.
> 
> The noisy {] have no point to be left. Now I'm curious, what do you
> propose here?

The patch *must* remove the { and }.  We wouldn't have accepted the v1
patch.

regards,
dan carpenter

