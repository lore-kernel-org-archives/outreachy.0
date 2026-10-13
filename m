Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B4A4078E0
	for <outreachy@lists.linux.dev>; Tue, 13 Oct 2026 14:58:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.176
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791903492; cv=pass; b=HReSSkGtCZY4jAAGtMo37Q7oQhPVc5eYDhp+JnYY9eD6SyhtMPPv3bhFqI4flYLSUcrNE+MGHJfwsRPD2pDmvM5N9SbMkOfLJ1tnhFViiFvPfttvzv+bfeJRTvw1ZgbWkYRTAseFn8V1YrEwKLrnaKRSfrg2HlANVhXd3dGIxHQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791903492; c=relaxed/simple;
	bh=2cDGGFZn0hfB6oj6MjuZDl9c/8rb36j6OHqo66VpH8o=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=ijhTlhX/K6QMvAOEDkYaqdZLcut0onoi9V0MfsOE38PZoGTP6j5AHUTW/hDgYemxOsLMlJYkSjW16mCAnfNPpdnXuauN49yrkRoV10Sj8mpk6vIi1nvVNfpWWbgY8GI+QzHMiHn+AjgVcNmu8bkQ1LSLyaDD76RwQC7MGplKixE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RDchBzn0; arc=pass smtp.client-ip=209.85.167.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RDchBzn0"
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-4a4cb36ae00so1760890b6e.0
        for <outreachy@lists.linux.dev>; Tue, 13 Oct 2026 07:58:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791903489; cv=none;
        d=google.com; s=arc-20260327;
        b=SxHgrNYR2+a7NB8aV70pjTE9jbQXw0mopMtLDC6ZWMS51/cNQBBItaVpcB8bkCbnO9
         lIRvV+yFNNiHBNblUe035zi3dKpRn706VsAw76VuAB5kobGOEnrhuhkUAM8olEuFWPJK
         ChnEJOIMf1cwXutNMDbmJuKFKC4uUA2QCr0P+2dVMYeS/R+4cn0Ee1u7dAnKGzX84tr5
         CovqooqqBqHL/0Vba572Gio75XoHbwCDzjAQ3FxYpAQ+AYBcj8DvPODXpQP14y2oqzEa
         eleLzX1gFVi1d0Cq+Wowx+Z4xN/lw+49MZNKsTh5MchaWPnUo0Nuzco+9yfUIm/CEKuU
         mYgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=2cDGGFZn0hfB6oj6MjuZDl9c/8rb36j6OHqo66VpH8o=;
        fh=ORcOwlulYhm0PlB4niEDenmGt0tg1PSeOtR/xiWpIK4=;
        b=Zc4Ox0pX4LoV2KsytRfIbdPzJl6dFosxnI+VhRQvI9x0Iewb3PdUM6H1gjs2POJXAA
         sKM0WSUXA1Dsft59gL5r+AV1uQaZ5gnDOTVm0VoPt61Rkd+xh2W1DlAe8FgDUuOa/8OP
         JKDee8PIMWBCvrTBbxOUtRdx7lzQeo9cLZM8tGCXC1nZOmI6Q5+c1aRhNFh0fMWua2yT
         a8dNMl2wXBxJFJnLeWiGQTlk8hN0DmYsVjdP5zpXBXDpw0H+oTJajLK/Ji00Z6pnLBFM
         VvlEFNjPCOqAUewcR5U5dClN/erBPSquEriZu6r69jojwW6a8z/ZA70Ovo2MKcxwYXwW
         QmxQ==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791903489; x=1792508289; darn=lists.linux.dev;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=2cDGGFZn0hfB6oj6MjuZDl9c/8rb36j6OHqo66VpH8o=;
        b=RDchBzn0+P+flTslGkBZjFfKFzoUpe2AnSJfUDN8yijLq1/vQeJQH7jXLSmrCmbK+c
         Is4Dfp2DOIL69Q75JKQImrC9UAXEvw4wAu80IAFPSYhpjYCcAWDPvmlduv2qgO2lQoNI
         z4K1bC31u0unWXT/yqBtKB7/TM+YKP3J6ZuGGjcYxldNHoEyiiCJDHx6lDKwxyhlUsng
         NucMkPuYSF+MYpC08fH+k6xBvyQzod3l4QqBg+QKv99W0gLNU3enHEWiJBv/mSVH9x02
         Bc7aD7fbKeqh9WlO6YRrIOT0ppyGRUVQuF1iI3QlhwVwlX46JtVe7ZECIuTG+8H5xmN5
         wQ2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791903489; x=1792508289;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2cDGGFZn0hfB6oj6MjuZDl9c/8rb36j6OHqo66VpH8o=;
        b=GEr28eAFlSSkbVzTbO+5mQwQauqUsIDyrbUYfRQ3y3Og5LGlzaUYaRKHRAyyVP79Xh
         NXo2ghYJvrDVVRmpMjWZRUB5jUtPz2Gz9X5r2N8IeYzrM4ww5KcXgm0r8NFvfrsEB9YV
         k2LTPMUeu60jHY15GMtnRNZgo5q/vtugGQR2dViUCq9/O4r8RMXSA+FPG+vgO7OfD5/Q
         a1FvcgHOYC0ZZa6XYBmBGtFmvQomB/2s7XLSMtejRKx5F9bvFJ223dVinvgXT0NZQQ5q
         YlL07VyVTSyeZAUIjhPgyypBra/P4WK97/6J4TJqQOa9G0QjhVvBpif9AMzvTvqi3CbJ
         O3xg==
X-Gm-Message-State: AFq9FYK/8XCJsx3egrQma+G2w2CU9mRA/epCPm2VnahylTF9DeCPa1k2
	XSQMTn/p6bYqHFMG5L6HnwKdldNMkl1yqZIQYxS+khhExK/8ppv51P/DosIpyBytVIKwx5ndpL9
	Wqf1NEq4wXOw+Y8Y4sh7h4ztJaz6tbWd9ybxVG83SE5ObIwg=
X-Gm-Gg: AYBFou2CjW9dfJgiUY37ifMWhnpWcaD6MK5qAuAM1QIayOSKNrwgcfvyKPlFQZwaUh/
	6NwAZS0S85foMw8fAJXo9TA0EIS0SSGN2odjc3bz0qzHwED98BYGvRyPuLbOL1PQzZulYwCNXpx
	A/7Ar+wAfa0Kym6BGopOxy22B/U9gvjzX8HA4Y1jifZPBixWIhUlRh4D3w7H4o4lb3flXdPW7vP
	mSwsT4cZtqp6cIow6bU6OX9yMLtJwrOx/On5Rcthr+p1ZcwJtpFFPGtgaZ2FShmlgsCGnCsO3M1
	vc1OG6EiIzvdxj09RJqhBPLJF0dpsXFe+tkL7zlfwE5CBBpOhE4SxoGqzk9SFF1aX3Huj/7hJBN
	dosdPy/s5YkwiqWQaH2athlpTJVMshamD0xNz8DY8ySYpnYFQ3pe8P+8=
X-Received: by 2002:a05:6808:660b:b0:4f5:5dbd:1328 with SMTP id
 5614622812f47-50c574a2f53mr11494872b6e.42.1791903489549; Tue, 13 Oct 2026
 07:58:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Okhuomon Ajayi <okhuomonajayi54@gmail.com>
Date: Tue, 13 Oct 2026 15:57:57 +0100
X-Gm-Features: AclHuK9mTimes_pMFurzdW3GpbWx87OLlccujZdhQFN95dSC_1b5OWc5Ll2IZ7Y
Message-ID: <CAFpMFfB07baJZqdHTAhJWbB6D6m-qfBoswBgmXkn_N2KkumdRQ@mail.gmail.com>
Subject: Introduction - Outreachy Applicant
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

I'm Okhuomon Ajayi, an Outreachy applicant.

I've set up my environment, cloned the staging tree and built the
kernel, and I'm now working through the First Patch Tutorial. I'm
looking forward to learning from the patches and reviews on this list.

Thanks,
Okhuomon
