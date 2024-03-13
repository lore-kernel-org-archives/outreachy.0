Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8383833C0
	for <outreachy@lists.linux.dev>; Wed, 13 Mar 2024 07:31:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710315100; cv=none; b=RHR7zHrqsqhruSU6/2y7LsnFEhhpUQoRRIVOnNyo+l+1INkRMa5/F5PZKsMGAoLRWm+TkxbF+DXS6YDi7oaNKMFDrzx7hqx8lvXLWlhLt3w3kLfcPkeK2tboj+6uVRzs639rwTVlkr+1qO//kqauVP4Jv3dFgGFI6y3oajwNSos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710315100; c=relaxed/simple;
	bh=0ulPmN/6zRMPDefW45bWSkdaoWgY//u8/MxBvnfZAZc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tzkF4MHb87bXSD0/qKPitwehwDPTRZDJ/3BIpJMgOrjG1M6H8dR69czFza6DvXCqlW95OWl3xYjqR0RwjUdF8zRk4H1RqMudTE/8vrz69GqjoTbQiL/ELF9wps6deeHtCAQRKf/wzsk1y4gIXxlSV3FAzEAtf+YMYdbgTjjXeDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hjMblNLa; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hjMblNLa"
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-56847d9b002so5062786a12.1
        for <outreachy@lists.linux.dev>; Wed, 13 Mar 2024 00:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710315096; x=1710919896; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iOAwKQmgsPY1H4V2RUkh1YvtW25a6UVBaZMleLqQrNI=;
        b=hjMblNLaey0q9b0+2sCzGaV8UpZQWBE+TU4mgsdMRCxy/wKgqcUFWVkhMiynpPptF9
         j70i0D0wDgulXz8pkcWzG4pQD2lELuEQpuSP+RbxCmEYSe/3VJsqEQwq336Ckc3hohhW
         91CILANIoi+nxfuPJtPYlKZa2XMjgub3PpS+/x/WzOXROL7ydbaT7Nra6OlzUxAPg2V1
         +iFNmV7Ad4/0qQb10KZH+IkFX+9rUknts1UsHxtgsb4aqXwjkZDYThrSFLflGf0Jjr9i
         UBbUCvt5zYIeEbj5H20Uyfack9NoUwIeYvGXKU4iTneVyI4G+/xyPkf3BP6UJgznK6WM
         wHcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710315096; x=1710919896;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iOAwKQmgsPY1H4V2RUkh1YvtW25a6UVBaZMleLqQrNI=;
        b=qBVdpbx1ekP6cayWreJwjeAMa8quuy7MHdD8uXD3244FgWoTxNRI5qzZ6DwOthfpAI
         Jsu9JruWSFNyZEQaHXR0lRTpTN4f0Mw9v17UcwUKZLOQyQonoe2rjxAz48MKasrV0rlb
         75ubCELSBvhAM/6pAy0ShTbiyGPtcICe3gnSirwfMfNSxzzKlNe7LHuQw8SJo0KoyLfO
         kXcSYai4HTHzCCQXj8WjP/Qx8ITBiTQQQi34bkmT0W5mx7iguj0BE8rQt5C36OtZLQ/E
         cYshd2QKMesXvZNk74U3za/mHaJav38RwRzHJs2ps/zkukU6LReobJVP55zOmU6OMxwx
         K+7Q==
X-Forwarded-Encrypted: i=1; AJvYcCWHY1+uypTX1VwI0y+B7vcfShX6EA7FS4t3pE/guI+tD8LY0Ymn7+iHMA9f1eYvmaRROLYTpfpCsq8a2AgWpE1zWkQ1xEVhRMyZ
X-Gm-Message-State: AOJu0Yy5vFqAYo3nn0aaYKpGQR6dMtVQbkL1zKItFnlvwe2qvO8kTJOc
	T8AO8VaKTy+5DRTli3RXwyxJyXDLznopS1hFxrgw/MyeOgQQQ7N+h75WTNQyYwU=
X-Google-Smtp-Source: AGHT+IHCLRlF7VgwA/kF7PNDT1Xh0kGqxJO73kGaHCp1D8H3TRLSo6xlRZXbWd1uFRMKpky9B3cI4w==
X-Received: by 2002:a17:906:f156:b0:a46:4800:123e with SMTP id gw22-20020a170906f15600b00a464800123emr1501624ejb.73.1710315095706;
        Wed, 13 Mar 2024 00:31:35 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id l20-20020a1709067d5400b00a46224d4442sm3043466ejp.212.2024.03.13.00.31.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 00:31:35 -0700 (PDT)
Date: Wed, 13 Mar 2024 10:31:31 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Ayush Tiwari <ayushtiw0110@gmail.com>
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
	linux-staging@lists.linux.dev, outreachy@lists.linux.dev
Subject: Re: [PATCH v3] staging: rtl8712: rename tmpVal to avg_val
Message-ID: <7a84be06-e19f-4f60-ab94-7758d5df1ff3@moroto.mountain>
References: <ZfFSDoNPjQypC829@ayush-HP-Pavilion-Gaming-Laptop-15-ec0xxx>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZfFSDoNPjQypC829@ayush-HP-Pavilion-Gaming-Laptop-15-ec0xxx>

On Wed, Mar 13, 2024 at 12:43:18PM +0530, Ayush Tiwari wrote:
> Rename local variable tmpVal to avg_val in function process_link_qual
> to give intuitive meaning to variable and match the common kernel
> coding style.
> 
> Signed-off-by: Ayush Tiwari <ayushtiw0110@gmail.com>
> 
> Changes in v3: changed variable name tmpVal to avg_val
> Changes in v2: added a period in message

It's not an average, it's a percent.

regards,
dan carpenter

