X-GM-THRID: 7020422968837668864
X-Received: by 2002:a05:6602:13d3:: with SMTP id o19mr17935696iov.18.1634646369275;
        Tue, 19 Oct 2021 05:26:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:cd83:: with SMTP id r3ls2138926ilb.3.gmail; Tue, 19 Oct
 2021 05:26:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxVFHtnEg28EVdClve5NhLM+dc/Bb+MT+HfCw+q9XsZUoi4d/0PdMDrSd2CTdoF1TxZfGmy
X-Received: by 2002:a05:6e02:1ba8:: with SMTP id n8mr17292029ili.215.1634646368417;
        Tue, 19 Oct 2021 05:26:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634646368; cv=none;
        d=google.com; s=arc-20160816;
        b=gJWe476uFrjiYVYtxH4ebaiSS3klyQKOgyFyZQaavpgImbzYMZ6IxGYBAhbfyzUp0W
         NgBy6Y6DJxQissFTPUz2Uu3TjQY6RtQ2E6HXSHtJFfxK/N0KatWtd4/pt7U3BuaP17lR
         3D6HTDpp6oz+esnndhpJlHLYOYYzF80HlMXD3krGhCOxGtiAKA4sR77vXvTIkfRIR+z7
         JHjSQbjx4PqXvaLNubA5FRpM5beu4N6+TaCVmFRZIHmE6E5SDc0wm/59AEniu7qfCo0X
         p+7l9JI2WA8pLU+8TJy0vc4vHUhOAja8LRYy5PbUmXsTDgeclaT92XpDsWmRuFugIK1Z
         E7DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=mwW+iPSHDExcKWAd1EgM76nBywI+/S2W1vn5+KbRrpQ=;
        b=vLD33oWo64dYT+0+v1q2WtijaQMgq28YyBxaVpS/Ep4Bn9/KFKduExdoTLUna4D1WK
         H0OeQL83RfAgpHB3bHzzXhcdqyORKK/LCN7d2MVL8cI6SvroZECfg6TVsrJA6ra/L2hH
         KJz+5g0pDt/ilG2ySmgEBSivWnLw+OoravWThFJkkGU633l0GsnKuXPGziQx65KbOMXs
         i6z/whkRGLP/4aQmGXtN0gsezChN0vZGSoi61hKhuP8aetHiqvOWf+03SqkFL4YziRDk
         nLqVMdh/xQ5KYlnk2uq25zCSWEN5MeUz6zYg3q56a9tzML4C3vdkbyjCALooculV2a8M
         IUrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.125 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0125.hostedemail.com. [216.40.44.125])
        by gmr-mx.google.com with ESMTPS id h10si342243ilq.2.2021.10.19.05.26.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Oct 2021 05:26:08 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.125 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.125;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.125 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from omf07.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id B7607100CD86D;
	Tue, 19 Oct 2021 12:26:07 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf07.hostedemail.com (Postfix) with ESMTPA id C18ED315D74;
	Tue, 19 Oct 2021 12:26:06 +0000 (UTC)
Message-ID: <4c6a85a4934ef977eee07fb7e38b07b8061bfce4.camel@perches.com>
Subject: Re: [PATCH] staging: vt6655: Fix line wrapping in rf.c file
From: Joe Perches <joe@perches.com>
To: Karolina Drobnik <karolinadrobnik@gmail.com>, Greg KH
	 <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Date: Tue, 19 Oct 2021 05:26:05 -0700
In-Reply-To: <810a4e29b0c54520a30cae4d37fde0a59ea3d83b.camel@gmail.com>
References: <20211018150526.9718-1-karolinadrobnik@gmail.com>
	 <YW2O3wC8wMEKS3Ub@kroah.com>
	 <84f3c940fedb961e6e7e88d47c3d15e598bc32c3.camel@perches.com>
	 <810a4e29b0c54520a30cae4d37fde0a59ea3d83b.camel@gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: C18ED315D74
X-Spam-Status: No, score=-2.90
X-Stat-Signature: 87uixfj7rnyqhe7tuq9g4m97zeze61wg
X-Rspamd-Server: rspamout01
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX1//BRstIUjWag0uUzgJvaEENDABgRIeRoI=
X-HE-Tag: 1634646366-419216

On Tue, 2021-10-19 at 11:59 +0100, Karolina Drobnik wrote:
> Hi,
> 
> Thank you very much for your comments.
> 
> On Mon, 2021-10-18 at 17:12 +0200, Greg KH wrote:
> > Also, these are all just fine as-is for now.  A better way to make
> > these lines smaller is to use better variable and function names�
> > that are shorter and make sense :)
> 
> I have v2 ready but I'm not sure, given the Joe's patch, if my solution
> is a satisfactory one. I didn't jump on such refactoring as I'm still
> learning about the codebase/process and didn't want to muddle the
> waters (...more than I do already).
> 
> Greg, what would you prefer? Should I back up with my patch, pick
> something else and let Joe's patch be merged?

What I suggested is not a patch it's just an example.

There's quite a lot of code in that driver that _could_
be updated/refined/refactored (none of which _I_ will
submit), but it's up to you do whatever _you_ want.

You could:

o remove the Hungarian notation
o convert the mixed case variables to snake case
o remove unnecessary function definitions and make them static
o refactor various functions

Generally, I prefer refactoring code to make it simpler or
more like the generally preferred kernel styles.

Another option would be to submit a completely new driver for
this device based on this existing driver as what's there isn't
particularly great IMO, but read the vt6655 TODO file and see if
there's something you actually want to do there.

> Also, I have a question about the patch if that's ok :)

It's OK to ask.

> On Mon, 2021-10-18 at 22:56 -0700, Joe Perches wrote:
> > Maybe some refactoring like:
> > ---
[]
> > diff --git a/drivers/staging/vt6655/rf.c
[]
> > +       uChannel--;
> 
> I see that you introduced `uChannel--` to further tidy up the lines
> with `[uChannel - 1]`. In general, is there anything wrong with
> indexing like `i - 1`?

Depends on how often it's used and if it's ever missed accidentally.

> What's the preference here? DRY things up as much as possible?

Up to you

> I'm asking because when I was reading this line, at first, it wasn't
> clear to me why we could decrement it (example though: "Was this
> modified earlier? Do we need to "correct" it?").

Generally, just try to make code clear for a reader.

When you do that, the compiler will also do a better job
at what it does.

If you look at the callers of the function, see if it's better
to decrement the argument instead.


