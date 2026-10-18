Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88B82320A04
	for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 14:27:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792333678; cv=none; b=u+Z/vUHWTvyJILoBiDX0dzz6oWagnGd2C/Qn832ztfKUtbl9N2rrJRO0429ciMYnohsz04GqreYgAGIE4OuRgLVwke8niCejP4ZTXIhSwKa3uOXjRAvR9TRLDk2txewSIJBAMrST5QiLW0HmcIXkMonZOX0+KwR8cwLA5rvsVeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792333678; c=relaxed/simple;
	bh=JrJwckTOeFLMYbWPldwO5xzUhS239iwNp6VMQuWtRPU=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=vF/v+5xUm1pml1WnfKu56d3wjT1Ql821jqVFXdmOExi+uCdF2x5t3oJIv6xHHbbDUBc4fWnexd6imx/ZhCwmLCuMOFjYCzL6oXMKzaf5WxZ4yHUOndylaPTRmyG6R3232kiLiDF1cT+0ZUtvEcd3r8Zpz33C9GlJhZrknhWZV4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=a/1lTLNs; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="a/1lTLNs"
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4a16c1608faso15860355e9.0
        for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 07:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792333676; x=1792938476; darn=lists.linux.dev;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=Eb46/O1NYU+eRR79pz07l5QZJgv8lcTTRms1awqeJB8=;
        b=a/1lTLNsSqRMSG/9j+UcCmQegCqQSZb5s/IN8ZNP5vBAYLUMLAHqpdgBI0QHx6S3RX
         aZqwRTQ2LscRDBIz13EfW6HhobpZf4I4SNZnwMIRyTFFQ8jZF8pYDK6SQXX+gtcsyuCM
         u+QnTA/KrAYcdiTvhDFtB1BayWzACU634P6+bAKx2k0S6+59H8KGR15CH4RdL4i3nP2C
         LeBFN16ZBauT0cwaDKM+PrZI32uO0fkt3OzkMobxv+DmLe48QgUZj+dIfdM8sD9c6o2I
         oSqMzsN5x1I4CEdGsIfFE+vsHuQxQG3VgsT0AWPhW57ZZuAplTednRPnMn0BhRbDrRee
         ZE0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792333676; x=1792938476;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Eb46/O1NYU+eRR79pz07l5QZJgv8lcTTRms1awqeJB8=;
        b=P9sbsNZ3A71FEtcizLVMV2RzKOJ+PHApigJCFXD5k09DZGISbnTN8JtUnZ9nr27jcg
         g+HFQZpBK3/cbraDBwNPnsrW+yJEhe3MRrBCni4+N/EC56GPOgfafatyMEG+BDBnu/Nc
         76ddMcE417QuEd0hkKZ02C2x3EBdLOhUKalVepN4LBSh8yVuJ6F6L/ZdNZZe3fUGU+Wh
         9a3WMxaAnh4rnPDLUqQXDqDJdmVLV9D17uJaJ+gvAcKLt9BetgKP7C8+oYEBhfOEZO2K
         b/VblkDT6IOmzctf2RtPEujGp12iI0jVwjlZJowC7z5K383ZMFHiqMk1f3MMmK7WStxE
         Aimg==
X-Forwarded-Encrypted: i=1; AKwUvBxkkhseXZ4fHN7n8aM3C3/Z91HyGWi8e6fCNifDxTbocUT1b2LJHZuq19bFQwSblC4r+D9W3IrVbYA=@lists.linux.dev
X-Gm-Message-State: AFq9FYLtujmDKy8pRVyd3RzvuCit10etEMyUn7hoq7kXaFAKeUXJBsTK
	kVm+KsHvh6ANI/su70vAxHAbZf0kXFFLaJi/6aLSYaUgwV67CYGlB+VR
X-Gm-Gg: AYBFou0CjjnS1aLEAhGEER7H0JhRSmRjmGmpHZEkGNRRRh/86Hz8as4RQfxemvAWGvY
	KWNrnUbLwfuk0bJmO046OlqDYWmTO5tPaKctrvR8kfBoZQmTewlbOQUY8BxlZcyfPfAmA/7wgIO
	u/JU9+4ZP9dCcwso048sA4zhrQ+c9y/fA5jbZmLPFQfZnz83fbmIEm0m8MsRxVuq5TZHK8zX22M
	Tuu7DgZ6Mb1/oc5hvkYhhNGViztJ3yPW9BK6/BLPVWEusEkaRs3Wdh/yzgyb2ZWbai1OszwZgO0
	8qjJDBk3YNJrR9Ps/XKFFXE+yPYEtwOtH+7o31IaDZgxuLKf4JNhDAvFmfT4uD7l3e5GEKb9Dr8
	ZLU92WatVeaEx62DOuJR50j8Y5sZRCzuCTEEaw50bWC91hA9ZCxZCLYN/K8i5A72m0hqet38BMw
	hVnAGQSK7HTfvagRUr/CJLa0d/VXJuNxeHeQ2WnHcE2ZAxKyWq3CC5zww+lHtU2U2I4dFryzyeR
	g==
X-Received: by 2002:a05:600c:6297:b0:4a1:9ec4:d939 with SMTP id 5b1f17b1804b1-4a1c66cc3a4mr217236155e9.17.1792333675391;
        Sun, 18 Oct 2026 07:27:55 -0700 (PDT)
Received: from [192.168.0.50] ([102.91.104.190])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48dfd4ecac3sm19037389f8f.27.2026.10.18.07.27.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2026 07:27:54 -0700 (PDT)
Message-ID: <b7a4167f8e188d7a0dfe72c2a3e6e51337a33336.camel@gmail.com>
Subject: Re: [PATCH] staging: comedi: comedi_fops: fix alignment to match
 open parenthesis
From: Comfort Oyewole <coyewole7@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: abbotti@mev.co.uk, hsweeten@visiongravers.com,
 linux-kernel@vger.kernel.org, 	outreachy@lists.linux.dev,
 linux-staging@lists.linux.dev
Date: Sun, 18 Oct 2026 15:26:20 +0100
In-Reply-To: <2026101818-banish-scarf-eb6e@gregkh>
References: <atTFT49xpaBEb7Wn@ubuntu> <2026101818-banish-scarf-eb6e@gregkh>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0

-----Original Message-----
From: Greg KH <gregkh@linuxfoundation.org>
To: Comfort Oyewole <coyewole7@gmail.com>
Cc: abbotti@mev.co.uk, hsweeten@visiongravers.com,
linux-kernel@vger.kernel.org, outreachy@lists.linux.dev,
linux-staging@lists.linux.dev
Subject: Re: [PATCH] staging: comedi: comedi_fops: fix alignment to
match open parenthesis
Date: 10/18/2026 02:30:28 PM

On Sun, Oct 18, 2026 at 02:10:39PM +0100, Comfort Oyewole wrote:
> Fix the alignment issue in order to adhere to kernel coding style
>=20
> Signed-off-by: Comfort Oyewole <coyewole7@gmail.com>
> ---
>  drivers/comedi/comedi_fops.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Why was this sent twice?
I apologize for the duplicate email. I thought my mutt configuration didn't=
 work the first time.
