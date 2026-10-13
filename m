Received: from mail-dy1-f169.google.com (mail-dy1-f169.google.com [74.125.82.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1413E1203
	for <outreachy@lists.linux.dev>; Tue, 13 Oct 2026 15:51:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791906683; cv=none; b=bo4GsldmepaWsFq/vz6jq4G99J8PPVew0kL50q4XtYmZsf1TqMjNfA7qj0pRpcN9992fo1hZ+Q1GkZm4hrGdU1zK54B9e6RwaqUxqq/zr17rZMOLTj//DkZ8RjFQJOsVJjxijtlUNvB7+EsgO6dA0GeouSBQmJ63ZWvzbz2nhjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791906683; c=relaxed/simple;
	bh=+6W5Xp9SZMo9Oltzb7X3HjmuqNtZ4Jcqw3jS1Xm35dY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E5LjjFVcIzbB/EPwq1oM6fnZLwygrxzq1JBnwl32V+LXHu6Pdx9b16F03hg4tZ7T7cgmKVwckNPBRiHwJ8vIPha9mKxyhIWK8JaiWq39ZC8YBs7/V5vY13ABmJp4mHAivmJagvPgMoHqfFdXZbdH9pjl9tujr/KoLXtUCRvysPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CGqvkpDT; arc=none smtp.client-ip=74.125.82.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CGqvkpDT"
Received: by mail-dy1-f169.google.com with SMTP id 5a478bee46e88-35b2c599f43so2682618eec.0
        for <outreachy@lists.linux.dev>; Tue, 13 Oct 2026 08:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791906681; x=1792511481; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=O+8RXyeJ461YZSLV5EydzuUNuSAQCn/Ul+q9Z99DN9k=;
        b=CGqvkpDTsQwTj9D3LehowJ15qTEzElqOVI+e3hHGAQTk6emXtlY5lW1YeEyo8+jhj0
         XZ9655ICxkCc0NpHN7D4Np6I/Kn5wJvLb/LFhxrut4OGhJ2EWDO9BHddx/29klW8psV9
         o09lBGMyLc9ZCWEcCrddq4S/EufHtXUN1nU14ufc8eo32Q1Gd+JDzFznk5qLtzVyHDX4
         BEpDVyjk5xCqOHFYR/x6Tna4rBx0MlgPDi4e31AeRslgDHnOGDhLLh/xi34Q1QAjANWS
         8MXCJN0QveHfrA8x38ZajaN9AB7RLTtH5PTyjDL/HksCZDDEmCLcYsNhSeBl9mRby8Iq
         9uFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791906681; x=1792511481;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=O+8RXyeJ461YZSLV5EydzuUNuSAQCn/Ul+q9Z99DN9k=;
        b=PCTIZqu/dv9yJew3WN+ZJPnfw3RXL78HF20Y9/SQMI1L8BqAaqKKGcr1gTqit72wHX
         K61eMWeoYLWt4cX8kZYxL3qvs1EQ4sXDOYtt7fjfd10TuepJV2ZpFzrCFhGQrvuCFgUl
         IRz4CU5YmUYLYFB3hzA4g8T8Qt6FBkyuepRN5gQfjeftSQas9hta8eYs/pL6TZfaxon5
         Ng/7OY8gU7HK9r86+t94yZQykbhWidCY33POIOtLdA9NauXuXkaPXrpj4t98i7HyhdOT
         EQZboXuR5/EFBsyEZ+nMVI39UCG9jL4rTGlTMUil362PnOSiJcZzoypI8q6i5T/XuAv/
         PO1w==
X-Gm-Message-State: AFq9FYIeaLzpW6blmspNvYgrUpH/3JA/vzms8Pe9IvXQr+5y++7QZUyJ
	1n5aZyk8bNP2V6nefPGDmZxS1DLh0aAfUB+MSIuJ8WRI8sz+Tuw/hrQhAgIqTn+J
X-Gm-Gg: AYBFou1cRNrg25yJd4AkIvpMmqUPIy4n2ADOC1o7aaN+B0ly+FxEHhXPqNB0fmGVFR4
	a9FhTz3asseA8zfBew/xC6n/kOdXFSopyRSOKBNRHpKPxdUkSqdLtUsBzU1j2cMnLZBYs4KcXmT
	4ZdCL3+AGX1cTxusTZ52xnUQQfw/Hx7RJpDyZlGuwsnXNXgoULwNiU60iLSEyA3UsGiPmC2xRrR
	tplfM5cqpOnlXLh5KW3EA1Ct+9wvH9V7Hl8dbL7Dai/7FP0EeCJ/pdfg4/AlTb8Y5ZOJ8KEsjPr
	FYBSmmkefRkvfJS0MbKjtuXhkEcxmnb3IAIVnqBRnNID6fhKAMy1nHlOonsyP1bbiQG8qwIYU5N
	QqC2e/N8S7SpmP95k61/M44bFUVzNAaVB1wUk2WdorjFfReCiHb+HSaAsyH98qlZtOnVZDj6AVi
	KhKuCOT8ot1gktln5DrelGU3LY+FUSDiO3rJfR98i0WUQ866i7bAIjlmP2Lo/9Xri+n7tMTPNJa
	Hk=
X-Received: by 2002:a05:7301:8607:b0:351:595:739c with SMTP id 5a478bee46e88-3537e06febcmr21002442eec.35.1791906680638;
        Tue, 13 Oct 2026 08:51:20 -0700 (PDT)
Received: from user ([2405:201:c052:b00b:7482:1179:c0d4:b9cc])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-35c89429484sm7329636eec.23.2026.10.13.08.51.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2026 08:51:19 -0700 (PDT)
Date: Tue, 13 Oct 2026 21:20:53 +0530
From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Subject: Re: Welcome 2026 applicants
Message-ID: <as5TXewJ7Slm5KkR@user>
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

Hi Julia,

My first patch has been added to staging-testing branch by Greg.

I have few doubts:

   1. Does my patch need to reach staging-next or Linus's mainline tree to be
      considered accepted, or is staging-testing enough?

   2. Can i submit my second patch now or should i wait?
 
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

   3. Should i mention the date my patch was accepted or the date it was
      merged.

Thanks,
Pavan
 
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
