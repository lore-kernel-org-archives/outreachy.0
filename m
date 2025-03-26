Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EC5A1F4E49
	for <outreachy@lists.linux.dev>; Wed, 26 Mar 2025 18:08:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743012484; cv=none; b=rIaCf5XOSma6lg7rnMs3IoK7GkX5eK2RRJcw0pfToXDTQ5AuCL73dD1nRWpQcoPoQxY/wjo4A+C3OpJJ/VlLEHdfMXUnP77GXRaswfdDXEjzniRlTrQJS5obfWB63PlHTYpqRwQYoeN3T4G45/zPxCQhdokqR3GD+nbZF2P6JJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743012484; c=relaxed/simple;
	bh=v2n/d7hrjuUThOuDLMUgkVZjEzbrJfFkf873RH48E9I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dH8bjWVeWhaPPSJNlk0vyruRiQQ7hV+3+pAbLNM1dxNHE024QVjxJlAtKtumqSNdq/H3wzBn81jGSJJZ+RDEpIzvqvdF8tI9FfkXMCYr+7DMLoA90ol0rLu4NraCXcD1rnu5Izb8YmODjX7MI724e7JNinzuOOUXR13rofE6mmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZX+6weKB; arc=none smtp.client-ip=209.85.221.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZX+6weKB"
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-5259327a937so75686e0c.0
        for <outreachy@lists.linux.dev>; Wed, 26 Mar 2025 11:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743012482; x=1743617282; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5iuQOulb8eKmLClmCJaUmyWQWGFBOTw87p3B/LN8e94=;
        b=ZX+6weKB1H+xx2PbbemZD51Chz+mTocmTANupB3M9NnZYd2h4RVnPSeGljmA13qE+l
         48eatz+fAHX705Znq17t9fmww4I4diCUyMPPjf74kE4ij568xCu9qNf0EJpREPO6tdO/
         eG3X7ThkMgA2oGLTHsUjgxfwBmfF7GusxDa2l6NEebX01g4ORFgMZmausKncG5kNq/AZ
         UVkGzpxEHCCNd3SQZullfZxC679XW9zqscbvy9wYwDlY4+zZ0sy2ZkDwVjXpV6MzqjBp
         vcDibG3RK83XVo4ckidoCeo6+Rm96uyaRNpUDlIgksnt5PtP33uokPqqYwpVQnqciNY2
         SsMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743012482; x=1743617282;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5iuQOulb8eKmLClmCJaUmyWQWGFBOTw87p3B/LN8e94=;
        b=bcEQyO165s1d+tan6PFJyitBK69Yb6Dk3zSITxd6lbYiQg4dzwRZn+/q6CJLTV2qYG
         PN37nMzyM8hFQ7uoHIXRBLQp4Icu7p6qIjws6UP8AQKl6nh6gHanYgWXgD01oBdlZLen
         VrjOYlfggHkVQ8I2A+llQUc4Dc1zDZ5QO3ftX6gySH4CvaVKj9c+bPNcSp1JGtMgs9j3
         a7yosjOnNZW8EMK4/7oAKeMkN8WZWvOPjkIyI/VNfFoC40T77tdKpeBWr8x8qu1CFj8W
         dn9Q7MaFtkPpmxprZn4XTanE6Le+x8EYs6w+50AjTW8LTeU/tdpDUHIBsERE1pAKw8ou
         8ZhA==
X-Gm-Message-State: AOJu0YzueD1NkyPWIckVQBvXXCMwaMfM1eEekgbJXo2GF2foMWz+unDf
	NGFGgalH8SpOpYsWLrjsI59DD23tD6bxQ461YAepnHPD8gypfGsJOaUMQF9wGxQjODycEOFRsPU
	lWnTfDT08iO/G/kfauyN28aZOWio=
X-Gm-Gg: ASbGnctsT9WcSqA2hslsUg6qFgM3izWKCEY55f9IvyUEJbmstMdyzm11PzXdodOnbI2
	G/nywxixYxBemvVzD99AvXfx+1Q83fivt1D+7TIws8OoxO7OmfXK2RKDl3pQhpkHDFyVIojzYpu
	y/wjXQTmweGBVdRqYEaTMsflI2G4B9
X-Google-Smtp-Source: AGHT+IG6NHGQ9BjYLdkfZ+UZsYxE+jzCUAJah3dmQMr/S3SkevNtePUjirmV4hi2aiPqy64cpyD4uMGNvuv7x0e2rO0=
X-Received: by 2002:a05:6122:202a:b0:51b:a11f:cbdb with SMTP id
 71dfb90a1353d-52600916eccmr825621e0c.4.1743012482034; Wed, 26 Mar 2025
 11:08:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CADYq+fbMox6e7AJMkoEmYjjt-V4L29oy9WyDcL0W8pw_KL3b=w@mail.gmail.com>
 <ff7f6d0-3efc-d977-d1fd-2349f331a6d0@inria.fr> <CADYq+fYrDqmFS=+U2jhGAqNr19rp1ChFaog6C=o5DCQFS7FxCA@mail.gmail.com>
 <d273923a-3833-9bcb-9771-dca770d0d8a8@inria.fr> <CADYq+fa76jcWrs-qJVEmMJ1-GCYx59N1V3Wtj+YARTXnqNQB2w@mail.gmail.com>
 <d22f7ea4-a311-dedb-4479-a6dbeb82835b@inria.fr>
In-Reply-To: <d22f7ea4-a311-dedb-4479-a6dbeb82835b@inria.fr>
From: Samuel Abraham <abrahamadekunle50@gmail.com>
Date: Wed, 26 Mar 2025 19:07:52 +0100
X-Gm-Features: AQ5f1JroylNxJGH_wIiUNHz7xsb3p2tz5mrD8Nzzt4LAi2bp8Ow7g3XAKNL_BcI
Message-ID: <CADYq+fYXCXXvk1Ja0LpD-LvHYevYt1WXVix5uv2ey-Dk=Y+yEA@mail.gmail.com>
Subject: Re: Confirmation on next steps for contribution
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 26, 2025 at 6:55=E2=80=AFPM Julia Lawall <julia.lawall@inria.fr=
> wrote:
>
> > Okay Lastly, please do we continue sending more clean-up patches we fin=
d or
> > we should wait for your pointers on the weekend before we continue.
>
> Please send more cleanup patches.  The more the better.  By cleaning
> things up you learn about sending patches properly and also about what is
> the desired Linux kernel coding style.
>
> julia

Okay noted.
Thank you very much

Adekunle
