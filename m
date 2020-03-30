X-GM-THRID: 6808625193830842368
X-Received: by 2002:a9d:1921:: with SMTP id j33mr9522919ota.309.1585578210637;
        Mon, 30 Mar 2020 07:23:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:508d:: with SMTP id e135ls7429704oib.5.gmail; Mon, 30
 Mar 2020 07:23:29 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvRKVE5YIRfJkqyCNKLzSfDQ0qyWLIBTB/igGvLwVoGe2M0xlySTB14IqWJ4FLdSc++SkMt
X-Received: by 2002:aca:ac89:: with SMTP id v131mr7803883oie.7.1585578209487;
        Mon, 30 Mar 2020 07:23:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585578209; cv=none;
        d=google.com; s=arc-20160816;
        b=sbBa0qdba8DnQ9Vzi3nDYtc/IcmQCT7oJcJcbmJY41C5akgTh9S+/Kw7hBimtuUYUQ
         Bi7O+EoVzMYqnjiA4HVyGEryB19bhqb8rsCofNXSOAHkbEn8gFTipkjP3XMwBJhyGDYI
         oeyq4LJ1288Q6diTUA30FjhpvrQqGSiXoa5vq4/QK4VOwKILLrhYiFTAJU8UeN81IoJQ
         dLFS3mN3ZMIta+1RyP53xpvBlbn+EOEwldrKM0kE6f+FxO4U6x6Bl5GHb+favRX0x5dH
         cvjgNVEcOGN2ddSzF8X5AUUKjxa96ObKAqjappHRFUDdDo+AgSREPXBOCePX8USRImG6
         +0Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=yD/Mdmx5YnG4nNk0+cEM+7kLNm5ANNLAsL8mDDbFEtg=;
        b=sDar/c0Az/9iHINQMaIIJFsVb4oyrSD0+wUAHtcxo3uQMMwQC03r9qX0iGfhEz2k/C
         7+xAv9PQ0rnkPtQ8BIxOnAeFHqshJy63iKVFmc2t4dSaRkq7TVK4+U5Vwsu1xTI6L61Q
         uxo1gyKdBwkAZD3c9tghyfBCdZvU61c+g1nCOX7Q1JDIUxRhjzJS9GASdnRn6jhAijgS
         IwKRK0fYzBByjOfXv4kA8eOFH7pdvUXyX/wX2fok9oIvLywd/eXBiQzhlYMla+0ObyCN
         TMGR/PviMU2HZR3Zgs0Ptfa0FJSipjFA0E9iN+MhQU4shWDKrLcVJxjlPTbBRG7b9eEU
         o2/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=i0IkLaef;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id d11si809746otk.5.2020.03.30.07.23.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 07:23:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=i0IkLaef;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585578208;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yD/Mdmx5YnG4nNk0+cEM+7kLNm5ANNLAsL8mDDbFEtg=;
	b=i0IkLaef/W77NSEiQXbo5RlxsjkS/2JVMAE7+YFZGohrs5yDFdIjN3V5rFvAT7yqkhgk+/
	OLVriQwkptuXRKfbd4VufDBgU3WzDcinFOMwvNFAqTVzMSi0GuBTJ9r1IEDvS+1jcbr7Y8
	9BbuGDPspxpjkVrzkkhseYsQJzFJqB0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-358-h_ys2P76NaC2DwEb0pNe1A-1; Mon, 30 Mar 2020 10:23:25 -0400
X-MC-Unique: h_ys2P76NaC2DwEb0pNe1A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 71CCA800D5B;
	Mon, 30 Mar 2020 14:23:24 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.63])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D97F65DA60;
	Mon, 30 Mar 2020 14:23:21 +0000 (UTC)
Date: Mon, 30 Mar 2020 16:23:16 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Sam Muhammed <jane.pnx9@gmail.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Mauro Carvalho
 Chehab <mchehab@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, outreachy-kernel
 <outreachy-kernel@googlegroups.com>, Julia Lawall <julia.lawall@inria.fr>
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: omap4iss: Use BIT()
 macro.
Message-ID: <20200330162316.30fe0b81@elisabeth>
In-Reply-To: <d09f3d39c7fc8326711119c73954bfbd8c92091a.camel@gmail.com>
References: <20200326210247.4746-1-jane.pnx9@gmail.com>
	<20200330101107.1c84b8f6@elisabeth>
	<d09f3d39c7fc8326711119c73954bfbd8c92091a.camel@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon, 30 Mar 2020 07:40:22 -0400
Sam Muhammed <jane.pnx9@gmail.com> wrote:

> On Mon, 2020-03-30 at 10:11 +0200, Stefano Brivio wrote:
> > On Thu, 26 Mar 2020 17:02:47 -0400
> > Sam Muhammed <jane.pnx9@gmail.com> wrote:
> >
> > [...]
> >
> > > +++ b/drivers/staging/media/omap4iss/iss_regs.h
> > > @@ -38,7 +38,7 @@
> > >  #define ISS_CTRL_CLK_DIV_MASK				(3 << 4)
> > >  #define ISS_CTRL_INPUT_SEL_MASK				(3 << 2)
> > >  #define ISS_CTRL_INPUT_SEL_CSI2A			(0 << 2)
> > > -#define ISS_CTRL_INPUT_SEL_CSI2B			(1 << 2)
> > > +#define ISS_CTRL_INPUT_SEL_CSI2B			(BIT(2))
> > >  #define ISS_CTRL_SYNC_DETECT_VS_RAISING			(3 << 0)  
> > 
> > The existing code is saying: there are three bits to select the input,
> > starting from bit number 2. For those three bits, 0 means the CSI2A
> > input is selected, and 1 means CSI2B is selected.
> > 
> > You're changing it to: there are three bits to select the input,
> > starting from bit number 2. For those three bits, 0 means the CSI2A
> > input is selected. CSI2B is a special case, though: register bit 2 needs
> > to be set.
> 
> Oh, So defining BIT(2) totally changed the logic?

No, it has no functional effect. And I also don't care too much about
"the pattern" here -- I would just recommend that you practice
actually reading code stuff before you change it :) So:

1. #define ISS_CTRL                                        0x80
	"we have a register at 0x80"
	https://en.wikipedia.org/wiki/Hardware_register

2. how big is it? Datasheet tells you, but before you even look for it:
   #define ISS_CTRL_CLK_DIV_MASK				(3 << 4)
	"at least 7 bits"

   #define ISS_CLKCTRL                                     0x84
   #define ISS_CLKCTRL_VPORT2_CLK                          BIT(30)
	"probably they are all the same size, might be 32 bits"

3. picture it:
	|_ b7 _|_ b6 _|_ b5 _|_ b4 _|_ b3 _|_ b2 _|_ b1 _|_ b0 _|
   (might be bigger, not too important)

4. #define ISS_CTRL_INPUT_SEL_MASK			(3 << 2)
   	"these bits define the input selection [whatever it is]":

	|_ b7 _|_ b6 _|_ b5 _|_ b4 _|_ b3 _|_ b2 _|_ b1 _|_ b0 _|
                                       ^^     ^^  | << shift by 2
                                       2^1 + 2^0 = 3
                                                   ^----(3 << 2)

5. #define ISS_CTRL_INPUT_SEL_CSI2A			(0 << 2)
	"to select input CSI2A [whatever it is]", we need:
	|_ b7 _|_ b6 _|_ b5 _|_ b4 _|_  0 _|_  0 _|_ b1 _|_ b0 _|
                                       ^^     ^^  | << shift by 2
                                        0  +  0   = 0
                                                    ^----(0 << 2)

   #define ISS_CTRL_INPUT_SEL_CSI2B			(1 << 2)
	"to select input CSI2B [whatever it is]", we need:
	|_ b7 _|_ b6 _|_ b5 _|_ b4 _|_  0 _|_  1 _|_ b1 _|_ b0 _|
                                       ^^     ^^  | << shift by 2
                                        0  + 2^0  = 1
                                                    ^----(1 << 2)

Now, that's how the current #defines work. I think they are
actually intuitive (you could use the GENMASK() macro, but I think
the difference is not that big).

With your change:

5. #define ISS_CTRL_INPUT_SEL_CSI2A			(0 << 2)
	"to select input CSI2A [whatever it is]", we need:
	|_ b7 _|_ b6 _|_ b5 _|_ b4 _|_  0 _|_  0 _|_ b1 _|_ b0 _|
                                       ^^     ^^  | << shift by 2
                                        0  +  0  =  0
                                                    ^----(0 << 2)

   #define ISS_CTRL_INPUT_SEL_CSI2B			BIT(2)
	"to select input CSI2B [whatever it is]", we need:
	|_ b7 _|_ b6 _|_ b5 _|_ b4 _|_ b3 _|_  1 _|_ b1 _|_ b0 _|
                                               ^
                                               ' this bit set.
		What, why? How is this related with the rest?

> 
>  [...]  
> > 
> > Also no need for parentheses around BIT().
> >   
>  [...]  
> > 
> > "Standby mode is forced by clearing 3 bits at index 4. Smart mode is set
> > by setting 2 as value for those bits. No standby mode is an entirely
> > different story: set bit 4 of ISP5_SYSCONFIG."  
> 
> Since iam a noob, i have this question, what's better, to leave 
> (1 << 4) alone since it looks familiar between the rest,
>  
> or since BIT(4) already sets HIGH bit at bit 4, we better use the macro
> though it might look as an odd in the pattern?

Same here, I'm not exceedingly interested in the pattern or how it looks
like -- with your change, it would still work, but it would make no
sense.

> Thanks for clarifying the code, much help to understand this a bit.

Sorry, that's why I quoted my "explanation": that's how one would read
it after your change.

That is, the "No standby mode is an entirely different story" part is
how one would read the code after your change, and... it's wrong! :)

-- 
Stefano


