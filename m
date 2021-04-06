X-GM-THRID: 6947860813701971968
X-Received: by 2002:a9d:6a9:: with SMTP id 38mr25843524otx.365.1617693757896;
        Tue, 06 Apr 2021 00:22:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:578a:: with SMTP id q10ls4268261oth.7.gmail; Tue, 06 Apr
 2021 00:22:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwL4Tff2V/IEHX8M96qZzfA06ueXWt8D59V+4PcgrCpiBucQIRLL/wfl7wUf8VZSMhD9K1r
X-Received: by 2002:a05:6830:1546:: with SMTP id l6mr26297904otp.139.1617693757147;
        Tue, 06 Apr 2021 00:22:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617693757; cv=none;
        d=google.com; s=arc-20160816;
        b=GzacGWXc3XpJ5S/zDe5ShzIL/RFvsu06cAPk8aRjk839T1cAAWe35T3b9BJe38MGRQ
         t0ciz/xstGIcqNZsyaA8hPJA6N5orXxauicCJPqKEu1CTYdnLAZ/iIb1OjHoim+DWf3a
         w4YprtYorxYKA/mQVVfIrkI9lrm+ui7E+KheMD02807Sh4cWXUaw6zUXWoXXLNyrl0gb
         uBmIRWzvxnvjtvwPgGtC5Z547neRfybBdMisRnsVpbVPMBEIqEgZBW1jxyiEnTSVBYBX
         M0f6hsMu/lrQI75A2VvdHAytG7R7sOlQDdf8MptXU+CGdXZBsPg2lxRPYKRmS3YRA5ov
         V9MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dGyyRSAyrCiFMUFZcdP/SeBch4qew3o2JQL20nUaC/A=;
        b=t7BgElCF2KqlcupeSY2Ik05kLKWVLK1KA25/TOJf5tBZsmWlhSmTtG562Bbu6L+qmj
         nwvtNkmUgDGlortQ6ebDXpoakEl3StN+NsRmvgZaTUTrkc3BfUV3CoCwlh1ORJ1T3hyU
         qJ5CShmxC089GGwur5eUkaV2QKJ2f5F0xPeUZpOFmaew9H8SY84De2DOmvcFYjGfjA5C
         ldyh4POYp9FY9GN/wR+xsT9f9/tGKnuTxxo/opd9xq7O7NjoiBGR4p6div3qpEcPoNT4
         hBFiYP+QNiZp34Wun0+naUvYoV1AhJu8Atn6cOK9tHRxYtxJXJhDT61lp1vmch/EYUPW
         0hQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=dDjR+y60;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k10si1311613otj.2.2021.04.06.00.22.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Apr 2021 00:22:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=dDjR+y60;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 423A76139E;
	Tue,  6 Apr 2021 07:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617693756;
	bh=jB6EMuWNslbEi8m6/jL9qFbyS+27Q2eGajHbvYZg+r4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dDjR+y60zb3p5wfBUe6ae4tS3OQ9kzKtszy7Gr/SVNgXaQMChUvC/MemF13FHuKBG
	 atRRLGOyDyzaRxQiLtRxmF3gVu0zF4nBU6nFH6w9EWu5OcftJ6IB7YYsIooRyoV4HG
	 O9+GYHYrzE4GRAwokRnyoLM/fewuEeYAhNpRAadE=
Date: Tue, 6 Apr 2021 09:22:31 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] Correct indentation in
 Hal8723BReg.h
Message-ID: <YGwMN30fXOaqgdKk@kroah.com>
References: <20210406020815.22995-1-fmdefrancesco@gmail.com>
 <1851038.q9TLUjBrch@localhost.localdomain>
 <alpine.DEB.2.22.394.2104060839310.2882@hadrien>
 <3909721.0tKxYtM2Wc@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3909721.0tKxYtM2Wc@localhost.localdomain>

On Tue, Apr 06, 2021 at 09:08:21AM +0200, Fabio M. De Francesco wrote:
> On Tuesday, April 6, 2021 8:40:37 AM CEST Julia Lawall wrote:
> > 
> > On Tue, 6 Apr 2021, Fabio M. De Francesco wrote:
> > 
> > > On Tuesday, April 6, 2021 7:52:52 AM CEST Fabio M. De Francesco wrote:
> > > > On Tuesday, April 6, 2021 7:12:20 AM CEST Greg KH wrote:
> > > > > On Tue, Apr 06, 2021 at 04:08:15AM +0200, Fabio M. De Francesco wrote:
> > > > > > Correct indentation issues of many #define and comments in Hal8723BReg.h
> > > > > >
> > > > > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > > > > ---
> > > > > >  drivers/staging/rtl8723bs/hal/Hal8723BReg.h | 604 ++++++++++----------
> > > > > >  1 file changed, 302 insertions(+), 302 deletions(-)
> > > > >
> > > > > You forgot to cc: all of the needed mailing lists.  And your subject
> > > > > line needs some work.  But the biggest issue is that I do not understand
> > > > > what this patch does at all.  What is wrong with the original code here
> > > > > that required you to "correct" it?
> > > > >
> > > > > confused,
> > > > >
> > > > > greg k-h
> > > > >
> > > > I'm sorry that I forgot to cc linux-staging and linux-kernel mailing lists
> > > > and for the subject I had already sent a v2 patch that had
> > > > all the required tags (staging: rtl8723: hal:).
> > > >
> > > > I think that what was wrong with the original code was that
> > > > the #define values were far from the symbols with random indentation.
> > > >
> > > > For example, I changed something like:
> > > > #define SYMB1 		0123
> > > > #define SYMB2 5678
> > > > #define SYMB3            9ABC
> > > >
> > > > to:
> > > > #define SYMB1 	0123
> > > > #define SYMB2 	5678
> > > > #define SYMB3            	9ABC
> > >
> > > the preceding defined values are in a single column. I don't understand why KMail show them in different levels of indentation. However, I hope that my argument in support of the patch was still clear.
> > 
> > There is surely a difference with the use of spaces and tabs.  If you
> > change something about the defines and this problem shows up, you can make
> > another patch in the series to make the spacing more uniform.
> > 
> > julia
> > 
> I have not this problem in the file in my git/kernels/staging directory, it just happen when I see that patch in KMail. When I open it with Vim, all the defines are correctly aligned in a single column (that is, the correction I made to the indentation levels of the defines is there). As a consequense, I suppose that the patch itself is correctly formatted. Doesn't it?
> 
> However, what is really important is what Greg K-H thinks of the patch. I'm not sure I was able to explain to him what I've made and why it improves the readibility of the whole file (may you please take a look at the original in Greg's tree? You would see that random levels of indentation I'm talking about). As you can read above, I asked him if I should make a v3 of that with a clearer explanation about the work I've made on those random levels of indentation but I haven't yet had his response. 

You need to explain what is wrong with the existing code and why your
change is needed to make it "better".

thanks,

greg k-h

