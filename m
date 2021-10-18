X-GM-THRID: 7020448359173324800
X-Received: by 2002:a65:62c1:: with SMTP id m1mr25337264pgv.339.1634583166857;
        Mon, 18 Oct 2021 11:52:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:6fcb:: with SMTP id k194ls2068000pgc.9.gmail; Mon, 18
 Oct 2021 11:52:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwWneDtYbinQjVJxfjV7wU+oJpENwLOGamG0sDbLCdGwradLwmfeNhQuAw1stW7c2ajaEIr
X-Received: by 2002:a63:81c2:: with SMTP id t185mr17654863pgd.114.1634583165394;
        Mon, 18 Oct 2021 11:52:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634583165; cv=none;
        d=google.com; s=arc-20160816;
        b=IIA57wNSuPjcnBkVky9esBSroXmS0sTT8gnqo3AxcXhL+IzllYeR/Y0BTmHdW8nnz2
         5dmtX6qE8oTolG/iajU/5kpePS5L5QxMKw3HX1+k1HK49ZRHmBshG8IyOb41jOf8d+J6
         capWM++Pt7uqpKdDp1HHLsZzap4EsD3QN+vNAzGmrEt3kVscT3Ov7dTVdSwypD6USqlw
         2CDWIU5kUkt9jDsOrEqFilJuFr+YPyHJ67o6uY6FPxnitQ7NBHTFPPC8A8dL88ZTvGDU
         6hx7XI3MPxu7NJXOZjYuo8JdKqtNvAGk1oOsqLvu5a83kYTO8vqJQr48lpwbWiR1971b
         25nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=sosqmBSeagxhGo80AoV65UbNSDMEiOCPRotraZUMJ4Q=;
        b=yrCZgJb0jMB52xgjH0ABmsEqXXt55L6J+a1R4kz8uNXEAZ5dvpjtcT2TVWvx75O5yA
         Jks2Twypw8HpXmB9lrac1Zn7DMG6qYB2AYR+fUcuN3SmfH3P6BupjXKe32EWb7v9UcoE
         sqJqpXQ8SEMcOkkVmkD98lPCVtZOrptKdZFbdjTDOKI1DWxEhAPG95vcTfAJXoVrJ3U6
         +l5QchNY3SMa+shDZkMRo8BrQjiza+X4H9sukiVynn1O1cCuvPrqP5fM8EMBBWMyb1bS
         pAWcaSjezjmfe5G1hci4un/tjimqEk2hHAaoKOaYnc7nyiBCmnxgSsDztLYLz8jw4UnM
         zDdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.64 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0064.hostedemail.com. [216.40.44.64])
        by gmr-mx.google.com with ESMTPS id o2si21053pjj.1.2021.10.18.11.52.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Oct 2021 11:52:45 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.64 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.64;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.64 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from omf02.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id 2C281181FC55A;
	Mon, 18 Oct 2021 18:52:44 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf02.hostedemail.com (Postfix) with ESMTPA id C4E801D42FE;
	Mon, 18 Oct 2021 18:52:42 +0000 (UTC)
Message-ID: <40e4c388a2be3a6fcb99600a8f6897d9542f9344.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: make pointers in
 array const
From: Joe Perches <joe@perches.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>, Julia Lawall
	 <julia.lawall@inria.fr>
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com, 
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
	mike.rapoport@gmail.com, kushalkothari2850@gmail.com, Kushal Kothari
	 <kushalkothari285@gmail.com>
Date: Mon, 18 Oct 2021 11:52:41 -0700
In-Reply-To: <6124760.3TRdS1uSHU@localhost.localdomain>
References: <20211018164431.26462-1-kushalkothari285@gmail.com>
	 <9033544.t7rfKEcqWj@localhost.localdomain>
	 <0f0eb2e6b72bc5188d5eca3aa49eba1d8db0effd.camel@perches.com>
	 <6124760.3TRdS1uSHU@localhost.localdomain>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: C4E801D42FE
X-Spam-Status: No, score=-1.40
X-Stat-Signature: oe1xche7tousc1r148ntagqx8g3zc8u4
X-Rspamd-Server: rspamout02
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX18r6RyFT6rb/5AizqFKb/rnNbkZrgYYTwY=
X-HE-Tag: 1634583162-396583

On Mon, 2021-10-18 at 20:34 +0200, Fabio M. De Francesco wrote:
> On Monday, October 18, 2021 8:22:23 PM CEST Joe Perches wrote:
> > On Mon, 2021-10-18 at 19:18 +0200, Fabio M. De Francesco wrote:
> > > On Monday, October 18, 2021 7:01:42 PM CEST Julia Lawall wrote:
> > > > 
> > > > On Mon, 18 Oct 2021, Fabio M. De Francesco wrote:
> > > > 
> > > > > On Monday, October 18, 2021 6:44:31 PM CEST Kushal Kothari wrote:
> > > > > > Change the parameters of functions from const char *g_fbmode[] to
> > > > > > const char * const g_fbmode[]. This additional const is needed to
> > > > > > allow us to fix  checkpatch warning, as well as being good
> > > > > > programming practice.
> > > > > > 
> > > > > > For the checkpatch warnings, if we have a set of command line
> > > > > > args that we want to check defined as:
> > > > > > 	static const char * g_fbmode[] = {NULL, NULL};
> > > > > > 
> > > > > > checkpatch will complain:
> > > > > > 	WARNING: static const char * array should probably be static 
> > > const
> > > > > char * const
> > > > > > 
> > > > > > Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
> > > > > > ---
> > > > > > 
> > > > > > [...]
> > > > > > 
> > > > > > -static const char *g_fbmode[] = {NULL, NULL};
> > > > > > +static const char * const g_fbmode[] = {NULL, NULL};
> > > > > 
> > > > > You have introduced a logical change (g_fbmode[] entries cannot be 
> > > assigned
> > > > > any more) and a build error (because there is code somewhere that 
> assigns
> > > > > values to those slots).
> > > > 
> > > > I wonder if this warning makes much sense when the array elements are
> > > > NULL.  I don't know if checkpatch could easily detect that.
> > 
> > No, it couldn't really.  It's a line by line parser and most frequently
> > these are on separate lines.
> 
> Sorry but I don't get it. For sure I'm missing something...
> 
> I guess that checkpatch.pl warned Kushal because it detected that the array 
> of pointers was assigned with something and so it output that "static const 
> char * array should probably be static const".
> 
> What I cannot understand is why it _can_ detect that the array is assigned 
> with some values but it _cannot_ check that those values are 'NULL' and so 
> avoid to warn.

It's a simple rule.

char *foo[] = { should probably be const char * const foo[] = {

There are exceptions and that's why the message output is a warning
and the text includes the word "probably" and not "must".

It's up to the reader to determine if the warning is valid or not.

That's true for _every_ output error, warning or strict message
checkpatch emits.

checkpatch is a stupid brainless script doing trivial pattern matches.

People should _use_ their brains and not blindly trust and follow
brainless scripts.

And especially, everyone should compile and test changes _before_
submitting patches.

It doesn't matter if a tool that produces a warning is checkpatch,
sparse, coccinelle or a compiler.

Validate and test _before_ submitting a patch.



