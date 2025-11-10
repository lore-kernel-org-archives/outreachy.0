Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5597D2EBBAA
	for <outreachy@lists.linux.dev>; Mon, 10 Nov 2025 08:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762763566; cv=none; b=OgpTUDxR6Z5D5Xcmh/6KlnEU0lQ6AzxhhBQKSU6dZe3bZzDog3sM3hTjoSVBIo457+kbGnG40oY4lxT6FmYCgGxvrXInL0naBgNswyEv3Y/U+1UEXBzInLalo6SXqgK8W2Cm2EhOtiuRExdAdKS/LjtsHGNtTfPTZKCf1oJKzJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762763566; c=relaxed/simple;
	bh=Kk1WJL5OvO8Dk0a049qkF4L/FOOdQuOXnHdfhx4ehaw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E95T+RUz/j4JCRWEdao5YSsYKQfAvCp802LyMh20yLL1nW8qKtp957hZTVCiTVkK8j3S4ZV3oIn+i7PBzhjhcuhjrGfNmzrd8ydYGk57n7I45fvS/EWNv32MNVKW8xWtwDnESRxzQQVjDVHJE2B5FPHXmC+IkMGDguKkHdUPt5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PVtjJBrR; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PVtjJBrR"
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-477632d45c9so17685675e9.2
        for <outreachy@lists.linux.dev>; Mon, 10 Nov 2025 00:32:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762763563; x=1763368363; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/w7B3riPQ5vl5Qmlqum2iiqORAdpBKrl5g+Ab18w8+4=;
        b=PVtjJBrRBm4uoT4sApP0u/jlaLUpV3zITTLkat0h655oM9C/ywE/RqzonPR3yPk4G6
         euNRKkJiPoIn9wEZ1eyYEHkpyai7+JfM/DxIc4Uhx0YPQ1kEZ6OSahKkupvv6haOvYaG
         yEh9ZBFASl8XtsXC414NFn5LxISH5xQshVZRcD1kDCFeGTqgPHFJMtmvB46a0Q/tEnwb
         Hf0CrG9yG7FHF4+vpJPSPrFjiOZdOgS4c5kRhYITMSmiewKBDeW+CSlmoUBGCwE5gWyI
         pvTpxdkO09baRxantHJ3NYYic9hsvWdy0H8DYeWW8vqzeCz9lnfBSvark0mO4agH+Wjg
         1B+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762763563; x=1763368363;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/w7B3riPQ5vl5Qmlqum2iiqORAdpBKrl5g+Ab18w8+4=;
        b=X03ew90eOdLF+14nfXGrVZo2NY1Fh9y8Cxie/F985xHQdDablmGxnbqGe5QyQ65VnV
         usdslbpcE/vRTNKE9Gt8Aykt3ffTphQMc3zlCWikKDR6pCW9hOdycXRR4qH47bgY+TEF
         ltI5xoJZX4duM9rLByvnu0blsvHMSewg79XRfpA1MHhG0DU3GO4vSTtBL/NNMerbdoij
         FAdmMV7xGl+nh0GG+9snAsRe/oKyRK9GHUVTbORpci+kfSkxAxNWEqBVZ60pcpE9u/op
         0//yCFYH2DDrDRpWAh9D/TUVotlkg0crs9snZ5enkTd6ciN3wk1anL64Kalk4ra5CiQT
         EFvw==
X-Forwarded-Encrypted: i=1; AJvYcCWwJD4LAH4WZVrvEmyhRVaU9++KIElIIp74lc4VhvmlUxSy41gGsz1yOLEjhSl1dHyGkWYOo/Cl8l0=@lists.linux.dev
X-Gm-Message-State: AOJu0Yw7yXlwKkBf8JTbKUgjisRxI3WxpN4JtGKwSNbGoIqnzQMB0SK+
	DkjG27flnqCC/ptQfpypZmO7XBys+DjH1rH+8IDB5NW3Z0mCjfL5kQas
X-Gm-Gg: ASbGnctV+ceda3rc9O/K8Ol3UT0ROTFR+QKgpROw7pgTYT5FpHTa/Pd+xaJ0RF+JoOV
	hqyTPA4cfrjUPHhgTr7hXQyAACUmFMmpaxHawXuDqpB5tg3btg2wNQjK9t3MXCsmV4iI9n7agVE
	jY6OjftGtMy8nc89fShNLY8fvLVQqPu/7JiYpaXGNVgb1vLN1wZ4J16p4ASxHUqXpkr57emJexT
	NnPFzFmL0FnWwzPo33XIoQgm3eEwMQ7+8X9ORkeiLqr6zX0PaDU3xJgYm9IMtOw0cD5l3sPx8tb
	yoRqMLRl0Mavo2sVOT82Q7QJ3FMxKxA5Bj5MDC1G2LoQs73DjiR8Jc8uNHd9uCXUD1n+JlIYp9+
	zWwLjS085SwxL0p6BFVv3sHwVw50O4zAy7oY9I4WjqFgUPjP8it5iWxpSli0RZd4o7uBbvyhK35
	nKhi0QT2L4A8VxljN5
X-Google-Smtp-Source: AGHT+IGhuQxvdIPqXmeyml0g9xi1//VxE7hSufLSKRdx3skhW6foVF8bcmEFQM/y9SQegjaQJUtq6w==
X-Received: by 2002:a05:600c:4ecc:b0:477:28c1:26ce with SMTP id 5b1f17b1804b1-47773224fd3mr68310335e9.7.1762763562445;
        Mon, 10 Nov 2025 00:32:42 -0800 (PST)
Received: from egonzo (82-64-73-52.subs.proxad.net. [82.64.73.52])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42abe62bf40sm20385624f8f.9.2025.11.10.00.32.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 00:32:42 -0800 (PST)
Date: Mon, 10 Nov 2025 09:32:40 +0100
From: Dave Penkler <dpenkler@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Michail Tatas <michail.tatas@gmail.com>, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: gpib: converted // to /**/ comments
Message-ID: <aRGjKOJmbiFYua24@egonzo>
References: <aRDo9UtYTwcoFCFm@michalis-linux>
 <2025111014-arguable-antelope-1d9b@gregkh>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2025111014-arguable-antelope-1d9b@gregkh>

On Mon, Nov 10, 2025 at 09:56:00AM +0900, Greg KH wrote:
> On Sun, Nov 09, 2025 at 09:18:13PM +0200, Michail Tatas wrote:
> > This patch converts comments from // to /**/ to make them
> > consistent across the file as suggested by the TODO file in
> > drivers/staging/gpib/todo
> > 
> > Signed-off-by: Michail Tatas <michail.tatas@gmail.com>
> 
> That todo file is a bit out of date, we now allow single-line //
> comments, so this really isn't needed, unless the maintainer wants me to
> take it?
>

No, I am fine with the // comments.
I have a patch for the TODO in the pipeline.
cheers,
-dave

> thanks,
> 
> greg k-h
