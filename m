Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550441A702
	for <outreachy@lists.linux.dev>; Sat, 16 Mar 2024 16:10:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710605415; cv=none; b=meuLxnBUamKNjA0HMorfHpigYA9wcmMGH7F0WZSIQyITlU//4Ulo94UXjKuZfZgyKYhWphLsYx7slgAYDNb03OXMN2LuXvscKyCXVcorUHaTfr1RmcVLTb2z/eLee/7ZfqeWxU9L+Ez7l0JNwbxjaBHEeKtE3CzJbo5XGB+vSyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710605415; c=relaxed/simple;
	bh=8uAbr9dbhOlnS+O5oVTM+AdrXjrIV5Ss185LzkPo+ng=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DEhVmgH+bcH1avMPcQss1BpYvEKWmA0/xPJ7m/3LV+Eqps84RT9ZJa710S7tPyJK7n7I1ea7Jcu9OEH+c0TOYEg1XC2OOMRXsONJHBNzuyqS6sutq4tyGg8V4ELbuU8lLEf5zbGPv/aoFnh71AVIxg7V8Y/Ds6ZXacZqExEo/D0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V4f9Iqq/; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V4f9Iqq/"
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-33ed6078884so707155f8f.1
        for <outreachy@lists.linux.dev>; Sat, 16 Mar 2024 09:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710605411; x=1711210211; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Xc9PlAK8HLlvbENAjvXerfu8Ki4nongkEHtJr1e7ZpU=;
        b=V4f9Iqq/Rhx3alWb2dkIR2x7HZyXDmgxd03UnLzgrJFVWtP6eiLEXmA5ttZDQud4ss
         2dapmIG7QVf/Begz1rTsCn/0MGA4DHOXUKz+4IyTF5+kUyyhB3ckfkGR1k4fh/CsUcAx
         RXJGPQ7rX/sTQYHkMHUIzNPh5zbIkcj0ee9WHL6oe+/Kuux/Kf1tWORjdCj97CLzkslm
         wbsDlUEFNtL+IPHNK4Kpmg+j1FYhRfKy/WdIuirVN6kbtBSV5c0vSIcrJaRRpDe2dRQL
         EW0yOhg1LXKasu2gVrzLLtlv6BNLb8tQqZYrlWBG5pGGjujYw0VdG1TlR+i8rzkcvLvB
         LPSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710605411; x=1711210211;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xc9PlAK8HLlvbENAjvXerfu8Ki4nongkEHtJr1e7ZpU=;
        b=ZWZ15VDOUrRPJ0xb8NTxVdm8xyrNgkVWNuZI9Uj6LZBgaC7qA/nT1koq4wadP0apUV
         /MXcD6LhauR8emBoHOhhpeL/8wmo5gbbGI+/7+W4WTVmbhva9twoQyDZirwl6Ti+prd1
         WUvvDcS/aT0Mu8ZO0LxEB1Qx+V/wRYBuWPCfwr9a8JczqEDoE1wP18SK0PaGw+Aq2zgM
         WB2qnH1CXJ4eN427BPOieZDvF9IEgk1/MROwpoYokF5KRIeF0WhT4sqZeO20Y21K4m6R
         SwHzr78xuswVAlzZPblEomGwxX2s9RKcM+tmQjK/cvNW3FAzA5lPY6qam9W2jin8GCAJ
         hv6A==
X-Forwarded-Encrypted: i=1; AJvYcCWEA4KQ0Z6dIhfUNVFE3J9boSndFYF4uzoDhcIIsSfyd4axTLWxKidT8wOUAhzbTUfdgN4ID97SkM2aNf1H3kvyyK5Po76yXA78
X-Gm-Message-State: AOJu0YwxHgb5sUgHw+xkAXUxqs7hveukItUstLkz+qH5gDK5GNMyj3JY
	Xu9LXpQge3pGlp1wmNeRG7FjUwztGVsifVYXSa5n+Yju/a/7jEVYNZCQx4AYJaY=
X-Google-Smtp-Source: AGHT+IGT/St6tez+GdtVsNrA9qqOcIaHiO4AkqzRbBCIUtBLkV3tAz5Isyj1njOSt35XwZZA0IbleQ==
X-Received: by 2002:a5d:498b:0:b0:33e:d6cb:34c4 with SMTP id r11-20020a5d498b000000b0033ed6cb34c4mr3630039wrq.4.1710605411349;
        Sat, 16 Mar 2024 09:10:11 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id bj19-20020a0560001e1300b0033e68338fbasm5699546wrb.81.2024.03.16.09.10.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Mar 2024 09:10:10 -0700 (PDT)
Date: Sat, 16 Mar 2024 19:10:06 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Philipp Hortmann <philipp.g.hortmann@gmail.com>
Cc: forest@forestbond.com, Dorine Tipo <dorine.a.tipo@gmail.com>,
	gregkh@linuxfoundation.org,
	Linux Staging Drivers <linux-staging@lists.linux.dev>,
	Linux Outreachy <outreachy@lists.linux.dev>,
	Bagas Sanjaya <bagasdotme@gmail.com>
Subject: Re: [PATCH v3] staging: vt6655: Remove unused function
 RFbAL7230SelectChannelPostProcess
Message-ID: <d599cd7b-a5d6-4f2d-8744-10254b75f7e5@moroto.mountain>
References: <20240311035649.25043-1-dorine.a.tipo@gmail.com>
 <20240311060747.32876-1-dorine.a.tipo@gmail.com>
 <36c92e00-213e-4f25-9720-66912b4da56f@moroto.mountain>
 <d0f975e8-3ce4-4a2b-b52e-51b748a8601d@gmail.com>
 <4e162fac-078e-4a37-9a6a-fad186b0d27a@moroto.mountain>
 <66b9d80f-94f2-44f5-8ad9-b73caa14bb44@gmail.com>
 <ZfPV7rd0YHc9pChi@archie.me>
 <02462be1-477b-422a-9f4c-9c8222d8d279@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <02462be1-477b-422a-9f4c-9c8222d8d279@gmail.com>

On Sat, Mar 16, 2024 at 02:33:07PM +0100, Philipp Hortmann wrote:
> On 3/15/24 06:00, Bagas Sanjaya wrote:
> > On Thu, Mar 14, 2024 at 07:45:28PM +0100, Philipp Hortmann wrote:
> > > On 3/14/24 07:36, Dan Carpenter wrote:
> > > > On Thu, Mar 14, 2024 at 06:33:58AM +0100, Philipp Hortmann wrote:
> > > > > On 3/11/24 08:31, Dan Carpenter wrote:
> > > > > > The main issue with this patch is that it doesn't apply, but I have a
> > > > > > few other comments as well.
> > > > > > 
> > > > > > Why is Forest Bond not on the CC list?  Please use get_maintainer.pl.
> > > > > 
> > > > > Hi Dan,
> > > > > 
> > > > > reason why some omit Forest Bond is that the emailaddress seems to not exist
> > > > > anymore - find below. Can I issue a patch to change this?
> > > > > 
> > > > > Who is then entered to the M: in MAINTAINERS?
> > > > > STAGING - VIA VT665X DRIVERS
> > > > > M:	Forest Bond <forest@alittletooquiet.net>
> > > > > S:	Odd Fixes
> > > > > F:	drivers/staging/vt665?/
> > > > > 
> > > > 
> > > > Yeah.  His current email is forest@forestbond.com, but let's mark it as
> > > > orphan.  You actually have this hardware, don't you?  Do you want to
> > > > take over?
> > > > 
> > > > regards,
> > > > dan carpenter
> > > > 
> > > 
> > > Hi Dan,
> > > 
> > > I do have vt6655 and vt6656 hardware.
> > > But I have no idea what commitment I am entering into.
> > > Please send me a link to a description of what my obligations are?
> > 
> > Hi Philipp,
> > 
> > You can refer to Documentation/maintainer/feature-and-driver-maintainers.rst.
> > 
> > Thanks.
> > 
> 
> Hi Dan,
> 
> yes I want to take over driver maintainership for drivers/staging/vt665?/.

Awesome!  Thanks!

regards,
dan carpenter

