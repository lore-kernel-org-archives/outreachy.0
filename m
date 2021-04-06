X-GM-THRID: 6945343933741268992
X-Received: by 2002:a05:6102:d0:: with SMTP id u16mr17290604vsp.28.1617717284564;
        Tue, 06 Apr 2021 06:54:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:fa8c:: with SMTP id f12ls402117vsq.5.gmail; Tue, 06 Apr
 2021 06:54:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyXkkTrN3opdsM6vmzz/uDh6OXT828mgivaUtzcEKnBw2zDKBYuPzj4nT0JoZksL6hgKe+N
X-Received: by 2002:a05:6102:22c4:: with SMTP id a4mr16969601vsh.30.1617717283504;
        Tue, 06 Apr 2021 06:54:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617717283; cv=none;
        d=google.com; s=arc-20160816;
        b=s/0BL8PYqt6jwKgWRx5ZfL1mo8Hec0oG3khEsjQ8pZS0rBLsfKwnN7Zzq32NUsYG8G
         1y5jMQkA8uyf1z3h2hvt5XpEE+EL4YmNDCKVmHVTtjeKHQdHSsfDJ0ppOSUEZ++YiL4V
         BIq8KTF+1oaO/8cyB8eNELUj2QoaJ6DCR4RxPvmCO3ungZL8107eGKUS/suL3LxQXjNs
         Ft4hOHfkglEJTg2W9e1a/NeSOR/muttL5cwM/YVhsh/kc1f9+N74D9M9a4mFV/Lc0BNN
         Bf69NQsIoHZ3uCTVXTvWUs0YpegbNPpedgazI9JPXlGGpP/nR5afbupJBGhwDKZcBgNi
         Eb7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=q0br3LVtiH0VQyQ6yxA7PAGWkfIqnUeGS8aUK9LUVuc=;
        b=UkOctCGYOWax2JtAWtxIVF2MMeVVSi2o6wsEfpOguKlBkWVx3Fd2JF5uEbSYLJlXyU
         Jc7/I4C8VC6NKkIUxv/rJ6IUsOnEX/4zJHkhkHqMlzfOxSUPSrVliV/dqFu+BdAi09J8
         eZAfWqXq7R1oHJlrAI7LfzHmDB7NN+98JkPkffH5imJiA4Y2DEIKcvfeVg+bYOZnLaUy
         OIyxCdR7agMCwlQIRsYgg9/tGxZRaZhJf2aGxYeWyibBTTGQ2tocNpivHgGDvUNPVN3e
         wNXqLaDtbk5DGMWkJpd1CHuGuMpJ9VG7031LMTiUyMxD4sEvTwIRkXivizPKh46rUAwZ
         DThg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=DHRgfox5;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=eY1a1Py8;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.29 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com. [66.111.4.29])
        by gmr-mx.google.com with ESMTPS id w10si88106vse.1.2021.04.06.06.54.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 06:54:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.29 as permitted sender) client-ip=66.111.4.29;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=DHRgfox5;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=eY1a1Py8;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.29 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
	by mailout.nyi.internal (Postfix) with ESMTP id 1B2F45C017C;
	Tue,  6 Apr 2021 09:54:43 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute7.internal (MEProxy); Tue, 06 Apr 2021 09:54:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=q0br3LVtiH0VQyQ6yxA7PAGWkfI
	qnUeGS8aUK9LUVuc=; b=DHRgfox5fHqm/hQYLT2JDhvpYZigqBnc7WNOI0CBKr1
	meFJdR1+haN2znd5iSuR6y7xD49AkeJc3RSysZMo+NsxFDYh7ETOACVH87BZ1QER
	8/QqO5fCmmJu0ot2ne6deAvkHNVXj+UuDsx/Gz8yv6JHDW6vSdcRUo5lVUeBP0Bv
	HqTIxftT69E9eO2oKrMN8Fq0DLD23Us69IrvQjodzF5268RQJ2h3v5JoAol4gRTN
	4nB/AUdFBPyZS+3vO90OJd1nFmeuZ30Vyeq2RWuMdl7hs1u08h8BN1CKdhSyvAQl
	i32ODcIuLkM/uQ1AHByl2Frs314Lye8v+AsA/cAyevA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=q0br3L
	VtiH0VQyQ6yxA7PAGWkfIqnUeGS8aUK9LUVuc=; b=eY1a1Py8vF+4j4kgda0Sh9
	HBP9iW9peHhJYCIZyHIyfTcRemDy74FN1FY4LvPhFQbkNbbrO14sNeJYjvxkRwQI
	zeyWl1aOOGT8tYkeF3HBspl0JZjIqPSimbcCbPE3uqtTMPg/d+PFN6MR5WkPr1wC
	606RdJHotdL4AImTUfEzozsUqh/VJAi7PVON7mRXekUVVQJIkOcRq5+QC3bQ27nH
	OEN1GVHWS2RjYd63KcPscMm4iiHLqNc7eIj46IEXY8nW9PEJEmi3XiHyG3a02T9+
	EXEIHuHgGl5+ceausajXZCiLWLWV1Dq2npzUq642im6wqd3lOw+vqdG8MF1m3hYw
	==
X-ME-Sender: <xms:ImhsYIj-yy4jUvBqjUJOUYX5CY4jRgSi5H06ilWrXunviRC5o09B8w>
    <xme:ImhsYA8RXzElG0qJMLvd57Rmno1TWLLt0DWubqzNtr0WBAttfoLDbgnzl1849lW8y
    19JhbKSTjh70w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudejhedgudeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcu
    mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucggtffrrghtthgvrhhnpeekudehhf
    ehgffggeegtdeuieffheefjefgudeitdekgeeikeefgeduhffgjeekgfenucffohhmrghi
    nhepkhgvrhhnvghlnhgvfigsihgvshdrohhrghenucfkphepkeefrdekiedrjeegrdeige
    enucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgv
    gheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:ImhsYM-yxssyNiO19mNZgshJIaoukXtmM0_UiL0sQ8Hv5IcIQko28A>
    <xmx:ImhsYBAJv2Lph4dfMta1GgcHuqzf_tyx6HJMqDweIMPdh9I9SPp8ow>
    <xmx:ImhsYExFOvf-8zq8WV9F3HoMQ8reLuiekrWES7GgfEPOpz9JELr67g>
    <xmx:I2hsYMtMOShshUfvGiQIGccR_0f9Ch0XXjeWaGksSANf3VmvJ3U3uw>
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	by mail.messagingengine.com (Postfix) with ESMTPA id 1CADF1080066;
	Tue,  6 Apr 2021 09:54:42 -0400 (EDT)
Date: Tue, 6 Apr 2021 15:54:39 +0200
From: Greg KH <greg@kroah.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: Vaishali Thakkar <vthakkar@vaishalithakkar.in>,
	Helen Koike <helen@koikeco.de>,
	Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Outreachy contribution period is open -
 Welcome applicants
Message-ID: <YGxoH2w0729cKx6U@kroah.com>
References: <CAK-LDb+xT==9wMXR8VOFpVygqfZ+o_v1NZsRpT1k0vtmQMAkKw@mail.gmail.com>
 <0c23560d-f05f-008c-5cc1-48b06af8d0c0@xs4all.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0c23560d-f05f-008c-5cc1-48b06af8d0c0@xs4all.nl>

On Tue, Apr 06, 2021 at 03:45:43PM +0200, Hans Verkuil wrote:
> Hi Vaishali, Helen, Greg,
> 
> On 30/03/2021 09:21, Vaishali Thakkar wrote:
> > Greetings potential Linux kernel Outreachy interns!
> > 
> > Please read this *entire* email, even if you have applied in the past.
> > 
> > 1. Our contribution period process works entirely via this mailing
> > list. So, make sure that you read the emails I/Helen send over here in
> > the next few weeks. To help you with Linux kernel's patch submission
> > process we have a tutorial here:
> > 
> >     http://kernelnewbies.org/Outreachyfirstpatch
> > 
> > It is not necessary to contact any individual mentor before starting
> > the tutorial. Feel free to ask your questions in this mailing list.
> > That way you'll be able get quick answers with the issues you're
> > facing.
> > 
> > 3. Please avoid sending patches for the *drivers/staging/media*
> > directory as Greg can't pick them in his tree during the contribution
> > period. Also, while you're required to submit patches in this mailing
> > list, please make sure to use *get_maintainer.pl* as well. So that you
> > can cc respective mailing list(s) and maintainers.
> 
> I missed this point. I am perfectly willing to be reviewer for
> drivers/staging/media* patches. I noticed a bunch of otherwise perfectly
> fine and useful patches for staging/media drivers, so it would be a shame
> if they are skipped just because staging/media is maintained by the media
> subsystem and not by Greg.
> 
> Is there any objection to that?

None from me, it's just that I can't take them so traditionally the
"quick review and reply" was not happening which is what was needed
here.

If you can take them, wonderful!

thanks,

greg k-h

