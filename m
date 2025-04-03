Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 697C21EBA0D
	for <outreachy@lists.linux.dev>; Thu,  3 Apr 2025 14:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743688974; cv=none; b=aVceBPoZy7De6CLOP4Eyiap37qT5FVyiJzQN3Zv3iVo7eA4q7N88vCSSsb4qGdRCEd0ts/H9RKCbgAKMa0L2WBU+FngzJ9CATgbTNBmaRdKs+5YI+usLcffhB+4Js5mEYTbptlA5FvG/FT80p5263XEpN3RmbS31ZqYvg6TJ5nQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743688974; c=relaxed/simple;
	bh=ySplVsZrYa7uam53Eqf2wzVsuoFtCZr2JBmfEDqL/9k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QqAgD+2B9WiLuM/cc7RBjJqxP5mf4bSbUsDNJb/D/1Dbebwu/7uOEXF6AFAz1EfRebvooSQbRKkn4gjrl+RodOxorfDYLhw2CdMtK3S1ZsgaS0dP/GZ+dIP0cU8iB0yoeSRi9C+YYfk/jBK/c2DuWMMaBz1sRdxVCK10oJBY5hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q1wwfe1G; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q1wwfe1G"
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-39c0dfba946so623989f8f.3
        for <outreachy@lists.linux.dev>; Thu, 03 Apr 2025 07:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743688971; x=1744293771; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+P/fcwwuOwqQIjU9mMQ4nxLBcbO4x0MJwAiL+Bionew=;
        b=Q1wwfe1GSLcvofL0j3e+L8hXWSVRpRu+DH6Q69GHZB2316Fsyt42D2qHY0PBrUi2VY
         DTGsjZ+9UVzV+AN2erofvebRu7EKQwYjenxZR5zbP2csVxigKiOoAz8YBqtaYVDK95Ax
         IFYsgAFsOiHy48wKa61EVZhQBzBzqlV72RJRr6XXKllJQDfFx1sb+HFIxEdEXWJD0b7Q
         bEal35/f3+sqG5CA6nPrhoPJFR4KUVw7033ymniiV0X2VNX9/i38MnYVbcyFDRlTfVNW
         BJ07O24Os+RVy4WI1DBQkj2eBLU0/hXW5cKiEefLhJK2xn2HskoVWv4LayLLcPeQ4Gsf
         P/SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743688971; x=1744293771;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+P/fcwwuOwqQIjU9mMQ4nxLBcbO4x0MJwAiL+Bionew=;
        b=f98KCeAaPmylYVY4rNU+epj9eanhnx8sBX7wckoXmIiH5BWf8Y18GCK2ifB3IROt9r
         JTPgH1dyZ3FR7JxrSQVfO/qUMoUSn3FK5LojOt6JPIjHGUZRrPE1JK87p+7NdbfR1mpA
         VyqQGdO/DZkt+cSXHIV4HAOGDZ5UUlFryddCWr+IpyyRS/8SwofT+Uloq+XHzWwENKWP
         5rB0KbO6seYki0vUUTKtUoQBvJxAS9dd1NYe7z5Wm00cVoX0YKSVpus7nJ6UQj65bN12
         NtIifzw18eNYAXbvNXRjKOcWTHb3Yu+mtjGqS24l8aK8TOIUfiXITSGC814wtNaPo5u8
         An2Q==
X-Forwarded-Encrypted: i=1; AJvYcCWGx5TBrgomwmZlbfDkwz6Y3+mnLzAq+uIgZyDDFjuauL7I6wxBciAvpy9R1Uyq6U+edqazdUuVTxI=@lists.linux.dev
X-Gm-Message-State: AOJu0YxMY4cGVFX2vnSAhESIG9hwGC2jZ1/gUcPaBERpjJC3VQeenlXV
	moAtyix9kH3dqZrPR+LQR8SQ7NZTpBrR0I2o4lndhCwsnoz/UxkcynQciRENNQsZB/5ExZGA4GU
	a
X-Gm-Gg: ASbGncuEuG1xRlnH2LMZoFKdGIIJCWAYZuN2P9mkuBU9BMFm44mEuPKbHkT3jvsxftj
	JLu1bqhf8jFe2++Gk9RgRJI4XIJg4aOU3TihS9ClaIazttSWVwzjlp450UYOLD3cQN786MwmqCz
	Ed5KYe8ov/tgU1KzEQ7XZcP0/aTwwyqWGh5rB+ja9Rxjm5vMFWVBTV44EcdTzuCM/4e4+SXK+tC
	HAdP60+WdhLIJs2zb4M8RHMdQaAdISILvx71mLeEr/ux3BIskheCFz5i6yiH/zk5ViK1N9DJXK0
	KXYeTJcDi9HOV8EN+a0ncF6PtOmKRDNUC0yxK7xEyOncs+i/
X-Google-Smtp-Source: AGHT+IHdAKPVx7bRmLNoSto9EYVr8heMhSN7sP5UdtAYzrd+fzO6tg2jM76VfLIEkZhp8W8Fo8l1pw==
X-Received: by 2002:a05:6000:430c:b0:39c:1f19:f0c3 with SMTP id ffacd0b85a97d-39c2f951283mr2442185f8f.46.1743688970579;
        Thu, 03 Apr 2025 07:02:50 -0700 (PDT)
Received: from localhost ([41.210.145.136])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-39c301b72d5sm1858765f8f.47.2025.04.03.07.02.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 07:02:50 -0700 (PDT)
Date: Thu, 3 Apr 2025 17:02:45 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Samuel Abraham <abrahamadekunle50@gmail.com>,
	Julia Lawall <julia.lawall@inria.fr>, outreachy@lists.linux.dev,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: rtl8723bs: modify struct field to use standard
 bool type
Message-ID: <c3ae531d-259c-4bfc-863d-45d08bdd6189@stanley.mountain>
References: <Z+05IEjV3pczMLNQ@HP-650>
 <4c35ae41-c834-e25a-ccab-5cdd34aa4680@inria.fr>
 <CADYq+faUTmNcUgk5jB3YHT4UCQZhf=Wsah1WUcPHqky6kp_cUA@mail.gmail.com>
 <2025040304-overdrive-snugness-8b05@gregkh>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2025040304-overdrive-snugness-8b05@gregkh>

On Thu, Apr 03, 2025 at 02:54:01PM +0100, Greg Kroah-Hartman wrote:
> > > > diff --git a/drivers/staging/rtl8723bs/include/sta_info.h b/drivers/staging/rtl8723bs/include/sta_info.h
> > > > index b3535fed3de7..63343998266a 100644
> > > > --- a/drivers/staging/rtl8723bs/include/sta_info.h
> > > > +++ b/drivers/staging/rtl8723bs/include/sta_info.h
> > > > @@ -86,7 +86,7 @@ struct sta_info {
> > > >       uint qos_option;
> > > >       u8 hwaddr[ETH_ALEN];
> > > >
> > > > -     uint    ieee8021x_blocked;      /* 0: allowed, 1:blocked */
> > > > +     bool ieee8021x_blocked;
> > 
> > > You should also check whether this is a structure that is read from the
> > > hardware.  In that case, it would be a concern if the bool field does not
> > > have the same size as the uint one.
> > Hello Julia
> > So following the conversation here,
> > https://lore.kernel.org/outreachy/bf8994cc-b812-f628-ff43-5dae8426e266@inria.fr/T/#u
> > I was able to compare the assembly code of the file before and after
> > my patch and this were my findings
> > 
> > Original assembly code for
> > # drivers/staging/rtl8723bs/core/rtw_ap.c:392    psta->ieee8021x_blocked = 0;
> > movl  $0, 436(%r12)    #,  psta->ieee8021x_blocked
> > 
> > Assembly Code After Patch
> > # drivers/staging/rtl8723bs/core/rtw_ap.c:392
> > psta->ieee8021x_blocked = false;
> > movb  $0, 434(%r12)    #,  psta->ieee8021x_blocked
> 
> So the structure size changed?  That's not good at all, and is what I
> was worried about :(
> 

You had complained about a different struct.  struct rx_pkt_attrib.  It's
fine to modify this one.

regards,
dan carpenter

