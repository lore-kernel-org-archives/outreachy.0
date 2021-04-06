X-GM-THRID: 6947995427572547584
X-Received: by 2002:a17:90a:4d86:: with SMTP id m6mr5273776pjh.197.1617730562656;
        Tue, 06 Apr 2021 10:36:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:ef0b:: with SMTP id u11ls7639661pgh.4.gmail; Tue, 06 Apr
 2021 10:36:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwnxhJif80kRuMBYvQ3qkGx9pW9gX7HO1Nb8SHdZCbnAFqD6dt8jeq73MxF08vIsind6vzg
X-Received: by 2002:a63:ea01:: with SMTP id c1mr29153540pgi.236.1617730561485;
        Tue, 06 Apr 2021 10:36:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617730561; cv=none;
        d=google.com; s=arc-20160816;
        b=o48kgI8BIVDxvBYkb8ZVnYf7FnysfLA0icSxda1PEFDa1EMhYOWjFrp0MmnOGVJF9+
         +xtSOvFE7O9otf0T5kVNI8JBBxFnP2zjsQt3cUYcUQkUNKar6t8O0kF8HgD4pffqYxO+
         jWto3fUfK5F9gCYDON2Ng8aAdzUHBaEXS+eRF+aErhFhwL9CPJbM/eWCei6D+UTu83lp
         BYtCNZ6bPJHzbE5gpnyZrpVMG5mEGmXO+JqZAAjxIoa3H9zkdrQlSijs1VLIpmHS0De4
         DduReccK7YM4UppDj6a+SLwgOHADrVcg8v3p/osOW8tTTxcg6JCjrNI2/GgSBCp++wHM
         zLrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=xjEIaUI2KiELcKSXVAxWCrESfZ4R3puQeT9rw5ZGWG0=;
        b=OVJfzVKIWccMGGssl31vfTi3Zy2K4tl0rAL16y411xsdKBbWH2DuO2qRTdSoacSZwi
         60HnXHV2ViBDQRp1lcf9bOUW3Tqqqa0NtvA9MjLrWIA+tWMelpr/CZ0hhg7tojldcgdI
         KhWHN7+rlTT6N3WX55CPyF8MgmqP6l1dAPcWSshEZLI2RlCd4ks3I6ydOnFLKyGH91jk
         5r9AP3CpAZg7GnydgS4QDTBFecAcddvFL+MqGpz9MpO4BZNTmVmc2IrRGZQ18fmXWaWk
         mgXX7yd3BmLpTzmt/v5VeuXkmmxv8DF0u0llRBVHXXwniGCvlweagFCMpeOqa14vShxs
         V//w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=VE0Bk5oJ;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=m7rKMAQ1;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.25 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com. [66.111.4.25])
        by gmr-mx.google.com with ESMTPS id g23si2409273pfu.3.2021.04.06.10.36.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 10:36:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.25 as permitted sender) client-ip=66.111.4.25;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=VE0Bk5oJ;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=m7rKMAQ1;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.25 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
	by mailout.nyi.internal (Postfix) with ESMTP id A433C5C0166;
	Tue,  6 Apr 2021 13:36:00 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute7.internal (MEProxy); Tue, 06 Apr 2021 13:36:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=xjEIaUI2KiELcKSXVAxWCrESfZ4
	R3puQeT9rw5ZGWG0=; b=VE0Bk5oJj4tlkUPzovrA/q9Qov05IxqS8maM8nOnLrB
	fk8elXUMqJIJYXgZEQva7evwVm9O9zC8EfQ0b/ORjQnOiNR7YIGa6nJhRKnJ/yrB
	uwv3Xu0cqqUYamhpfeADtb+t3L/rdiRzX5eD71HJ7gP08s/PP4/rRk7I5fuQTZJD
	FZBuBg3JYBJjl+5VMvVmSop5dCCMWa87Oe16sa5lhDfiACIo+lpBQQL5Xcx0dX6Y
	w2sFXWXhHiWK5Qn7D/FuBjXU1syN8u7OtUEQAMwtgAh89xks8UlmoNWXCscJhGhP
	OQ9dmhRR0+PHBDgbHmPKjrr5W8Bn1hK7XPE8r8Hlc0g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=xjEIaU
	I2KiELcKSXVAxWCrESfZ4R3puQeT9rw5ZGWG0=; b=m7rKMAQ1nzQ+i90EvGPrIN
	q9jn0X+iJwuk12K4MbyoBDeBCWCo5NcoJPlLr6YIBntMgw+u0zXawagplYlwSivQ
	ieh90O78MQqbOf1V/egJ19Tuj9aUQUSSieMb76KkIYbK6uMo4HZUah8cTw/DOxmM
	nh4ddCr0Df4WylYq5RSng2ltBqeQPuFAdSCt/QKawUDym+Y+7xxe9Ux2N1+LIeqO
	2ArPY2EImeK3cSYUhoAm4jj+p4e8/8CBv6Il/+TeT1xf9Cf6lAAp28AGqiIWjBAx
	XP58OdFk2gw6wGMKDou6WYMk4HIUuObOlz0Z2Dj14q1dJ6ooAIKOdXK1kCsIapdw
	==
X-ME-Sender: <xms:AJxsYLVZSqDRmCQ_HGRvWZz6gbe04QaW55I21cRkmpKny18wKU0OPg>
    <xme:AJxsYIjimq8k6Ry4xOp9F2BixfcGMUbhtYTNq8kNzonkx6q1LWwD25aPFTcNhxBxv
    Wg5QxA_YNiVGw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudejhedgieduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcu
    mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucggtffrrghtthgvrhhnpeevueehje
    fgfffgiedvudekvdektdelleelgefhleejieeugeegveeuuddukedvteenucfkphepkeef
    rdekiedrjeegrdeigeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
    hlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:AJxsYPi23EuGx5PcyhSoUzo7XGuhkwcBMjgZ5z4sbYlCmr3vNUaPHg>
    <xmx:AJxsYGwttp9RtNM3T1fYC56esCIbNOLoC0vHy_0hy1f6QjvqRNndxw>
    <xmx:AJxsYIZJJcFUoHMfllWAhFu6XQCSc2K7Oh0eGBGzRqULwp4tDn5D-Q>
    <xmx:AJxsYJ-87poFtA2zA0v70yFb3sJaSjjOvIYahceldfveMUlT6X2anw>
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	by mail.messagingengine.com (Postfix) with ESMTPA id 2A90B240065;
	Tue,  6 Apr 2021 13:36:00 -0400 (EDT)
Date: Tue, 6 Apr 2021 19:35:58 +0200
From: Greg KH <greg@kroah.com>
To: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v2 2/2] staging: rtl8712: Remove
 extra blank lines
Message-ID: <YGyb/kB/f1hWx1X6@kroah.com>
References: <cover.1617710602.git.zhansayabagdaulet@gmail.com>
 <f61f6d330bc3fa53d4d420754d1d461b6cfcb2de.1617710602.git.zhansayabagdaulet@gmail.com>
 <YGxsXMonD5TvtUyB@kroah.com>
 <b3d0c548-3460-4b9d-aeee-a550c46a6b66n@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b3d0c548-3460-4b9d-aeee-a550c46a6b66n@googlegroups.com>

On Tue, Apr 06, 2021 at 08:31:21AM -0700, Zhansaya Bagdauletkyzy wrote:
> 
> On Tuesday, April 6, 2021 at 8:12:48 PM UTC+6 gregkh wrote:
> 
> > On Tue, Apr 06, 2021 at 06:09:58PM +0600, Zhansaya Bagdauletkyzy wrote: 
> > > Remove extra blank lines after an open brace to adhere to Linux kernel 
> > > coding style. 
> > > Reported by checkpatch. 
> > > 
> > > Signed-off-by: Zhansaya Bagdauletkyzy <zhansaya...@gmail.com> 
> > > --- 
> > > drivers/staging/rtl8712/rtl871x_io.h | 1 - 
> > > drivers/staging/rtl8712/rtl871x_mlme.h | 1 - 
> > > drivers/staging/rtl8712/rtl871x_recv.h | 1 - 
> > > drivers/staging/rtl8712/sta_info.h | 1 - 
> > > 4 files changed, 4 deletions(-) 
> >
> > This does not apply either :(
> 
> 
> In my git log, both patches, which did not apply, are in 
> "origin/staging-testing". I accidentally sent the same patchset twice, 
> maybe there is a confusion because of that?

If I already took your previous patch series, yes, that would be a
problem :)

Please rebase on my staging-testing branch and see what is remaining and
resend that.

thanks,

greg k-h

