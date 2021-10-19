X-GM-THRID: 7020422968837668864
X-Received: by 2002:a7b:c8c5:: with SMTP id f5mr6630147wml.104.1634656108712;
        Tue, 19 Oct 2021 08:08:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:19d0:: with SMTP id u16ls1382970wmq.3.canary-gmail;
 Tue, 19 Oct 2021 08:08:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzDUPce9OivpOOrt0hXdEcQKjHJc0C0hWRM0llYPWGPdF1zxxiyVzqAgr1PI0Fj/PYSWKkl
X-Received: by 2002:a1c:f008:: with SMTP id a8mr6730744wmb.140.1634656107053;
        Tue, 19 Oct 2021 08:08:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634656107; cv=none;
        d=google.com; s=arc-20160816;
        b=kkXjr5354zgSKGoWuAC9OEM2mDDuiFR5a3WWQtVH14xOb/voQ1e5y9MWqVsHlxNTgz
         0m6QcJmd6B538MBFiElcx6JTk/EKIlvr7ahfC/1wQdcVjesOTD0Z2HRXrc23H6P3h+Ga
         vJpbxYRMs3PnkSKUFCQDaV4V5rBQG7F8uPp48wM+TsAcGevWtq4k7bCmCwKSJSv+fAiP
         6Wiw/A1BczWdAwtIF7q+VujuQcK6FLFcsfUuslmaHMOCl7nmjiyydaE0Y+QrPcP5XewS
         0jqqUNiWg0i1HN4y49nOwkiuS1pri6AmdIsEGVZcrSWfb20vaRBzPRivQeDY5vhYM84U
         hu4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=gcQrXOybNP4D8/Nco8U5T3IxRjktElzEEGrbggjgINQ=;
        b=skkMybNzTKup6Ac+nt2w7+N+gpNYyYrtJATvUuNOrZjthQ0rZDABRlxP4Bk0F3VZhe
         wXnVBdKK0xhBQChVDCo/5xDEiFuxKimjlA8bBbTKcHK9Q3XsmxMOyuYDlWRMvLMCbR75
         AmxhW2CibKgKWH68W/BZhRIS2ACQIMwyrNRToOrySii5Kbt8soYcTD7pHX4VLeD4sPl/
         HPkfM3SAq2ox4DbyurPRVM09qTi5Pnt5tJ3B5lFmQA6BcIFVjMChmwcLQ2REAFhkoP2d
         C8KQMqPwqQe33XtwedxRYJR1bC5vLqe16oYvWCWO9jA9VG3OUeGF19fM2OlMPD2h56zN
         yagg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=HRsuf+Pk;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32a as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com. [2a00:1450:4864:20::32a])
        by gmr-mx.google.com with ESMTPS id h11si980052wrs.3.2021.10.19.08.08.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Oct 2021 08:08:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32a as permitted sender) client-ip=2a00:1450:4864:20::32a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=HRsuf+Pk;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32a as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x32a.google.com with SMTP id o24-20020a05600c511800b0030d9da600aeso3424702wms.4
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Oct 2021 08:08:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=gcQrXOybNP4D8/Nco8U5T3IxRjktElzEEGrbggjgINQ=;
        b=HRsuf+PktFjntEg75/IjEX1kOFv+6WgmeqVWzTJLm+FeZDiEz0Etm+WwvXDf/qri1q
         /ad3Kcxl2Eh9U+pLG0F8i1O1zATGX3hXty9GndO9jK9w+5ya2J5iLkZSYQOa6EUJSrUZ
         kEmfR5Jf20TvRd53OXajRY8RKwOiKVuVQ+8tgcHtvoJoFrAJLnJJozP2733OnDQP0YuT
         ZrY4GuW9BUrY8VhVZbFdOraPJ3B6/o6cCuyaAltJWeeOajSA3TQ9ypfr/16f2stmL3tq
         fiRlOPwieaVD85ICcKiQE9UnTriu40mYqewpgDkZRAA8DsyYVODCcurWdsIo28s0g8Xj
         Oruw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=gcQrXOybNP4D8/Nco8U5T3IxRjktElzEEGrbggjgINQ=;
        b=C1xpxBxek54/5t+x0qgV12liglrFwV+k2uVykzjXGND2cNcForYEwTayj6+Y+1e6iS
         7Wll+/DUGfMZq++25Y1Txh38w41JZqZBUa86S3sfgD/kP9BJfhlvSG1MfHp7vI+C1C6d
         RgK1o0mTo0mqjSJpjd939qSYMszi8U3ar5RcWFR6F3qWr/5aQDgdRaenWlASz+xNx4Lz
         6qF4WYSdD/DSUxMuMHeTuUnSL4LydMsSBQomfB9fFZIotZ1q6K7KQMnH+mjSuQ+7dHIJ
         edwyld//PveniMajmnuG4OAJ8MKe6ibDlH8AnBquaH1ZzW1/pPPEX/PFegbIRIUVhNVd
         pkPw==
X-Gm-Message-State: AOAM5328J8AdXI5XRNALOK72mJNLCcyTcvkuESWiQ/xExulLiHu44+Oc
	OHPUhw1mRYI9IOz6z4RRPZQ=
X-Received: by 2002:a05:6000:552:: with SMTP id b18mr7987543wrf.112.1634656106768;
        Tue, 19 Oct 2021 08:08:26 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from ?IPv6:2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62? ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id o8sm2577439wme.38.2021.10.19.08.08.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Oct 2021 08:08:26 -0700 (PDT)
Message-ID: <a11249f8eaefb22896c7702ab6eb594fc40795e1.camel@gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: vt6655: Fix line
 wrapping in rf.c file
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>, Joe Perches
	 <joe@perches.com>, outreachy-kernel@googlegroups.com
Cc: forest@alittletooquiet.net, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org, Greg KH <gregkh@linuxfoundation.org>
Date: Tue, 19 Oct 2021 16:08:25 +0100
In-Reply-To: <1647209.5AoB3rP6bQ@localhost.localdomain>
References: <20211018150526.9718-1-karolinadrobnik@gmail.com>
	 <84f3c940fedb961e6e7e88d47c3d15e598bc32c3.camel@perches.com>
	 <810a4e29b0c54520a30cae4d37fde0a59ea3d83b.camel@gmail.com>
	 <1647209.5AoB3rP6bQ@localhost.localdomain>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Tue, 2021-10-19 at 05:26 -0700, Joe Perches wrote:
> What I suggested is not a patch it's just an example.

Sure, I understand. In this case, I'll take some inspiration from
your example and break down the changes into smaller chunks, thank you.

> There's quite a lot of code in that driver that _could_
> be updated/refined/refactored (none of which _I_ will submit),
> but it's up to you do whatever _you_ want.

Indeed there is, I'm trying to tackle one thing at a time. I thought
I could fix a couple of line length warnings in an easy way but I was
wrong.

Ok, I'll come back to CamelCase squashing and removing the Hungarian
notation before working on this refactor. I think this is a good
candidate for a patchset.

On Tue, 2021-10-19 at 15:07 +0200, Fabio M. De Francesco wrote:
> Hi Karolina,

Hi Fabio,
Thank you for describing everything in such detail, really appreciate
it.

> No, there is no problem in using a[i - 1]. Personally I prefer the
> former when 1 <= index <= ARRAY_SIZE(a). 

I see, thanks for explaining this.

> If you code "index = index -1;" or 
> "index--;" (that is the same) and then you use 'index' many lines
> below that decrement in "a[index]" it may be not immediately clear
> that you are not indexing past the end of the array.

That's what I thought as well.

> I prefer to state it again: if you choose to do such kind of works,
> be careful to split self-contained patches in a series and explain
> each change you make and why you make it.
> Each patch must do only one logical change.

Will definitely do so, thank you.

> Each patch of a series must be self-contained also in the sense that
> it must build without introducing errors or warnings at any point:
> for instance, five patches => five clean builds.

Makes sense, will keep that in mind. Also, I think it would be good to
mention it on the FPT page. I can suggest adding such comment in later
on.


Thanks,
Karolina


