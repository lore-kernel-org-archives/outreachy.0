Received: from mail-dl1-f54.google.com (mail-dl1-f54.google.com [74.125.82.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9767A3DE45A
	for <outreachy@lists.linux.dev>; Thu, 15 Oct 2026 15:32:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792078336; cv=none; b=SBRarR66fzbNXOri+5hKEX+cLNYRgVh5m5m2nmGC2vUWLHnOfo7PgtaycOgtwDFvTByDVhpJp9KYdWKhNkf1ZXJPb8EIboyNICvrLgZ5UpC1gBQyAWfayL6D8TFCQ+D4FpL6FJPCkWMVI9RPseWUF3W0IZ71/pBCVcT6I0RtDus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792078336; c=relaxed/simple;
	bh=e0sIXOKR0xs1k00jTBjY8M4GueDsJ90MJVOQ7kmfR9o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u5TkKXaBmnciwUGyvXkNpPPrjH7hHiQZ61sblykoUMdoSNBwc/tjZFReNs8Bzx8KraOiFaND9rVAReBpKTsUJoegh0lsEM7E3JbhHhqKVgW1jui2zRblxKWTh3vbThF/AyozcsM1zFJTflF/Poy1GalRx/uSPCrg19HXS92TSxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IZJN3tBE; arc=none smtp.client-ip=74.125.82.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IZJN3tBE"
Received: by mail-dl1-f54.google.com with SMTP id a92af1059eb24-17bc533fda3so2394944c88.1
        for <outreachy@lists.linux.dev>; Thu, 15 Oct 2026 08:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792078324; x=1792683124; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=S/PW3Wn5OQKVEn/pyyX/DchOj7A4//pr+AwRdQo+Qcw=;
        b=IZJN3tBEU6eQcgRhPmYcj+eWYjPuP9LMr0Khy0s88Yo6tiJFyWt3c2KDIbEorhdcCl
         r5Bn2zgqj20+9vIPG3EJa7Hfkqy2HcBmIxuid7ILPD/33j//Igb8Fmp2qCZNFVzeY+FE
         OMh8JX3GIcqnYaAjzBbpLu9V2/ZG+kzhH+aIPZ5F/+it3BVEJBSo2OyWTSD1cmkBrsTT
         Dp/JZq96cc7DFShaXeN2DyBHUEFqFRYDCiXXz1tRR/lNeuxqFWd+HDt4Aqmo3hltJ899
         Zrkm6zKex4BSF1lpwMNncBtymigYeyMzUfD3choA/eYHMG5dfEmvJEcNTjwUGpke0ry2
         UgrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792078324; x=1792683124;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=S/PW3Wn5OQKVEn/pyyX/DchOj7A4//pr+AwRdQo+Qcw=;
        b=CDQh98+9nDzbbCG5nP/1JIN5D1EO74h8otAsnTFnMi8p3uwSTu8E1YtE361L3NFa88
         HmtZ2aZAHiXVqnHBX2aiZCb3kZlC/LIfK3Gnw6cVt900sWC+cNUAS+pLI1leG7Hlw8WP
         D5DCp/mqbWAK3TpU3Q/fzwca7mWp0xXx2GCa++VJZcsXekVa0Qg8LTUT826h15EQZByZ
         8PY2KRWtDCa7VZDtQ7xaPRMqGQhtM59tezAREDN9bIPsfHKy0wFO9qIfr9+Rh2KmkJyv
         49CudCGyeurMBZqkJYTilqYJbrUtjgw6rf7NJ1tsfynP8Ob0JUDKMO5wRxXWUWh6tj0l
         Z69Q==
X-Forwarded-Encrypted: i=1; AKwUvBz8p7GYNO5LNdspBZifbagqGCDsm5ARVwrElvKkw6f1Anyv86n0GA8n/EqXLhtFzPXPq3m5Biak7OI=@lists.linux.dev
X-Gm-Message-State: AFq9FYJ5EGEr19ApLtfaUudzROcpyf5bcKJPutEQg5/PzUe6cI3KkVtt
	uLypq5zcsoF65jWlOxaAMewLAZ9+XhMIKe59+xKYa89jiO4sAm0esREsSh6l7TRS
X-Gm-Gg: AYBFou1cfN8JFwX38lc5C8Mp8JeIfwu5od67UHPvRgmXDQTZ7TKmKep24YMFpKewIY1
	RUsn8OvjCbUDu/GGoauuuUewkhHyiFsA9DxxZ+m9iE88ly4NfKWryI80XD0AwC2kZ8VHZvfcqMV
	0epJdoekLUz7ckkHq3dZT12BMLIG9HWIwJw6jxPxK9wheDfDM74n5etnKJMJRAq5F5w3T7T/NSe
	vL1OCQWPRFsE4shATYzkhoWumOZyXsL7Nx4V50wf14akIsEAB5W9zDvHWfPvnCG+7mxKrU/UD8F
	lEDtfu/x/MXfKoN54rdpGyt1p2BMgg0Reo7zRg5VrfXt4pLn7a1QsP5fz3+iOqOtgp93+GA1KEE
	Hd1coqjJJzQG/li2sClwNNDk0mSyFZ6zDvlGHGrlKstLmuopERPba1/vjQwdeFuhLMIgSNUc3J5
	vlFyGYzTe9kyPHOA+FjoS29LAZtCgfoSHhCYlnGBnc1s4zTSmWx4wdh+Yufomo1xH2uIPUhwiqK
	Avt
X-Received: by 2002:a05:7022:295:20b0:151:6e80:baa9 with SMTP id a92af1059eb24-16a5e49fdaemr24329739c88.12.1792078324288;
        Thu, 15 Oct 2026 08:32:04 -0700 (PDT)
Received: from user ([2405:201:c052:b00b:a490:42fc:1e02:1d0b])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-16997c21ff3sm56081603c88.2.2026.10.15.08.32.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2026 08:32:03 -0700 (PDT)
Date: Thu, 15 Oct 2026 21:01:49 +0530
From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
To: Luka Gejak <luka.gejak@linux.dev>
Cc: gregkh@linuxfoundation.org, outreachy@lists.linux.dev,
	error27@gmail.com, ethantidmore06@gmail.com, dennylin0707@gmail.com,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: rtl8723bs: remove unnecessary parentheses
Message-ID: <atDx5dH81s87HInI@user>
References: <20261015120634.95218-1-pavankumaryalagada@gmail.com>
 <5d577cb1b4a91e8cdfda171bc7100105ae90d91e@linux.dev>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5d577cb1b4a91e8cdfda171bc7100105ae90d91e@linux.dev>

On Thu, Oct 15, 2026 at 02:11:19PM +0000, Luka Gejak wrote:
> October 15, 2026 at 2:06 PM, pavankumaryalagada@gmail.com wrote:
> 
> 
> > 
> > From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> > 
> > Remove redundant parentheses around the address-of operator to
> > follow kernel coding style.
> > 
> > Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> > ---
> 
> Hi Yalagada,

Hi Luka,
> 
> I'm just letting you know that this change is no longer needed as the
> entire staging/rtl8723bs driver is being deprecated and removed.
> Support for RTL8723BS has been ported to rtw88 subsystem.
> 

Thank you for letting me know.

Pavan

> Best regards,
> Luka Gejak
