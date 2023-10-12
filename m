Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24067F4
	for <outreachy@lists.linux.dev>; Thu, 12 Oct 2023 02:44:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="J5owiTGe"
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-27cfb36c0d4so422929a91.2
        for <outreachy@lists.linux.dev>; Wed, 11 Oct 2023 19:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697078653; x=1697683453; darn=lists.linux.dev;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Tss9BBPxVVJTSbjVDr2C0fRhOQgvFaoneVmVWfSajgw=;
        b=J5owiTGeCUCRd65CXR2ygZUpfAwinRyHCC61Z1yzGXsi5shO76mvGKUos4S2rI+1Qs
         9jVaKVkrC+VGx1EOQl+Zha0nsHVUlurdPffTFChbivw+hwsNl+KfI6ilFyuORKtM45Ca
         IosyY0LcaJ1ZUx6m40GGjDErPwjaZ8f8ltua8VTy9MpET6SNpuyh675ntNjBMHN3VhdP
         5BtDU0ZI8f1jlrZg55HlSdNwWh7GImVOvrg8s+0JV4hSzhtcmIz5l8dMRBRtwWO3M0XH
         wT84gaSnCLy/eA0Aict9GNAdt8xvpIRpdHPMzbhq9bygRYrN9P3ofcW72rvJijrmkM8R
         gGuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697078653; x=1697683453;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tss9BBPxVVJTSbjVDr2C0fRhOQgvFaoneVmVWfSajgw=;
        b=MGBkg3rTBjIU6+3rx7njg1lClJSaxKoUI6zbVz6ZugnAexPZt3y/w4qvinuY5L3sKC
         6czG8Zd8zeByMpiWuDK2TdRGi9kYEWtcwYZuA5Q8MHQN32Z1G3hNycFbIY2n3Mxrqm5w
         iQ05K1b6oFn70Kl0zJrjjPQR1TIJCokJHShuRNcA3MDefQ+29Yj8W7lTLC3csA/sjN5f
         GSH5BdWzwQoDsUAKnWrXkVhxwoG7dEfwGqq0h7KXjANmmryoUhTzRU9/jq+syFE+N8ZR
         KRlfl2Q2y6pwnGTioEGHLaRiNo++Wm3PO1VwseaskZ3DlLVPDf/y6blvIYokPgVkfu8g
         fFQg==
X-Gm-Message-State: AOJu0YwYlyk8Y7INW8RD562TvfRgoDDwu7qfZnEcd1fBWMPUdesexcGQ
	2I6hNvMLLin75DtgfHIE552mj2omxu8=
X-Google-Smtp-Source: AGHT+IH1FmVYyJs/0ng8uxN065JX97GRgQsF2mKl6pHbmizTXWiw8dUm/gclVweaFbnbrt5NMFPp6A==
X-Received: by 2002:a17:90a:1f4d:b0:279:3173:d73a with SMTP id y13-20020a17090a1f4d00b002793173d73amr20337960pjy.26.1697078652946;
        Wed, 11 Oct 2023 19:44:12 -0700 (PDT)
Received: from Negi (2603-8000-b93d-20a0-29fa-db66-4c18-1f0a.res6.spectrum.com. [2603:8000:b93d:20a0:29fa:db66:4c18:1f0a])
        by smtp.gmail.com with ESMTPSA id nk14-20020a17090b194e00b00277246e857esm667017pjb.23.2023.10.11.19.44.11
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 19:44:12 -0700 (PDT)
Date: Wed, 11 Oct 2023 19:44:11 -0700
From: Soumya Negi <soumya.negi97@gmail.com>
To: outreachy@lists.linux.dev
Subject: [Outreachy Applicant] Introduction and a quick question
Message-ID: <20231012024411.GC16374@Negi>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Hello!

My name is Soumya. I'm one of the applicants to Outreachy's December 2023 
round. Very excited to get working with everyone here:)

For our final application, can we include old patches as well? Or are we to
record only recent ones?

Looking forward to contributing,
Soumya Negi

