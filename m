Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B5F1F94C
	for <outreachy@lists.linux.dev>; Sat,  5 Apr 2025 14:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743865120; cv=none; b=AoaPw3GZU4nepulv2OXn3AuAcaR4i3PeORl5ILa9D8EFomaV2f8ikw28Y3uxrFs9WuQgtAYb9X9FaFAr9Dth6su8XQfR6+1Fb1IGbEMyKnjThJ5NcsB7jMaz7JHu1ZnX9v5DkZK18cnz4fU3hyJAtqfM9e0GprA6CWTzCHXOb3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743865120; c=relaxed/simple;
	bh=N9t93yqbj2djYP7dFCDgM1xUqHLYdb9cLQ/mVQ8ZdXg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FtmLpVqou7Vxag+0p/LluvhftX/1EXOyqmk7tUrl3BtDTuJBSSG00MrWMcLxy9BeQW318GwJ37uPbF94mcjzbsM8JbVrgx3Gmww3a5X3qbsqsC4rBpJmwHqudHfJ4MSgZ7ds4BbrJ2tNRZhdkmMRO+pJi1aKfooo7Xcun6y/Nco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=r5PO98Jr; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="r5PO98Jr"
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3912d2c89ecso2600244f8f.2
        for <outreachy@lists.linux.dev>; Sat, 05 Apr 2025 07:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743865116; x=1744469916; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=m/SmM4ytvnKmQeFMenBw45G9NZO2G3CpELElKjb7zxY=;
        b=r5PO98JrKj6wqiah/oGIkG23KzQlPPun5drszvF5dpb2KbXxnpbU/wl1t6x8I81M1h
         KuWLNvyhuDaGbkUengRVyDK3FuLnPAZTyPwFHm3R7n8laHDlTUGhRxRMnEGO5aikSEbU
         IbNinL62Q7iEnuWNdhR02FkR0pCn3D00P7MaXA6WmhFUuKxbrdArQxoTLiz2Mrb9wFFl
         VLQDAPn0UDh51O5KGWu/yo2zMK6icRI8kjZHTxN5fBg2RMt2rAk7tWErOF0Y82HxsU/4
         X1TIYIKMSmvLcHmbkthZchkY+DTbUvkUGZ3HkgDc+CT4pl06siMc310DLr+LQdZWk3K4
         +Eyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743865116; x=1744469916;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m/SmM4ytvnKmQeFMenBw45G9NZO2G3CpELElKjb7zxY=;
        b=tkqoQcYhd4pAIZKmMCp1xwk7PrCUBD+FHvJ4vSgO3L2WnrnDium/U55GA/CO1I7tjG
         0+iKLto8p3Ilc2LETbJQB+puYm/jYWFXJsukQOLdT4lbXtId7lkfKFLdoywVnbxA19p+
         bpfa/4ACWiTDXIE1eDSUTpVhrfQJsCv2n6FV/ceWIGMV/4ypgamyYhL3dFRzAtnWeVTX
         1uuCm2d/dNhviuIyoR0SEZp8dxI5GVtwOLiZRA407djiLf+C2kq+jTEP0lq54mIJCUdH
         X4JxWUQLj+WvhX0grM7qQNiVnpnHCUAm3SOax1+YUEnL7HrFVCix25z/ICsm+4oODfbQ
         gD3A==
X-Forwarded-Encrypted: i=1; AJvYcCVfcS+2eGtFp+dEPktco1RqDRiHsD+kqARcuNBJ3sxkhVYaEMxpLw5+NYfjQCP4mWSoKY/uqDPPdzA=@lists.linux.dev
X-Gm-Message-State: AOJu0YwRrIa8GQkRLo6bFKyKbs2fxjsbU8xd2yHp1e05CEWCPzczrE6X
	fwGmue19fuEFXzWnrx9T0HQVGw1O2dIR8JX9W7Fhnh96/10L6rkrGjHU66XAV3Psett5hJp0Xq9
	VNeg=
X-Gm-Gg: ASbGncv6XB1d2o9AT0PSrHlWnj6Ff+5NcpMbk7UZA6vMAZrRRSkBoGWb8UOCSlUt02g
	nQbrxoaEsorFnaT9uRM12+5UQfe8VcIJoSwV1FaQ1MnkbqvFe7sC6MND16DzwTh7+cOtJvSvLZi
	eZ+wq3JH2PyRydIoHSxuAeU7X5FvMV3Ti2pmklbadyJK4GtHRL+sHBgofN8r4/GRjIuxVMMdxxS
	FwCl8RoZVFRt23QoETag5QNMNu4kOwGVMfV0ZjvRRqaxyNkBV30CGTSs8l2LM7qrt9bDetoQODW
	HKTeF13dWkG5kWdoDqLWwbrCYsNykbS23XF31N65XARyvTGb0g==
X-Google-Smtp-Source: AGHT+IGstSgETdMzDdB1cn7SMeAEZaDIH6PcSTPH4LkDpdeT8mO6u1QWbvUSiJCc2vQ+HL8ELQ38HQ==
X-Received: by 2002:a5d:64cd:0:b0:391:13d6:c9f0 with SMTP id ffacd0b85a97d-39d0de66efbmr5815830f8f.47.1743865116566;
        Sat, 05 Apr 2025 07:58:36 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-43ec34bf258sm74822035e9.23.2025.04.05.07.58.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Apr 2025 07:58:36 -0700 (PDT)
Date: Sat, 5 Apr 2025 17:58:32 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Abraham Samuel Adekunle <abrahamadekunle50@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Julia Lawall <julia.lawall@inria.fr>, outreachy@lists.linux.dev,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5] staging: rtl8723bs: Prevent duplicate NULL tests on a
 value
Message-ID: <7f19d199-9702-4829-a4a7-b1eada2adeda@stanley.mountain>
References: <Z/EuZuvGyQ9QBl6z@HP-650>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z/EuZuvGyQ9QBl6z@HP-650>

On Sat, Apr 05, 2025 at 02:21:42PM +0100, Abraham Samuel Adekunle wrote:
> When a value has been tested for NULL in an expression, a
> second NULL test on the same value in another expression
> is unnecessary when the value has not been assigned to NULL.
> 
> Remove unnecessary duplicate NULL tests on the same value
> that has previously been tested.
> 
> Found by Coccinelle.
> 
> Signed-off-by: Abraham Samuel Adekunle <abrahamadekunle50@gmail.com>
> ---

Reviewed-by: Dan Carpenter <dan.carpenter@linaro.org>

regards,
dan carpenter

