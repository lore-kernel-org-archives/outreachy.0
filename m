Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211B730FBF
	for <outreachy@lists.linux.dev>; Wed, 25 Oct 2023 19:44:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="R4O3fM5b"
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-9becde9ea7bso274193366b.0
        for <outreachy@lists.linux.dev>; Wed, 25 Oct 2023 12:44:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1698263044; x=1698867844; darn=lists.linux.dev;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JeXrnJe8xvNfcrNS9vywqBs8RswX60g4RVbYr0154Ac=;
        b=R4O3fM5b07/tu+ldrsXakQgooilzXBmSprrcD424e2N6R7Sbq1fyk0yFrtkLAKCYRo
         0D7ualSqDn9LL8cb2xACQEbr03hp1m6wW67YcShKF8Mk3ykCs7HvY9LS5WiHdRn2yTxs
         xGScl+dhRM/SV3OZmcMljdztSewuU9YJdQjAw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698263044; x=1698867844;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JeXrnJe8xvNfcrNS9vywqBs8RswX60g4RVbYr0154Ac=;
        b=BIil9WkqoNgFWRZvQNw5pG7yuXVJjioHPVHFXO6aMQJT43J8loMbGwo3xpjlVR261q
         X1ZVfq7UPsT20mrZOZeF1vXhhpUNQYpCzKoJkIvKmmMzDSycImdpnfhRaj7Hm1oS3p27
         nvvshmuCqdRgmBr99pf0vnOajxF5/IeTvr2Iaczp0ArCw+aJtR1j5ib5yw8ZFFElPZrx
         Um9D3brOtHrhHmzPi+mpTMOsCYgf5wXGFlfb+uAsrwjXjX+Q7R6gF06G5f+G/gmn7fIw
         U7rhfVcbBWDPRXkzM/dRED3BuFzpdXypsxMB/j8PvlThNb3V27ImU4ucG55TM1QG7ay9
         gMcw==
X-Gm-Message-State: AOJu0YyhoUZPDuZnaV2AGX8DH9pwtmOO6MkDC0P4jLRXkl/4BaDbeKES
	sy0vpyY7g2tCuKtE2X0zfY3JwoThohkwyYnhb/1P3hWO
X-Google-Smtp-Source: AGHT+IHwHW1aigP1uITWFN6mQaYAuMY8iq0Rggbzd4UhQsHMXTyFCFxh8iSNCUKGXP3ZRjizgZ0DPQ==
X-Received: by 2002:a17:906:c146:b0:9a1:e0b1:e919 with SMTP id dp6-20020a170906c14600b009a1e0b1e919mr591670ejc.4.1698263044020;
        Wed, 25 Oct 2023 12:44:04 -0700 (PDT)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com. [209.85.218.41])
        by smtp.gmail.com with ESMTPSA id g15-20020a170906198f00b009b2d46425absm10380810ejd.85.2023.10.25.12.44.03
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 12:44:03 -0700 (PDT)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-9c603e2354fso19735866b.1
        for <outreachy@lists.linux.dev>; Wed, 25 Oct 2023 12:44:03 -0700 (PDT)
X-Received: by 2002:a17:907:9492:b0:9ad:8a9e:23ee with SMTP id
 dm18-20020a170907949200b009ad8a9e23eemr587581ejc.13.1698263043242; Wed, 25
 Oct 2023 12:44:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <369bc919-1a1d-4f37-9cc9-742a86a41282@kadam.mountain>
 <20231023114949.34fc967988c354547f79c4e7@linux-foundation.org>
 <8ca50d4c-3c96-4efa-a111-fca04d580ab5@kernel.org> <169818295461.20306.14022136719064683486@noble.neil.brown.name>
 <53c584c21f273548004a7ddb5aa4c04ec7bca1c5.camel@HansenPartnership.com>
 <87fs1y8xkl.fsf@intel.com> <893b8cc27684a03865dbf9517a4cbf1bd132950a.camel@HansenPartnership.com>
 <20231025141030.63acb006@gandalf.local.home>
In-Reply-To: <20231025141030.63acb006@gandalf.local.home>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 25 Oct 2023 09:43:45 -1000
X-Gmail-Original-Message-ID: <CAHk-=wj_4VNHeNmRJ_DeD7RDZFvPCQxVR1O2RwFAOG7Gb7OYYg@mail.gmail.com>
Message-ID: <CAHk-=wj_4VNHeNmRJ_DeD7RDZFvPCQxVR1O2RwFAOG7Gb7OYYg@mail.gmail.com>
Subject: Re: KTODO automated TODO lists
To: Steven Rostedt <rostedt@goodmis.org>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>, 
	Jani Nikula <jani.nikula@intel.com>, NeilBrown <neilb@suse.de>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Dan Carpenter <dan.carpenter@linaro.org>, ksummit@lists.linux.dev, 
	outreachy@lists.linux.dev, kernel-janitors@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 25 Oct 2023 at 08:10, Steven Rostedt <rostedt@goodmis.org> wrote:
>
> I think this is the key issue. We only want the context of an email that is
> being responded to present, and the rest trimmed. Automated trimming or
> collapsing doesn't do this well.

It's not just about MUA's that hide things. The MUA _I_ use hides
excessive quoting, but then when I look at the results on lore I often
get completely unreadable results because somebody quoted several
hundred lines of patch or whatever. And then I scrolling through the
thread is suddenly a major PITA.

So I do think that the whole excessive quoting on the lists should
just be a hard no, the same way html is.

                 Linus
