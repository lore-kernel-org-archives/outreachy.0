Received: from mail-dy1-f180.google.com (mail-dy1-f180.google.com [74.125.82.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E095C42123E
	for <outreachy@lists.linux.dev>; Wed,  7 Oct 2026 18:20:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791397214; cv=none; b=f/p3AzfRt3/RqnveJrvmWCm/UO7S2S1yIFyKIQCssypwLtoBsC1kzCC495rSB53zz0pKI/FchTNECVi6ipOUIxMoCEgTGJmibkraDba9xoLXE2I0uvK2gerXL4lUQM0N3zCZdxBYNneKjQd+Ws7X6wHc+2LNqtLLmaaPsBEQfKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791397214; c=relaxed/simple;
	bh=tg7hT4JDuuKV9YkL5zYk1UpXLD/XmX9dVu9TmF1Punk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=USsIGIlbznqlQHBC0FkFZw1EpsgJ7JpwoKBMddH7gITJRRWo2E+5Y99XCPI+arNKTMutNmWmVzBlPdidx6OGT7xSY5/UBIDUpEEwmn874Yo8zzYc0bNRJ9k/keyG/mIgi4/iok50c0twJlVCeYGFpfa+m4FuCpy7DPD4L2BWt80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BoDCzrub; arc=none smtp.client-ip=74.125.82.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BoDCzrub"
Received: by mail-dy1-f180.google.com with SMTP id 5a478bee46e88-33e6279a1d7so91700eec.1
        for <outreachy@lists.linux.dev>; Wed, 07 Oct 2026 11:20:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791397212; x=1792002012; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=QePStQRpcUBLf5uVBS4Y6o/EDHIUFpkUW1bqZ0AHWK0=;
        b=BoDCzrubMru/mwQR+xkycRIkUQRP8kNrUDBpVti04AFVSj7x266OkETtBB6rXVVb3V
         xGtIroXYc343/ab+VfgaDGP8CGl+BWdtZwevaQ1s/CPYmQu0l7tDLRYLq76tL2QDL2Uk
         fhkgOBTxwSlimBje2FCxWivjidkpKBaZNjJ+d+rAQCD6cYU3/V6+wMW5nSlysHuMvB2w
         XT9dJTtUMQpYdsgQGqVPt2ioZU7OE9bWbRvDh1kY8J5q8Bv9duirbsInjd6Nixu5ugQw
         OtOxAVzaPkWIgxBIqMxb3vkIRfLXp6GS5cnzK8KYeRw27JqD11UbiKycnbdATZHweor6
         FJuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791397212; x=1792002012;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=QePStQRpcUBLf5uVBS4Y6o/EDHIUFpkUW1bqZ0AHWK0=;
        b=cwplOndkhIrIEtJIewBw2GhGBZpwrv7tWpah+r/L1hibexfd5snOqjxtrxzKEiEvIl
         qLNV1G3A2GT0R79nuUfHFVFi2PGjlaiuzviwxu+KYieoWZMg4PllDRWux6BPgOnVoQSt
         cCdp3keIxK0RxW3IV9XuC71U+1W7TwRKvOUQ4xXeGksVYkI+Eb4C9cPJ/PKNbvOFyAUS
         Rv/QHFd9wBMdoCxMFtGz/seqZLqWy++MG1yFjyjpJhhwm8eWn8MgAa5Hb/9dj6Tuijzi
         AZZPPWXn81Tg00IA09zymU56FjjdwP3YCMeZYpJqTblp3sWXHm718Q4QvysZfpQZuiRw
         4ZIg==
X-Gm-Message-State: AFq9FYJt9GmfiZOkrzVL06IJ/eKSYqeiY54Cdb66n8adHwonTRWFTSgB
	n401O5H15ttaczT+ZbOjkIa2k8GGX1ZzYvaQNRUYaIZeyVASYalJ0rI8
X-Gm-Gg: AYBFou3u8CnjNx4MA97oEsY7aTryRh/9rJ+JI4L1p1NpwmWF4uaz+9sNie3e1dvMXcA
	LR8TNIWGkAqqTwnE/40h2D4w4juqlfi5S+KK9n5Tm3rvZ82TQ4z5J5YTGSNt8nHqBM+fr6iNpED
	U7tbrpYWUpyvLezNzbywdFehziqgql3Bzb6fKpSM6OnHLX2gEkYKZQaFYNyaILkbREf05OfZdpC
	QAWJg8QlQO3ETzGz1/uqmMpJqOQj0j184Yq0TKVsRwGyaFNd/XSZknvHeObrvftDLC0t7rt4jVg
	Jb9/MsVr8/GhOJAVilrEn4P9f6d4zJFE/vs6DlldfIfWRtKRhkh5/I7EiJHdceHLjJXgOBj/HJ2
	e4f2UFsE8fdUN+ACSl77uyuEPSJnRgGSi+p7HQNnw7vNqUhvraEKT46EUoXYslgg5sNeEGQl4s0
	28WYpBBm8sN3ldh6GtbklxXl4WibWeyt6W0d+TVqEzw46J/S9OtnSKB2OL9MZvLmmJEIGOkC8iz
	ke+
X-Received: by 2002:a05:7301:db15:b0:351:6409:25c9 with SMTP id 5a478bee46e88-35164092ffbmr2777487eec.35.1791397210819;
        Wed, 07 Oct 2026 11:20:10 -0700 (PDT)
Received: from user ([2405:201:c052:b00b:836d:b1f5:934e:51ea])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-351735e316fsm1004071eec.11.2026.10.07.11.20.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Oct 2026 11:20:10 -0700 (PDT)
Date: Wed, 7 Oct 2026 23:49:47 +0530
From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Subject: Re: Welcome 2026 applicants
Message-ID: <asaNQwN2yVVxCmbV@user>
References: <e493c213-c325-fa1f-ec14-aaea11f6611d@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e493c213-c325-fa1f-ec14-aaea11f6611d@inria.fr>

On Mon, Oct 05, 2026 at 07:44:06AM +0200, Julia Lawall wrote:
> Welcome Applicants,
> 
> Thank you for your interest in the Linux Kernel Community!
> 
> The 'Contribution Period' for the December 2026 Cohort runs until November
> 2.

Hi Julia,

I noticed that the Outreachy contribution period start date
has changed from October 5 to October 12.

I wanted to confirm whether I should begin my Linux Kernel contribution work
now or whether I should wait until October 12 to start the actual contribution.

Thanks,
Pavan

> 
> Our contribution period process works entirely via this mailing list. Make
> sure that you read over the emails on this list daily.  I will be posting
> updates here. Most importantly, it is where you will learn from each other,
> by following the questions asked/answered, the patches submitted, and the
> reviewer feedback offered.
> 
> You found this email, now make sure you are personally subscribed
> to this list:
> Subscribe: outreachy+subscribe@lists.linux.dev
> View the archive: https://lore.kernel.org/outreachy/
> 
> Please feel free to introduce yourself on the mailing list.
> 
> Ask your questions on the mailing list. If your question is directed at
> an individual, then CC the mailing list. This way you'll be able get
> quick responses to the issues you're facing. Please help other applicants
> who face issues that you've addressed.
> 
> Your first task is to walk through our First Patch Tutorial:
> http://kernelnewbies.org/Outreachyfirstpatch
> 
> The tutorial leads you through submitting your first patch. Please
> do not submit your second patch until your first patch is accepted.
> A key point is that it is really helpful and efficient (for both you
> and patch reviewers) to refine your patch-sending skills one patch
> at a time, rather than having multiple patches in flight that require
> similar rework.
> 
> You must CC all patches to this Outreachy Mailing List and to the
> appropriate mailing lists and maintainers in get_maintainer.pl. The
> tutorial walks you through how to use get_maintainer.pl.
> 
> Once that first patch is accepted, please record that contribution
> on the Outreachy website. It will serve to check your eligibility.
> Only eligible applicants will be able to log contributions on the
> Outreachy website.
> 
> Congratulations on getting your first patch accepted into the Linux
> Kernel! Celebrate, then do more!
> 
> Please note the following:
> 
> * All patches should be on drivers/staging, but not on drivers/staging/media
> 
> * You can use the check the scripts/checkpatch.pl -f to find simple style
>   problems in some files.  Use your judgment about whether a suggestion of
>   checkpatch is a good idea for a change.  Check the mailing list archives
>   for some changes that are regularly suggested by checkpatch but that are
>   rejected in practice.
> 
> * There are not very many checkpatch reports on the current
>   drivers/staging.  Some other potential fixes to consider include memory
>   leaks, introducing new kernel features such as guard, scoped_guard, _obj
>   allocation functions, etc., finding unused functions or variables, etc.
> 
> Once you have several cleanup patches accepted into drivers/staging by
> GregKH, we encourage applicants to move on to complete project Starter Tasks
> that will be outlined:
> https://www.outreachy.org/apply/project-selection/#linux-kernel
> 
> Ping me individually if you think you are done, or close to done, with
> cleanups. Also, folks who already have cleanup patches from prior work,
> please get a few cleanup patches accepted, to refresh your memory about
> submitting kernel patches, and then email me about that too and let's see
> if we can move you on to project tasks.
> 
> All the best and thank you for contributing to the Linux Kernel,
> 
> Julia Lawall
> Kernel Community Coordinator
