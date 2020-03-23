X-GM-THRID: 6805399652543758336
X-Received: by 2002:aca:c695:: with SMTP id w143mr16525753oif.98.1584955742461;
        Mon, 23 Mar 2020 02:29:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4dc4:: with SMTP id a187ls5452776oib.4.gmail; Mon, 23
 Mar 2020 02:29:00 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuwRpm+HYGBydQ/c2E+wobc+wRx28/Jf6yNmaBxW0tKnNbeIfpvgOPRNJkLgcj3QUNm99Ay
X-Received: by 2002:aca:7517:: with SMTP id q23mr16445259oic.23.1584955740730;
        Mon, 23 Mar 2020 02:29:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584955740; cv=none;
        d=google.com; s=arc-20160816;
        b=CA0B8wG35bI2cB/t/Z7YzdDJ2JxY6OICM0JqtbgTcTyHsZNiYW0S64AgTwPtzms3iY
         gFbkzXinPH2VGcVBxCZxj2KV5jOtS0d2aGLIJC+AEesECPnvnkRieKSnsq1OwU+NR13C
         5pS2HeVZIJNmyil5bpufoq2RVizv9UYE5h9ygfZJPxnUAj6nvgVqENA7kYaY3r+OiFjM
         R+va6mqRJTtVnxSsfjI30Dgzu5aZ6bzAK4ZZdeUN+0QGI+LnYttbstKW4WT88BHZx/fG
         2uN/wsS3vdKFirkk28/Nffo0Nng6Hx96epS2PXn8UMjkzRtBiLLH/d8K47xjTpTq4ZT7
         oN/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cvQdrkALIpb+y1ay+V651nvSKxtPfqLFiYqaf6nk46c=;
        b=a8tJIQJx1wbsSB6aes3JJSqWitw68he392Qk5belJbNB95VxFINWfL6k2Pm729HDjo
         VbSlcnfPUjtRSZNB/sTbRyCJ5PidBc/iVTADZ10Y7O/8Ln2ujZ5Pgrk+NrgxDPP4ZWym
         Vn6OJmEbic/o8KUsDBBiVKazQC6Q3DYZRZ29oic+7bF7acrAwupRE36+8d3Myx85C1+v
         6gZ1avN3Tikksxkjo8LBvB31Z9PcTkg9DH89zXirEHfsnvE2HeLO0elMmgJRgo6FMKAF
         fFQrMW3iklH8tFg2Qtu9Xh+qtfiW2iC83y/C9bx2ruSddEmJZXC8jL+Eun1lClLG0D21
         rq3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=srXbLNZ8;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <andy.shevchenko@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id d16si59556otp.0.2020.03.23.02.29.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 02:29:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=srXbLNZ8;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id r3so5674327pls.13
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Mar 2020 02:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cvQdrkALIpb+y1ay+V651nvSKxtPfqLFiYqaf6nk46c=;
        b=srXbLNZ8AvrMjothxo1oIZLjqKAUX/fmrnQTOkMlHcBp73rQ62ru1Aje8EMZNqjJdx
         0ARSvzrtSvRbkTFa0mWLVO1Zn3uitN+mW5ClKifafBXhQLg2c4sER6dYRCBBYpeujXEy
         0Z1DpzGxpFNENkEearZvsV44AtG2qNsLVDiqpWOZjjUwZnn7XxINzz8R+ccYvhDhggRg
         1b9pLhGOmc9Rpld8BjnDR8MSGFSjRm9VFYaQsN2ZBfGOuJAGVSsCx+GlnQi+bw7XM5zE
         p0m57ndQIOh2pzNrCLDtw+3BL4dePVFi3Fh5+1JLZ8fEYjbP/xhrckr8y0dr3u8oubl1
         xy6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cvQdrkALIpb+y1ay+V651nvSKxtPfqLFiYqaf6nk46c=;
        b=TgpvqpTuwG5/TP+YxpUrE6CNs7ykVwb/UQuvd463TGvVSq1osTnlT/bA1KRQs42m4C
         ywLTr4mGPmlGt6aJKXQPeEobl1i/3PgNnNUPhXupyw/sVgECcbiK7TiPMlPbWfzpNTq9
         aferFFnI8AcFsv5Mi5FEaEKeBKxJSm28gTNzR9sPq+XBhsear247umPv0M0fBfBAIQf4
         ff98RWf88GYucD8HD575dtfeakjvizR+p1QCZerBCXaneKZaDB34YKu0aN3o4LcknEAu
         4uOPrsgKElpmYTZJAVuv3N2XDBYjT3JwCgf2KaNxD5I1OcPlzwGWcR9gIeCPWBRzuwFy
         Y5qg==
X-Gm-Message-State: ANhLgQ2uH/Tv0FniBf9xppaOVDlGsBKNMqrcBZzqJVs6Xg6aWffiH+N8
	n1a3PBwzmP1MSx9ujB6T4ibqJJ3pYfFzZ17gJ+r4sYc6hOI=
X-Received: by 2002:a17:902:8d92:: with SMTP id v18mr21455712plo.18.1584955739687;
 Mon, 23 Mar 2020 02:28:59 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1584904896.git.mh12gx2825@gmail.com> <dad3cdb5de76234cc460300c31aea6af671f81ad.1584904896.git.mh12gx2825@gmail.com>
 <CAHp75VfC=y1mHW5=ghwdMMZYg=00_a5RB0Phz4j_vM77pehvMA@mail.gmail.com> <20200323014935.48048405@elisabeth>
In-Reply-To: <20200323014935.48048405@elisabeth>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 23 Mar 2020 11:28:52 +0200
Message-ID: <CAHp75VfF+oDWsOF+_=U6YBeP60XLF=SLYzExa=5WjLSgoMUw9A@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v3 3/4] staging: iio: adc: ad7192:
 get_filter_freq code optimization
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Deepak R Varma <mh12gx2825@gmail.com>, outreachy-kernel@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Daniel Baluta <daniel.baluta@gmail.com>, 
	kieran.bingham@ideasonboard.com, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald <pmeerw@pmeerw.net>, 
	linux-iio <linux-iio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, Mar 23, 2020 at 2:49 AM Stefano Brivio <sbrivio@redhat.com> wrote:
> On Mon, 23 Mar 2020 01:44:20 +0200
> Andy Shevchenko <andy.shevchenko@gmail.com> wrote:
> > On Sun, Mar 22, 2020 at 9:57 PM Deepak R Varma <mh12gx2825@gmail.com> wrote:
> > >
> > > Current implementation of the function ad7192_get_available_filter_freq
> > > repeats calculation of output data rate a few times. We can simplify
> > > these steps by refactoring out the calculation of fADC. This would also
> > > addresses the checkpatch warning of line exceeding 80 character.
> >
> > I'm not sure you did an equivalent changes. I believe in the original
> > code precision is better. Consider low clock frequencies when 10 bit
> > right shift may hide some bits of the division.
>
> Note that those bits are eventually "hidden" in the same way later,

Even if mathematically (arithmetically) evaluation is correct, we have
to remember that computers are bad with floating point and especially
kernel, which uses integer arithmetic. That said, it's easy to get
off-by-one error (due to precision lost) if we do big division before
(not so big) multiplication.

> despite the different sequence, due to DIV_ROUND_CLOSEST() being used
> at every step (both before and after the change) without other
> operations occurring.

By the way, where AD7192_SINC3_FILTER and AD7192_SINC4_FILTER
multiplications disappear and why?

-- 
With Best Regards,
Andy Shevchenko

