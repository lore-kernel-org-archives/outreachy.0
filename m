X-GM-THRID: 6950254518663643136
X-Received: by 2002:aca:bc87:: with SMTP id m129mr217107oif.29.1618249203746;
        Mon, 12 Apr 2021 10:40:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6808:13d0:: with SMTP id d16ls3774400oiw.10.gmail; Mon,
 12 Apr 2021 10:40:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzLEI1J3hSyoTjoTSyyI5oZ7EnscWKHsxnKktiRYy83twrwtaoSysL+8zB//b3o7e8dIhlH
X-Received: by 2002:aca:fd82:: with SMTP id b124mr218284oii.122.1618249203001;
        Mon, 12 Apr 2021 10:40:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618249202; cv=none;
        d=google.com; s=arc-20160816;
        b=GLn/g84bSxgld13qrGwUgO1cCjTIw3G8fmGd3GXUZw3vU4GIuHjja9CBKG75ner1QF
         I03W0gQC2KfxmMsRAfMy0Q7hbA3S+uT2nZ0ONZyMoqab3UWICAKic+bewR2gBGWPfOKn
         TUs84exC/0xWiNMDokGgNbUGO+GsNbDT2jgfMDNgvKBhk43DJjPI8YqYFVo2/7FOKT+c
         uYY+8368orPK4OR205H1W2WwgbSEzdWYaCmhEXO9aMSrOSAE2hTsukBbiSfLZ5bNxZMD
         OeEnhtEZmxqNdstFcKFf8ci5dbGcoE38tio8h93lM6acQvaiwNbGe2P+Er3YzBwBJeBI
         LpeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=iHFqjFCRbV77geF1NfusgD5m4a0gjV5MYV0QS53h8i8=;
        b=nlObibJDTu9wcnp8a13a2sOMhDpB2RqzWpqZ48WbMPcrEI9/hvRVH44LzC7VXL1+PX
         vRiYAGuxWl9roIGslx7Wa4wrdusaTnhunw082lCDTj2zNWvdYcNnwU8nQjT/0O3cjVXP
         MDp9RpiYYR1f8jWROCQLOHTQiUcabtNqvIwjOsKXEbTrn0xcrOYWHpDhb9okitA1NeRe
         VDGqWG2+NpOpGZPyIeeKYcdXAbm3d12MS5N7LvfKvYfwKr1/Ivjmw8eGhAl+q+EVWz6i
         4nHD//WwimIwxTNRavW6pRr7mx2yrgy/Wt9a0zxBPxnjNQY0jKgLkIseyQSvXqhxpKtE
         4Grg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KOqc3a1b;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72a as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com. [2607:f8b0:4864:20::72a])
        by gmr-mx.google.com with ESMTPS id f10si799627oti.1.2021.04.12.10.40.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 10:40:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72a as permitted sender) client-ip=2607:f8b0:4864:20::72a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KOqc3a1b;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72a as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x72a.google.com with SMTP id c4so15087216qkg.3
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 10:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=iHFqjFCRbV77geF1NfusgD5m4a0gjV5MYV0QS53h8i8=;
        b=KOqc3a1bNp8/Hs41BsrMrrQ8Kyer4kA12jgbjBEKZh5rzx4lDzkVAF7YCobsN1c9fR
         VXHmAY+FQcMskTdOKlsGF32JJ1fkKnLTrkChYYJW2JfBH6kScW1zUOrl16P35sT7Im8E
         8qXOy0E5xNA2LanIUcx0JkZ8nCOend0LPtrK/G7WdAy7cqJU5K8L47w1/ELoJjvYG3Qa
         YCTl8z6s2tCAe6Q+NnJp4jeuv1tNbzBSMBS7iltqvTbylO+SVqnPlztC0Hhmy+0fuAtP
         qytQkVV+6nybDpv+SaFiHgrrDc+26zyHfGe0/yYw989WNofcTiR2v7wKQAj1uOc96O/V
         7D+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=iHFqjFCRbV77geF1NfusgD5m4a0gjV5MYV0QS53h8i8=;
        b=jWmryk6JqB/dtzHLVSkGa7saLLwTAxb9c8TNQtAa0m1JZ0O33n55FLBghH3UUezG9t
         cdp8A1LdB71Gs34FYvTedUFcBGetj4IRjpmZSJMJ08eGX657S/JpYZXogmtMnjzjVuGL
         RpyS6o7iRUrsvlls27SXdKAqt7doCiO5+CBSomdJAMD69fflm/dNFOaHGLFEzuTQQtSQ
         q8hhpthsE5RW7oIOM5nb/ZqwtUvmuXvMhE05BtOr4/aDD8fPq4JYzganecNq0VoxO2dB
         IQH+8MGqqtuos6vUMHZTvViOv/iJxICNoBdBWFqgNhGi6Imw0thJlsMBGHmFAKg4ybiK
         GSmw==
X-Gm-Message-State: AOAM5311DqsiKlmFhksDp3vQQAd0unkzhYroMRJVIxKNibl2t5cdIzCI
	WEjaxxg1heu2eUcxmfR7FkE=
X-Received: by 2002:a05:620a:1645:: with SMTP id c5mr27581347qko.63.1618249202608;
        Mon, 12 Apr 2021 10:40:02 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from ?IPv6:2001:1284:f016:a037:29a:1b49:fcb:5776? ([2001:1284:f016:a037:29a:1b49:fcb:5776])
        by smtp.gmail.com with ESMTPSA id h7sm4597183qtj.15.2021.04.12.10.39.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 10:40:02 -0700 (PDT)
Message-ID: <53dad29aee8925b3377d48b4c97b06ba6d05de43.camel@gmail.com>
Subject: Re: [Outreachy kernel][PATCH 1/4 v2] staging: media: omap4iss:
 Replace macro function by static inline function in file iss.c
From: ascordeiro <alinesantanacordeiro@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Mauro Carvalho
 Chehab <mchehab@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,  linux-media@vger.kernel.org,
 linux-staging@lists.linux.dev,  linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Date: Mon, 12 Apr 2021 14:39:58 -0300
In-Reply-To: <alpine.DEB.2.22.394.2104121935590.19780@hadrien>
References: <cover.1618231618.git.alinesantanacordeiro@gmail.com>
	  <e302566a3d9e5180ab27eb2c2824fd1b678a6d99.1618231618.git.alinesantanacordeiro@gmail.com>
	  <YHRNzq3h3LEp3Dgc@pendragon.ideasonboard.com>
	  <7457fd4eb5afbf66b3a6f2fed4dd1e440e6ed422.camel@gmail.com>
	 <YHRjPpMVVrhTF7Tc@pendragon.ideasonboard.com>
	 <babb019f0950cf11857a4bcf20a572f2eace1777.camel@gmail.com>
	 <alpine.DEB.2.22.394.2104121935590.19780@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0 (by Flathub.org) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Em seg, 2021-04-12 às 19:36 +0200, Julia Lawall escreveu:
> 
> 
> On Mon, 12 Apr 2021, ascordeiro wrote:
> 
> > Em seg, 2021-04-12 às 18:11 +0300, Laurent Pinchart escreveu:
> > > Hi Aline,
> > > 
> > > On Mon, Apr 12, 2021 at 10:58:45AM -0300, ascordeiro wrote:
> > > > Em seg, 2021-04-12 às 16:40 +0300, Laurent Pinchart escreveu:
> > > > > While testing on a device isn't a requirement as you can't be
> > > > > expected
> > > > > to have the necessary hardware, changes are expected to be at
> > > > > least
> > > > > compile-tested before being submitted.
> > > > 
> > > > Hi Laurent,
> > > > 
> > > > I thought recompiling the kernel would be enough in this case.
> > > > I recompiled it in native Ubuntu 16.04 without errors.
> > > 
> > > Did it compile the driver you modified ?
> > > 
> > I'm sorry, It didn't. I forgot to enable the option to compile the
> > driver as a module in "make menuconfig" and now I'm seeing the
> > problems
> > I generated.
> 
> You can easily compile a single file using make path/foo.o and a
> single
> directory using make path/.
> 
> julia

Ok! I'll do that from now on.

Thank you for the help,
Aline


