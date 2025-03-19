Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5979255223
	for <outreachy@lists.linux.dev>; Wed, 19 Mar 2025 12:34:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742387660; cv=none; b=iZyLuDd9kb4h3WenCuP1L3cfWx7Me/dlO1AcwhJx2gPTIEFTRXQdoaNK9q60eAbL7VIBhu017KbdW19/3bapngLN5D7gIWAljMML9cIpaaNT3rRgCt47SeU4R2cYupU3KsBUWnuOtVpDarSMNyPo3o96Nb9p38c0NJzDaKwChuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742387660; c=relaxed/simple;
	bh=BM9HMEl5aFWCMjdAPqqjZK4mNaYhDIk0/tbejiG4amU=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=Db7CUHJqXoFWP+jnMadccVlvoz2klomZ4VMGn+WlxkLmeh4c4j/ovGYOQqu8Hoc9KdSEA4n5zDlKaPRd9NHbk+AorhlhwXs3cmVPAFLyQfLx5gV/GM0g4JKP0/v0kcdGu9NNUj3GyMnYb6K29pzG/dDgQi2377OR7bxBtEolWBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KOHS5+Dc; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KOHS5+Dc"
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5499bd3084aso6736025e87.0
        for <outreachy@lists.linux.dev>; Wed, 19 Mar 2025 05:34:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742387656; x=1742992456; darn=lists.linux.dev;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BM9HMEl5aFWCMjdAPqqjZK4mNaYhDIk0/tbejiG4amU=;
        b=KOHS5+Dc4YymbmwUgpUBGPmI5IQBirJOjcq6CB4vNHqvhaDOhn1xJ8UzwuPtBzrrHo
         FOkIQYB+kyrezv+yK5I7glVi6chsHH3GNyZfZu/pN93wa+n1AHs7wGU2vaB5JFYHGTnJ
         OOmZoM5v5UkWleOT+NkuvAL949qpwhmG3FCmkVSJYwV+fCrtlD7OG7fn/y1Z7RA0s4Lh
         wT+3m3DDYf7XAfWm5g+0e4BZ0I7pYK/wRgG4tMJ1pEaeO5QxFmK7GwGWu4cFNTIsnhJz
         2dslYfhFzPaJeaIL2qeFMDkh2c3kh+q0ydHhK6cKON1KjV6Qz7ia/EjlvxTMf6US02iU
         GUyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742387656; x=1742992456;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BM9HMEl5aFWCMjdAPqqjZK4mNaYhDIk0/tbejiG4amU=;
        b=MzbWQQnjNOOA0PxULH1rCCf7p9YvVc5MRn/ZLQTrGaDx5xtk0Kgl3z4JduXY1Bm+lY
         X3IFBf5U/SzvfaQP/OUB0cdxNpObURaPieE5On7c9py7T4RbLnjM9ITrV/lL2c90EDBZ
         dPxwH/BRIAFCZ1uUU2t5UQfzbi8I2ICN+CTWtOwVekF5s7V68EhrwKSu3chaIpIR3c6Z
         OZOI99Pw0WE8xLJlpggp67iNkXg7riFGBlHCRim9nRdUd3DbviEHGX41mAK7WKgBEyb6
         Fx5WEadESq7WQU5y6qd/tpcJFW96mVdbvtCtmTdsbWq+Zs5/C7ylz5R04SlbkpYFZmcw
         K4BQ==
X-Gm-Message-State: AOJu0Yyp9DMQ3IXeY4PXQfl/Q1xmSvtnLN1Kqy6uCslzTEJbUXWhseOj
	cOPVQEdm399tDF4/kfj6sMAbPSly3FwqcxTNv4WoIoTZkUXFtSn7P+NO83PaLWvc9KcIv8ruVvD
	Nx6LaKQp4iI603Ob9/NCr8WiOMqmRp1+cIqeGlw==
X-Gm-Gg: ASbGncv7R/PnKdzJzrVilDl1wfSplXn8Alp67oMZ/vIW+weoVSNcQFMk2rUF4vwpbso
	/9OiNT5u9jtacaqSPvNABiILy0C/rrdy48iI/eDomMliTwH482f2eU9SFuNeaEjYkUKNiNEPw7q
	60RfgSR72CKLSyO7hKLrrnx+8dH7Zji1GtrY2v
X-Google-Smtp-Source: AGHT+IEQQPfve6r0/ljXmpwYUcMFV9cmQq0aJULI4GpLsoqATaMLRxmLpGK0pVhk+HDG/ObkHvTF4toOKsdyjRwbGqo=
X-Received: by 2002:a05:6512:2c89:b0:54a:cc25:dbe9 with SMTP id
 2adb3069b0e04-54acc25dc94mr779623e87.26.1742387655795; Wed, 19 Mar 2025
 05:34:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Busayo Dada <toyinoluwabusayo@gmail.com>
Date: Wed, 19 Mar 2025 13:34:05 +0100
X-Gm-Features: AQ5f1JrMV1B1B2_Cl8zEyk6bxgNATH-OUqdZM0vX157GkVvxNz-9PeWQIPt_4UU
Message-ID: <CANn_dnLEVSeRSY+qGBJLqx1YfQ-x-kKjK4b18Xzz2=cZRcaF0Q@mail.gmail.com>
Subject: Outreachy Applicant Introduction
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

My name is Busayo Dada, and I=E2=80=99m excited to contribute to the Linux
Kernel as part of the Outreachy internship. I look forward to
collaborating with this community, learning from experienced
contributors, and making meaningful contributions to the project.
