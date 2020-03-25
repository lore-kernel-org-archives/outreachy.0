X-GM-THRID: 6805399652543758336
X-Received: by 2002:a9d:7497:: with SMTP id t23mr3612586otk.291.1585165071791;
        Wed, 25 Mar 2020 12:37:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:708f:: with SMTP id l15ls1065664otj.11.gmail; Wed, 25
 Mar 2020 12:37:50 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu8PqVQhJAFvduphea3zbOL1erZP4QLy7K+hPDIBKlYYKyuTWVqZ99vgmeWvpAed/rndRGC
X-Received: by 2002:a9d:62c6:: with SMTP id z6mr3686362otk.328.1585165070538;
        Wed, 25 Mar 2020 12:37:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585165070; cv=none;
        d=google.com; s=arc-20160816;
        b=IbzBQ/5u+pM5zVxI5euq6BHCyq9Xkai1T2NUKUPHi7aiqlhkejfpXaF2fX44k9AMig
         Z0aNik+i/s2vjgDu8cnjc4Epxm8ao3EdSKcb72hcp3/QS9KJhH4NWNFuIz6J0KPYPEjq
         lvGvbIBdCH6nfLAFT4Z2HqgDtBDePrbsL9Pgca/VPjedLnMsbQBjdzy8C+wY+O9xC/Za
         S2TeUlZQ969TjZFoVpO49J3apAsCGo76FXQw5hhS0z5Swf/F4L2aHPRxxkiFtXu3r39M
         6Eq3HBsPyytoz2jvDlTxwbhAPbezPgTpuYUXFyMwnAW5pA92x+g6hAz/AF9fnC9suVQ4
         Fc0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rddCUKG87r7Bq6dWzJnqpFjeuq8ftyaCXi979E4AXfU=;
        b=HrEiXkAnUzfnM5al0mCaaUnSm5/Prp0Na1AYMuoA+uy7E3GMbWf5bUzBIISBg+zA1Z
         rAJL3EMe0TDDBbhpjPBUGC4vpzqM6CGaq56farGgdJtYBxmFZ7jLebDQVDIyOsrPsJPk
         /AXi/d+qlBNmJNqdN9JMx6UGBYvp/48v5HtkuEzkbv0ju4Lh8H2OzUd1H5MsxNRLOytW
         s48i9pCMPwSet0FhD1rE5imxHB5hOKzrKxjRUiSgAzd2qsOCERa9lGh8p5ezW74yWKwE
         jmTMGtTchcZnREeFhTcZFbfQhrhlmgOYBbBx+8uGp+AcJKvK08N02T6DPj0VsXXvX0M5
         BFbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fN+i13xi;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <andy.shevchenko@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id n5si7102otf.3.2020.03.25.12.37.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 12:37:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fN+i13xi;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id h72so1561961pfe.4
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 12:37:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rddCUKG87r7Bq6dWzJnqpFjeuq8ftyaCXi979E4AXfU=;
        b=fN+i13xi9ph8eBAPsQjTaGuoLjpOq672ojPRl4NnTLVE8i/SaZloifztd4K3hf/rdG
         7g7Cs8AMBFgaZ69BN2fLV3cFBFIMLF1hG9zhNg/XwfzyJXVh1wpYzjxeHPd3t0sBxu1J
         7TBaV25h1/Vf4BPdPRUCGZB+Mn/JQJVDCLDeZNdMmrgW0rwOrOPVTlKnxeiuFbbjOfqf
         +kRtzfpjYGwWhuhGazOWge/K8dKJhSIcwQGx9MyvchFQGbAzp6wyeSoOzRWKmYURVWoV
         eMuggTjLqJWp/Wbe64Gmg99e5lB81/gY5gMRqURH7iFlnoy48e6xKtAGjt7z2mhDnCH/
         tuOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rddCUKG87r7Bq6dWzJnqpFjeuq8ftyaCXi979E4AXfU=;
        b=jQqXSYEE8pieE4+cULb1Gsv6paj/7EgwEdfAKtlsmVGr/M8U6udk+VjurhAL4jJNOj
         QUiXzaopQVlfZ+fNX0sK0AWmLtXzmQimfwduYSyGIEsmra1sZtU0tKVnzL9M6jOoHZHh
         vQ6HFfP18LxPQ/B3n0cPng26Re8BUzPdjbWvvHDNsAWZCkAI/oltbotF58kv0NHh8+Zg
         gzu1WRo6kam7viZflH3m+PZD1unjxVf+CMUDF8UH/yKIfGhQXIBs/mES9JjmquNKRkBA
         KlqI/DLaU22GXC5Vtg0q0tNSIQr9uIcPBaz4VKwZgnMBgvB6tMOoKH//HZae0OaW+Cay
         a3/A==
X-Gm-Message-State: ANhLgQ3mMwMMHiH9a6Nb8PMvG+TfNJCaNxkkcv1Ns9q8q6FqxwPzCVRf
	DerMTqcsT/hP3+7xQGSfFLhDadvDN9axVm9RgMahZU6s
X-Received: by 2002:a63:5859:: with SMTP id i25mr4519803pgm.74.1585165069778;
 Wed, 25 Mar 2020 12:37:49 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1584904896.git.mh12gx2825@gmail.com> <dad3cdb5de76234cc460300c31aea6af671f81ad.1584904896.git.mh12gx2825@gmail.com>
 <CAHp75VfC=y1mHW5=ghwdMMZYg=00_a5RB0Phz4j_vM77pehvMA@mail.gmail.com>
 <20200323014935.48048405@elisabeth> <CAHp75VfF+oDWsOF+_=U6YBeP60XLF=SLYzExa=5WjLSgoMUw9A@mail.gmail.com>
 <20200323131531.1d6c8f93@elisabeth> <20200323175223.GC22110@deeUbuntu>
 <4385dc0509f035bbd14d85b81527997f7a2538e8.camel@analog.com> <20200325173815.GA28246@deeUbuntu>
In-Reply-To: <20200325173815.GA28246@deeUbuntu>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 25 Mar 2020 21:37:42 +0200
Message-ID: <CAHp75VcLj8YLg=iBejQj+UGmhK2nTm1TxETASxt4qDhGOnN0WA@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v3 3/4] staging: iio: adc: ad7192:
 get_filter_freq code optimization
To: DEEPAK VARMA <mh12gx2825@gmail.com>
Cc: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>, 
	"sbrivio@redhat.com" <sbrivio@redhat.com>, "Caprioru, Mircea" <Mircea.Caprioru@analog.com>, 
	"kieran.bingham@ideasonboard.com" <kieran.bingham@ideasonboard.com>, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, 
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>, "jic23@kernel.org" <jic23@kernel.org>, 
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>, 
	"Hennerich, Michael" <Michael.Hennerich@analog.com>, "lars@metafoo.de" <lars@metafoo.de>, 
	"daniel.baluta@gmail.com" <daniel.baluta@gmail.com>, "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, 
	"knaack.h@gmx.de" <knaack.h@gmx.de>
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 25, 2020 at 7:38 PM DEEPAK VARMA <mh12gx2825@gmail.com> wrote:
> On Tue, Mar 24, 2020 at 08:06:34AM +0000, Ardelean, Alexandru wrote:

> I further reviewed current and proposed implementation of the
> get_filter_freq() function[Thank you Stefano for your time]. We realised that I
> was wrong in swapping DIV_ROUND_CLOSEST calls with mixing
> multiplication in it. It is indeed incorrect to mix multiplication if we
> want to reorder the calls. Comparison of the results from current and
> proposed implementation proved it. In short, the patch I sent is wrong.
> My apologies for any trouble.


No problem, that's what community is for!
And everybody has been learning always something new.

> We have further improved the test program with a revised implementation
> [attached with this email] and found that this revision appears to
> provide more accurate results [I think].
>
> May I please request you to review the attached test program, verify the
> results and share your feedback.

Do you have GH account? I would highly recommend to use its Gist
facility for such small (one file) type of programs. It allows you to
update them and see versioning. Dunno if possible to comment, but
anyway more advantages.
Thank you!

-- 
With Best Regards,
Andy Shevchenko

