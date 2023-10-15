Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 981C9EBB
	for <outreachy@lists.linux.dev>; Sun, 15 Oct 2023 08:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RcDphRzp"
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-5a7b91faf40so42385697b3.1
        for <outreachy@lists.linux.dev>; Sun, 15 Oct 2023 01:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697358934; x=1697963734; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iRu38U4l8aUK5gWuFSPmpp7xLVfjE/bmKJrmQ2PiCYw=;
        b=RcDphRzpUTuojRy/4Q0ilBrJHyF4FnqBHs5XxXgKVacYA/2MGe7SCa1XAVYjxJa5qY
         CZN3K4xTlDisLUNVyE2oqxAbNs7/Ds8aSidRAmLeVf91zK9ajJp+jXKN9F709yhkLwn/
         UYc6qusrrBxOcvWVZpgvlLQvnKTSJeX+2sF6IuKu70Jn3Z9LJMldaMGV9B9GsoMnPCBO
         GskPCIs9tGYMkXML+zX9/8TGvxhdlD7jvVZtuoyPKWo8YfeJTc1SdvhPwqV30/PI88W/
         43viYId/qhQpm+UrLXohJu3bb8/KtIS5U8MjmeX3o7/8/csUdJmfDQCEwOpKUSn0L5VT
         KN+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697358934; x=1697963734;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iRu38U4l8aUK5gWuFSPmpp7xLVfjE/bmKJrmQ2PiCYw=;
        b=hN4eyo6rbMI7G16GOUSkglSFDeictQz/83VsQDtTNQWUmvXAJ3wDVUMOb3rmvBglXB
         pZAKbXV9T+HaLHvbaBKxGA/RHx6uVqAdAm2TDv3RCyJrr0+1kLWXPkkyqQcqH7Uf806F
         +GRv5yJ02zfEwS0jdiMvuCamH/0JPRk3NAI/uNdggevDJmTxPl/HKpRizlnfFjbCtuq3
         GboFubS7u+54JuXaXViwAbOrxI6CwzAcGdeEoQc+oj4AU/0TGYq4ujC8xc7J66P6IxSW
         J/FnzJj7D6qToE1v0FM8UQzFkUzPzZoxJHF1JUaKh6OTCgDh3M43N1rk0iQ7rSnIxkOj
         fySw==
X-Gm-Message-State: AOJu0YwF20p1O3YGFIa+98eDNh2e8TubPKdBPbv3j0xxYy0DPXwrXcIw
	MRXb1J27WVVaENs9Cf/ojPESkS6qTPhMb2CT
X-Google-Smtp-Source: AGHT+IGIMVMmzd7rZ1DYndoRJToaL+AFhXCDQLORf5ybzCMV4gCLqipNhv62D/HhhGHh+d39XTag1Q==
X-Received: by 2002:a81:5488:0:b0:583:c917:7ff0 with SMTP id i130-20020a815488000000b00583c9177ff0mr28450398ywb.51.1697358934365;
        Sun, 15 Oct 2023 01:35:34 -0700 (PDT)
Received: from gilbert-PC ([105.112.18.68])
        by smtp.gmail.com with ESMTPSA id t9-20020a258389000000b00d81425266c1sm1742988ybk.42.2023.10.15.01.35.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Oct 2023 01:35:33 -0700 (PDT)
Date: Sun, 15 Oct 2023 09:35:28 +0100
From: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: rtl8192u: Align descendant arguments
Message-ID: <ZSukUAuhYLeaOy04@gilbert-PC>
References: <ZSuYUmX5P5M0Ok/I@gilbert-PC>
 <ZSuhpu97lW45BEeS@ashyti-mobl2.lan>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZSuhpu97lW45BEeS@ashyti-mobl2.lan>

On Sun, Oct 15, 2023 at 10:24:06AM +0200, Andi Shyti wrote:
> Hi Gilbert,
> 
> On Sun, Oct 15, 2023 at 08:44:18AM +0100, Gilbert Adikankwu wrote:
> > Adhere to Linux kernel coding style.
> > 
> > "...A very commonly used style is to align descendants to a function
> > open parenthesis" - (Excerpted from Linux kernel coding style (#2))
> > 
> > Reported by checkpatch:
> > 
> > CHECK: Alignment should match open parenthesis
> > 
> > Signed-off-by: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
> > ---
> >  drivers/staging/rtl8192u/r8180_93cx6.c     |  4 ++--
> >  drivers/staging/rtl8192u/r8190_rtl8256.c   | 16 +++++++--------
> >  drivers/staging/rtl8192u/r8192U_core.c     | 20 +++++++++---------
> >  drivers/staging/rtl8192u/r8192U_dm.c       | 24 +++++++++++-----------
> >  drivers/staging/rtl8192u/r819xU_firmware.c |  4 ++--
> >  drivers/staging/rtl8192u/r819xU_phy.c      |  2 +-
> >  6 files changed, 35 insertions(+), 35 deletions(-)
> 
> Do you mind splitting one patch per file? It's not really
> necessary, but normally easier to review.
> 
> As you are here, if you then run checkpatch on your patch you
> will gather ideas for your next patches.
> 
> Andi

Hi Andi,

Thank you for your response. If it makes the review process easier, I
don't mind splitting one patch per file. I will do as you have
suggested. Should I make it a patchset?

Gilbert
