Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09806DF76
	for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 08:05:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.161.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792310709; cv=pass; b=OvGdu/Npa8+mFObUY/YP6B1P2mWScehj3Dhm5LBKB0brJhuiDXfcGBkL/fi5TCaXyT1zgpfbfv8Q0DjqTwRh7YCnzMkpzN7txAhV5MLjZkLGkEmc9fuYTaJmYLz0j1nZ35NVJuUxwB/H38acGN+t42e3wf9o0qkHyQ8Ggr9pc3k=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792310709; c=relaxed/simple;
	bh=R6JD4zsYl63LXKpwheMhSel8qQTlWPWXkM5g+qzc4LE=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=X9nEsKezgSbu2/hhHd2/bqJ9gRTgFoziU1ayDA6Ve4+qQ1DuCw1d/IgiRKadaqLwjQaB+vt0maCRvW4s206fhtOhT/3DlxzU7AI+Pb17GSTan/75XYWACsn+I4LNHEhcuodGM49B7NQ3qqjxLg1hjNDAQz6lwBf88+CgQxSHL2I=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f21naGTZ; arc=pass smtp.client-ip=209.85.161.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f21naGTZ"
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-6dd059478dcso776899eaf.0
        for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 01:05:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792310707; cv=none;
        d=google.com; s=arc-20260327;
        b=dPqxG0NYpgiCuGn6voltMrB/InqBHkDXpr1UD1MFAVKsiwRbcyWAPJQ5QIf2g5Hvuo
         M1c93cv/OWB9hblnyq/NioiCQSK1n7ff1dfmyNlv7yORJSZsTAAuRoTonQdD6yxCpu/0
         yI1/2+SyuI4b6ubpuVarbuk1FY0a7B3YENpXjK2ztKe5HwvP2CmIi+w0enK3QTMa1U3L
         npTdTUhxZFKlvTuOxhINUpoHcyF2n1dnUZJgUaF4gHlfwTz+l5q+BOiyOSGMm3mCVmeD
         KC5phQ6F3jLXrPWAlcmfCJ0bRgDeAbP+Ia91jThi9833vxTAnh97ntn+tXZJ8L7cuUeC
         trGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=R6JD4zsYl63LXKpwheMhSel8qQTlWPWXkM5g+qzc4LE=;
        fh=ORcOwlulYhm0PlB4niEDenmGt0tg1PSeOtR/xiWpIK4=;
        b=IHtqB1NJ631dhfUeqsXhPXtfTa75l1hniN90W4+3VsXKqpJYw+mG+m1cEp2U9ItFc7
         YwkxJVuyaRAWsimHzXCp9dgI5Kf/sPmoG7zZtibdmEaJjejHA/+fGI1pKHgL3+XBQrgq
         h/FfJpRsUv6wwTbMQQKPiHWQBSUKd63wfjmqwJWY7g1Xmg+580oUxhg8ornIKli837kx
         oEQjUKy2bppTpN8LxJdE2DUraCBNcFG7aNW9OXSVTewmQiHBh8CfsLMg3ntJpTXRx7XQ
         wkSAr3lGZhRJ0EoO4nWbMhP/5T7hv65I8OuEgKOsJKJ8zq6EWboClBUfyev+ALg6pei/
         HDxw==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792310707; x=1792915507; darn=lists.linux.dev;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=R6JD4zsYl63LXKpwheMhSel8qQTlWPWXkM5g+qzc4LE=;
        b=f21naGTZnZQDIETIa0yypIlx5djGUpp64hoHjMiifLHiB4RxVxhQ6m0539ytj69fgf
         61wlWeB7Huv/hn+sFfkZOP1FcEO5z8qpd+6INjmik7D2mvf8sQVJ+MsXA+SQKoW4DTRK
         LpdWA/CI+nTSj4VPOla8eSQxQlGyXwMZ9Z/nMXyS2zHxjd05wGCzR+wG3bfTY12DTEl1
         MMK86iU0YFb+NrQAJaNyWMA+sRq5Sbauw43lGmSDn3UqaQk+gAUUArMc+92XSwzuqyDM
         Ym4jqdOftles1dqoqwBTUZoJwg4X4lAt7HI66MKZ7krdL8YDSi6ZJccpZoegqsYGWLwA
         Ahng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792310707; x=1792915507;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=R6JD4zsYl63LXKpwheMhSel8qQTlWPWXkM5g+qzc4LE=;
        b=BZKVS57P9yOQrxmlnIXK7hsElaWtCpRTfjhvMgDMSP+urBz/fpiU+izN5+npUUg6hg
         mbioT4zRW8kat736C39pYh1/jGf+w2/+41KEz8aqZ6mHUHMWa10w/oa0SvRcVkIrB4sj
         vllhCdiP8EyABqAFPvJyEffOJJdwNi2xCKo0aPIMS4EGERCE9xObOBY+Hlgx04tmHnPo
         WgpOmAQ6hnYexrpiRD0W58V7qM2X+W1U+nmsKG+XrQaRkxCXgq2ruy0p5Opm28b1U5Yz
         U2AxK1eVWq7tAsxOPKWYn1Atv+hNhh3qyO9bOPufmYSXhrRkukF63bzhRxtuNgSCnNZp
         k3zQ==
X-Gm-Message-State: AFq9FYIuE1em4HXQlystMIHhcOoZH2z0XjH/NBMGLwFJRKkMCUJnT7Lt
	cO8uHRNs3chLP7GY8sj4F8ihk1A89cWDwUWuMTcgGfWPwXHWlRofXh/DG9o2HV1eZtd1nZiNe8r
	ZNEATLlzh4bOQKsZD4X/Vcle3r1Wd+A4jEu29
X-Gm-Gg: AYBFou2DyKhl5EsShO2Y/qWoWnpWW2fCUiRpnrkmsJJBIpLiucionn26nW1ki1x4E95
	puRQq+vdVx/tmWZRKQoieN7JoMQQUaGQ+OzdKW0kJ7ME37oqjNMDm2Rwv2SoWUkmFaIKESFxL3Q
	6s0MHuVgUw6CBEEDMXCHVhUVZHfnVGMCDChCck4k7j35/4wb3sNVRVMUwjAdvytL8pTsxTK3miR
	G953vTwHST7ON1ooOmwNCz8jBKHTMtlSdXbeGKQdZPZwW4RifupXv5FHQZNWg8T+G8HwBPCeNdC
	7OFYCVwXSqn1b4IVcPvd13jkApKV0g4wIhesR7z0vKcF7Ouo7uS/7yACTnpIQWG+EU7BlbehHTI
	2eVln/pay9cHK
X-Received: by 2002:a05:6808:1a21:b0:4f5:f024:2aa7 with SMTP id
 5614622812f47-53ccf2f07dfmr3576235b6e.41.1792310706837; Sun, 18 Oct 2026
 01:05:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Sowmya Torra <sowmyatorra@gmail.com>
Date: Sun, 18 Oct 2026 13:34:55 +0530
X-Gm-Features: AclHuK-_nK2DCCJOQCS-DyjBA6Xs64c0kt1PMSDtt0bnkDIt3eWy650jguj8w78
Message-ID: <CAFsBPPk1=n13pk0BX-y2F6VP_WT50PyrxonAahV-=spiscnf2Q@mail.gmail.com>
Subject: Clarification on a possible rtl8723bs cleanup patch
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

I'm an Outreachy applicant currently working through the Linux kernel
first-patch tutorial. I'm using Debian installed directly on my system
rather than a VM.

I've been going through the drivers/staging/ directory and looking at
recent cleanup patches to understand the kind of changes I could start
with.

While exploring the rtl8723bs driver, I came across the function
rtw_validate_bssid() in core/rtw_ioctl_set.c. I noticed that it's also
declared in include/rtw_ioctl_set.h.

I checked its references using git grep on the latest staging-testing
branch and found that it's only called within rtw_ioctl_set.c. I'm
considering making the function static and removing the header
declaration.

Does this seem like a reasonable first cleanup patch, or is there
anything else I should check before proceeding?
I would appreciate any feedback or suggestions to help me improve.

Thanks,
Sowmya
