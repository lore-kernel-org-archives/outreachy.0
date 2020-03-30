X-GM-THRID: 6808625193830842368
X-Received: by 2002:ac2:418b:: with SMTP id z11mr8594998lfh.134.1585585945738;
        Mon, 30 Mar 2020 09:32:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:484d:: with SMTP id v74ls3279140lfa.7.gmail; Mon, 30 Mar
 2020 09:32:22 -0700 (PDT)
X-Google-Smtp-Source: APiQypK4bUKdc1OI+oQ4x4blekjtRdOaG7gY/Bs/ArropfhU4ywG/HcCAsUuoYS92lKxhvDN5GTs
X-Received: by 2002:a05:6512:3b4:: with SMTP id v20mr8579870lfp.215.1585585942633;
        Mon, 30 Mar 2020 09:32:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585585942; cv=none;
        d=google.com; s=arc-20160816;
        b=ts+aR8yM4ujAZW7wUgbWMpjMgwYeLL+G/Hc05E9vU0lFE37TbvXcAAOh+6kytUNHHT
         N2X9Yrk3m/nGQaW8B4fexyNz3pCpIdY+p7GHyAC+cdGc43+NbnJ1c2nXkaCkiP6LYHmB
         r5ufcgYwzTIdrr+KP0t527WcAIckL4Os13+vWHgfusfmh17UQ/FrmCnFt4uGLN4dLI3u
         IE77AsdVbzxhJ5muJ77tofd6lepo7w7Ekmv/lmNYwaLpBIBTMHXMZjSMsnBZVZADN5M2
         qwoYh5tUOjMvI+FlCSYDvMFk8jWIQGqPA4Q8AzQHXA/y6tNjaVCWdL9RlgyEVS99G4y1
         l7kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=Q+srowEtYVHek0VCmaddZlFMStE1h1tC303Ve/dMXHU=;
        b=RJg8wH94e3iOR4ItlRr1uQgw7RyHI+JXfPGD5XOxOcLlzDLkDWropk0p1AmLrIPyhO
         rJAPCvSoVjWfp+TXrefurZqw4TZQEvV0XdweMyywtC3kbXLPVNub0OXqZY4mI6aT5GTp
         JcAD+CToGlGEQpHYEyfUySdEdDnJLtIFEdY6hAH1s8D5EXf+AWelDzQ5B5QgsaTKEhvF
         qBLF1XcnG+tWl852Dz0E0lfZLuaOj3GaPr82vnTrUGHjkJ6S3nYDKif8rKps4E+bly5+
         pLAuD71lqi2JH3eCH8Y+NhrRhWcnthGUhMYlhEIF2xgNhYgx/DajDlh/8G5YXlcmjjtE
         3t7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RHMxAK6N;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id s22si615253ljp.0.2020.03.30.09.32.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 09:32:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RHMxAK6N;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id p10so22479681wrt.6
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 09:32:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=Q+srowEtYVHek0VCmaddZlFMStE1h1tC303Ve/dMXHU=;
        b=RHMxAK6NjpYQZ5p2EXLjXZfuYDs+hjD0+MngvEck2UgtHgw2Zp2jyn7EHUsFjlTiB6
         IdNVdP0BmD7KMNY4nJp7E+H7eIFur8/bEyT6EhHWxgQMVsde4SiE/VHw11lUeREtvyOq
         rG4iSNoBJRUUx97eoLDAZZJ5vTOvwt67PDzi7KdwTbsiLqTgS4zL78oZvsp1/e+WczpG
         Rbwaj1vXlkmF57KziLlqfeGmXpSXX92dK6SY54rAoKzgaWjIKxdlm+2ruJjuLEdiSxYZ
         9lpRBZaXpzqdo552zARcKE09txsTUTEP074KtJ3l8LJiT3XLC8al9Y8TrWuRU8Gh5VED
         k4Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Q+srowEtYVHek0VCmaddZlFMStE1h1tC303Ve/dMXHU=;
        b=le/I23IXxsRZrWJy7mJJzDKEaZkmSmnODh1G4BWRGRClaujwIs2xFEMI9JmhYnjBc6
         rrZdZcHAkT2LvB8LWUGJU1qmHtzOG/UqHgMRqjuEKvBwIK+mekxZMwFLSO/0qPhw20an
         5bT8cKofunxt0LB0fJ7nIkn13No5lMRUYQaXmZG2BaEvuWwQGmiKOykCmAYiRl8Jf7ml
         vhX4MScWsNUBN2H3WOTeCF0xqHuiRfziBxhEPBvL5YWjo9yVgNOdb1uJlJeIoYxxqy/e
         EJnj7c138/v4E0er3NH1YuLEBKCaVrMwYIkZhJMlZAwWqdC/s8OFKf4r9gs6sZtcTXo3
         isxQ==
X-Gm-Message-State: ANhLgQ1fj3q++tejrBwc1H8CTxoizermlNIY24Gy+CLLQBFgUXkvefpQ
	x5JIQ3aMAbUfSMC5r2UKyR4=
X-Received: by 2002:a5d:5141:: with SMTP id u1mr14963380wrt.146.1585585942129;
        Mon, 30 Mar 2020 09:32:22 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.98.112])
        by smtp.gmail.com with ESMTPSA id p22sm71492wmg.37.2020.03.30.09.32.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 09:32:21 -0700 (PDT)
Message-ID: <76a1b7179729256aff7ecea4eb6f487cd2c6d9e6.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: omap4iss: Use BIT()
 macro.
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Mauro Carvalho
 Chehab <mchehab@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, outreachy-kernel
 <outreachy-kernel@googlegroups.com>, Julia Lawall <julia.lawall@inria.fr>
Date: Mon, 30 Mar 2020 12:32:19 -0400
In-Reply-To: <20200330162316.30fe0b81@elisabeth>
References: <20200326210247.4746-1-jane.pnx9@gmail.com>
	 <20200330101107.1c84b8f6@elisabeth>
	 <d09f3d39c7fc8326711119c73954bfbd8c92091a.camel@gmail.com>
	 <20200330162316.30fe0b81@elisabeth>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Mon, 2020-03-30 at 16:23 +0200, Stefano Brivio wrote:
> On Mon, 30 Mar 2020 07:40:22 -0400
> Sam Muhammed <jane.pnx9@gmail.com> wrote:
> 
> > On Mon, 2020-03-30 at 10:11 +0200, Stefano Brivio wrote:
> > > On Thu, 26 Mar 2020 17:02:47 -0400
> > > Sam Muhammed <jane.pnx9@gmail.com> wrote:
> > >
> > > [...]
> > >
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
> > 
> > Oh, So defining BIT(2) totally changed the logic?
> 
> No, it has no functional effect. And I also don't care too much about
> "the pattern" here -- I would just recommend that you practice
> actually reading code stuff before you change it :) So:
> 
> 1. #define ISS_CTRL                                        0x80
> 	"we have a register at 0x80"
> 	https://en.wikipedia.org/wiki/Hardware_register
> 
> 2. how big is it? Datasheet tells you, but before you even look for it:
>    #define ISS_CTRL_CLK_DIV_MASK				(3 << 4)
> 	"at least 7 bits"
> 
>    #define ISS_CLKCTRL                                     0x84
>    #define ISS_CLKCTRL_VPORT2_CLK                          BIT(30)
> 	"probably they are all the same size, might be 32 bits"
> 
> 3. picture it:
> 	|_ b7 _|_ b6 _|_ b5 _|_ b4 _|_ b3 _|_ b2 _|_ b1 _|_ b0 _|
>    (might be bigger, not too important)
> 
> 4. #define ISS_CTRL_INPUT_SEL_MASK			(3 << 2)
>    	"these bits define the input selection [whatever it is]":
> 
> 	|_ b7 _|_ b6 _|_ b5 _|_ b4 _|_ b3 _|_ b2 _|_ b1 _|_ b0 _|
>                                        ^^     ^^  | << shift by 2
>                                        2^1 + 2^0 = 3
>                                                    ^----(3 << 2)
> 
> 5. #define ISS_CTRL_INPUT_SEL_CSI2A			(0 << 2)
> 	"to select input CSI2A [whatever it is]", we need:
> 	|_ b7 _|_ b6 _|_ b5 _|_ b4 _|_  0 _|_  0 _|_ b1 _|_ b0 _|
>                                        ^^     ^^  | << shift by 2
>                                         0  +  0   = 0
>                                                     ^----(0 << 2)
> 
>    #define ISS_CTRL_INPUT_SEL_CSI2B			(1 << 2)
> 	"to select input CSI2B [whatever it is]", we need:
> 	|_ b7 _|_ b6 _|_ b5 _|_ b4 _|_  0 _|_  1 _|_ b1 _|_ b0 _|
>                                        ^^     ^^  | << shift by 2
>                                         0  + 2^0  = 1
>                                                     ^----(1 << 2)
> 
> Now, that's how the current #defines work. I think they are
> actually intuitive (you could use the GENMASK() macro, but I think
> the difference is not that big).
> 
> With your change:
> 
> 5. #define ISS_CTRL_INPUT_SEL_CSI2A			(0 << 2)
> 	"to select input CSI2A [whatever it is]", we need:
> 	|_ b7 _|_ b6 _|_ b5 _|_ b4 _|_  0 _|_  0 _|_ b1 _|_ b0 _|
>                                        ^^     ^^  | << shift by 2
>                                         0  +  0  =  0
>                                                     ^----(0 << 2)
> 
>    #define ISS_CTRL_INPUT_SEL_CSI2B			BIT(2)
> 	"to select input CSI2B [whatever it is]", we need:
> 	|_ b7 _|_ b6 _|_ b5 _|_ b4 _|_ b3 _|_  1 _|_ b1 _|_ b0 _|
>                                                ^
>                                                ' this bit set.
> 		What, why? How is this related with the rest?
> 

The difference is somehow clear now, Thanks for clarifying!

> > 
> >  [...]  
> > > 
> > > Also no need for parentheses around BIT().
> > >   
> >  [...]  
> > > 
> > > "Standby mode is forced by clearing 3 bits at index 4. Smart mode is set
> > > by setting 2 as value for those bits. No standby mode is an entirely
> > > different story: set bit 4 of ISP5_SYSCONFIG."  
> > 
> > Since iam a noob, i have this question, what's better, to leave 
> > (1 << 4) alone since it looks familiar between the rest,
> >  
> > or since BIT(4) already sets HIGH bit at bit 4, we better use the macro
> > though it might look as an odd in the pattern?
> 
> Same here, I'm not exceedingly interested in the pattern or how it looks
> like -- with your change, it would still work, but it would make no
> sense.
> 
> > Thanks for clarifying the code, much help to understand this a bit.
> 
> Sorry, that's why I quoted my "explanation": that's how one would read
> it after your change.
> 

Well, That's a different perspective that i needed to test the change,
that it's not enough to just _build it_ and i'am afraid i would never
have this perspective in mind since iam only making minor changes, and
some implications of these changes are not visible to me until it's
pointed out.

I guess that's why i send a patch and wait for review :)

> That is, the "No standby mode is an entirely different story" part is
> how one would read the code after your change, and... it's wrong! :)
> 

Thank You.

Sam


