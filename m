Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E5E1D618A
	for <outreachy@lists.linux.dev>; Sat,  5 Apr 2025 14:21:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743862920; cv=none; b=Veg3WyHF7I3Y8sSe4BkWM1sOEQh8fXavF1Jx7pbD3U+x8UaF62UNI4D7Cavwe2456fV20vfmMeLtj5cpLyAoJfBmEt+NJ9287I1LIj9QIxbuoeHhsguI8yDNT2AjZfxcLcPeVpKYfPPSCK4YWx+g63h17FVrkSiNGf1jOJcg2CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743862920; c=relaxed/simple;
	bh=Kqp+8zjqVnatfeD8Z6voyxBr0VEzpV2CX4mgWJKUYd8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NrDhZ+Hy5euo0xuQCzGPi4zW3wdRd0a3ec42ZJTKmzQklav70eHJJAFUYZbLGt9dP7yUQn0uO7uvEOxZwU78z+tGttyaWmAU6XiQpXx4OTpJWVXU6AChmE3qydtc+AiDRJcf825bk0TCm7RcLexNsN5ww6ezjZhgu1FKe9PoPl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=X2ymRDn1; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X2ymRDn1"
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-39129fc51f8so2347270f8f.0
        for <outreachy@lists.linux.dev>; Sat, 05 Apr 2025 07:21:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743862917; x=1744467717; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=93RytDVxxoOt/6piPIaVVVkdD4eQVw9IESIfWY1biAI=;
        b=X2ymRDn1fP6q7izZvucCgxBIw9NQZD8gSkMsULmIZIYcX5TvBGDbeLCMpQBmL/quKP
         he1z5tbssggGOHbqJwdWB7ludBIpJsc4GwA3NOGlevq6b6QF+PUvAWH1ZdYrRB+zLqkf
         dCFZ/n31T4UAuhkPk1/g1M98CaAWza/V+Gaz3Gb1E3YMon3sv5Chsp3rAyp97WUvjEH+
         WqYEmKJBPfKkXr2wfvEFG+g8tJR8aa7Zy88G0u+cH5QShbu+CI4++pzdqa6hXg05/aGF
         HaO5LN5efS8DpbvfLrCl68r8zkuUtdsJiwbcro0V46EVibWp/hmQwRHhYLS+zo9jyD6M
         jq2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743862917; x=1744467717;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=93RytDVxxoOt/6piPIaVVVkdD4eQVw9IESIfWY1biAI=;
        b=DDEkRviS0u6k23dqT49d2FyI3dOwUZFKMSyGGvfdzsUwmAZyiFbwt12CDzbINU5nr3
         dNvisxeyCvyoEB/KxpSlNrPqc6WA+JGPH1LVIbEWWpTo9esgVBFzB9/KNUSNswYgEtW6
         XoQNeVAHdjULDd3BY5z65NfmmLWOVhhIMqiGZQSt7fmFSneRA8o5jLnL7cRkvRwZAsYs
         34I34G7Zml7t5JhnmLYN2fA+13PCLDJ3rhCac48ULKxGFOF4PmGugt8upAgLqP7qrmEr
         lnRi1xUhZbufxS+SAegWQU7BLnkPkprJ+Bu4NYuFdJy1n9e2uUVOxP9WNZnnGw/ZPj5K
         PD9Q==
X-Forwarded-Encrypted: i=1; AJvYcCV7MVy58klF4bZFo9+QiWBKPewoenuALN6NyvmP+isWSa1HNs6r8uW3feKMn5nGgaafFpcj77M8fcI=@lists.linux.dev
X-Gm-Message-State: AOJu0Yzd7HSXtJgaazWQyclsTob9/AcXFrH+zkOTBPM7zcKQTSZNsbSt
	BbTAyFvkcoNRUFYtRJ12j/36foNt9LatZy+DPfFoxvnY69W7Rv13gb87RR6XRUY=
X-Gm-Gg: ASbGncupm23HWdAPycxqBh+xWQg7BQDSp/WZW6E3Blv5ZldbnMwmjPVJ7+isOEJu6YE
	17X4/6p/wEzvorJrQ4Nc5trJemB8xlrTKpbD1PJ0uCc0Mv71WcsYKZDis7tXlGDESzeNkf0JrMj
	3s+4TOGm9hgK7GLM397zg3XHz3MMKD0DBeXGtvvWZEr6vImsTiaO3xo2e1SpxEi4l+xlDwjrRaG
	hOCMYo3XPnM3EDXOU/xRTQPxfU3INq8399neRWZTrG/bEME8CMcEace3eQ/lbqhrBlgu+2MWKkr
	mhCOKBTaGkyn22tvqny4va9fXhJ9CcpXX43MMIZ0ah7vBsoffw==
X-Google-Smtp-Source: AGHT+IFocO7znkSY17jMn4AasMtMECTj12lcuX1S1TbaDW9YfQuYql/afhbu7TkfR9L/L2OMBpFrjg==
X-Received: by 2002:a05:6000:1844:b0:39b:f12c:385e with SMTP id ffacd0b85a97d-39d0de17bcfmr5308898f8f.20.1743862917467;
        Sat, 05 Apr 2025 07:21:57 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-43ea8d16049sm89484755e9.0.2025.04.05.07.21.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Apr 2025 07:21:56 -0700 (PDT)
Date: Sat, 5 Apr 2025 17:21:53 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	Erick Karanja <karanja99erick@gmail.com>, outreachy@lists.linux.dev,
	philipp.g.hortmann@gmail.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] staging: rtl8723bs: Initialize local variables at
 declaration
Message-ID: <aec43d5d-8f9f-4951-9ddb-03b66b1ce859@stanley.mountain>
References: <cover.1743820815.git.karanja99erick@gmail.com>
 <ef29adfe7c8a189009b07c2873aa48782cd594ca.1743820815.git.karanja99erick@gmail.com>
 <2025040507-attest-hyphen-5dae@gregkh>
 <ef088d6-cec1-9758-cc0-55fb66ca952@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ef088d6-cec1-9758-cc0-55fb66ca952@inria.fr>

On Sat, Apr 05, 2025 at 04:41:37AM -0400, Julia Lawall wrote:
> 
> I guess the first change above would be ok though.

Here is the first change:

-	struct xmit_priv *pxmitpriv;
+	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
  	u8 queue_empty, queue_pending;
  	s32 ret;

-
-	pxmitpriv = &padapter->xmitpriv;
-

Yes.  This is a nice change.

regards,
dan carpenter

