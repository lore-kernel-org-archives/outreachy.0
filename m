X-GM-THRID: 6810510356795883520
X-Received: by 2002:a37:2d83:: with SMTP id t125mr13710628qkh.359.1586002305240;
        Sat, 04 Apr 2020 05:11:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ae9:e815:: with SMTP id a21ls7072118qkg.0.gmail; Sat, 04 Apr
 2020 05:11:44 -0700 (PDT)
X-Google-Smtp-Source: APiQypL0fwGKzv+TPq/zazOnTZ6gB6ceA0GCAIBwsIrisqlDkiqbvAt4kwR+Nwy6wmiKijrnMZ3x
X-Received: by 2002:a05:620a:a92:: with SMTP id v18mr6140011qkg.379.1586002304175;
        Sat, 04 Apr 2020 05:11:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586002304; cv=none;
        d=google.com; s=arc-20160816;
        b=KXTfcFPOAlSXUZ2D6HE1bKXqmMGokyKyj53cZ4yvNt9d9zI18UaTeP2pKKDg4aN274
         6cyrHIRfKC2sfq1P0Wf/nALdASJS2xms0cO36ttHCgZiD+8l4V/PiPG8qjhFXawnn8BN
         V31zfxJlYbQkdBY7P04NY8w+r8/Nalta8+rFcWtCMzoYDVZCPa3y/j+pguo3lR09/2Cd
         Euc/4ZSqDDP7TjLijSJf1VF/Bo6qQUdP9rZd65iHf2PGXPsvSOZ+FpBi7jW9kWV5Vzlv
         7k5kx2nmz1vRsRABaojyxefUTsPgF1QABwVoL+YIWsw47xTDHL5fZ2z/U3YuWox46Jzt
         nkqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=3GJD+M0mAJx78tnNiJsJKBArtNLz7hYLNEeinCdBfZw=;
        b=iWvCwMEHweAlaLVwERsj+YFZoyM44pRtQm/00LI0aXJAU5kICOgocLF1yeU4S5gUmy
         lbxfCopEY5rGCcButi+iMcL5yEA/yzFN0bd7dcNqW29OspPmfudBDCIH8gcUNjI4Bfrt
         koFnBDAogIYfoAaZcyzCfBzpLpYXDPWQpvdbDbo4QX8IJZJiBZqUCzGK3BheThmfMXTw
         r8g6U0q5F7aiaLn61LEdvJq4vQbDwQ462guxAnTwuiPHY4VMAMA05NRlyw6t+efq9+R6
         6pbz0fYiMa6kJvmx/37kvm3QKZHcjNr5bCFqQArfj0Nt6cZ6BtJ7KdAeeZWbMB2KewC9
         SnMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Ly+0iF/R";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id e89si728346qtd.3.2020.04.04.05.11.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Apr 2020 05:11:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Ly+0iF/R";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1586002303;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3GJD+M0mAJx78tnNiJsJKBArtNLz7hYLNEeinCdBfZw=;
	b=Ly+0iF/RUjVzod4yJuJmbkwZrA7higB0jnCvNzxWNiOCvrHZXuQusNmlW/NV5KeZlbqDd1
	MmNYEXPvtQ48KML9fDNsLEUvJAOBSgUASowD780oI5Qlxm4AscKerd3PtAw9Z6FPBzGxoY
	U7Jr5kQuGHvwM/Jj0ACaEj87F/er04c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-431-DMgwwUOeMfuyEZd-fLWnQA-1; Sat, 04 Apr 2020 08:11:39 -0400
X-MC-Unique: DMgwwUOeMfuyEZd-fLWnQA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E8ECB1005513;
	Sat,  4 Apr 2020 12:11:37 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3605B9A265;
	Sat,  4 Apr 2020 12:11:33 +0000 (UTC)
Date: Sat, 4 Apr 2020 14:11:25 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Sam Muhammed <jane.pnx9@gmail.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Mauro Carvalho
 Chehab <mchehab@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: media: omap4iss: Use
 BIT() macro
Message-ID: <20200404141125.3b04dd96@elisabeth>
In-Reply-To: <bace205763db970618b1d1541133826a874b1e21.camel@gmail.com>
References: <20200331225817.14834-1-jane.pnx9@gmail.com>
	<20200401045531.5de93729@elisabeth>
	<bace205763db970618b1d1541133826a874b1e21.camel@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi Sam,

On Sat, 04 Apr 2020 01:33:09 -0400
Sam Muhammed <jane.pnx9@gmail.com> wrote:

> On Wed, 2020-04-01 at 04:55 +0200, Stefano Brivio wrote:
> > On Tue, 31 Mar 2020 18:58:17 -0400
> > Sam Muhammed <jane.pnx9@gmail.com> wrote:
>
> [...]
>
> > > diff --git a/drivers/staging/media/omap4iss/iss_regs.h b/drivers/staging/media/omap4iss/iss_regs.h
> > > index 09a7375c89ac..85c6fefeb13a 100644
> > > --- a/drivers/staging/media/omap4iss/iss_regs.h
> > > +++ b/drivers/staging/media/omap4iss/iss_regs.h
> > > @@ -93,10 +93,10 @@
> > >  #define CSI2_SYSCONFIG					0x10
> > >  #define CSI2_SYSCONFIG_MSTANDBY_MODE_MASK		(3 << 12)
> > >  #define CSI2_SYSCONFIG_MSTANDBY_MODE_FORCE		(0 << 12)
> > > -#define CSI2_SYSCONFIG_MSTANDBY_MODE_NO			(1 << 12)
> > > +#define CSI2_SYSCONFIG_MSTANDBY_MODE_NO			BIT(12)
> > >  #define CSI2_SYSCONFIG_MSTANDBY_MODE_SMART		(2 << 12)  
> >   
> 
> Hi Stefano,
> honestly i'am confused about how is there a difference between BIT(x)
> and (1 << x)
> 
>  So i'am just going to interpret this hunk as i understand it and
> please correct me.
> 
> #define CSI2_SYSCONFIG_MSTANDBY_MODE_MASK		(3 << 12)
> 	shift binary 3 by 12: "write 3 starting at bit 12"
> 		0011 ---- ---- ----		
>
> #define CSI2_SYSCONFIG_MSTANDBY_MODE_FORCE		(0 << 12)
> 	"write 0 at bit 12"
> 		0000 ---- ---- ----
> 
> #define CSI2_SYSCONFIG_MSTANDBY_MODE_NO			(1 << 12)
> 	"shift binary 1 by 12": "write 1 at bit 12"
> 		0001 ---- ---- ----
> #define CSI2_SYSCONFIG_MSTANDBY_MODE_NO			BIT(12)
> 	"shift binary 1 by 12": _isn't this what BIT() does?_
> 		0001 ---- ---- ----

This is the key perhaps: it is what BIT() does. And it's not what you
should be... thinking of doing. Even though the result is clearly the
same.

BIT() is used to set a single bit. You need to write *some* bits, here.
That "some" is 2: you can write 0, 1, 2, 3, to this region. It's not 1.

Now, if you _write_ 1, you need to _set_ one bit, so coincidentally
BIT() works too.

Suppose you have a tray to make ice cubes. You use one, and put the
whole thing back in the freezer. Before you do that, it is your duty
towards the society to fill it completely with water.

After you use one ice cube, it might look like this:

  1    2    3    4
 .----.----.----.----.
 |xxxx|xxxx|xxxx|xxxx|
 |----|----|----|----|
 |xxxx|xxxx|    |xxxx|
 '----'----'----'----'
  5    6    7    8

so we have two ways to express what you have to do:

  a. fill hole number 7
  b. refill the whole thing

a. will do the job just like b., but b. is how you would most naturally
describe the operation. Especially because sometimes you take two ice
cubes, sometimes three.

> now i dont understand what you meant by "That doesn't make bit 12 any
> special", does that assume that iam wrong with what BIT() is defined
> for? 

Yes, in some sense. BIT() is used to operate on a single bit: the
difference is between:

  a. set bit 12
  b. write a number to bit region from 12 to 13

if the number from b. is 1, then a. is equivalent.

But right above and below this #define you have defines for 0 << 12,
2 << 12, 3 << 12. And 1 << 12 is not a special case.

> #define CSI2_SYSCONFIG_MSTANDBY_MODE_SMART		(2 << 12)
> 	"shift binary 2 by 12": write 2 at bit 12
> 		0010 ---- ---- ----
>  
> +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
> 
> for your previous explanation: _quoting_ :
> 
> 1. #define ISS_CTRL                                        0x80
>         "we have a register at 0x80"
>         https://en.wikipedia.org/wiki/Hardware_register
> 
> 2. how big is it? Datasheet tells you, but before you even look for it:
>    #define ISS_CTRL_CLK_DIV_MASK                          (3 << 4)
>         "at least 7 bits"
> 
>    #define ISS_CLKCTRL                                     0x84
>    #define ISS_CLKCTRL_VPORT2_CLK                          BIT(30)
>         "probably they are all the same size, might be 32 bits"
> 
> 3. picture it:
>         |_ b7 _|_ b6 _|_ b5 _|_ b4 _|_ b3 _|_ b2 _|_ b1 _|_ b0 _|
>    (might be bigger, not too important)
> 
> 4. #define ISS_CTRL_INPUT_SEL_MASK                      (3 << 2)
>         "these bits define the input selection [whatever it is]":
> 
>         |_ b7 _|_ b6 _|_ b5 _|_ b4 _|_ b3 _|_ b2 _|_ b1 _|_ b0 _|
>                                        ^^     ^^  | << shift by 2
>                                        2^1 + 2^0 = 3
>                                                    ^----(3 << 2)
> 
> 
> 5. #define ISS_CTRL_INPUT_SEL_CSI2A                     (0 << 2)
>         "to select input CSI2A [whatever it is]", we need:
>         |_ b7 _|_ b6 _|_ b5 _|_ b4 _|_  0 _|_  0 _|_ b1 _|_ b0 _|
>                                        ^^     ^^  | << shift by 2
>                                         0  +  0   = 0
>                                                     ^----(0 << 2)
> 
> 
>    #define ISS_CTRL_INPUT_SEL_CSI2B                     (1 << 2)
>         "to select input CSI2B [whatever it is]", we need:
>         |_ b7 _|_ b6 _|_ b5 _|_ b4 _|_  0 _|_  1 _|_ b1 _|_ b0 _|
>                                        ^^     ^^  | << shift by 2
>                                         0  + 2^0  = 1
>                                                     ^----(1 << 2)
> 
> 
> Now, that's how the current #defines work. I think they are
> actually intuitive (you could use the GENMASK() macro, but I think
> the difference is not that big).
> 
> With your change:
> 
> 5. #define ISS_CTRL_INPUT_SEL_CSI2A                     (0 << 2)
>         "to select input CSI2A [whatever it is]", we need:
>         |_ b7 _|_ b6 _|_ b5 _|_ b4 _|_  0 _|_  0 _|_ b1 _|_ b0 _|
>                                        ^^     ^^  | << shift by 2
>                                         0  +  0  =  0
>                                                     ^----(0 << 2)
> 
> 
>    #define ISS_CTRL_INPUT_SEL_CSI2B                     BIT(2)
>         "to select input CSI2B [whatever it is]", we need:
>         |_ b7 _|_ b6 _|_ b5 _|_ b4 _|_ b3 _|_  1 _|_ b1 _|_ b0 _|
>                                                ^
>                                                ' this bit set.
>                 What, why? How is this related with the rest?
> ++++
> now right at this point i got an overlapped definition of BIT()
> this expansion/explanation of BIT(2) in my mind got translated to:
> 
>      SetBit(register,bit) => (register|=(1<<bit))
> NOT
>      shift binary 1 by 2
> ++++

Yes, it's also about this. But from your example above:
      SetBit(register,bit) => (register|=(1<<bit))

you need to distinguish when you're operating on a bit *array* or a
generic group of bit regions. That is, it's:
      SetBit(register,bit) => (register|=(n<<bit))

where 'n' happens to be 1, sometimes. It's not always '1' by design.

Let's take a driver operating a lamp that has three LEDs inside: it
might work like this:

#define CTRL_REGISTER	0x5	/* a generic 8-bit register */
#define RED_ON		BIT(0)
#define GREEN_ON	BIT(1)
#define BLUE_ON		BIT(2)

those are single bits, and consistently so, so using BIT() is fine.

Now, the lamp can be on, off, blink slow or fast. In the same register,
you have 2 bits (starting from bit 4) controlling that: 0 means "off", 1
means "blink slow", 2 means "blink fast", 3 means "on":

#define MODE_OFF	(0 << 4)
#define MODE_SLOW	(1 << 4)
#define MODE_FAST	(2 << 4)
#define MODE_ON		(3 << 4)

this is a natural way of describing things. Suppose you do, instead:

#define MODE_OFF	(0 << 4)
#define MODE_SLOW	BIT(4)
#define MODE_FAST	(2 << 4)
#define MODE_ON		(3 << 4)

the compiler won't judge you, but I will. Why is the "slow" mode
special? This makes the "slow" mode look like it's a binary option, but
it's not.

> Basically i forgot about this patch and i'am more into clearing this
> confusion because i'am definitely missing something thats very basic
> and probably have a wrong understanding of something.

Thanks for sticking with this, I appreciate that you're trying to
figure out what I'm saying. Is it a bit clearer now?

-- 
Stefano


