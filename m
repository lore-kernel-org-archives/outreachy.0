X-GM-THRID: 6810510356795883520
X-Received: by 2002:a25:3b08:: with SMTP id i8mr25858161yba.402.1586044337455;
        Sat, 04 Apr 2020 16:52:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:2ace:: with SMTP id q197ls4343174ybq.1.gmail; Sat, 04
 Apr 2020 16:52:15 -0700 (PDT)
X-Google-Smtp-Source: APiQypLIZ7b4NV1x0VNN6rpiafLrN5Db/nztL0f3jv32QW46V9nvGe/XUsO6Q+lDMtAKiqR2D3Q/
X-Received: by 2002:a25:492:: with SMTP id 140mr25043005ybe.466.1586044335922;
        Sat, 04 Apr 2020 16:52:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586044335; cv=none;
        d=google.com; s=arc-20160816;
        b=GL0S5XpmX6zpBx1QbXt0PNSsbCp2+Tr8dPEU2wO7SASp2B2mojvz+MxG4XF+PPSd58
         Y7b6Qb0zkM8DB+6jM0vWCDGvz59xJLj+MFCtWeiHLbW29hygvW0sM40aFA5krkAsuee2
         qU7tjnDjQcFa2jrmt4WQjC/4kNrL6Y1H9UyZ0KyaV3HOf8zFqltmfJx2aJXb/GBGFbae
         E/WGFSmezc4aqwlPDPDYvVYZNU3Te0DBqisRS1mE/eTzbj8qwtKGsJAjdQHHSge48XA4
         /8QC5IFFkvtUSSvApXtnhsD2+QdkDtmD/XRRMrqT/iGjZTAfjzXuzd9lkM/Rcqax8s6/
         8HZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=EQ3RTmPiNuj4ybHcpkVkxJwYStuEF3V3VmFdPwQaL/I=;
        b=NXfWCZWLtszc8VX1IEZ60XV2lc/XP7akqSMxCM/EaRR9KSHcs5VT0ou3CvG/oTNJ/G
         DMGsaWNP2GyFzVpu1oWMzjNvDnXR1gw/uPHdUKiLgOz5kDwnt7W754Vo714E4JB4KuOp
         riiPmz1OXsLZxhMTyIZAUM41vGuAp5l9kwZozgQWvNQyVWsz43EwLFMnxOgnsunartfg
         Z8675w/nVZjovw2gPc7caFbd3KbBQQKBuqbpRJ1TBGJwTht/TrRbWAYn98n3/5vPDfOJ
         W2HyTPLgqnxg3jabDUlF0oFX+bF75TWHvVelFrE9uSUic1xinFeQ62PbrCD9WqFqgGdy
         A47Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Krp2Pkqw;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id f195si820321ybg.4.2020.04.04.16.52.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Apr 2020 16:52:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Krp2Pkqw;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1586044335;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=EQ3RTmPiNuj4ybHcpkVkxJwYStuEF3V3VmFdPwQaL/I=;
	b=Krp2PkqwPTxPk51BU18bPKT1VVL3MMbln4uDXVOlefLhm6QDGRzktLUz6pppDSKsT/6Y2W
	OAX8yjy4ms9jGphI87x7cWu8DOYRASWHDimGVY7c7gd/SegIxC12Ccq8RZWg7caK4sK53n
	ExePgmjRoiXmMpMUqxCXJ5N8byH03wc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-20-9qixonVJOf2FB1AK6jayTg-1; Sat, 04 Apr 2020 19:52:12 -0400
X-MC-Unique: 9qixonVJOf2FB1AK6jayTg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CF969800D53;
	Sat,  4 Apr 2020 23:52:10 +0000 (UTC)
Received: from maya.cloud.tilaa.com (unknown [10.36.110.7])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0B83938D;
	Sat,  4 Apr 2020 23:52:10 +0000 (UTC)
Received: from elisabeth (055-041-157-037.ip-addr.inexio.net [37.157.41.55])
	by maya.cloud.tilaa.com (Postfix) with ESMTPSA id 205C44017A;
	Sun,  5 Apr 2020 01:52:09 +0200 (CEST)
Date: Sun, 5 Apr 2020 01:52:07 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Sam Muhammed <jane.pnx9@gmail.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Mauro Carvalho
 Chehab <mchehab@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: media: omap4iss: Use
 BIT() macro
Message-ID: <20200405015156.5b3b7de3@elisabeth>
In-Reply-To: <c08ea89dc21822df8d9af45f2d8b891ac6c29c78.camel@gmail.com>
References: <20200331225817.14834-1-jane.pnx9@gmail.com>
	<20200401045531.5de93729@elisabeth>
	<bace205763db970618b1d1541133826a874b1e21.camel@gmail.com>
	<20200404141125.3b04dd96@elisabeth>
	<c08ea89dc21822df8d9af45f2d8b891ac6c29c78.camel@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 04 Apr 2020 15:32:23 -0400
Sam Muhammed <jane.pnx9@gmail.com> wrote:

> On Sat, 2020-04-04 at 14:11 +0200, Stefano Brivio wrote:
> > Hi Sam,
> > 
> > On Sat, 04 Apr 2020 01:33:09 -0400
> > Sam Muhammed <jane.pnx9@gmail.com> wrote:
> >   
> > > On Wed, 2020-04-01 at 04:55 +0200, Stefano Brivio wrote:  
> > > > On Tue, 31 Mar 2020 18:58:17 -0400
> > > > Sam Muhammed <jane.pnx9@gmail.com> wrote:  
> > >
> > > [...]
> > >  
> > > > > diff --git a/drivers/staging/media/omap4iss/iss_regs.h b/drivers/staging/media/omap4iss/iss_regs.h
> > > > > index 09a7375c89ac..85c6fefeb13a 100644
> > > > > --- a/drivers/staging/media/omap4iss/iss_regs.h
> > > > > +++ b/drivers/staging/media/omap4iss/iss_regs.h
> > > > > @@ -93,10 +93,10 @@
> > > > >  #define CSI2_SYSCONFIG					0x10
> > > > >  #define CSI2_SYSCONFIG_MSTANDBY_MODE_MASK		(3 << 12)
> > > > >  #define CSI2_SYSCONFIG_MSTANDBY_MODE_FORCE		(0 << 12)
> > > > > -#define CSI2_SYSCONFIG_MSTANDBY_MODE_NO			(1 << 12)
> > > > > +#define CSI2_SYSCONFIG_MSTANDBY_MODE_NO			BIT(12)
> > > > >  #define CSI2_SYSCONFIG_MSTANDBY_MODE_SMART		(2 << 12)    
> > > >     
> > > 
> > > Hi Stefano,
> > > honestly i'am confused about how is there a difference between BIT(x)
> > > and (1 << x)
> > > 
> > >  So i'am just going to interpret this hunk as i understand it and
> > > please correct me.
> > > 
> > > #define CSI2_SYSCONFIG_MSTANDBY_MODE_MASK		(3 << 12)
> > > 	shift binary 3 by 12: "write 3 starting at bit 12"
> > > 		0011 ---- ---- ----		
> > >
> > > #define CSI2_SYSCONFIG_MSTANDBY_MODE_FORCE		(0 << 12)
> > > 	"write 0 at bit 12"
> > > 		0000 ---- ---- ----
> > > 
> > > #define CSI2_SYSCONFIG_MSTANDBY_MODE_NO			(1 << 12)
> > > 	"shift binary 1 by 12": "write 1 at bit 12"
> > > 		0001 ---- ---- ----
> > > #define CSI2_SYSCONFIG_MSTANDBY_MODE_NO			BIT(12)
> > > 	"shift binary 1 by 12": _isn't this what BIT() does?_
> > > 		0001 ---- ---- ----  
> > 
> > This is the key perhaps: it is what BIT() does. And it's not what you
> > should be... thinking of doing. Even though the result is clearly the
> > same.
> > 
> > BIT() is used to set a single bit. You need to write *some* bits, here.
> > That "some" is 2: you can write 0, 1, 2, 3, to this region. It's not 1.
> > 
> > Now, if you _write_ 1, you need to _set_ one bit, so coincidentally
> > BIT() works too.
> > 
> > Suppose you have a tray to make ice cubes. You use one, and put the
> > whole thing back in the freezer. Before you do that, it is your duty
> > towards the society to fill it completely with water.
> > 
> > After you use one ice cube, it might look like this:
> > 
> >   1    2    3    4
> >  .----.----.----.----.
> >  |xxxx|xxxx|xxxx|xxxx|
> >  |----|----|----|----|
> >  |xxxx|xxxx|    |xxxx|
> >  '----'----'----'----'
> >   5    6    7    8
> > 
> > so we have two ways to express what you have to do:
> > 
> >   a. fill hole number 7
> >   b. refill the whole thing
> > 
> > a. will do the job just like b., but b. is how you would most naturally
> > describe the operation. Especially because sometimes you take two ice
> > cubes, sometimes three.
> >   
> > > now i dont understand what you meant by "That doesn't make bit 12 any
> > > special", does that assume that iam wrong with what BIT() is defined
> > > for?   
> > 
> > Yes, in some sense. BIT() is used to operate on a single bit: the
> > difference is between:
> > 
> >   a. set bit 12
> >   b. write a number to bit region from 12 to 13
> > 
> > if the number from b. is 1, then a. is equivalent.
> > 
> > But right above and below this #define you have defines for 0 << 12,
> > 2 << 12, 3 << 12. And 1 << 12 is not a special case.
> >   
> > > #define CSI2_SYSCONFIG_MSTANDBY_MODE_SMART		(2 << 12)
> > > 	"shift binary 2 by 12": write 2 at bit 12
> > > 		0010 ---- ---- ----
> > >  
> > > +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
> > > 
> > > for your previous explanation: _quoting_ :
> > > 
> > > 1. #define ISS_CTRL                                        0x80
> > >         "we have a register at 0x80"
> > >         https://en.wikipedia.org/wiki/Hardware_register
> > > 
> > > 2. how big is it? Datasheet tells you, but before you even look for it:
> > >    #define ISS_CTRL_CLK_DIV_MASK                          (3 << 4)
> > >         "at least 7 bits"
> > > 
> > >    #define ISS_CLKCTRL                                     0x84
> > >    #define ISS_CLKCTRL_VPORT2_CLK                          BIT(30)
> > >         "probably they are all the same size, might be 32 bits"
> > > 
> > > 3. picture it:
> > >         |_ b7 _|_ b6 _|_ b5 _|_ b4 _|_ b3 _|_ b2 _|_ b1 _|_ b0 _|
> > >    (might be bigger, not too important)
> > > 
> > > 4. #define ISS_CTRL_INPUT_SEL_MASK                      (3 << 2)
> > >         "these bits define the input selection [whatever it is]":
> > > 
> > >         |_ b7 _|_ b6 _|_ b5 _|_ b4 _|_ b3 _|_ b2 _|_ b1 _|_ b0 _|
> > >                                        ^^     ^^  | << shift by 2
> > >                                        2^1 + 2^0 = 3
> > >                                                    ^----(3 << 2)
> > > 
> > > 
> > > 5. #define ISS_CTRL_INPUT_SEL_CSI2A                     (0 << 2)
> > >         "to select input CSI2A [whatever it is]", we need:
> > >         |_ b7 _|_ b6 _|_ b5 _|_ b4 _|_  0 _|_  0 _|_ b1 _|_ b0 _|
> > >                                        ^^     ^^  | << shift by 2
> > >                                         0  +  0   = 0
> > >                                                     ^----(0 << 2)
> > > 
> > > 
> > >    #define ISS_CTRL_INPUT_SEL_CSI2B                     (1 << 2)
> > >         "to select input CSI2B [whatever it is]", we need:
> > >         |_ b7 _|_ b6 _|_ b5 _|_ b4 _|_  0 _|_  1 _|_ b1 _|_ b0 _|
> > >                                        ^^     ^^  | << shift by 2
> > >                                         0  + 2^0  = 1
> > >                                                     ^----(1 << 2)
> > > 
> > > 
> > > Now, that's how the current #defines work. I think they are
> > > actually intuitive (you could use the GENMASK() macro, but I think
> > > the difference is not that big).
> > > 
> > > With your change:
> > > 
> > > 5. #define ISS_CTRL_INPUT_SEL_CSI2A                     (0 << 2)
> > >         "to select input CSI2A [whatever it is]", we need:
> > >         |_ b7 _|_ b6 _|_ b5 _|_ b4 _|_  0 _|_  0 _|_ b1 _|_ b0 _|
> > >                                        ^^     ^^  | << shift by 2
> > >                                         0  +  0  =  0
> > >                                                     ^----(0 << 2)
> > > 
> > > 
> > >    #define ISS_CTRL_INPUT_SEL_CSI2B                     BIT(2)
> > >         "to select input CSI2B [whatever it is]", we need:
> > >         |_ b7 _|_ b6 _|_ b5 _|_ b4 _|_ b3 _|_  1 _|_ b1 _|_ b0 _|
> > >                                                ^
> > >                                                ' this bit set.
> > >                 What, why? How is this related with the rest?
> > > ++++
> > > now right at this point i got an overlapped definition of BIT()
> > > this expansion/explanation of BIT(2) in my mind got translated to:
> > > 
> > >      SetBit(register,bit) => (register|=(1<<bit))
> > > NOT
> > >      shift binary 1 by 2
> > > ++++  
> > 
> > Yes, it's also about this. But from your example above:
> >       SetBit(register,bit) => (register|=(1<<bit))
> > 
> > you need to distinguish when you're operating on a bit *array* or a
> > generic group of bit regions. That is, it's:
> >       SetBit(register,bit) => (register|=(n<<bit))
> > 
> > where 'n' happens to be 1, sometimes. It's not always '1' by design.
> > 
> > Let's take a driver operating a lamp that has three LEDs inside: it
> > might work like this:
> > 
> > #define CTRL_REGISTER	0x5	/* a generic 8-bit register */
> > #define RED_ON		BIT(0)
> > #define GREEN_ON	BIT(1)
> > #define BLUE_ON		BIT(2)
> > 
> > those are single bits, and consistently so, so using BIT() is fine.
> > 
> > Now, the lamp can be on, off, blink slow or fast. In the same register,
> > you have 2 bits (starting from bit 4) controlling that: 0 means "off", 1
> > means "blink slow", 2 means "blink fast", 3 means "on":
> > 
> > #define MODE_OFF	(0 << 4)
> > #define MODE_SLOW	(1 << 4)
> > #define MODE_FAST	(2 << 4)
> > #define MODE_ON		(3 << 4)
> > 
> > this is a natural way of describing things. Suppose you do, instead:
> > 
> > #define MODE_OFF	(0 << 4)
> > #define MODE_SLOW	BIT(4)
> > #define MODE_FAST	(2 << 4)
> > #define MODE_ON		(3 << 4)
> >   
> 
> I guess that is a great example:
> So if the operations are on a single bit being toggled on, BIT() is
> welcome to be used.
> 
> But when the operations involve a region of bits being toggled on/off i
> should stick to the typical way of bit manipulation even if there
> happens to be an operation that requires only one bit to be set.
> 
> ++++
> My thoughts were: _quoting your example_
>  #define RED_ON		BIT(0)
>  #define GREEN_ON	BIT(1) => 0001			
> 		
>  #define BLUE_ON	BIT(2) => 0010
> 			  This does set bit 2, but affected the rest
> "so it was a _lame_ way of saying that there is a region of bits being
> manipulated though only one of them is set" :D

Well, yes, I see what you mean. Two things here:

1. you don't know if my lamp can have more than one colour switched on
   at the same time. But it's irrelevant for the purposes of the data
   representation: it's still one bit per colour. Other bits might need
   to be cleared, and in that case it might be convenient to have:
	#define COLOUR_MASK		(RED_ON | GREEN_ON | BLUE_ON)

   or, somewhat less appropriately:
	#define COLOUR_MASK		GENMASK(0, 2)

   but that's a "meta" operation you do on a set of homogeneous bits,
   so it's a completely separated fact.

2. most likely, you would need to write the register as a whole, so you
   read, then set or clear bits, then write -- this means essentially
   that you write all the bits at a time, yes. But this is not
   conceptually relevant, it's an implementation detail.

> ++++
> so when it came to:
>     #define ISS_CTRL_INPUT_SEL_CSI2B                     (1 << 2)
>          "to select input CSI2B [whatever it is]", we need:
>          |_ b7 _|_ b6 _|_ b5 _|_ b4 _|_ 0 _|_ 1 _|_ b1 _|_ b0 _|
>                                         ^^     ^^  | << shift by 2
>                                          0  + 2^0  = 1
>                                                      ^----(1 << 2)
> *my brain*                        --> yes, makes sense
> 
>     #define ISS_CTRL_INPUT_SEL_CSI2B                     BIT(2)
>          "to select input CSI2B [whatever it is]", we need:
>          |_ b7 _|_ b6 _|_ b5 _|_ b4 _|_ b3 _|_ 1 _|_ b1 _|_ b0 _|
>                                                ^
>                                                ' this bit set.
>                  What, why? How is this related with the rest?
> 
> "my brain"		         --> why b3 is not 0 now?

That's what I would ask, too. Yeah, sure, it will be, but BIT() is
deceiving in this sense.

> 		shouldn't BIT(2) == 1*2^2 == 4 == 0100 ??
> 				So i saw it like:
> 			lets mask b2 to be set regardless of the rest
> 			so if b3 was set, it will still be set next to 			setting b2.
> 			so the meaning of BIT(2) got twisted up.
> 
> That why i got lost between these two:
>       SetBit(register,bit) => (register|=(1<<bit))
> AND
>       shift binary 1 by 2
> 
> I guess that was a twisted thought?? but now i can say it like _after
> going through this conversation_, that:
> 
> we are operating on a region of n bits starting from bit x, don't act
> like we're operating on a single bit by choosing BIT(y) over (1 << y).

Yes, makes sense to me.

> ++++
> 
> > the compiler won't judge you, but I will. Why is the "slow" mode
> > special? This makes the "slow" mode look like it's a binary option, but
> > it's not.
> >   
> > > Basically i forgot about this patch and i'am more into clearing this
> > > confusion because i'am definitely missing something thats very basic
> > > and probably have a wrong understanding of something.  
> > 
> > Thanks for sticking with this, I appreciate that you're trying to
> > figure out what I'm saying. Is it a bit clearer now?
> >   
> 
> Thank You,
> I guess i got it right this time? have i??

I think so! :) Or use Julia's example, I think it's equivalent to mine
and it can't fail.

-- 
Stefano


