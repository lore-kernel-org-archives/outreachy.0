Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B9116132F
	for <outreachy@lists.linux.dev>; Fri,  4 Apr 2025 09:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743757612; cv=none; b=UB6HtYQBu1euWbCz/JwWsLG5kxTZAGPz5joqnUclmdxLo0BtWoIv6KM8FFXRBqfSKCRQFy/UOk2XBPr2vhyWwhTK027DEO9gWvhl5waFUWjJXXx225OPuXSDFwR3gQuwZthsN4khY3E8q5kLDi2NxxxpSuEVZUy8Um53dQYdqJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743757612; c=relaxed/simple;
	bh=LiQ46ouCDxXoz7PhA3FK5YU4CmrYA+nC5a7ln5wLKao=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bh2dI41BpjMi6gXW6g2KjzM4ufoz1OWsBYskxHP5hU/bAR3E6/T1ZTOstUocton03ywgJkK5fnMpD++zftQdGpHHhNVJas7yoFF2PSBe0i8XwZcagWwfmIXH06m6UFzOEAlV0U559sSy65wAfXrbT1B5BGczKUsFr0HCY8+3SXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xKDpV7Q1; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xKDpV7Q1"
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43cf257158fso12084855e9.2
        for <outreachy@lists.linux.dev>; Fri, 04 Apr 2025 02:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743757608; x=1744362408; darn=lists.linux.dev;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SNN0dd0sba8DZbYpxdoTa0gXIaWxVL18lbiCGdG4AkU=;
        b=xKDpV7Q10dPk1Q7y1De2hurTabKi6vjW7PdSCo/SsdVCeaJiXmCKUFP0mNebo+fLMK
         yqDySVUXMQt4BaTg6c7ltufJR6LdU1ktrTmT09BepiN7umwXbo0LRe4tIjb9n2BFjFTt
         7GmdujSg9ho2rzm3lBBV9t7p8ezMBUzGGWVhZh+SCIkVKNzNrcq45eWQFNQm4YfiGHul
         arOh8RadO+rtLYDKhpeoc14GdDxaGRAOahve8JJb9rFVPHpFcR45iXgLJLwz27mF/cmu
         NqDmeq8aHKA0sl799qKqbd7Rqg6Mg6fS7WJA/x5U8UNEoPw1YGuuy/LdFxfgrjzBgDuP
         1oFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743757608; x=1744362408;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SNN0dd0sba8DZbYpxdoTa0gXIaWxVL18lbiCGdG4AkU=;
        b=FfAXvGRwo7aVhrFA2d64d2M4HiXXJVREXXq3isiBXdOHHG0svA9OUvS9FqQoB/dbz0
         49IwLyb72hr2y667B4zAr7BlEJMg3qlhcsNPhE/epRGcWh/cwaSsZwQ+jaHlEXkb8Zgf
         HXtweki6aNQPsiKAbmDEE9vH+CC/Cp9AsZee6mkMJ0mToin0qy3qTkWsW+lZMAtY4M5C
         IzpeDhe+b0bJH4MjUDYW7oIlJq5zmCjNxjFlWxgpuLeGTiJnPHbi155vYHHSS0wgfaUE
         bldQaKk3V+1cfjfiPptbsiPe0dopWqgcwwL9hTnMbybySg4BeEVXro5lK1auesNnh7+G
         NkZQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwsH0sGh7fdw1/h23ih9tsLFHTJjyw5zxcTNiZRoBrUL5OL9NY6doqg77ZO0kAzKGUaL5tOvAYgx4=@lists.linux.dev
X-Gm-Message-State: AOJu0YxhXP3Kj29GR98A1MypZBrxq9TTsowqcJkKN7vqFy4CGj81X+ud
	Reup49K+dnT6qybPD1PdJJFyadgWD8XkKxTAxkE0iKw1hVeiCssWS2h9UVyuxZR2Xk+B3RGmK/j
	b
X-Gm-Gg: ASbGncse+qn6IPWsSyJO4niZWlWOSnfaLxGBz10EZVT3JOGFDybIH6tJJp299Z+VSY5
	WI2Ag53XL0lJBFJP262cTHhN4o1rrHPN6oIHIn7degmyOSlsu8SnqPc7dZhK2K8jKN2yc6iWEJz
	+MJoaVyAoECUWz9reNFio2zGwb71Uj5xy+dxwQuoeSYXgDTZENKeDXHSaFkEGGhvwA9f//W3G3t
	KCNQ1gax3ptwaWHWytgnLfpBVk+XhltJcSJktQdQ/k8tUHQwiQOOfFaImu7ohI2MsRofnjd29Ia
	1NpgaYk4gkWtaLeF3auGYIPCzpmVQ4mKCni5OsiJgzQ6ic5VeQ==
X-Google-Smtp-Source: AGHT+IEs4WAr/WvRqznAIBqenfGhWasugs8mzBZR/+3rbAiz8TrwlXeYTlnArjanLukZutn4NE/qlg==
X-Received: by 2002:a05:600c:4fc6:b0:43b:cd0d:9466 with SMTP id 5b1f17b1804b1-43ecf86ab8cmr16814825e9.9.1743757608406;
        Fri, 04 Apr 2025 02:06:48 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-43ec342babfsm40758585e9.1.2025.04.04.02.06.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Apr 2025 02:06:47 -0700 (PDT)
Date: Fri, 4 Apr 2025 12:06:44 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Abraham Samuel Adekunle <abrahamadekunle50@gmail.com>,
	outreachy@lists.linux.dev, julia.lawall@inria.fr,
	gregkh@linuxfoundation.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, andy@kernel.org
Subject: Re: [v3 1/1] staging: rtl8723bs: Prevent duplicate NULL tests on a
 value
Message-ID: <33a8d769-33b9-43df-9914-99175605b026@stanley.mountain>
References: <cover.1743723590.git.abrahamadekunle50@gmail.com>
 <6fe7cb92811d07865830974cb366d99981ab1755.1743723591.git.abrahamadekunle50@gmail.com>
 <CAHp75Vem1E9wmmfXWsbawj2f+F=UkfzML7HyAnhTdsUqvjW91g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAHp75Vem1E9wmmfXWsbawj2f+F=UkfzML7HyAnhTdsUqvjW91g@mail.gmail.com>

On Fri, Apr 04, 2025 at 10:53:22AM +0300, Andy Shevchenko wrote:
> On Fri, Apr 4, 2025 at 3:03 AM Abraham Samuel Adekunle
> <abrahamadekunle50@gmail.com> wrote:
> >
> > When a value has been tested for NULL in an expression, a
> > second NULL test on the same value in another expression
> > is unnecessary when the value has not been assigned NULL.
> >
> > Remove unnecessary duplicate NULL tests on the same value that
> > has previously been NULL tested.
> >
> > Found by Coccinelle.
> 
> ...
> 
> > +                       psta->sta_xmitpriv.txseq_tid[pattrib->priority] &= 0xFFF;
> 
> > +                                       psta->BA_starting_seqctrl[pattrib->priority & 0x0f] =
> > +                                               (tx_seq + 1) & 0xfff;
> 
> > +                                       psta->BA_starting_seqctrl[pattrib->priority & 0x0f] =
> > +                                               (pattrib->seqnum + 1) % 4096;
> 
> Logically it's obvious that you need to align all cases to have
> consistent approach.
> Besides that the commit message should mention this change. Something like this
> "While at it, convert '& 0xfff' cases to use modulo operator and
> decimal number to make the upper limit visible and clear what the
> semantic of it is."

No, I'm sorry but that's really against the rules in drivers/staging.
Don't mix unrelated changes into a patch.  It needs to be done as a
separate patch if we're going to do that.

To be honest, I don't even want people fixing line length issues or
adding spaces.  I would have accepted small white space changes but I
prefered the v2 version of this patch.  Once you start changing
"& 0xfff" to "% 4096" that's not white space and it must be done
in a separate patch. I use a script to review white space patches
because I'm always nervous someone will slip something malicious
into 100+ lines of reformated code.  It's really fast to review
patches with my script but once people start mixing things in then
it's a headache for me.

Also if the change accidentally introduces a bug, I want it to be a
one liner change and not something hidden inside a giant reformat.

regards,
dan carpenter

