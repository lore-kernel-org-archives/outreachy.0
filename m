X-GM-THRID: 7020448359173324800
X-Received: by 2002:a2e:9693:: with SMTP id q19mr1562644lji.224.1634583665565;
        Mon, 18 Oct 2021 12:01:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:5c87:: with SMTP id q129ls2972414ljb.3.gmail; Mon, 18
 Oct 2021 12:01:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxebuVLmDCXcA1nP+YjvkW5eGwWkqfqWXksyE7M6Au25K91yw01QVKNIhyFUPXYe2h5PC6k
X-Received: by 2002:a2e:bf0d:: with SMTP id c13mr1655727ljr.150.1634583663858;
        Mon, 18 Oct 2021 12:01:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634583663; cv=none;
        d=google.com; s=arc-20160816;
        b=XZFm9+MCxE2Hk1tH+jiJi9K2HvJDZAZ4lbpYbtAf23Dn7Q6EX9bW40xHb1eRJ77Pga
         CaeEmv9xzHqoNpJRjnWhX3BmV4BIFE5ibbYLGoUY+HJd59eDCAcpBOUNq/ll3v9LBvwh
         VHoC9nN02TICkzeMc5q1Ss0QMked4+P6QKzlfrlR+Z6Tsgwb638dtBwvseuB3OUNrmR9
         dXg33dCZqS3VSwtsc4wFhOa3UdgbKp2Ef2R+deTvvuCrzzIQTTgkXYsZPzXoonSptXm+
         TCpUcqvB1YvVOJ3ijnS34pQXlROne1ZtV+ydeo80x0o1QAVvADrzlGTJB0SxV5fwBxZC
         7bYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=+5CVQGseAEclVzdqKc+Dd49GtYnM7HFbD43YKQMPvSQ=;
        b=08fxRUlG2ojJCLhTLwhot5KYOmFJj0gBGFDcRJayjmjUe9zL0Ex01p2LSvoLzxjpci
         lIvFXXJ0kNXz23UvGyg6uYEN0/vo0BWS5LHHPnUpvSpxIPSXUdKfSLnPacrap3f46xfO
         wx4mUOh/gFYSQM2/3iSSBTv15QsUaLFFLdK4O9rc73+vhzeTrlCRmf8OZT9OjEW9KWTA
         vs95d0sNo5LEu3dVqFeHauJbnraRAGLUavQXmUAAruYutQQk9H2CScTbabxEtQnT3aGq
         pXyP3CHsNA2Q70Sd1uNKQW09wFrk7j0VaKe8UIc0WhPZFBQWUy7JRavGpMx+FqIS4seO
         Xa5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="L/K7eGST";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::533 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com. [2a00:1450:4864:20::533])
        by gmr-mx.google.com with ESMTPS id g28si903811lfv.3.2021.10.18.12.01.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Oct 2021 12:01:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::533 as permitted sender) client-ip=2a00:1450:4864:20::533;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="L/K7eGST";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::533 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x533.google.com with SMTP id d3so3210279edp.3
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Oct 2021 12:01:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+5CVQGseAEclVzdqKc+Dd49GtYnM7HFbD43YKQMPvSQ=;
        b=L/K7eGSTA4wVEdU4m9+6gRvPPVwEJ+BqJvmtki68wDNwkrDgVY8brszN0xac1RyyYV
         LRf7At7sgcNFJdnBrIL1mwlj/a0May0vG4Aqv3eR2NFftaNCiF/KzSCr9dpibSwcpbbc
         iKo4q4gsy1DkrFeTCPmJz23eZUtlYg6MMtawzfHWiqL9JmLPXrPF71kvrPxhzJKJdV6r
         EDB5pJEb8/7gLnE8B3kFPm/rVSiZwSGf63+6NkcRLmh5s8bMcHAhpadW7aIjq/ZVokHI
         l9p80/Ui6neTAo+QGbtbzbWq84eiRLTbX8YwKDdd4iGEOvIDJMGxbGodLIRQ9Y962X/G
         K7LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+5CVQGseAEclVzdqKc+Dd49GtYnM7HFbD43YKQMPvSQ=;
        b=ISqb6hWhKyfYW73mJW6U4fbzOdfx68uAKVLk0ibCXHIhjJxPGa0dqXiqs4Wd4/5h+G
         q33FsnHWnqZiY9DWPKdW1tmeWvzgt3shi4hwNBZMI2Nkjm9H1nGhwuwLb1yrYPsuspBJ
         2a82mKlfLT3yhQEc/g3w4I7jTu1YHmKL0Lii7LgteF2Z5XnOR/2QlvB/tUhpNVBuYUSe
         MNvc+fL5fqXLVAs6UimW68J/zWxnKa7uoQMry2qvPcFPRbOOYpPp2n3ym6hKjlmmnAU+
         2yYEqpxpIIY1S1vtu4Ls0KweNM2SHzFt7vHo0HBEtblys1F02wXKZ2NJZutaydJrVeHF
         OX+w==
X-Gm-Message-State: AOAM530ampuOw7vRymm5IO4/lsZcVzYTNn0trVzorVmhVj+43MRnoYhm
	5GtRHk2cjC2DDCCZ2RCCzDQ=
X-Received: by 2002:a05:6402:5112:: with SMTP id m18mr45860829edd.101.1634583662714;
        Mon, 18 Oct 2021 12:01:02 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-47-104-180.retail.telecomitalia.it. [79.47.104.180])
        by smtp.gmail.com with ESMTPSA id p25sm10083012edt.23.2021.10.18.12.01.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Oct 2021 12:01:02 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>, Joe Perches <joe@perches.com>
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, mike.rapoport@gmail.com, kushalkothari2850@gmail.com, Kushal Kothari <kushalkothari285@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: make pointers in array const
Date: Mon, 18 Oct 2021 21:01:00 +0200
Message-ID: <1888062.QCrhZ3JNfs@localhost.localdomain>
In-Reply-To: <40e4c388a2be3a6fcb99600a8f6897d9542f9344.camel@perches.com>
References: <20211018164431.26462-1-kushalkothari285@gmail.com> <6124760.3TRdS1uSHU@localhost.localdomain> <40e4c388a2be3a6fcb99600a8f6897d9542f9344.camel@perches.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="ISO-8859-1"

On Monday, October 18, 2021 8:52:41 PM CEST Joe Perches wrote:
> On Mon, 2021-10-18 at 20:34 +0200, Fabio M. De Francesco wrote:
> > On Monday, October 18, 2021 8:22:23 PM CEST Joe Perches wrote:
> > > On Mon, 2021-10-18 at 19:18 +0200, Fabio M. De Francesco wrote:
> > > > On Monday, October 18, 2021 7:01:42 PM CEST Julia Lawall wrote:
> > > > > 
> > > > > On Mon, 18 Oct 2021, Fabio M. De Francesco wrote:
> > > > > 
> > > > > > On Monday, October 18, 2021 6:44:31 PM CEST Kushal Kothari wrote:
> > > > > > > Change the parameters of functions from const char *g_fbmode[] 
to
> > > > > > > const char * const g_fbmode[]. This additional const is needed 
to
> > > > > > > allow us to fix  checkpatch warning, as well as being good
> > > > > > > programming practice.
> > > > > > > 
> > > > > > > For the checkpatch warnings, if we have a set of command line
> > > > > > > args that we want to check defined as:
> > > > > > > 	static const char * g_fbmode[] = {NULL, NULL};
> > > > > > > 
> > > > > > > checkpatch will complain:
> > > > > > > 	WARNING: static const char * array should probably be static 
> > > > const
> > > > > > char * const
> > > > > > > 
> > > > > > > Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
> > > > > > > ---
> > > > > > > 
> > > > > > > [...]
> > > > > > > 
> > > > > > > -static const char *g_fbmode[] = {NULL, NULL};
> > > > > > > +static const char * const g_fbmode[] = {NULL, NULL};
> > > > > > 
> > > > > > You have introduced a logical change (g_fbmode[] entries cannot 
be 
> > > > assigned
> > > > > > any more) and a build error (because there is code somewhere that 
> > assigns
> > > > > > values to those slots).
> > > > > 
> > > > > I wonder if this warning makes much sense when the array elements 
are
> > > > > NULL.  I don't know if checkpatch could easily detect that.
> > > 
> > > No, it couldn't really.  It's a line by line parser and most frequently
> > > these are on separate lines.
> > 
> > Sorry but I don't get it. For sure I'm missing something...
> > 
> > I guess that checkpatch.pl warned Kushal because it detected that the 
array 
> > of pointers was assigned with something and so it output that "static 
const 
> > char * array should probably be static const".
> > 
> > What I cannot understand is why it _can_ detect that the array is 
assigned 
> > with some values but it _cannot_ check that those values are 'NULL' and 
so 
> > avoid to warn.
> 
> It's a simple rule.
> 
> char *foo[] = { should probably be const char * const foo[] = {
> 
> There are exceptions and that's why the message output is a warning
> and the text includes the word "probably" and not "must".
> 
> It's up to the reader to determine if the warning is valid or not.
> 
> That's true for _every_ output error, warning or strict message
> checkpatch emits.
> 
> checkpatch is a stupid brainless script doing trivial pattern matches.
> 
> People should _use_ their brains and not blindly trust and follow
> brainless scripts.
> 
> And especially, everyone should compile and test changes _before_
> submitting patches.
> 
> It doesn't matter if a tool that produces a warning is checkpatch,
> sparse, coccinelle or a compiler.
> 
> Validate and test _before_ submitting a patch.
> 
Yes, after some more thinking about this matter I agree with you :)

This is why I wrote another message for explaining my new POV some minutes 
ago.

Thanks,

Fabio





