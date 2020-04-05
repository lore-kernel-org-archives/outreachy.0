X-GM-THRID: 6810510356795883520
X-Received: by 2002:a2e:3612:: with SMTP id d18mr8705616lja.97.1586047285974;
        Sat, 04 Apr 2020 17:41:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:4207:: with SMTP id y7ls1458660lfh.5.gmail; Sat, 04 Apr
 2020 17:41:24 -0700 (PDT)
X-Google-Smtp-Source: APiQypJs8IyL8B3FNiFsSg/3HtGvvdnFVLcG1jZJz7uxTSFcka5uiZyEfbZ+/D7rA8helB4ysEOT
X-Received: by 2002:a19:9109:: with SMTP id t9mr5837408lfd.10.1586047284422;
        Sat, 04 Apr 2020 17:41:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586047284; cv=none;
        d=google.com; s=arc-20160816;
        b=qkIQN+BTnplhu7Qd+VEaYwrn6ZjelMMXLLXkjDSnCZsgiq7NspivSNYrXFNYinQ5Fd
         CoxH+ME0q1eGgoBPoOboLKrIaICWhLgDDWPmoA37JCFc/QcoSKHR3DKAZuNDcbuigucu
         7Ap2nUchCi38RR+qBu5wmiwPfTnzRCOZBEescNylcsq4eGBlYAVtGyoUiSOxmCYRIgoK
         nX0IfBJJgfBxKnfDZ3vHO9uuQBkcj7RNTWkNAGYVR6mmTccS3apg71k7v3cwh87Xq7F8
         GPsc8J70cgPfNoWeuy2GNC+5rd0AP6pOD4krO3+IrpJV+U5B7O76wLgffsm4KPCPq87w
         CHMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=gqP/dXn0/VW33JJVfBjbFJtvIX93xJMqCbv4n5DKUhE=;
        b=XCs/UdIY8ikyDgcR0hb99kxi200AevMAJeM5Y2fT+FXptYt5e8ARfNPJxvJavYUD7f
         NVyjaR3IUouyNu9zfTD3x4hf3d6Oq6eUqhboXIU+YB2c+QJVKr7uS+EILpx/ubattfae
         IMWbK+RykmDstXFTKgnYI/C1QMidDGJVuCdzvWz8I6PLts2P1c2Elm73YT7pENzODolP
         RuXUMIs4b+586S6Y6kkCwtrABGVEhJEj9dSal9UdLn11bxSfgv5qjGhm/exQ3K6FgGhN
         G9++pvog705fv8/FIZq4EpeWp4vSjbGofW5hvNQTjw56348nDKRyn7CccG1v3YxLBU4T
         0DXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lRr6uzR6;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id u10si773879lfq.1.2020.04.04.17.41.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Apr 2020 17:41:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lRr6uzR6;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id m17so13055082wrw.11
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Apr 2020 17:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=gqP/dXn0/VW33JJVfBjbFJtvIX93xJMqCbv4n5DKUhE=;
        b=lRr6uzR6gqPx9l3wpaKlq1b0Yy7uSqj9BeEP2ywNS0Yia9e937NFJaSfGFF8gd0wxu
         CNH8ZYLQN2LptXBtH6ZbLjoMtTUZGDzmL473rHDTSlI/z2MC221P65UnNA0AzW4HakAY
         Mk0uUSvNGxxasRJhNy3kf+yAQlTqVYf6+bVecXj6VaeEVYEyJkhgwEPknJmx1QCQlvuP
         /eige0O2w3ICSAJ7BvaJyG9rTrJKI/jHFnwMbJGXXepST15C4Wg1LwnrmbIrwbSMXMUa
         IC1YbaEyjzgNdcs3F5OEdG5gmcXBadGTcraV8FDsc+7XvigvZtlX89aSCpEvld5CWu/f
         k6Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=gqP/dXn0/VW33JJVfBjbFJtvIX93xJMqCbv4n5DKUhE=;
        b=A0euGL0uwbPNPGVBL+EmEvSQ8FKM7DxgRIJ9QHPZ4rLtijAKKmJ9P6DCDKPsNhi7Ri
         IBimWxjpHku8lQxGJu4yTtyoqozO3ROxzMkN5fgVHnUqHAn9e+0MjCY5iK18OPV3JEBx
         /j4tUUZJyNWf0qUK1cSzcVO6WhDp7RLDaXLDG0NRhvoRE6fzXkM0q/BVQNpG1uI5AIs8
         ay69wKEx8CQKefyLX95iWNTjM2A3xje4mAwmR/9XXDoi3SLQKRF9v0sYAEztBLJ0MYEi
         X83KK6CGAhPHhvrUiX1MDpPAL3kybMNpyea6yAZMfZCsZfdzTL+NrYMqeHzqvLDfr9W0
         JH0w==
X-Gm-Message-State: AGi0PubdPDNqEhWEkxMg9ZXAdtX0+wy1Rhz75yrRPECVV9oPpsCYLX8j
	NqnP6eh4umem69m8B7c5EP8=
X-Received: by 2002:adf:de86:: with SMTP id w6mr1742870wrl.259.1586047283773;
        Sat, 04 Apr 2020 17:41:23 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.214.63])
        by smtp.gmail.com with ESMTPSA id k185sm18104757wmb.7.2020.04.04.17.41.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Apr 2020 17:41:23 -0700 (PDT)
Message-ID: <9dba6b28d596dbfc3890781156b846ad69a077f5.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: media: omap4iss: Use
 BIT() macro
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Mauro Carvalho
 Chehab <mchehab@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,  outreachy-kernel@googlegroups.com
Date: Sat, 04 Apr 2020 20:41:21 -0400
In-Reply-To: <20200405015156.5b3b7de3@elisabeth>
References: <20200331225817.14834-1-jane.pnx9@gmail.com>
	 <20200401045531.5de93729@elisabeth>
	 <bace205763db970618b1d1541133826a874b1e21.camel@gmail.com>
	 <20200404141125.3b04dd96@elisabeth>
	 <c08ea89dc21822df8d9af45f2d8b891ac6c29c78.camel@gmail.com>
	 <20200405015156.5b3b7de3@elisabeth>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sun, 2020-04-05 at 01:52 +0200, Stefano Brivio wrote:
> On Sat, 04 Apr 2020 15:32:23 -0400
> Sam Muhammed <jane.pnx9@gmail.com> wrote:
> 
> > On Sat, 2020-04-04 at 14:11 +0200, Stefano Brivio wrote:
> > > Hi Sam,
> > > 
> > > On Sat, 04 Apr 2020 01:33:09 -0400
> > > Sam Muhammed <jane.pnx9@gmail.com> wrote:
> > >   
> > > > On Wed, 2020-04-01 at 04:55 +0200, Stefano Brivio wrote:  
> > > > > On Tue, 31 Mar 2020 18:58:17 -0400
> > > > > Sam Muhammed <jane.pnx9@gmail.com> wrote:  
> > > >
> > > > [...]
> > > >  
> > > > > > diff --git a/drivers/staging/media/omap4iss/iss_regs.h b/drivers/staging/media/omap4iss/iss_regs.h
> > > > > > index 09a7375c89ac..85c6fefeb13a 100644
> > > > > > --- a/drivers/staging/media/omap4iss/iss_regs.h
> > > > > > +++ b/drivers/staging/media/omap4iss/iss_regs.h
> > > > > > @@ -93,10 +93,10 @@
> > > > > >  #define CSI2_SYSCONFIG					0x10
> > > > > >  #define CSI2_SYSCONFIG_MSTANDBY_MODE_MASK		(3 << 12)
> > > > > >  #define CSI2_SYSCONFIG_MSTANDBY_MODE_FORCE		(0 << 12)
> > > > > > -#define CSI2_SYSCONFIG_MSTANDBY_MODE_NO			(1 << 12)
> > > > > > +#define CSI2_SYSCONFIG_MSTANDBY_MODE_NO			BIT(12)
> > > > > >  #define CSI2_SYSCONFIG_MSTANDBY_MODE_SMART		(2 << 12)    
> > > > >     
> > > > 
> > > > Hi Stefano,
> > > > honestly i'am confused about how is there a difference between BIT(x)
> > > > and (1 << x)
> > > > 
> > > >  So i'am just going to interpret this hunk as i understand it and
> > > > please correct me.
> > > > 
> > > > #define CSI2_SYSCONFIG_MSTANDBY_MODE_MASK		(3 << 12)
> > > > 	shift binary 3 by 12: "write 3 starting at bit 12"
> > > > 		0011 ---- ---- ----		
> > > >
> > > > #define CSI2_SYSCONFIG_MSTANDBY_MODE_FORCE		(0 << 12)
> > > > 	"write 0 at bit 12"
> > > > 		0000 ---- ---- ----
> > > > 
> > > > #define CSI2_SYSCONFIG_MSTANDBY_MODE_NO			(1 << 12)
> > > > 	"shift binary 1 by 12": "write 1 at bit 12"
> > > > 		0001 ---- ---- ----
> > > > #define CSI2_SYSCONFIG_MSTANDBY_MODE_NO			BIT(12)
> > > > 	"shift binary 1 by 12": _isn't this what BIT() does?_
> > > > 		0001 ---- ---- ----  
> > > 
> > > This is the key perhaps: it is what BIT() does. And it's not what you
> > > should be... thinking of doing. Even though the result is clearly the
> > > same.
> > > 
> > > BIT() is used to set a single bit. You need to write *some* bits, here.
> > > That "some" is 2: you can write 0, 1, 2, 3, to this region. It's not 1.
> > > 
> > > Now, if you _write_ 1, you need to _set_ one bit, so coincidentally
> > > BIT() works too.
> > > 
> > > Suppose you have a tray to make ice cubes. You use one, and put the
> > > whole thing back in the freezer. Before you do that, it is your duty
> > > towards the society to fill it completely with water.
> > > 
> > > After you use one ice cube, it might look like this:
> > > 
> > >   1    2    3    4
> > >  .----.----.----.----.
> > >  |xxxx|xxxx|xxxx|xxxx|
> > >  |----|----|----|----|
> > >  |xxxx|xxxx|    |xxxx|
> > >  '----'----'----'----'
> > >   5    6    7    8
> > > 
> > > so we have two ways to express what you have to do:
> > > 
> > >   a. fill hole number 7
> > >   b. refill the whole thing
> > > 
> > > a. will do the job just like b., but b. is how you would most naturally
> > > describe the operation. Especially because sometimes you take two ice
> > > cubes, sometimes three.
> > >   
> > > > now i dont understand what you meant by "That doesn't make bit 12 any
> > > > special", does that assume that iam wrong with what BIT() is defined
> > > > for?   
> > > 
> > > Yes, in some sense. BIT() is used to operate on a single bit: the
> > > difference is between:
> > > 
> > >   a. set bit 12
> > >   b. write a number to bit region from 12 to 13
> > > 
> > > if the number from b. is 1, then a. is equivalent.
> > > 
> > > But right above and below this #define you have defines for 0 << 12,
> > > 2 << 12, 3 << 12. And 1 << 12 is not a special case.
> > >   
> > > > #define CSI2_SYSCONFIG_MSTANDBY_MODE_SMART		(2 << 12)
> > > > 	"shift binary 2 by 12": write 2 at bit 12
> > > > 		0010 ---- ---- ----
> > > >  
> > > > +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
> > > > 
> > > > for your previous explanation: _quoting_ :
> > > > 
> > > > 1. #define ISS_CTRL                                        0x80
> > > >         "we have a register at 0x80"
> > > >         https://en.wikipedia.org/wiki/Hardware_register
> > > > 
> > > > 2. how big is it? Datasheet tells you, but before you even look for it:
> > > >    #define ISS_CTRL_CLK_DIV_MASK                          (3 << 4)
> > > >         "at least 7 bits"
> > > > 
> > > >    #define ISS_CLKCTRL                                     0x84
> > > >    #define ISS_CLKCTRL_VPORT2_CLK                          BIT(30)
> > > >         "probably they are all the same size, might be 32 bits"
> > > > 
> > > > 3. picture it:
> > > >         |_ b7 _|_ b6 _|_ b5 _|_ b4 _|_ b3 _|_ b2 _|_ b1 _|_ b0 _|
> > > >    (might be bigger, not too important)
> > > > 
> > > > 4. #define ISS_CTRL_INPUT_SEL_MASK                      (3 << 2)
> > > >         "these bits define the input selection [whatever it is]":
> > > > 
> > > >         |_ b7 _|_ b6 _|_ b5 _|_ b4 _|_ b3 _|_ b2 _|_ b1 _|_ b0 _|
> > > >                                        ^^     ^^  | << shift by 2
> > > >                                        2^1 + 2^0 = 3
> > > >                                                    ^----(3 << 2)
> > > > 
> > > > 
> > > > 5. #define ISS_CTRL_INPUT_SEL_CSI2A                     (0 << 2)
> > > >         "to select input CSI2A [whatever it is]", we need:
> > > >         |_ b7 _|_ b6 _|_ b5 _|_ b4 _|_  0 _|_  0 _|_ b1 _|_ b0 _|
> > > >                                        ^^     ^^  | << shift by 2
> > > >                                         0  +  0   = 0
> > > >                                                     ^----(0 << 2)
> > > > 
> > > > 
> > > >    #define ISS_CTRL_INPUT_SEL_CSI2B                     (1 << 2)
> > > >         "to select input CSI2B [whatever it is]", we need:
> > > >         |_ b7 _|_ b6 _|_ b5 _|_ b4 _|_  0 _|_  1 _|_ b1 _|_ b0 _|
> > > >                                        ^^     ^^  | << shift by 2
> > > >                                         0  + 2^0  = 1
> > > >                                                     ^----(1 << 2)
> > > > 
> > > > 
> > > > Now, that's how the current #defines work. I think they are
> > > > actually intuitive (you could use the GENMASK() macro, but I think
> > > > the difference is not that big).
> > > > 
> > > > With your change:
> > > > 
> > > > 5. #define ISS_CTRL_INPUT_SEL_CSI2A                     (0 << 2)
> > > >         "to select input CSI2A [whatever it is]", we need:
> > > >         |_ b7 _|_ b6 _|_ b5 _|_ b4 _|_  0 _|_  0 _|_ b1 _|_ b0 _|
> > > >                                        ^^     ^^  | << shift by 2
> > > >                                         0  +  0  =  0
> > > >                                                     ^----(0 << 2)
> > > > 
> > > > 
> > > >    #define ISS_CTRL_INPUT_SEL_CSI2B                     BIT(2)
> > > >         "to select input CSI2B [whatever it is]", we need:
> > > >         |_ b7 _|_ b6 _|_ b5 _|_ b4 _|_ b3 _|_  1 _|_ b1 _|_ b0 _|
> > > >                                                ^
> > > >                                                ' this bit set.
> > > >                 What, why? How is this related with the rest?
> > > > ++++
> > > > now right at this point i got an overlapped definition of BIT()
> > > > this expansion/explanation of BIT(2) in my mind got translated to:
> > > > 
> > > >      SetBit(register,bit) => (register|=(1<<bit))
> > > > NOT
> > > >      shift binary 1 by 2
> > > > ++++  
> > > 
> > > Yes, it's also about this. But from your example above:
> > >       SetBit(register,bit) => (register|=(1<<bit))
> > > 
> > > you need to distinguish when you're operating on a bit *array* or a
> > > generic group of bit regions. That is, it's:
> > >       SetBit(register,bit) => (register|=(n<<bit))
> > > 
> > > where 'n' happens to be 1, sometimes. It's not always '1' by design.
> > > 
> > > Let's take a driver operating a lamp that has three LEDs inside: it
> > > might work like this:
> > > 
> > > #define CTRL_REGISTER	0x5	/* a generic 8-bit register */
> > > #define RED_ON		BIT(0)
> > > #define GREEN_ON	BIT(1)
> > > #define BLUE_ON		BIT(2)
> > > 
> > > those are single bits, and consistently so, so using BIT() is fine.
> > > 
> > > Now, the lamp can be on, off, blink slow or fast. In the same register,
> > > you have 2 bits (starting from bit 4) controlling that: 0 means "off", 1
> > > means "blink slow", 2 means "blink fast", 3 means "on":
> > > 
> > > #define MODE_OFF	(0 << 4)
> > > #define MODE_SLOW	(1 << 4)
> > > #define MODE_FAST	(2 << 4)
> > > #define MODE_ON		(3 << 4)
> > > 
> > > this is a natural way of describing things. Suppose you do, instead:
> > > 
> > > #define MODE_OFF	(0 << 4)
> > > #define MODE_SLOW	BIT(4)
> > > #define MODE_FAST	(2 << 4)
> > > #define MODE_ON		(3 << 4)
> > >   
> > 
> > I guess that is a great example:
> > So if the operations are on a single bit being toggled on, BIT() is
> > welcome to be used.
> > 
> > But when the operations involve a region of bits being toggled on/off i
> > should stick to the typical way of bit manipulation even if there
> > happens to be an operation that requires only one bit to be set.
> > 
> > ++++
> > My thoughts were: _quoting your example_
> >  #define RED_ON		BIT(0)
> >  #define GREEN_ON	BIT(1) => 0001			
> > 		
> >  #define BLUE_ON	BIT(2) => 0010
> > 			  This does set bit 2, but affected the rest
> > "so it was a _lame_ way of saying that there is a region of bits being
> > manipulated though only one of them is set" :D
> 
> Well, yes, I see what you mean. Two things here:
> 
> 1. you don't know if my lamp can have more than one colour switched on
>    at the same time. But it's irrelevant for the purposes of the data
>    representation: it's still one bit per colour. Other bits might need
>    to be cleared, and in that case it might be convenient to have:
> 	#define COLOUR_MASK		(RED_ON | GREEN_ON | BLUE_ON)
> 
>    or, somewhat less appropriately:
> 	#define COLOUR_MASK		GENMASK(0, 2)
> 
>    but that's a "meta" operation you do on a set of homogeneous bits,
>    so it's a completely separated fact.
> 
> 2. most likely, you would need to write the register as a whole, so you
>    read, then set or clear bits, then write -- this means essentially
>    that you write all the bits at a time, yes. But this is not
>    conceptually relevant, it's an implementation detail.
> 
> > ++++
> > so when it came to:
> >     #define ISS_CTRL_INPUT_SEL_CSI2B                     (1 << 2)
> >          "to select input CSI2B [whatever it is]", we need:
> >          |_ b7 _|_ b6 _|_ b5 _|_ b4 _|_ 0 _|_ 1 _|_ b1 _|_ b0 _|
> >                                         ^^     ^^  | << shift by 2
> >                                          0  + 2^0  = 1
> >                                                      ^----(1 << 2)
> > *my brain*                        --> yes, makes sense
> > 
> >     #define ISS_CTRL_INPUT_SEL_CSI2B                     BIT(2)
> >          "to select input CSI2B [whatever it is]", we need:
> >          |_ b7 _|_ b6 _|_ b5 _|_ b4 _|_ b3 _|_ 1 _|_ b1 _|_ b0 _|
> >                                                ^
> >                                                ' this bit set.
> >                  What, why? How is this related with the rest?
> > 
> > "my brain"		         --> why b3 is not 0 now?
> 
> That's what I would ask, too. Yeah, sure, it will be, but BIT() is
> deceiving in this sense.
> 
> > 		shouldn't BIT(2) == 1*2^2 == 4 == 0100 ??
> > 				So i saw it like:
> > 			lets mask b2 to be set regardless of the rest
> > 			so if b3 was set, it will still be set next to 			setting b2.
> > 			so the meaning of BIT(2) got twisted up.
> > 
> > That why i got lost between these two:
> >       SetBit(register,bit) => (register|=(1<<bit))
> > AND
> >       shift binary 1 by 2
> > 
> > I guess that was a twisted thought?? but now i can say it like _after
> > going through this conversation_, that:
> > 
> > we are operating on a region of n bits starting from bit x, don't act
> > like we're operating on a single bit by choosing BIT(y) over (1 << y).
> 
> Yes, makes sense to me.
> 
> > ++++
> > 
> > > the compiler won't judge you, but I will. Why is the "slow" mode
> > > special? This makes the "slow" mode look like it's a binary option, but
> > > it's not.
> > >   
> > > > Basically i forgot about this patch and i'am more into clearing this
> > > > confusion because i'am definitely missing something thats very basic
> > > > and probably have a wrong understanding of something.  
> > > 
> > > Thanks for sticking with this, I appreciate that you're trying to
> > > figure out what I'm saying. Is it a bit clearer now?
> > >   
> > 
> > Thank You,
> > I guess i got it right this time? have i??
> 
> I think so! :) Or use Julia's example, I think it's equivalent to mine
> and it can't fail.
> 

Alright, Great, I'll check for a 3rd revision then.

Thank You.

Sam


