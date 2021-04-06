X-GM-THRID: 6947995427572547584
X-Received: by 2002:aa7:9989:0:b029:1f5:aa05:94af with SMTP id k9-20020aa799890000b02901f5aa0594afmr27970156pfh.34.1617718345106;
        Tue, 06 Apr 2021 07:12:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:ed15:: with SMTP id b21ls3380717pld.0.gmail; Tue, 06
 Apr 2021 07:12:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy2e4ryigd8KGJ85RXCgoDFyaYVmvvgXGMr/nLSUM+6mMtK2DFUPYLMfkcuYWE0vDxEjGSH
X-Received: by 2002:a17:902:b185:b029:e6:6d17:6ea with SMTP id s5-20020a170902b185b02900e66d1706eamr29132659plr.40.1617718344052;
        Tue, 06 Apr 2021 07:12:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617718344; cv=none;
        d=google.com; s=arc-20160816;
        b=K2VyTxFwu0pSge2QRp5TGfh0VTaSvjnlPrO6m9dSj8RE5x4zV0F2sk/RQ850G1uhjo
         a+dRe2MV/MuBZS7CD/CC/GpDPnM46QG+byorpO9SQfcu9/Fhddirvgj7SPsTClzHWU7X
         1gaFYx6LYQkm5rzJ51AWVTz0CivWzKWtAKjlTmnTBpiQf13X6tjCyVFTpvKwodrVnaRW
         Sq1PFLcyMlXSzgk5In63koePHknDSg9XCbKD9AWoRdGKIPGicht89BCyYbAd/QM1Ciq8
         6yErnpEK4zpejpFUMKeHzuspF6wSlDTYJva5lQ+vt/ud3K06wT1YQ4MHL2EK8accID8U
         MGow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=A6cU/PN90jcIPq3TAqN/ac3H65mOTQecX+KxPacMtb0=;
        b=ArYk9IMsQquPXETWgxcQIA4qfw6Axrq0MnFv7IANnVCUsS3GPW/yCX6RTX5jbKPC/J
         XpM6KJuKop3LNCdGn8nUj7ouklcwddTIAnMDmamRXfde3TjP8YMhXxwJLPOKqdn0UOCu
         Q6als8Ag4nRy0/PYR9omhmNX3SIEh7D/CYS22H9tqtUmDJMTk2pEtiOvkdiBl3DjLGjD
         ulR7yI4ByMEjlAD7P1GoasDTrMaaeYbhiGzhS3qzFDOo669cbt/ZQ/U8TpKOPJ9j/xxO
         zpWxvsEBLNiIsskKdzFONanqr4vp0wiXf17TNIRiWRJmN6I9zydzBopi1BI1mX7yBqWL
         0i7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=iX8vd2yV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c3si1339022pls.0.2021.04.06.07.12.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Apr 2021 07:12:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=iX8vd2yV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4E9E4613A7;
	Tue,  6 Apr 2021 14:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617718343;
	bh=oodJRS58Zr1qQH9SbmkMEge3e6GJAXCXrN3+8c6DR+I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iX8vd2yVg6MTs3na1+dWeT7zDgItRlbYpahwppEZNl9l7vVcdB3be9YoNkfocNXKH
	 09TuLpxKe+w6dnDwOEKa/dXYXA1WFvhvG9fsrN0QnXx+7pvrkjqibp54EmNXiQ/iTN
	 rIv4i8K7z96gXSL7u1J9rylVBWS2O3QgtSlrZw1Y=
Date: Tue, 6 Apr 2021 16:12:21 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 1/2] staging: rtl8712: Rewrite NULL comparisons
Message-ID: <YGxsRarVAblIa1l+@kroah.com>
References: <cover.1617710602.git.zhansayabagdaulet@gmail.com>
 <74471865b399584d73a18696d2008006301dfd71.1617710602.git.zhansayabagdaulet@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <74471865b399584d73a18696d2008006301dfd71.1617710602.git.zhansayabagdaulet@gmail.com>

On Tue, Apr 06, 2021 at 06:09:56PM +0600, Zhansaya Bagdauletkyzy wrote:
> Replace NULL comparisons with boolean negation to be more consistent with
> the rest of the Linux kernel code base.
> Reported by checkpatch.
> 
> Signed-off-by: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_recv.h | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)

This does not apply to my tree :(

