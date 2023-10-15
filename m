Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76DAFEBB
	for <outreachy@lists.linux.dev>; Sun, 15 Oct 2023 08:56:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Pdnt0wmm"
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-66d134a019cso22922696d6.3
        for <outreachy@lists.linux.dev>; Sun, 15 Oct 2023 01:56:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697360205; x=1697965005; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=n2KXaGwDWUTXDC4E1rKzNmnoj3nOy20m9ZN+2X1+sps=;
        b=Pdnt0wmmTpMaRE1CFiWPSr9r53apGP4pQYlDbhNK8uful/lP4uESIp/twDxKM3mzCK
         wxeJB76CNbvfHeDJ/o+g1bfR/lYq0zi3GCz0WX1CYX842w3gV24tNCV9Pmm+RyjNSReH
         S2jLrD5Cw53+uijrHcSeTvjLd5zwYsPS0WQmwdvyMF2ISNdBcmUsIR2ehtdrMJbxckgs
         p6opMN/fUcOZ1+1J4xZ6uFYiY0ZA5OUv0Wv1nKD5Eqiq4vVH/JOHo8u/HKZG3uiCxf98
         OZJIEleEsw9gcW1y6OHodAmIWGUS3oaWkX+qsWlBuiEHQgoq/bX71p6dd8SOQFt+tK9U
         sg+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697360205; x=1697965005;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n2KXaGwDWUTXDC4E1rKzNmnoj3nOy20m9ZN+2X1+sps=;
        b=FLKkPZkB4wv8MueoS6vz6X9duEJDaGeuY29DwZ9c3SCc7UJjr5xNUWgfMemw5Q+AkC
         hzfuriEhhpUsYos93Tqzouxr+vZkIBfI8jSlw5kqYKr+/e/4RVBh/Be71hnRfiYu5N+h
         IA9NRUQvqeHPQGQPCYgPn2BeXo2ZePUyiO3zfT5PtwgnJhPqGU0mswqHmH8RxWDNKLCS
         cKWdcLRGZj7nT/610nhBTR2z1/kOlH3P7t9EYyZCz82wNo3XMFiXhHToiWWpsUldCQg5
         E1LrlEhrx9QtLj/CLNHnW3sH4wZ0mWAPyRhxWKjIe1Ma5I7vC4Tx40P0BoDX5nQ6oyFq
         0CnQ==
X-Gm-Message-State: AOJu0YydKpiTzSXSQNwnSSri7s4JhNPT+S9fEaBMMEN2InsosiinfMtx
	99u2GoOllidfgQIgRSzpu28l+/TwBgJw+tKp
X-Google-Smtp-Source: AGHT+IHa/NA9/pIOc3BW/O5BjSfX9dcHmLxN8PiPZb1jF/4jrU1Et6Yf/5kQg7GjC1NBYpeML6Upsw==
X-Received: by 2002:a05:620a:25c6:b0:76f:24bd:fef1 with SMTP id y6-20020a05620a25c600b0076f24bdfef1mr36680940qko.30.1697360205171;
        Sun, 15 Oct 2023 01:56:45 -0700 (PDT)
Received: from gilbert-PC ([105.112.18.68])
        by smtp.gmail.com with ESMTPSA id s8-20020a5b0748000000b00d814d8dfd69sm1753822ybq.27.2023.10.15.01.56.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Oct 2023 01:56:44 -0700 (PDT)
Date: Sun, 15 Oct 2023 09:56:40 +0100
From: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH v2] staging: rtl8192u: Align descendant arguments
Message-ID: <ZSupSOhRK8Barcwh@gilbert-PC>
References: <ZSuhYpyYfZz5EhDB@gilbert-PC>
 <ZSulKrvrrLyfnzND@ashyti-mobl2.lan>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZSulKrvrrLyfnzND@ashyti-mobl2.lan>

Hi Andi,

On Sun, Oct 15, 2023 at 10:39:06AM +0200, Andi Shyti wrote:
> Hi Gilbert,
> 
> On Sun, Oct 15, 2023 at 09:22:58AM +0100, Gilbert Adikankwu wrote:
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
> 
> I don't like this commit message. Although it's correctly
> written, I think it can be improved in order to be more
> immediately understandable.
> 
> Write what you did in imperative form:
> 
> "Adhere to Linux kernel coding style" doesn't mean much, you can
> write
> 
>   Align descendant argument to the open parenthesis as per the
>   "Linux kernel coding style" in
>   Documentation/process/coding-style.rst.
> 
> Yuo tell immediately what you did and where to find the
> reference. Citing the document in the commit log, in this case,
> looks to me like an unnecessary information.
> 
> Copy pasting the output of the error is a very good practice and
> you can write it as:
> 
>   Mute the following checkpatch error:
> 
>     CHECK: Alignment should match open parenthesis
>

Thank you for the review. I will adopt the corrections and try to be
more concise in the commit message for my future patches.

> > ---
> > v2: In the first patch I changed my commit title in the
> > email and sent it before amending it in my git tree which then changed
> > its SHA ID. I felt it might cause an issue so that is why I did a v2
> > of the patch.
> 
> It's not an issue, you can do that.
> 
> But I'm going to give you another piece of advice that I already
> gave in this list. Do not send patches between versions too fast.
> Reviewers need some time to review... wait some time before
> sending the v2, so that the v1 gets enough visibility. Sometimes
> reviewers correct each other, but they need time to read the
> e-mails.
> 
> This way you would also avoid unnecessary noise.
> 
> Andi

Okay, thank you for the advice.

Gilbert
