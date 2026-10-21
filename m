Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.167.180
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1792565280;
	b=UI/O8EXJlVngoHgAxirqNqIjQDrL4PzeTyiveIXUEAsxfM/shjoWlrA/LlsRRmcRaU4y
	 jpNQ/ozaBp/S6vqNEuCCJqc6IXvqiUNPIZ9z7YDAWpNgisIOcDwFRRZaaWOOxZJKWxxvo
	 Xae9bMmo/pYd2G4uu466nFA5BweN2muvIG/Khik+U4rOYxQpzGGlo0xvifTwPy0xebzLF
	 AcqDC4Gxg1zIz7WnJht6FkzMgZow87T9Kfc0PFVc0pdPs5anQwuUCoYUhspXaJXlnISZY
	 ZqWCQPdXrUq1LJNFPltxxdge6BAQYkE07CsZCnTpmPF71jUhzkaanyM4ALZ7G+gcOkw==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792565280;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:MIME-Version:From:Date:
	 X-Gm-Features:Message-ID:Subject:To:Cc:Content-Type;
	bh=FUI0roKtUY3lJwsyDO29iRhWxSCZDhBG6j3ZdyYdfzw=;
	b=AzS2bKa4qLn/E/GB1jusDE5FjExGGBMMTw1qr3LUBWf7oeQ/qEcaeMg0WwRnaWrnZWIb
	 ZST79AxFRhxOOujLmIjHR5tJf8hoc23OHa8BEX59oNO1VV1Zt4NdNafyTRIFTk6q3exjX
	 SaObcWuS0g0zrRSfsknwMZ0nNNKfHt+W5XpxphB3tVl9CD5lrZ5yOGJ1DoIzzJ4e0hWiI
	 KJYgokwY7sBfsiW8e/NqiFmr3g1loq4LvTgChw1zatwt32P/kkQedpQhHvpnCaQoz/Vh/
	 m1leiDqHJIT3qHfGqoDbP8SX3Zsn1+e5fzJ/hQ7UVnDiPN+h8FnmDmsSwot13MwT8Rw==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=QIaxCN6i;
	arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.167.180
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 086F1606A325
	for <outreachy@lists.linux.dev>; Wed, 21 Oct 2026 06:47:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 086F1606A325
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=QIaxCN6i
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-4b28d7c729fso211514b6e.0
        for <outreachy@lists.linux.dev>; Tue, 20 Oct 2026 23:47:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792565279; cv=none;
        d=google.com; s=arc-20260327;
        b=m3Wtz3NqvdWv+U6Ferl+AXyyxmY3VKfpZ7xPqC8VArT9jpt6fu+Ux+LRohGWPf5z/B
         gf2Dbg+vytvc5sYiVdjWOZfesUl7IXkOlwQQDVZBDMUvd+VQLQq4wa6qb81Sym7aNAXv
         j1Ap3o6z3AjMD8pVFYVfxv/FDKzZZJgPxQDBa29mv+a24J3BautR5uDM5twBzyvnXQ/p
         vQ3Ut3CCpcCftp0F7CU5o2fR/LqYUDL8oCivqQRgmLsYxYUMxhXfK2O6kprNnyczZlNi
         2J6CckQ7lLVGpTcn5S2+r261QlFbx9sDGZXK/iRDU9F/wA7PSLv52h92PVxqjXqMDiun
         msEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=FUI0roKtUY3lJwsyDO29iRhWxSCZDhBG6j3ZdyYdfzw=;
        fh=y1PvHPvWvgG3qNkG9RzXiGcskA/sAGhsvrcVfkDQPyQ=;
        b=JRhzWOwcjigfpfevtIbdRgKFsS6TM0aJW/nYYkZrhzNsslfaMgaHlmh+pmYFucZTEM
         YizR0BYeXHRJbXPeh+9k75lAr6Xa7KCFuX0XOefLHrnTbLMoe7c21tNp+f2DG+Z9nR5y
         8kI6BaNiDlE9CNgpFlj5qapiUjWnglqKf1+caqv/qV303UP28Z/FzHWK66hRkATyI5Y1
         V7MLCOVrRqxzCjUhY+xA3sfDC4c9moXJ00fETKdOTaaIIZeeUO0Px9nF6GWoSSFFbzHU
         jJzVfCgC/5FBSwW01m+swOYXrZMnFjA6nOVkMNG9prDr7W+irdj3LLBbPQSQsuSoFdOU
         fiPg==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792565279; x=1793170079; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:mime-version:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=FUI0roKtUY3lJwsyDO29iRhWxSCZDhBG6j3ZdyYdfzw=;
        b=QIaxCN6ibkKW1r998JY/aPy7ahCk8sYLqNoFAxbsy1gMkZG6HMGqycLeVdN3MKf5RH
         5xQUQhQQKU9U4d66M4GVIs7vKxYYJI7Ptt1H4ovtpt/PplsliNL7tpzm+gFTmijTgPlY
         Bg8YeZ7gbl1yq2hSAUxDsxbxUOxdY+c5gLEaPS0rImEtv7macaKM2PKQsm1xKD7L47yw
         f7wmwR+pav/gaeU0LqSUSA5AXPie6L4N+a9/22ISwuNKTKMpaIUoLMVVyNhI/YBOj6Pu
         eCuEtlBEVaVp96uSQ0v5jFIKOhAtjAr7VrXIVr12LDbksy7Mw7J2IkV5Fw7405yS8dWy
         a2EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792565279; x=1793170079;
        h=content-type:cc:to:subject:message-id:date:from:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=FUI0roKtUY3lJwsyDO29iRhWxSCZDhBG6j3ZdyYdfzw=;
        b=pFNXW8RVj9DD0Y3vRv4QhAnDJEiaE1q/VOeJ5enwHwk3H4G2AwZ0wPjxBUWKqeRL3a
         wL4bpLJpM8cDkgmA6c4WSVHUmKiGPDOllRQS3uZhW51ZvE+wuEblMp7LRzrSA+k2WV87
         tTD7aIRrXScjA41DLsM0DJrrm6X+gau831FzIAbPVpwVoG5P9Xzb1MG4EzTmIrMz68vI
         fV1EF5VeYUr5ZFx9KhBEYrxLBYrwt86vH9QqhUXhrNRzYazzXmWtEN7QYTYjuDle6Esq
         OhjzXVSBZ1xJKgqgm1DVFdX5uwHklpHX4jGtkwwyw7HsZUAlglAesFpalasNM1tU9n1s
         zl0A==
X-Gm-Message-State: AFq9FYKKkvk6TbcE7N74G1dbXG0oNbfn5kwjrHTZi5f+dYhYuzAugkTn
	CsUcfjW2MKCS+Esj3eadEqH6GvbiVon28yDWh6vOh7pKmenY9BBrnl4WFeCmZ1s+ODSCmwsZrKE
	siqQdyksQ7ZbKUUccF25gxT4wH6Uepi8oxkPlTMw=
X-Gm-Gg: AYBFou1PBfatF+f/7OjETOlS83FShUerwZH3HxGACGyx0COSjXOfdofelRCl97jwc+s
	7ILw4VWHjkM9QBsCVfKvRlrM91cO0aGHKdX1gEME4VSUtkwP433M8yKI6R64gwbfDAe5rxpXzh0
	75b6Pn/zTm3Q/wRd+5MmTA/suBmra7H5Ucqgmkmmr2Bo6BQktGkDILz4BQIhEYiQfA70QOG7ugm
	JPEZCS3Gh8iQo+xjVPWYFhZ2/5RRXvC0LPBITLf2Yq4x5uZoYQOpK4aCq2E6NNcc0iMNQ9bNG2g
	YUpLc5b545eGXmj22TICqrwb41uWBL/G9i7el8/FRbz198LgZPBWt7hPNFcGp0fhr0sgVevFIio
	E09QkS9K0zqZlRlR9xuaXMvxJUhcicEWgpoEqABCrH/BsRHj9b6O+TkVuOKJTsi60a/4fi7oX/E
	I3HnsCIFAOOl9U2Qnirp3cP11Q7KopTjrgXyMU8wFtiAkSwvMxugFI
X-Received: by 2002:a05:6808:6f98:b0:545:d05c:7cf8 with SMTP id
 5614622812f47-5535818ce22mr709217b6e.34.1792565278631; Tue, 20 Oct 2026
 23:47:58 -0700 (PDT)
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
From: Sowmya Torra <sowmyatorra@gmail.com>
Date: Wed, 21 Oct 2026 12:17:47 +0530
X-Gm-Features: AclHuK_TIWgPrBEfoR_GYVklwAw1PBu3gjzhd4l_M_O7l1_tKAQZfq2G_1y5om4
Message-ID: <CAFsBPP=ZecgyvM_w3zstpFfoF9mKniAMehJpUy6QPCrXUCwy=w@mail.gmail.com>
Subject: Request for Feedback on a Possible Greybus Audio Manager Cleanup
To: outreachy@lists.linux.dev
Cc: Julia Lawall <julia.lawall@inria.fr>
Content-Type: text/plain; charset="UTF-8"

Hi Julia and everyone,

I've been learning about memory allocation in the Linux kernel,
especially GFP_KERNEL and GFP_ATOMIC.

While looking through the Greybus code, I came across
gb_audio_manager_module_create() in
drivers/staging/greybus/audio_manager_module.c, which uses GFP_ATOMIC.

I wanted to understand why it was used here, so I looked at the caller
and noticed that gb_audio_manager_add() uses GFP_KERNEL. I also saw
that the function calls kobject_init_and_add(), which uses GFP_KERNEL
internally.

This got me wondering whether GFP_ATOMIC is really needed here, since
it looks like sleeping should be allowed in this context.

I compiled the existing Greybus Audio code successfully and am
considering removing the explicit GFP_ATOMIC argument.

Would this be a useful cleanup, or am I missing something about the
allocation context?
Thanks for your time and guidance!

Best regards,
Sowmya
