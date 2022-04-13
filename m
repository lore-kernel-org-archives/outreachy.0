Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314C323D6
	for <outreachy@lists.linux.dev>; Wed, 13 Apr 2022 07:09:51 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id g18so1200763wrb.10
        for <outreachy@lists.linux.dev>; Wed, 13 Apr 2022 00:09:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9c+Olqp4bgW7KjZIr0uaF4s4iUectqfeHsLjMVnAgSo=;
        b=PXhp7uBNBO2GBvPmDUNDmnGxMpvCiWRjFv6oizlYg/wqfdAeqjiDypuAi8BTNvuh5u
         RmOfPd59S3td2kdbb8FxkXkBrg7HAEGfRRk6+QgM5hZQl29lZ8tIaS7qcMeCuRkqcZT8
         BCr0yvgtqVlPFoSci4E8EaEM7w/AWUXM91FesFUyqalBcwR5lOF+KiptToZpsFmEsZBo
         U6AuzIjU5LA5uuIA7LH7toOYFei2DIblUU+PZkp4hefDhIkPokvHMUbsJiO/ki/aKWmn
         josz9RBWrgFJguCNL243fCnJLuI/oFzh1csRXYESVk4ufCEgiWNLUwafApEv+5xJvCyx
         niFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9c+Olqp4bgW7KjZIr0uaF4s4iUectqfeHsLjMVnAgSo=;
        b=Lc/nrcHefIjSiPXLrL1FgJaj176TvYhL66deBYefLRkrHvszGy+gPbyGPLBjNqyKnn
         unr3G/1sjtTBmEkvxk3Zt33iAK40FEF65JuTWY1h4fUyI1faB2gGUZfmi8xuGCJcndfr
         Wgphtffh9vUfbrxfwT7NHbFxaMqscm9D144PERNp6E1chjbMt7gM9lDPor3qxfkBBpmu
         OMvn/NeSJzm8WCADQFoTaHgD+7ymS/9/H3uZKCKUhiV70m6pQsb654AQWyxxicSv7QMs
         9YTBahhcIXlkC5NE8ErATurr4byD7kVdgc4ZMNxfLelKyP66NBGhD9SG83aTXKKjE30+
         01YQ==
X-Gm-Message-State: AOAM5303HjEM8Fb/qQ2zBVYj1SR7wRa9mZYQF7ZjzwPyNnrXtkeEdYNB
	/wN8Ii7+BayHBtTsDOmEQv8=
X-Google-Smtp-Source: ABdhPJxihNVa5t5IUD5R9TVfFBFVflMtDTSstfQXMP3X2YcyaVZWruTD0gg6mSycV2Dk4pBTkG5+rg==
X-Received: by 2002:a5d:67d2:0:b0:207:a5cf:c14d with SMTP id n18-20020a5d67d2000000b00207a5cfc14dmr11280581wrw.365.1649833789327;
        Wed, 13 Apr 2022 00:09:49 -0700 (PDT)
Received: from leap.localnet (host-79-43-11-75.retail.telecomitalia.it. [79.43.11.75])
        by smtp.gmail.com with ESMTPSA id u1-20020a056000038100b00207a578e9d4sm8233374wrf.89.2022.04.13.00.09.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Apr 2022 00:09:48 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Should we Cc this list when submitting patches for subsystems other than "staging"?
Date: Wed, 13 Apr 2022 09:09:46 +0200
Message-ID: <1891396.fIoEIV5pvu@leap>
In-Reply-To: <20220412223603.GA1237891@alison-desk>
References: <1859502.6tgchFWduM@leap> <20220412223603.GA1237891@alison-desk>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On mercoled? 13 aprile 2022 00:36:03 CEST Alison Schofield wrote:
> On Tue, Apr 12, 2022 at 10:21:31PM +0200, Fabio M. De Francesco wrote:
> > Hello,
> > 
> > During the current month I have submitted some patches for subsystems 
other
> > than drivers/staging. When I sent them I thought that those shouldn't 
be 
> > Cc'ed also to this list. Now I'm not anymore sure if I did it 
correctly.
> > 
> > My question is if all patches sent by the Outreachy's applicants until 
> > April 22nd should also be sent to this list, even when they are for 
> > subsystems other than drivers/staging.
> > 
> > Furthermore, one of the above-mentioned patches is strictly related to 
one
> > of the three Linux projects, being it a reworking and extension of a 
large 
> > section of the documentation of HIGHMEM. Is it sufficient to add that 
patch 
> > to the page where we register our contributions in the Outreachy's 
website? 
> > 
> > I'm also asking because during these days I'm preparing further patches 
to
> > other subsystems and I'm going to submit them well before April 22nd. 
> 
> Thanks for asking Fabio,

Thanks for replying so exhaustively, Alison.

> Yes, all contributions that an applicant considers to be part of their
> application should be shared on this list.

Good to know, but unfortunately now is too late for sharing on this list 
the patches which I've already sent to linux-kernel@vger.kernel.org and 
other lists, but...

> There's always an exception! Perhaps if a mentor gives out a small
> task for which a posting to this list would spoil the task for others,
> only gets sent to the mentor(s). I expect project mentors would tell
> you that case explicitly.
> 
> We like to see everything you all are doing and we want the list archive 
> to accurately reflect all contributions and communications.

In order to let you see everything we did in April, can we send the 
subjects, the commit messages, and the links to lore.kernel.org of those 
patch which we already submitted without Cc'ing this list?

The following is an example of what I'm saying:

-----

https://lore.kernel.org/lkml/20220409012655.9399-1-fmdefrancesco@gmail.com/

ALSA: pcm: Test for "silence" field in array of struct "pcm_format_data"

Syzbot reports "KASAN: null-ptr-deref Write in
snd_pcm_format_set_silence".[1]
    
It is due to missing validation of the "silence" field of struct
"pcm_format_data" in the "pcm_formats" array.
    
Add a test for valid "pat".
    
[1] https://lore.kernel.org/lkml/000000000000d188ef05dc2c7279@google.com/
    
Reported-and-tested-by: 
syzbot+205eb15961852c2c5974@syzkaller.appspotmail.com

-----

This patch has already been merged on April 11, 2022.

What about a list of entries like the one above?

Thanks,

Fabio


