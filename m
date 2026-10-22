Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.218.49
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1792665928;
	b=uMoQi2pxXcaPhNZiuP0llybnPumfu0pkvSJwsF/YLxO7ZLGszhLEPwzsxgfgUQGA6w5j
	 w+O42sNrcy1wvR2bt2ETMPqS3LUR59fP3e90BvIH1h909NiiW8CML+N7fqeUNU1rcYV3h
	 IRo1sWCyfAsMJOJUw4ApH68r05gWM/IlVXYapCAmwoXs1yPRt6cXHM/npbXG5X8eLowsG
	 H0Wud7NWotnqqcuMpmXPkccijswzr1NJYUj3rXhF2v/8+e/egRm1jREU70r/wwAQRZu65
	 r5MzL8HtBBuO22AgdoRuOtoULIhfTP3yWvoi2eU2C+omXwDuot4TVEH7QmWpyekGtDQ==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792665928;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:MIME-Version:From:Date:
	 X-Gm-Features:Message-ID:Subject:To:Content-Type;
	bh=RjNH7a5ZfyEbHtYxQQrsZrCEGEd1Q+Hz6sfKZ8G/Rf4=;
	b=rcS2yL0U04Qtjv2+C/xN1Mt5NqV9zX/tsUHVW2XE3f3lNZszuJT9tOOIGOlasVRgFoys
	 gktM4YTYxK3dLS26F4t5lyXiL9XZOhzOHqjKk1RHf7UbyZ65yzQjYNSw4lge6BpcMXiE5
	 U6wO6u+SkoDarAx7/cTW8n/weQKzeaArANCWka4Df/LLlkd9S3OY4iJvEHorXUsv1KNYr
	 uNTsuJdRo0C/sCAhDCxg4LRfsvA6Xylpw7yEAq03LsS+xFW0u8dJ9TPrkXewE/1epgt9p
	 ppX7mJyjytr66UwK5ZG1r3vPbeYSzPjnV3bq9zfT9FdZI8wgiURHSb6g6evEXzD4JnQ==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b="Nt4a/pfU";
	arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.218.49
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34163606A31D
	for <outreachy@lists.linux.dev>; Thu, 22 Oct 2026 10:45:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 34163606A31D
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=Nt4a/pfU
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-c40f29667e6so278201566b.0
        for <outreachy@lists.linux.dev>; Thu, 22 Oct 2026 03:45:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792665926; cv=none;
        d=google.com; s=arc-20260327;
        b=ROft3tLwrHkuKcZDT/pZr7M2j2SRvMrg/VdF5GQjxKup8Mude6qSnorIaFYB1D7m50
         emJLaNr8Ql8zMnnW1s2kkRZLJTMXmyxViOUVnndjnwLU3qrBgfvFXIo+8KYwDZDeAzrf
         vNZDRSju61e+Fq5mrEaWX5TSR1uYNzIhz2b70XfL0mKSenzaXT9VMWDqIv6THTlbr921
         qC0xEIDsOaafykxScgTh9yiR7khARZoCHvp1usaspK/X9qV8D5LJPON2M3zaCaxqcwQZ
         o3PGYdy5XhOe+nr05QvITqkIcefnqi4fWvbX74tL8Xc/d+5rS8Rd7NGsYqg0u4pXr2oU
         mgtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=RjNH7a5ZfyEbHtYxQQrsZrCEGEd1Q+Hz6sfKZ8G/Rf4=;
        fh=ORcOwlulYhm0PlB4niEDenmGt0tg1PSeOtR/xiWpIK4=;
        b=mru7NWR+nDW8JLUfmtNPZlwD4dfkeQHw+uZmVxiG4+AprYWsDsts6T/20+lfNLX7nP
         a3DkVI/EAcLUZHUlq3kxtaIrKOtpn79Ez5VYqCNmCOwYxIEoNKun6lbZYAePIBe8Lf0g
         yNRBzrbFBaKPuTthendOWGxHx4xisrmzQiyB5jUsDXBatj1/w9Jnd1oESPB+10ySoRGY
         AsK9rBthCUJRaRA//vLKPC8VACRx0MDQ8H2OhlSkYKEuzZcayL3NStZcUnN8jD0/Mapo
         z4qvoNoHJ7XqpMITjiiFI9SHkYqOr7LxU8zv16T6heL5PBi/9Ue5QSl1EwfjLHXxH8Eu
         hvtg==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792665926; x=1793270726; darn=lists.linux.dev;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=RjNH7a5ZfyEbHtYxQQrsZrCEGEd1Q+Hz6sfKZ8G/Rf4=;
        b=Nt4a/pfUxdgppzGe2ryRxKouYcmiYkNV1yIJhVof4r9PiACFJWxBJdZX0HQCoYwc1w
         uOr+kxEYO5l38s0aZfl4YvU6tXzdUzKCfFi34rMByIstNrAfFj+iX85KUmO2sH5lcXq6
         p0ONOgnx+mh/FXuvqa8smtfmnk+0D3hAIqKio86B59Kap2iMN65xFI3/1CaArskh9am0
         m9d5yElBhyOO1OfncFFjjRxu2wptBTeAz7+sGXps8ykj5QrYo+a/ntiyItvOQrP9r0t9
         GIYGPnvp3Y3oY0FT2gzylwXrEK0F9JAif/QqNmX2yQjXMp/FSHmbiewEOIZOzF+RaA9i
         rM7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792665926; x=1793270726;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RjNH7a5ZfyEbHtYxQQrsZrCEGEd1Q+Hz6sfKZ8G/Rf4=;
        b=Knsaj4f+jhR9p31MSuOzbbvNaUdefZFTa1IuFjmrhuA/N84Xdi7T16W7Q1Dg8AbfpM
         5PUryPkownbsCPrJQI+Q6u6vPKgCnsUPzVxnFJfuZzIeuOAJn/RXO2WzzHtJDFre9z3k
         QtmdrH38souP/DY0I8Ian1NKiswju0Vf2vp2GJMqaxZDQvwXPTjubZ8xCIYPZ4l82RJj
         K8HIPm2F2o+PdQ+oODzUNnIp517Xiy71syHVN2HmRc65eguK1GSeHEuzZCIRNl0K9GRz
         WjmbyJ5qNrRjxVzldOtoGqXeqew9cLS5OcQVMC0R/LwBSg8PFUHV7Q1urA3RBFLRpdug
         2OyQ==
X-Gm-Message-State: AFq9FYIaOR4XPBc3Sqg6uUjAIyiELeHhfFn+VVClG2qBj7/Sqw+gGVt7
	IS4LlE6spVxCJzhtRG6k0s/sXhHPvXffgf20EOW8/uP2GGJVycZ83qeYK2ywo46NTkXrmuaeOII
	qx1ScmYmrQ5spubyrBB+aCiLTu5ML0n/gMY4XCmIXsQ==
X-Gm-Gg: AYBFou3ia1K3NEssAiBIIqmtq9DfbQSxI0BurqUwS9nCwN4ER6A2Bi3GCz6h27z55uw
	30NRKuAej56InR3w0AnDEyl8C4WuYYKbh79+0QYeLl4Ao5NaaNWCWcyMMfBbtgjZ9qvKfFDxCMw
	EylhGAtX6PVTQZQ2tqaxgwaLqpEYuUy6OlKsuwJFB6+G8qm7rRl8mkYLg+xXzei/XVpNtyhEZ7W
	Xaff2DV/4Naki1fPvHDaik3CGn0LxhZsBdjClbJPJsckRo/j8y14Fti+UCKBEA8mKO7LV5pmw66
	gw0pSmprtkMqJ2Y7rKXx9QVIhGkfKYUj8AXO5dL6vY+A3I+xIUnwO2SikBownpTSEH/PnrZ5G2P
	oV0biP9qgQEtEWg1sqV+SkmMELaMqyfLmlJBQAvg/NbPUzVqsZo2mDN+VqWx7WuaNU7cF2w==
X-Received: by 2002:a17:907:3e9f:b0:c43:eae5:ee80 with SMTP id
 a640c23a62f3a-c4679536f75mr506433466b.17.1792665926474; Thu, 22 Oct 2026
 03:45:26 -0700 (PDT)
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
From: Abubakar Musa Samaila <abubakarmusasamaila@gmail.com>
Date: Thu, 22 Oct 2026 03:45:14 -0700
X-Gm-Features: AclHuK_eYDh6NoiHwmvyCuDiqZFrK1xu_SnDfdRFIKoQJo401_KaEJX0o0BjYkk
Message-ID: <CAHxSwT84QYxBJtzHwKVxRfLQzfJrbwxov+e0_j4efY+LW5mSuw@mail.gmail.com>
Subject: Introduction - Outreachy December 2026 Applicant
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hello Julia and the Linux Kernel Community,

My name is Abubakar Musa Samaila, and I am an applicant for the
Outreachy December 2026 cohort. I am reaching out to officially
introduce myself.

While my background is rooted in Statistics and data analytics, and I
am still relatively new to C development, I am deeply eager,
motivated, and ready to learn. I consider myself a fast learner and am
very adaptable, and I am genuinely excited to dive into the Linux
Kernel community, learn from your guidance, and build my technical
skills through this contribution period.

I am currently walking through the First Patch Tutorial and looking
forward to learning alongside everyone here.

Thank you for welcoming newcomers into this incredible community!

Best regards,

Abubakar Musa Samaila
