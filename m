Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532868F47
	for <outreachy@lists.linux.dev>; Tue, 17 Oct 2023 04:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xWIRk/cQ"
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-32d8c2c6dfdso5052535f8f.1
        for <outreachy@lists.linux.dev>; Mon, 16 Oct 2023 21:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697516090; x=1698120890; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=q2dZBUmwthCKe42eGQqfFVlklrGhflMnlew3Rp0hoTg=;
        b=xWIRk/cQ+uK8uULeQSEq0tPW7WiErL7onorSYVjrsRG1nG/KoS79CTSFuatF2DLRED
         DKoAKp4tOZFJCBwbzAf/F7IYRl/GgFdRfAc+NcpCBdJIPYlBuMC448+mXxisSvpZ/BPs
         S7HBJl64h69G0xmmQsaMqhheCeYb5qBi5ioYFPdFxVMB9J/2z7wp1Ess0AVwzh6tqMq1
         3tRJXBn+iLgoNptXWK1iYjfYivSbxwKAZfEHLOZIfWpYOwWWM2+SoW3oeXK6dTf5Nz92
         kf9AB/Xoj+BIMZeelVrMXmwCLFVCyi5GbUscUcz0OmNSTHtZzGmAjtszRcDcmveWzo/L
         4exw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697516090; x=1698120890;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q2dZBUmwthCKe42eGQqfFVlklrGhflMnlew3Rp0hoTg=;
        b=iPHbY3RL3ZRbgodnMMXRw0mxB2BFIPdgX3I+DTNn4ZKLcsqzJiZqQOOL1MSBSxdb28
         QdXHFiAi4aRrTOdfLtAonEr+lZUA/7P8emQ3HuX4ar5fqBqawSCgjaM3golzblQIrRyH
         tVUQyo/dKqHb6LewkI+PGoSvLksc6a6pHOZ+JvRKozpeUOkEvBGFAE+UDlCzjLN0BMV2
         Ou4q6Gx4lnJ/su/MdI4OKuB7LvOzIH9bc6YlLscSh05HOAkVD7DHiB432X+n4R/norrH
         pxgWckNyWxbH+1gGEXNUiPyrzlmMUWUzG6MChJhVhc96ltdo0PyWigN9udLjs80e3IF1
         mOgA==
X-Gm-Message-State: AOJu0Yyie5h2Xo+xD6t4ynVshA0aXbbHdalcXT0pDL9VxxMggyk4XhUv
	NCnA5TAsX3WBcMgD3ivXc3lSPA==
X-Google-Smtp-Source: AGHT+IHL9edRjCBjUElxLPuvZjX09mIVD7SQA1z7VlWAEUiuE41FNpxgzfuMp4mLH2kzKjjH4uH/0Q==
X-Received: by 2002:a5d:6186:0:b0:32d:9d3d:8b98 with SMTP id j6-20020a5d6186000000b0032d9d3d8b98mr1034563wru.71.1697516090540;
        Mon, 16 Oct 2023 21:14:50 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id e13-20020adfef0d000000b0032d9caeab0fsm686370wro.77.2023.10.16.21.14.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Oct 2023 21:14:50 -0700 (PDT)
Date: Tue, 17 Oct 2023 07:14:47 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	Gilbert Adikankwu <gilbertadikankwu@gmail.com>,
	outreachy@lists.linux.dev, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: emxx_udc: Remove unnecessary parentheses around
 condition tests
Message-ID: <8de0c0ea-d81c-402a-a5c4-7779a190c306@kadam.mountain>
References: <ZS0f+xaaLmLpKv2a@gilbert-PC>
 <2023101658-unmoral-survival-25cf@gregkh>
 <ZS2qpwnfCxsbvOld@ashyti-mobl2.lan>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZS2qpwnfCxsbvOld@ashyti-mobl2.lan>

On Mon, Oct 16, 2023 at 11:27:03PM +0200, Andi Shyti wrote:
> > > Fix 47 warnings detected by checkpatch.pl about unnecessary parenthesis
> > > around condition tests.
> > 
> > And as I have stated numerous times in the past, they are not
> > "unnecessary" at all, and provide a valuable hint to the developer as to
> > what is the ordering involved.
> > 
> > So you can ignore this checkpatch warning please, it's not valid as far
> > as I'm concerned for the subsystems that I maintain in the kernel.
> 
> I find this very confusing, though:
> 
>    if (((ep->epnum == 0) || (data & (1 << ep->epnum)) == 0))

Yeah.  Too many parens.  It could hide an == vs = bug.  (That happened
once 10 years ago but I still remember it as if it were a useful and
dangerous anti-pattern to remember instead of a getting hit by a meteor
type thing that will never happen again).

Also == 0 should only be used for the number zero (used as a number and
not as a logical no or absence) and for strcmp() functions.

	if ((ep->epnum == 0) || !(data & (1 << ep->epnum)))

regards,
dan carpenter
