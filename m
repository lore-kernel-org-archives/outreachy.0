Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106B6383B8
	for <outreachy@lists.linux.dev>; Wed, 13 Mar 2024 10:03:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710324212; cv=none; b=CgoT4SdgaHsQ+CiFU95xvO23Xr6YmPiWm3tWF6ZiCzETHFfo7nXX1kTk9HN8sMzcdq/8QkTKa2DQFz1hrSSRmpNtevVNDg22TbjBVZGfiuIdx+c8uvFnDi8UMfeMEd4jDGWH+F+ihSOvTgSDOXmNb8u+PhBqD14b5/NCU+0NU3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710324212; c=relaxed/simple;
	bh=SYoPjcYuU8Jtq9dJ6eJ/BaLc9EDIPdRFn0FcCAdJ5Mg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CdJk+TAzOhRaypqfdJ9e5K+/RcGm3H8t1V5DTJjQ/6J2Hh+VT/oT9657BxB3kJrtuHG2EpFSAcEHtVvWZR1iNzgafHPcMzy29lYdwyGAb6Wrkh3OPmbha7/3o3+KJlCQ/PARiEqcGpq3KQr2659jys9Vdj366sc9KR9whXAbFAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Pj3BJMfn; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Pj3BJMfn"
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2d28051376eso70179661fa.0
        for <outreachy@lists.linux.dev>; Wed, 13 Mar 2024 03:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710324209; x=1710929009; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=l3c+f14fS4xcyhQ4ZpJsTOO0eup+3eDmvL4CiWI3nyo=;
        b=Pj3BJMfnKAF/hd0RMdgjMhaNdxbSHXKliiCatMEkRV4FcMIWfMkCTxBbsJr83/nx7H
         fAsIU7o41oy3eA8CzfxFR8nUxUMBtza4MBzfQEmUFLj6ZptorQaAXpUSScu545rwVJDS
         0B6ZJ5pIQmAjkrY0CBOC0lKTuKgzYYbzcuCtCJXVszEgpeywxdA+nUgoeygq71pc0/fg
         nTSr7UDmfzCdsgmlHee5PVPEMOYFv+BHDlkc2vdnPO6UFbEU8u7Tauk/NO6u+v1rPGwD
         KzI6hLe2SBBQqXYbcd+HrMbkAws+hkCN5ud7cWtaSwl5ZdzzLT805T5Pia8TLbNNy3QW
         nbog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710324209; x=1710929009;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l3c+f14fS4xcyhQ4ZpJsTOO0eup+3eDmvL4CiWI3nyo=;
        b=rdnNTbtIVNuA/KF19sV9iIfkGtWoQDBc7q73YoW50opL7Tc3QDDimg+sIRBy9XJw5j
         wlvoKGHR+XFRK8eoNhPlFLnAjikpYGskgv6BiagOF+D6OmHNaRh34ZUwcM49gNbviPiy
         JUg8cGrRsy5jHbBjqkBzLWpaM3JjQN6qJFMpv6P1lLE2M/LvNFWsNLZmpN3mmTUqn/+s
         wbrLvFyyr8fFgCUN9bf5CRCLpHCJlT3zYdjfSYXG4tiTTTeaPBTJXQIv3Tk+Cx7TERXH
         GQZq7g8eXvyd5TYnYFIvjhqtf8VyW74/kX1wSp/678lq8glugs1s0nx7d/fbxlXOxIvw
         t9UA==
X-Forwarded-Encrypted: i=1; AJvYcCU2eT5HK8sb8656bLDbtf5Gb7ULRkDZglrwb0VAOtyV7GpfBhWePzvpptvGBgXCAKHcoA+gteyMaVtdW/3bCppzs8IS6CEym8iI
X-Gm-Message-State: AOJu0YyFXM6N1Et53rKAF40IaXeUQX/z/jhf029YlIewFDQL/0VqbK3q
	BFV2Yp0KVrgnmAsBGRHswrQvbV3skOm9QeNtxmq81g0XxD1lg9vKMH5kSy4ebzU=
X-Google-Smtp-Source: AGHT+IGaGa1c2MagWSCpfcSUCwskPRY6kaoYAs/KYgSO6bXuZ0WkU9338PzQENzjzFIlgzadxX4hUQ==
X-Received: by 2002:a2e:9ecb:0:b0:2d3:8c1f:c0ff with SMTP id h11-20020a2e9ecb000000b002d38c1fc0ffmr7515975ljk.16.1710324208831;
        Wed, 13 Mar 2024 03:03:28 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id b20-20020aa7dc14000000b005684fa1c4dbsm3746849edu.52.2024.03.13.03.03.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 03:03:28 -0700 (PDT)
Date: Wed, 13 Mar 2024 13:03:24 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Ayush Tiwari <ayushtiw0110@gmail.com>
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
	linux-staging@lists.linux.dev, outreachy@lists.linux.dev
Subject: Re: [PATCH v5] staging: rtl8712: rename tmpVal to avg_val
Message-ID: <34420a42-e81d-4618-af88-f17152bf88eb@moroto.mountain>
References: <ZfFpW9XvHhUkcspq@ayush-HP-Pavilion-Gaming-Laptop-15-ec0xxx>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZfFpW9XvHhUkcspq@ayush-HP-Pavilion-Gaming-Laptop-15-ec0xxx>

On Wed, Mar 13, 2024 at 02:22:43PM +0530, Ayush Tiwari wrote:
> Rename local variable tmpVal back to avg_val in function process_link_qual
> to give intuitive meaning to variable and match the common kernel
> coding style.

You're write your patches as if we have applied the previous versions
but we are not going to.  Please read my blog on how to send a v2 patch.

https://staticthinking.wordpress.com/2022/07/27/how-to-send-a-v2-patch/

regards,
dan carpenter

