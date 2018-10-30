X-GM-THRID: 6616381756005154816
X-Received: by 2002:a5b:18f:: with SMTP id r15-v6mr145476ybl.25.1540931620064;
        Tue, 30 Oct 2018 13:33:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:ba08:: with SMTP id t8-v6ls5576529ybg.19.gmail; Tue, 30
 Oct 2018 13:33:39 -0700 (PDT)
X-Google-Smtp-Source: AJdET5d5lMqTJuo9z+PNuwuQdhQKS/w0fW/jnr0hZuu1SZo4c9duGvUZVA+rtV2QumJ7FQtXd/BX
X-Received: by 2002:a25:ed5:: with SMTP id 204-v6mr188736ybo.10.1540931619164;
        Tue, 30 Oct 2018 13:33:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540931619; cv=none;
        d=google.com; s=arc-20160816;
        b=MAchvkMa5sNlBaU5O4ztM/XWX2sC0upvjx4X2wH8B35Zu9XdmkfvfnQdUQWHLge4RU
         wsSpU7i0niqZwWAm/BLzTG1Xxd5gUKhDlGmrgwVOu0L9i+2Y/HSliGNyLTzC0EROH9lo
         wVW6KtaNahr53HJgn8E7jexq9WT7YJTxMDipCU87ALRE79tnmFPecRjno4GjTsVO6wuC
         WatlaQcHSdtjs548YbtxQ+B0TgQ5Z2i60wkam9NuPGk/VpFUVAuzscYJOgFor4EEFQ6E
         zyDUon66zzPdl07mRlNH+RnjaH5VgqNDbhHKDelEyCLxAqqPSZOKbgy6e1G8Eth0e77t
         5X7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=PvVU6/4hfEVaWtqaOqNuHWJ/edwbT7cUJ+lxdx0olMA=;
        b=rVTGEiXbWkLVqJQaRUnknPeE8WaVAydBKGEyUA2Pon7tdf1Ef0kBrfna390ooYxLRN
         tofjzNTQlRHoYlIHMhKKj+nRy+4KPk2zjS1d5hdLVXoi6jUBTOsqVqUEeSDJuUe5b30R
         zMbByQvX5FMUMXVVhs/JNOxmKN2WUGIN7efNOPoGcYXpLiBLNB+J4PkZ/W2pnWp58yDO
         vzdBhffD4yjMB2zVFAs/XG2VyBpVU72zBE13BrqIHbCRH3AnobtpbC1qyK1GA0Ul41cZ
         wKhL0EGK30EmTgkYJtQPbzd3O+v7UboebKZBLrPs5WdwgT/VLxZNsGWXMKd7WOmi3Icr
         0fBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IdxLzXka;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shayenneluzmoura@gmail.com>
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id s132-v6si1012505ywg.1.2018.10.30.13.33.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Oct 2018 13:33:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IdxLzXka;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x841.google.com with SMTP id d14-v6so15210348qto.4
        for <outreachy-kernel@googlegroups.com>; Tue, 30 Oct 2018 13:33:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=PvVU6/4hfEVaWtqaOqNuHWJ/edwbT7cUJ+lxdx0olMA=;
        b=IdxLzXkaNfdilLzkRAChtXdvfeD7jrP+/ULzxFCiExZGrFThQMnOIfvDn6+ifHUeSk
         xItZ5bNNbKVtJikpSF+Bc5IrfozAH1zlAv/hAEmtPx8Ow3ks5C3Xlx59EKPTDxHfJYCn
         OINv7rsnMQBwkO63TT72n5PuM3b2AdVGvU6CdpHeVQsKvRmxb8RYpJ8QhKqbyGZlb4WO
         xtpqUaVb9ViOtidlAhidUaOuv1Aj/KXCsK/bTWhLTayAS2eLf+1Sp/iYK0xq1cEeN7iD
         tQS50UyE3c8WFYFgmJjY9PuY1s1Av1P5swNkKrToOzUUV7zmZH01eyT+1r9NG3EzjCng
         05pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=PvVU6/4hfEVaWtqaOqNuHWJ/edwbT7cUJ+lxdx0olMA=;
        b=d/8ns/EgpTyAzmmWTg0VT+Lcv+fx19jCV73EP9uEDiONpg2k2rzCpXDtHLhyKLD0GX
         7Vq7vyLKcIzIArJpgFvi00iQsIRfIOoP9UcZtFW24W9GwSW1ZP/tn8fYa/HorvPYXNkN
         KHRJM6XhfHxNZ4w42Fs7zxTwcpT0gmaCREirwcpsO8kt9LBgE6t5HJLC1nC2jJQwAZD4
         pcaZk8Slqw8EtcDms+XpkP067xbtvVGoYwztiUniKIw4HNPn2rOdH/AqZTpNbj2RZbRi
         Y4ZzGI91mFSkhwfsB/aT2CVLX2eP/Jd2OkFyrsgwcWeRGaYpOfbZSv85VuoMosatAA6P
         eAew==
X-Gm-Message-State: AGRZ1gK6iLQxFLhfAKO0+TXKDaOq7Vv/7I7QjcbOMOt0n0cb0T8HAYXE
	2GsFAlaPp7KYkzqtaW+31MI=
X-Received: by 2002:ac8:4419:: with SMTP id j25-v6mr208110qtn.243.1540931618671;
        Tue, 30 Oct 2018 13:33:38 -0700 (PDT)
Return-Path: <shayenneluzmoura@gmail.com>
Received: from smtp.gmail.com ([143.107.45.1])
        by smtp.gmail.com with ESMTPSA id f75sm1788546qkf.96.2018.10.30.13.33.36
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 30 Oct 2018 13:33:38 -0700 (PDT)
Date: Tue, 30 Oct 2018 17:33:33 -0300
From: Shayenne Moura <shayenneluzmoura@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Himanshu Jha <himanshujha199640@gmail.com>,
	Sasha Levin <sashal@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Hans de Goede <hdegoede@redhat.com>,
	Michael Thayer <michael.thayer@oracle.com>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [RESEND PATCH 2/2] staging: vboxvideo: Use
 unsigned int instead bool
Message-ID: <20181030203333.2eh7hcpcndukjs52@smtp.gmail.com>
References: <cover.1540580493.git.shayenneluzmoura@gmail.com>
 <211701e4ae42acd95afb24713314bce5a4c58ecf.1540580493.git.shayenneluzmoura@gmail.com>
 <20181026204225.GH2015@sasha-vm>
 <20181028075209.GA1938@himanshu-Vostro-3559>
 <alpine.DEB.2.21.1810280932030.2450@hadrien>
 <20181028112011.GA5157@himanshu-Vostro-3559>
 <alpine.DEB.2.21.1810281243420.2433@hadrien>
 <20181030201816.joihhwd7htgixo5i@smtp.gmail.com>
 <alpine.DEB.2.21.1810302122290.2949@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1810302122290.2949@hadrien>
User-Agent: NeoMutt/20171215

On 10/30, Julia Lawall wrote:
> 
> On Tue, 30 Oct 2018, Shayenne Moura wrote:
> 
> > Hi,
> >
> > > On Sun, 28 Oct 2018, Himanshu Jha wrote:
> > >
> > > > On Sun, Oct 28, 2018 at 09:47:15AM +0100, Julia Lawall wrote:
> > > > > > The "possible alignement issues" in CHECK report is difficult to figure
> > > > > > out by just doing a glance analysis. :)
> > > > > >
> > > > > > Linus also suggested to use bool as the base type i.e., `bool x:1` but
> > > > > > again sizeof(_Bool) is implementation defined ranging from 1-4 bytes.
> > > > >
> > > > > If bool x:1 has the size of bool, then wouldn't int x:1 have the size of
> > > > > int?  But my little experiments suggest that the size is the smallest that
> > > > > fits the requested bits and alignment chosen by the compiler, regardless of
> > > > > the type.
> > > >
> > > > Yes, correct!
> > > > And we can't use sizeof on bitfields *directly*, nor reference it using a
> > > > pointer.
> > > >
> > > > It can be applied only when these bitfields are wrapped in a structure.
> > > >
> > > > Testing:
> > > >
> > > > #include <stdio.h>
> > > > #include <stdbool.h>
> > > >
> > > > struct S {
> > > > bool a:1;
> > > > bool b:1;
> > > > bool c:1;
> > > > bool d:1;
> > > > };
> > > >
> > > > int main(void)
> > > > {
> > > >     printf("%zu\n", sizeof(struct S));
> > > > }
> > > >
> > > > Output: 1
> > > >
> > > > If I change all bool to unsigned int, output is: *4*.
> > > >
> > > > So, conclusion is compiler doesn't squeeze the size less than
> > > > native size of the datatype i.e., if we changed all members to
> > > > unsigned int:1,
> > > > total width = 4 bits
> > > > padding = 4 bits
> > > >
> > > > Therefore, total size should have been = 1 byte!
> > > > But since sizeof(unsigned int) == 4, it can't be squeezed to
> > > > less than it.
> > >
> > > This conclusion does not seem to be correct, if you try the following
> > > program.  I get 4 for everything, meaning that the four unsigned int bits
> > > are getting squeezed into one byte when it is convenient.
> > >
> > > #include <stdio.h>
> > > #include <stdbool.h>
> > >
> > > struct S1 {
> > > bool a:1;
> > > bool b:1;
> > > bool c:1;
> > > bool d:1;
> > > char a1;
> > > char a2;
> > > char a3;
> > > };
> > >
> > > struct S2 {
> > > unsigned int a:1;
> > > unsigned int b:1;
> > > unsigned int c:1;
> > > unsigned int d:1;
> > > char a1;
> > > char a2;
> > > char a3;
> > > };
> > >
> > > int main(void)
> > > {
> > >     printf("%zu\n", sizeof(struct S1));
> > >     printf("%zu\n", sizeof(struct S2));
> > >     printf("%zu\n", sizeof(unsigned int));
> > > }
> > >
> > > > Well, int x:1 can either have 0..1 or -1..0 range due implementation
> > > > defined behavior as I said in the previous reply.
> > > >
> > > > If you really want to consider negative values, then make it explicit
> > > > using `signed int x:1` which make range guaranteed to be -1..0
> > >
> > > The code wants booleans, not negative values.
> > >
> > > julia
> >
> > Thank you all for the discussion!
> >
> > However, I think I do not understand the conclusion.
> >
> > It means that the best way is to use only boolean instead of use unsigned
> > int with bitfield? I mean specifically in the case of my patch, where there
> > are some boolean variables are mixed with other variables types.
> 
> To my recollection, your code had a bool with larger types on either side.
> In that case, I think bool is fine.  The compiler it likely to align those
> larger typed values such that the field with the bool type will get more
> than one byte no matter what type you use.  If there are several fields
> with very small types adjacent, there might be some benefit to thinking
> about what the type should be.
> 
> julia

Got it! Thank you!

