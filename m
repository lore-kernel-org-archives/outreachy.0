Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D61395AF8
	for <outreachy@lists.linux.dev>; Wed, 14 Oct 2026 18:38:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.160.180
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792003099; cv=pass; b=HioiXg7yqUxWJyKyqXhPd1mhLaY2vIANPIxUGxvERlFrvrHPOJ2V2he+BbhAhncvLEEw9HKhgOVTggLUoZ0zAiu++OgscjTRheUm74XPOiAhEF4SK9VcAmd2PK5PG49tObsgdRZ7nCBqqv8v1utdhoYRUzx8L8GWKKbYwfeWlI0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792003099; c=relaxed/simple;
	bh=gPVTR5U6b/41Tn36IXfjJ3Mv0DD4aUXy277UlTsfEqE=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=KSZ/EDKnqoL14xK93Ecg2TxsoZUNbCymk3Nwejoo8kaCgg3Qo+oJQwcTrJwDbP6an53QP+FNtGZ/mMrZmztWEPfSnol8KeHGm5tcLgJSjE2JD3pdlXwLc2H/H7uZpoKXwK5ibruP9E5bPq9ssqNvcnZrcVEMYduZxNx+FnbJDbg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ijNK8yLZ; arc=pass smtp.client-ip=209.85.160.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ijNK8yLZ"
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-53396adbc53so7819761cf.3
        for <outreachy@lists.linux.dev>; Wed, 14 Oct 2026 11:38:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792003097; cv=none;
        d=google.com; s=arc-20260327;
        b=B5wZc5l1pgu1cdbA+3eNgpESBK82bGNgBAkOdVwkxfgH/ET3JxGqt2up39yVRld/oB
         Eku3da9iCQigDt+T9SquxlwV/C8S0JCSj2zYGt7XQOf+8Male96bECM0PDhv58ZlL6jJ
         CrzAGE8pRstm49+kQxcfPHRFZurHB6QBHFIWxMbSBROa/Z697TNRCc1sOEDvly4PiNOc
         6RaR8YhxZhm8F6K+h++MLUvtRRAEHHTVXeUdR5uoO/AtviHtKHlZSJaSZ3RepZvtq7DI
         w5e3KuTBieSVWDp3Wiufdv5j9RlvnEjqPlTF8Yt8PJntDRI1kSE+2FvpH7k1t3cgcM5/
         v0tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=gPVTR5U6b/41Tn36IXfjJ3Mv0DD4aUXy277UlTsfEqE=;
        fh=ORcOwlulYhm0PlB4niEDenmGt0tg1PSeOtR/xiWpIK4=;
        b=NWiRS/pInqXyJ2r094ytA6cxMEhlq6YYvOBD7shn8KAXw9+5L4ONG0wTSbT2F4HvU1
         uvAAOICjm311SdjXsifahwydDYE4Vv9R4VcfMjoy/s5+hLOZ+yLRs0lai/d/qlnYXulF
         JQsKeFtp2IuL5Wy5YJU9sSkjXznytCMSokgamqf8tOwP6HoLm2vm6cne1huTQSoa6DLk
         0Rj3Mez7I5XJeAAcNRUEpAkLNYWAeTfa77F4a6kh5xKvN5iE8lKwMvHbX6FtmGgjh8ke
         QmzA8IOpIP4QF0/6P97MqXHRPLqMNeocOW4dIjH0GHfd72WpH6gQrXi+y5l4nr3ytdBE
         kQJg==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792003097; x=1792607897; darn=lists.linux.dev;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=gPVTR5U6b/41Tn36IXfjJ3Mv0DD4aUXy277UlTsfEqE=;
        b=ijNK8yLZQTK9KPXQBosJ1WMBAmFzkhHXbcz7wra68riToaWK4DIyBbxOeUZq8UZIGF
         viefcQTMXOkHbrMOyCk/V2B9IgbhOqbKAZPTzJeKOvzNfH9h0BOyplHrGYEaym00bqvu
         qm9TKpUVDkJ3K5qyoAyi21iK9R0hfSGiOkqPtKAiGOExSq65bvY3tX0IFb6x45QFBy1W
         npUNrkuKXUuP3AFLIy0dad6D+5FiarYJ+jOAIg3NaX+BlhSPDqvCahmZcyVJNaqt46f/
         5hxLkssGGw/XEMuvKGXLQowDwk9CCEndS057r8LpoMzvCitOM2m2yehCOcGxDaBti6Tq
         fNqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792003097; x=1792607897;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gPVTR5U6b/41Tn36IXfjJ3Mv0DD4aUXy277UlTsfEqE=;
        b=lez2UoME42ehYmtZ36vA2Ek6UP1E5kAMxf8DZgPrHkJlSJlhl7ax5zMLakBzvA4YSa
         wLxLNFBs0mWDf4pe1U7veXyKe1yoc5upsI91E5g5WYZbXoVgBS69zq2+Dk9t3stHoCnD
         hSV+i0yg8qrF1FGxFhyEEXZoViv6jgzJ7JOmWywn4q942BBKvk2q96qc+53qfYtB3tgc
         RGA9+moig4JXaaTm7TMYlB82/hUjKmsppaoBLWPTV/KW/y48lHq3aQy28iSuABoCB79K
         jvb/xqbZbXXGLcfu3yHfBq0lFh0hiP93/ce1nxsf2lJRtysICwrEROylP4P4SZ867k5/
         NTgw==
X-Gm-Message-State: AFq9FYLjzzu1r+JeCt/isQJqhGIgz+Qf+jZGVxS7znGpwmf5RE+f5XFJ
	GhGISQZStpoa55OOVjhTQWfe2amZWUs0cGHnmCe9XYx2vjaq191NNEQSiIvEzoApYz8jWwRM/rf
	Rm6a8ew+dJBO+nwawkJ6RMlmTMAfEOCvr8XHq
X-Gm-Gg: AYBFou3EYnlNliocyjJaEguRvqSY8viPi/LS623Td9njXIVNfovphN9XzYylkwPMQw6
	WOk4XTPiXpaMXQMtJ01bbB1MjmrbHyuESM8DI+mZZElU7LV/jyR7o9vB8ITlmXAAxzrLmbtEiNd
	AWK8Q7bWLTzxqxl0QzO3CBSUHtRGlt5spRddluWAE0qAW8Udqd/I+O4F1pzwc5buZ6jopx+AhxW
	A0G/QLyBON7xpwbJMr7LD2OLdJEEouKM+bK2V+nhHuyfTgImQ50M0S1fTOtRYtn+9HhZ0HoW928
	q0AhypzdUuO5GqVujAHhifHw3Iyc1TkdbxHXcheF0yfIzyD6FUicG3VEt1gd1jZoTznrEVQvU1P
	MoU1qBayD9UI=
X-Received: by 2002:a05:622a:3cf:b0:533:972e:27 with SMTP id
 d75a77b69052e-5359fb09f02mr296787971cf.28.1792003097033; Wed, 14 Oct 2026
 11:38:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: haasham <haasham93@gmail.com>
Date: Wed, 14 Oct 2026 23:38:05 +0500
X-Gm-Features: AclHuK_1kyTOSzJoIj_paGbEkJMSUZsKsSZJUbg3UEiPvt4yqesHw9TAbIXM7yo
Message-ID: <CAFmYDUGjivAfSZut01r3-AeuKbte_teOMTr9b9FMH0F7zCFMgg@mail.gmail.com>
Subject: Linux Kernel Project
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

I am Haasham, an engineering graduate currently working with
Kubernetes. I am interested in learning more about Linux Kernel
development and how things work at a lower level.

I am applying for the December 2026 Outreachy cohort, and the project
on removing unused tracepoints caught my interest. I'm looking forward
to getting hands-on experience, learning from the community, and
contributing wherever I can.

Looking forward to connecting with you all.

Thanks,
Haasham
