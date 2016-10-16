X-GM-THRID: 6341882177714651136
X-Received: by 10.66.26.116 with SMTP id k20mr4844570pag.50.1476643170906;
        Sun, 16 Oct 2016 11:39:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.40.182 with SMTP id s51ls11591434ota.14.gmail; Sun, 16 Oct
 2016 11:39:30 -0700 (PDT)
X-Received: by 10.157.10.199 with SMTP id 65mr3580924otq.112.1476643170478;
        Sun, 16 Oct 2016 11:39:30 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id um12si4424066pab.2.2016.10.16.11.39.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 11:39:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id r16so11237128pfg.3
        for <outreachy-kernel@googlegroups.com>; Sun, 16 Oct 2016 11:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=df7SZ9KhXnrn0mlbYm49WJowTAxFbYmLRNn1bXgPWPU=;
        b=ztSq6ikRRIpiN23BIeZUuFSxEQ4hwHPLNOc5prOLBOdQWZIJYWH4Oic5oS3w37knLt
         Y7kG9LUjYZ8MGhOatnssDFzzv1DMAdRchIfy/9gQbpuGCiMRBYjo1IV6Qqsw13HlF9Bl
         uHe5mbJmjqZslRjH2bA9VvXremjCz9Es/RwkHccewUHJ7Zhm1BbeXBwmqt4ChE++TW8+
         IV7EfNrGB3DV/kAu+rXjl0nye3nAZ1wijplcTDf5QeiEH/xKRmxgRdXlUUNDhd7NWNp8
         BfvnJkaKNmQQX+Dtexxlj+L8LMXcMgYdZtcQYFASJ/gz/qhpVHCkxat6sAfKjPLtvTs2
         KNYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=df7SZ9KhXnrn0mlbYm49WJowTAxFbYmLRNn1bXgPWPU=;
        b=Ioy7fYFlTlL4LriEq8ULP+hNtZvks8XqK/vTPjN+GTmF/zFj1d4AMuPDCW8q55UG+U
         G4fEAiHtZDbUyd7fE/emTuQK2bcIby0ganioWsCjhKqYfGMsLjTLJIikiPxIqDRsE5FJ
         YF/+n7zRbvXeTecpEBW0qFnaex8ISqeoWaEjQGp/Tq29sF0BrGTbDh55328VS5n8FUTv
         kxqdTgohf3j4gAqVucubJ4KW+MTVe8NlXJ9UwGBvEJz/7duvKPblpKYCUMJrfcR8Rq9P
         /uyu85DH4Ay3Hb6t/7oKvsQW3hzerueVsCstC50/hqxo6wRKY6ssz87qWY1+lTwYM++w
         OFIg==
X-Gm-Message-State: AA6/9RlD41DPULzsWNllHE2gRAcBUvYXDevHRYjzvCFWT7Zsu0KXwm6CyhkL2NFEjmr+7w==
X-Received: by 10.98.155.152 with SMTP id e24mr32254484pfk.99.1476643170094;
        Sun, 16 Oct 2016 11:39:30 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id ym3sm5138424pac.42.2016.10.16.11.39.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 11:39:29 -0700 (PDT)
Date: Sun, 16 Oct 2016 11:39:27 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eraretuya@gmail.com
Subject: Re: [Outreachy kernel] Coccinelle Constification
Message-ID: <20161016183926.GA2242@localhost>
References: <20161016022145.GA2215@localhost>
 <20161016030416.GC2406@Socrates-DK>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161016030416.GC2406@Socrates-DK>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Oct 16, 2016 at 11:04:20AM +0800, Eva Rachel Retuya wrote:
> Hello Liz,
> 
> I'm a fellow applicant so I might be wrong on some things but let me
> share my experience so far with coccinelle usage.
> 
> On Sat, Oct 15, 2016 at 07:21:46PM -0700, Elizabeth Ferdman wrote:
> > I'd like to try doing constification using Coccinelle but I'm having
> > trouble starting on this task. Bhumika Goyal has submitted lots of these
> > and I've looked at the scripts she uses but I'm very confused about the
> > process.
> > 
> > Do you identify the structs that
> > need to be const first, then write the cocci script? If not, then what
> > is a basic script to use to find structs that need to be const? I can't
> > find any specific documentation that pertains to constification and
> > coccinelle.
> > 
> 
> It depends on your approach. Sure you can manually identify by code
> tracing if the struct qualifies to be made const then make a script to
> write the changes esp. if there are lots of places to be changed.
> 
> You can also define a set of properties/situations where declaring the
> structure const is justified like this:
> https://git.kernel.org/cgit/linux/kernel/git/gregkh/staging.git/commit/drivers/staging?h=staging-testing&id=1c099ed63f8363228a0b075a25511c9feb90e03f
> 
Hey Eva,

Thanks so much for your reply and thanks for this link. That criteria is
very helpful esp because I'm a beginner in C and that clears up more of
what was going on in the long cocci script. It's a good idea to search
in greg's staging tree-- I had just been searching inside the
outreachy mailing list for the most part.

Liz

> and from there write your script so that it'll detect instances where
> the criteria you previously defined is met. Now that covers detection,
> for making the changes I suggest you write another one to cater
> specifically to a specific driver and also include the transformation
> that needs to be done.
> 
> About the basic script, I suggest you try to match any struct
> declaration first using the disable optional_qualifier isomorphism
> stated on the project's small task 1. Start small then build your way
> up.
> 
> Once you get your basic script running, coordinate the rest with Julia.
> Bhumika's patches are great reference, just observe the 'criteria' at
> which structures can be deemed 'const'.
> 
> I hope I clear some of your confusion,
> Eva
> 
> > Thanks,
> > Liz
> > 
> > -- 
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161016022145.GA2215%40localhost.
> > For more options, visit https://groups.google.com/d/optout.

