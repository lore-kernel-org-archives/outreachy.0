Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BBD3361974
	for <outreachy@lists.linux.dev>; Thu, 15 Oct 2026 19:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792093528; cv=none; b=TGadceVei01wK0uD+hk17IPNM78hSov5ZRCKaZgN9IuuhSlWmsN27MwL6r2i3rn7mEYsaUxGYmXyjrUOwGZNwq/jn9UkHuKL0uzfHIaxqXzT/zL/mSaac+cMp5OUJT53rvDkXyMLGmuTdRkAW5Gp0ATIekaCltdKX9q1QOzKD+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792093528; c=relaxed/simple;
	bh=PvNRqwVY3U96lVu6LwTnjyNn7YRRoGPY+tOwZREgySg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I1+AEFGKg1UPn7Wx8a9DEJ7hTHKavj6eJFfBtzmYkONT2uBx89PgJQ6kvnXtk8UA4ny28yuA6Kpvzuya/P68G8KW+fQWQTa1CyBlToGhFOYZOxLDtVFxNySzH19+mGPDQisVAylMumfzU49SfKBVPf8jtq4TKIZFDUGYpLWPLEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DMwkXwQe; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DMwkXwQe"
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4a1ad2e2391so25238975e9.0
        for <outreachy@lists.linux.dev>; Thu, 15 Oct 2026 12:45:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792093526; x=1792698326; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=j3TScMJtX44eJCAHUzTz+8yigx8ZEb71Hc0vt5ePLJU=;
        b=DMwkXwQeAWX3PqB7oUhjGhYdOx128SWkyranTvbaECnYcjarv0pk1MzRc1PIJcuz4H
         vzz5tqcJkoZVH1bnv0HHXKsyIJbjAEhJs9jx9YeLbPG1f/8Rna/sjA+rIUoSb0KTrr+T
         NiBZOD0iZ6LkfvD/tmaaXOSP1ULQBuXAacSGGNBHuiPjqvLD2//oOvecEYiCHfDNgj8V
         bKtSYstTqU5RfQdTzyVTfJrk/7OuVqWbGoDDBgE6EnjgnDg1c+BWz3lmtjcHYxukhAUf
         JQzcV7EQTf2pai7cSRthhEjIL83/hp3Km/oCOBlZyaRji5kb71MYARmUoT4uSiOo2rqQ
         DBwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792093526; x=1792698326;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=j3TScMJtX44eJCAHUzTz+8yigx8ZEb71Hc0vt5ePLJU=;
        b=RxX+tE05JT1qtZdEOrm/om8ui8MjHiodxqtwwLAuKtQdA8dIwBM6sBcyzzb0/UR7O1
         lBIIyLl40jCx2+q8Pg8BZ5KHwbP2O30yZ6jVF/EVPKe0pl8Iu67b1y3cXQJFwhr/DGKh
         IpdMO4ISyfInSO0eGkMjp9bsp48yDSX7Gfo5XDwCLdaq1UIZ9vcfU04mLmOoxr4NYr4R
         5zHhw68o1pSSK0bxM+7/36RGpl1CRY4htetM6V2Wf+QT+G9sJ5HHDbYobczdcrJ/S21S
         mot68K0y6WWppVOQZdDhiutca0rJhdIi28pZRgiJFIxN+0eWnvP3fB+aF5BPOnzlu7iC
         KvdA==
X-Forwarded-Encrypted: i=1; AKwUvBws2yxslvV0pQbUU5BDbh9Gr6pOW4k/QCNAaL64SfPriWA2HBWHdO36i5e4Yu//ypkkMdO2/tuHS0w=@lists.linux.dev
X-Gm-Message-State: AFq9FYLYNrNpmq4DgUn1arT6c8xVkhMu4q/kLLnI8qWticn1nNxCZxoO
	HiYyYHyYjwA9Qix7vK9FIEDMIbHX64RYzL4Uzn0SN8yffnim9KVAa1o0
X-Gm-Gg: AYBFou04yFBQEYJOya1aEDZBg0hWdlkVh3LaQI9fpbwCDLtpo0NTRHTqljaNh1gZk8L
	3t0tr84kkcvXRRvc1ZfbRN5/othnpFWsjwNdDPzDQuctalJn5+W2VGuf0rfydmJq5NqO4FPBfN0
	Nccps9k6T2td+q8icluF3lbHFzMKumPq5D1trj6a95F9/CecKsV4G2wA+lRhzgNLOipL1gONXD/
	rY4FUdMi0Cfom26MiMzqudikQrCV2kO8tSpX6j6ZggPxTmEk5fN4zXK9zA+ErUSYiP2wjfpwCQq
	yogrHjaYenB/xS1VSncuYGcTMgBnTMDXz3ZX/YelcrysATObnNpjlb9tji/em+LnfK0/hRqf/gy
	NlHzIwMribjUReGvCmeFFqqALPsY6gB9TEQRRUv2E+i/3iPXfeGsj0QJgrNBoSu9o+2jiED/+St
	E0/dEsHhgYl4ZFvptQpnHXPenVWm1bSsYj4PmOVBf35Q75qpa3EHmlrZ6iCzbmNtpw3PE=
X-Received: by 2002:a05:600c:6994:b0:49c:dada:30b7 with SMTP id 5b1f17b1804b1-4a18e446f3bmr402490965e9.2.1792093525743;
        Thu, 15 Oct 2026 12:45:25 -0700 (PDT)
Received: from localhost ([2c0f:3d00:6be:8900:ce5e:9212:ea4b:f30])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1bd9b8b5fsm100897135e9.9.2026.10.15.12.45.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2026 12:45:25 -0700 (PDT)
Date: Thu, 15 Oct 2026 22:45:21 +0300
From: Dan Carpenter <error27@gmail.com>
To: Ethan Tidmore <ethantidmore06@gmail.com>
Cc: Luka Gejak <luka.gejak@linux.dev>, pavankumaryalagada@gmail.com,
	gregkh@linuxfoundation.org, outreachy@lists.linux.dev,
	dennylin0707@gmail.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: rtl8723bs: remove unnecessary parentheses
Message-ID: <atEtUV5q9MHRSTJb@stanley.mountain>
References: <20261015120634.95218-1-pavankumaryalagada@gmail.com>
 <5d577cb1b4a91e8cdfda171bc7100105ae90d91e@linux.dev>
 <DM5IYFCRBE9W.1U3KCU36BUE36@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DM5IYFCRBE9W.1U3KCU36BUE36@gmail.com>

On Thu, Oct 15, 2026 at 10:41:53AM -0500, Ethan Tidmore wrote:
> On Thu Oct 15, 2026 at 9:11 AM CDT, Luka Gejak wrote:
> > October 15, 2026 at 2:06 PM, pavankumaryalagada@gmail.com wrote:
> >
> >
> >> 
> >> From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> >> 
> >> Remove redundant parentheses around the address-of operator to
> >> follow kernel coding style.
> >> 
> >> Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> >> ---
> >
> > Hi Yalagada,
> >
> > I'm just letting you know that this change is no longer needed as the
> > entire staging/rtl8723bs driver is being deprecated and removed.
> > Support for RTL8723BS has been ported to rtw88 subsystem.
> 
> So rtl8723bs patches aren't being accepted anymore? I saw Dan reviewing
> one earlier, just wondering.

I didn't know it was being removed.  My expectation is that we'll
probably keep merging patches until it's actually removed.  It's sometimes
easier to just merge easy uncontroversial things without trying to track
everything happening in the kernel.  We should obviously delete the driver
as soon as the other patch is merged.

regards,
dan carpenter

