Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E33CE39F160
	for <outreachy@lists.linux.dev>; Sat, 17 Oct 2026 18:19:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.222.171
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792261194; cv=pass; b=f2bT9gVwWEJBjx5TMlBGeoGOnOivBy5p8bv/jjSpQMQyzxxkSmVtHgkkOVfUWiRPKL3aYI29OVfihs/h2yOiqX+hRaJ2bsC3kdL842Fux9f2Cm/apLzUeeSyIXl4W+PfwrVjMzYbKXJCovuaosQiHht8vDCIUnUCjV5rGL7gq7A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792261194; c=relaxed/simple;
	bh=I+dN9nNXx8Ovg3LWlD2OLiYw5IYr6xye4HsrRXCT5GA=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=ZqTTwVe0QbWmuSee9lGlE+hGPPykD6NJwF1O4vllIWRrYkuUPaPPsZ+SZ3tkUFNaOs5HFv0KMWbULjwW6NIMhhx95QNTI3T7ilEmWwonLaQ0HLOOmgv8DeK+DEq8NVHMsPE9ISyOPj05+BBUwQ76oE5A6S3OQXb1qqkqHKXbypE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bejUDF8L; arc=pass smtp.client-ip=209.85.222.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bejUDF8L"
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-93e55db58cfso81371185a.1
        for <outreachy@lists.linux.dev>; Sat, 17 Oct 2026 11:19:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792261192; cv=none;
        d=google.com; s=arc-20260327;
        b=omnUq0/mC2/xABjnK+l8UHmtylgYyawuFee7GApDSnAx3aOMS13s3r9PLl8/B/AZ2K
         6oyMVN7GMmvRn7/q+w2J3OFitvgCfwuYaw2pvqbgwZflaThIWHkRpMksOc70xTM8lQz0
         /S9KbHeuksLy/KmjHvfb+CH5oXVlINAI3dKjBMnLkrrLbgPNHpBKyocOTP3yAkAUmVDO
         iX+IQQuCwRq/9po3bOfThh1o5mNPsSolfIrHOxKCx/dby13d6bERaHw1uE9QUTmAhnRH
         sWprBKsU+tN/swF/0ZSVrsxsaZ3YjdP9vePEZn5b8MWBmEicq32It6sDSAStpS+hgg7o
         Xu0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=I+dN9nNXx8Ovg3LWlD2OLiYw5IYr6xye4HsrRXCT5GA=;
        fh=ORcOwlulYhm0PlB4niEDenmGt0tg1PSeOtR/xiWpIK4=;
        b=Zgt88EUpe/AjxtaYUOJHqK/v6KvfMCrQRRMdv4QkkX9C4glubevWL2wi6eK6K6an1R
         Jev4t9dmvmve7OAWIZaN6Bexq4T5v9+dmUr3xz2Tj3g+NraDqHllgJ7GmUzMz44BrMx7
         PhgdRJatKn0UpdVDdmtDnW/CemoyPOB5iSa/HStqP7T7Ia9a4cVI+AP+G0J/x6qqNVAE
         11EAb6LkptubgaJBAcgldRHQ8U+E9qYc74RbiNRDPjF54eEhS0u0oOYUoQ4VIWP92wwz
         XMxEKetB4ftELAHTrooxRChp78e62ZeDQRyHF7CpOvc1hWQsENGXoEXmfG25XoeTLbCp
         E9OQ==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792261192; x=1792865992; darn=lists.linux.dev;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=I+dN9nNXx8Ovg3LWlD2OLiYw5IYr6xye4HsrRXCT5GA=;
        b=bejUDF8L8i003LyrUXy+TOBdqwTJ5QtOPDG8qFO42kGpTYE93oRMOzRc+ukVbOrj9H
         A6teiMcw7TQ5dPqEgVz/1AfxNeGdzJ0GdZFwnbn34sB2NZyIkcmMms/4Al/M64D6ZuqJ
         PsiVcYOl37+XrZl9+82Hqj0NrS0YauD6pNowVjyuz2bNvswdqNmetQ+UIEPa/n9oF7be
         4idoaLTxixWIxZgySk8dqG7qWEAhMM2HvaBmfLJoaeCtFopHPeUso5VmofcsVhAdy0w9
         x7t7jjjP+zlVOep0H+SObvigE0cFEffkxoOULIjYltbR1azDDd3Kfsw7UZBhfwH2ouyD
         XtoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792261192; x=1792865992;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=I+dN9nNXx8Ovg3LWlD2OLiYw5IYr6xye4HsrRXCT5GA=;
        b=uAZCT/MNLsuya5xLiUDHH4C+814IxisKA7uYPrgKByc17p/3O0oMl2vTFbmQyE1pgV
         vR94Hu0dKFnQbEgo3ccFWRldlZQ6JNXgTqK4rTjBbTxKmcBhSGYKBQqZpCeGSoSy7BHF
         a+lrz/YzT8wvT5bsB9AjtuMt0azcElLnBG13K7f9xwgJR6pdil8ErrNSoPJl6xWq8iEH
         2q1Sq9MNOb0jFxCUlDMSaTnv1kjnm1AWi3WTbwMshHv8kDRrk++BKG0MvNE4H/luay1C
         jjfqZ1M5yUBlyc5HX+edO1J/lMJRaVha9Wj9AFWMEhHjG9e2ZVmneCQZh2Vu9FOoIVzm
         zILQ==
X-Gm-Message-State: AFq9FYIMahTchSBE5MzRx3HeLcdmSIEo66B2KoIDbckB6mieq5VhciYG
	swgPY3f2TC5n7bMwOq0nKS+s5AMs18pxlq+nfjrNw/kf3zN0dDiR4fI+8wIBdmvLvZu7SIo96AO
	mb2L538IT9w4zpRDlO720OivN1BSEHIHKUdOpBug=
X-Gm-Gg: AYBFou0Urbg3VSRk1wvrmKmu0qPpA2zugvrJ4B6OY0C8Fzyw+KHDQeOwEg0z9EZut8U
	BwF29opsU6RAA239ReeF1PfNWY8Ks/wYGvl3B5t7J2oQk7tB+NVadO9vLhjwavw6PDurTtVZh5f
	vOxAiimtz+UFZH6knkhx8VpbQA6OpGtqIUQn70tMshjzkfZgD34tsxNpY9qc2eVG8xcaGfSVJpQ
	LA8/vjO5cph5eSAX2imZuloycAJm2pokgut0mJDN3CPhJUWjkq3fIjqbnxDInfVllryUA/Zme9P
	9SAaZ0i0nc1wDCHhvWoAzb7zbg3wQqzJSjwT8LIg/CNRHFokRaSUHGIVwHwZjTq00uLeXdHhzZE
	+TwHt+bMwVcg=
X-Received: by 2002:a05:620a:7103:b0:93a:3d67:391f with SMTP id
 af79cd13be357-93f29b736demr563140185a.7.1792261191688; Sat, 17 Oct 2026
 11:19:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: haasham <haasham93@gmail.com>
Date: Sat, 17 Oct 2026 23:19:40 +0500
X-Gm-Features: AclHuK__wH6ULLiNIVhxiDocZeELMr45hbSq3Vy4Cfg2S2cba8VfVmPNzdLYL0I
Message-ID: <CAFmYDUEb3SO46gzoZm=eXiTFZUBGCZY1wv45PHtTDcMitekJ4Q@mail.gmail.com>
Subject: =?UTF-8?Q?Outreachy_December_2026_=E2=80=93_Linux_Kernel_Project_Pro?=
	=?UTF-8?Q?gress_Update?=
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

So far, I've set up my Ubuntu development environment in VirtualBox,
installed the essential kernel development tools, and configured Git
for development. I've also cloned Greg Kroah-Hartman's staging
repository, checked out the staging-testing branch, and verified that
my working tree is clean and up to date.

I've started exploring the drivers/staging/ tree to understand its
structure and identify suitable cleanup opportunities. I've also begun
familiarizing myself with the kernel contribution workflow, including
checkpatch.pl and the importance of reviewing existing code and
mailing-list discussions before proposing changes.

My current focus is to identify a small, well-scoped cleanup that is
appropriate for a first contribution, validate the change carefully,
and follow the kernel's patch submission and review process. After
getting familiar with the contribution workflow, I plan to move toward
the project's starter tasks involving unused tracepoints.

I'm continuing to build my understanding of the codebase and would
appreciate any recommendations on areas worth investigating or
guidance on selecting an appropriate first contribution.

Thank you for your time.

Best regards,
Haasham
