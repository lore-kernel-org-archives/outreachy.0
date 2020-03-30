X-GM-THRID: 6808625193830842368
X-Received: by 2002:ac2:5b49:: with SMTP id i9mr7957507lfp.21.1585569928642;
        Mon, 30 Mar 2020 05:05:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8e69:: with SMTP id t9ls4017799ljk.4.gmail; Mon, 30 Mar
 2020 05:05:27 -0700 (PDT)
X-Google-Smtp-Source: APiQypJQco/pV2AWf7zzrgLkgaVypViZoRNNDBaOiGioQWI5VES5Nk18qCqaZP2DrvNE94RO+Hht
X-Received: by 2002:a2e:3c0a:: with SMTP id j10mr6876207lja.205.1585569927113;
        Mon, 30 Mar 2020 05:05:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585569927; cv=none;
        d=google.com; s=arc-20160816;
        b=EjEg7KcLMaokLQqJL9UBhXqlZ+s+IwyITDQ9a9C0e8n23j5PtDd6UoXdQu5RkY6k4b
         +bQA0ePK7GSVFNV8uKbzk2RMpJVObNoQk4TfuMEGgN3QllYIYUMpjCAW5GUjlVHTSJpO
         WmoFHqRdIff8jwcONM8n/fND0WYra3QS8sq0TxFJrCpzgNaMLvPoxqbKGAyODRkif6Sr
         QbwfRv0U3xkAjXCxUpy6Y8DmO+a98Xx51RsqYDBK9aim2gaKip0UUqmalX0juJzbIhLK
         byS98aUK5GvjuH20WPLLrGf2y9GaslFrNMEalbrV2RWuY5NpeXeWJYn65ySI0u8Ge/bA
         MGRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=3eeUQKLsatnwLEePkqHes55rnVryYyVCqJ0mDQpWpZ8=;
        b=zBhAuCuVM0kWSEbTa8Vc7/zvxG52Cm2oMiiAxsxRcrfH/FdmT5+8Gs5F44kF8azFC5
         o0PkkLJCqGMK0j8SpTXG+XYjDlLVfCpU+QY8LHBE5FfiNt1N9NvRIsE1kz3pLkFzjh8F
         k1KKsHZ+s5YHn+Rv/zE7srcfpTruCzOKPXYhspbWzTQKVo9CIdP7u3RUfEYC3gi4CKyO
         OfOSk04G1/9b3X22Iy/T3IWGp6MUxuMSlIT6d9NDLWS8eVCuvZcLXKIZFOVfjX4MRdBo
         Kdc9q5VrvQGxHX8J3Ff1jBr29D1tfNkyFEDUgzb+iidDhy6QXPnzzQcVzkBDrZnnniQ/
         Yvjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b57jBQ9G;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id h8si799324lfm.5.2020.03.30.05.05.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 05:05:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b57jBQ9G;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id s1so21275264wrv.5
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 05:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=3eeUQKLsatnwLEePkqHes55rnVryYyVCqJ0mDQpWpZ8=;
        b=b57jBQ9GKSGuELkcvTOepVGtlee5hg/lG2dZr7W5tlyUzkqD33NkUR/ubSZUIhI1ub
         tzsXHQp1NjeHAsKXm7n2t4MIGGie8ihbW2iDE9SlD1ojAvADxTvZNQfiFW1OY+n6lHO7
         NxF0JvCeYMVru2KYq60C+bBcKdITYucsOIofLRQMI22Awix68+P+SjEzXHK+WgXh/7tz
         SR9iHgm7qyPVKvva7kKb0BGVxsJumXIuW1lWtE6Py334g8NIoeMQG/v9fBp55btpgKDd
         8+QbMwp2gfr4MXtSsWdJKI3hbjrqfphFVd1odf7qA8IouuNaBlpE4aMiXLSBFoC974Jf
         yPPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=3eeUQKLsatnwLEePkqHes55rnVryYyVCqJ0mDQpWpZ8=;
        b=r6R6Fe0i6NS5uNcTclV7imwVRDoru+DsdPb85Luo7coQmN9mEjKCB4bUg0i0bf6YsX
         EiqJZz3mm4Qqy00eh6SWYrm91xhex8CBtS42fORvU2fVKu7ol7YahcYKmzzaJWKsM4BL
         yt6+Cigw0V+O12PmZKovEBPuHt5a/EI/MrLCRS87D5h0bUr3ai0myEdXrWo3Mtd78/Nq
         WvvPv/d7/Psb0MfYLA5Yg0x60YNRgK8yjvKnk1oPRW1Z/BuBJe7s/F/ahJqYm/EZlr+p
         kEBxT7ayLxnkiiDJLpqww/0E1s5EodvxzqZ5dr+7/4uwnmbOYNvW7w4NGdwDPeMMsDrs
         Ww3w==
X-Gm-Message-State: ANhLgQ3x0cHgDKYOrg22rHDte32lDGmlpiQy88SAEpFuNZ6IUpm7ENWh
	KLHJgp/GKjm4yikcCzvbxkU=
X-Received: by 2002:adf:c506:: with SMTP id q6mr14815133wrf.142.1585569926535;
        Mon, 30 Mar 2020 05:05:26 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.98.112])
        by smtp.gmail.com with ESMTPSA id p21sm22647115wma.0.2020.03.30.05.05.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 05:05:25 -0700 (PDT)
Message-ID: <7a9b3798f3bbdbce728883e933a53d1280f09d41.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: omap4iss: Use BIT()
 macro.
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Stefano Brivio <sbrivio@redhat.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>,  Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 outreachy-kernel <outreachy-kernel@googlegroups.com>
Date: Mon, 30 Mar 2020 08:05:23 -0400
In-Reply-To: <alpine.DEB.2.21.2003301344570.2432@hadrien>
References: <20200326210247.4746-1-jane.pnx9@gmail.com>
	  <20200330101107.1c84b8f6@elisabeth>
	 <d09f3d39c7fc8326711119c73954bfbd8c92091a.camel@gmail.com>
	 <alpine.DEB.2.21.2003301344570.2432@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Mon, 2020-03-30 at 13:46 +0200, Julia Lawall wrote:
> > > > diff --git a/drivers/staging/media/omap4iss/iss_regs.h b/drivers/staging/media/omap4iss/iss_regs.h
> > > > index 09a7375c89ac..7adc944e1a5d 100644
> > > > --- a/drivers/staging/media/omap4iss/iss_regs.h
> > > > +++ b/drivers/staging/media/omap4iss/iss_regs.h
> > > > @@ -38,7 +38,7 @@
> > > >  #define ISS_CTRL_CLK_DIV_MASK				(3 << 4)
> > > >  #define ISS_CTRL_INPUT_SEL_MASK				(3 << 2)
> > > >  #define ISS_CTRL_INPUT_SEL_CSI2A			(0 << 2)
> > > > -#define ISS_CTRL_INPUT_SEL_CSI2B			(1 << 2)
> > > > +#define ISS_CTRL_INPUT_SEL_CSI2B			(BIT(2))
> > > >  #define ISS_CTRL_SYNC_DETECT_VS_RAISING			(3 << 0)
> > >
> > > The existing code is saying: there are three bits to select the input,
> > > starting from bit number 2. For those three bits, 0 means the CSI2A
> > > input is selected, and 1 means CSI2B is selected.
> > >
> > > You're changing it to: there are three bits to select the input,
> > > starting from bit number 2. For those three bits, 0 means the CSI2A
> > > input is selected. CSI2B is a special case, though: register bit 2 needs
> > > to be set.
> > >
> >
> > Oh, So defining BIT(2) totally changed the logic?
> 
> I'm not sure what you mean by "the logic". BIT is nice to use when there
> area a lot of 1 << X, because it makes clear which different its are
> relevant.  When 1 << X is mixed with other things, it breaks the pattern to
> suddenly use BIT for one of them.

I should have said "the implicit meaning".

Or as i questioned it's about the pattern to better leave it and choose
the pattern over the change in cases like this?

Sam
> 
> julia



