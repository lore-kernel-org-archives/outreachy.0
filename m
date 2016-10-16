X-GM-THRID: 6341882177714651136
X-Received: by 10.200.42.12 with SMTP id k12mr5277724qtk.78.1476587068099;
        Sat, 15 Oct 2016 20:04:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.14.207 with SMTP id 198ls1468275ite.7.canary; Sat, 15 Oct
 2016 20:04:24 -0700 (PDT)
X-Received: by 10.98.78.142 with SMTP id c136mr2634608pfb.5.1476587064291;
        Sat, 15 Oct 2016 20:04:24 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id um12si4072133pab.2.2016.10.15.20.04.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 20:04:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 128so10165178pfz.1
        for <outreachy-kernel@googlegroups.com>; Sat, 15 Oct 2016 20:04:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=qOMQboJPq544LK+XcQeZfqR2tvtquen/8P//PksLDM8=;
        b=rt2N5YoQjabqjJRa/1FCoMPzzPIxa54eRDeKNGLOWSCMUhgZrB+zr7TGkJOyPKmco4
         fDD/q6M7msTAKpsK4G0uE8JLJctmV87I0b03ENkmiF7dw7dKR/kkcQcGF1gUTupWVdmY
         /sTlHP8cT7GttDiDNJH4S1siWvm4hgwuZ735Pylnrm9rsQKkivCVFygDdGHSCg7bYPxa
         aV78Wp5tIWvaViQgRgWcL/A2ETyF6Cp0S+52DMcXjj36Yo+m9VY0BCT3G245Pt/78JkL
         4sPSDUei5UefgNVLoOLaIrcul/Y3x5MbgOgrBZ9QoJKhxQVt81AOdmOGmynOyIVMHLkK
         Wz5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=qOMQboJPq544LK+XcQeZfqR2tvtquen/8P//PksLDM8=;
        b=CY4JWIgqpwLh0cJi8Z9j62v83OA4N6KDdzQHG82KlWHEGun412BaOraUZ3Neun4U6v
         aYoEGawpLpdjXl8wEqBUdDRjlR9EYVeUTk0NPZluZdCzhHfHMfUCkXMdZ+OuezGFgzsr
         M9myW6RktdssTDRs1SALYh+27CnPKdKLQT84g2v3ELm2/UawCeCpf3Mmp62YSPFZKKq4
         voYRYVBemKyHE5xGWB1ltHxlKj/7CyXKX9emOBqour7o4tfh0w3bgNiBsFahRXIRtuWD
         quG0prC/uIGd2AmI3GYI/QHif8zItLeIu80vcZtoX3RgEC+Xx8bA0g+fqwSjWSEfuZS2
         bQiw==
X-Gm-Message-State: AA6/9RljrbE4P86B7YV5tONFufCgk/koe6tzrD+A2d8Cq3kGFEqVI359ie/jxb3SrURkDQ==
X-Received: by 10.98.31.154 with SMTP id l26mr28740453pfj.87.1476587063758;
        Sat, 15 Oct 2016 20:04:23 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([103.14.62.226])
        by smtp.gmail.com with ESMTPSA id p88sm37854598pfi.51.2016.10.15.20.04.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 15 Oct 2016 20:04:23 -0700 (PDT)
Date: Sun, 16 Oct 2016 11:04:20 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: Elizabeth Ferdman <gnudevliz@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Coccinelle Constification
Message-ID: <20161016030416.GC2406@Socrates-DK>
Mail-Followup-To: Elizabeth Ferdman <gnudevliz@gmail.com>,
	outreachy-kernel@googlegroups.com
References: <20161016022145.GA2215@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161016022145.GA2215@localhost>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello Liz,

I'm a fellow applicant so I might be wrong on some things but let me
share my experience so far with coccinelle usage.

On Sat, Oct 15, 2016 at 07:21:46PM -0700, Elizabeth Ferdman wrote:
> I'd like to try doing constification using Coccinelle but I'm having
> trouble starting on this task. Bhumika Goyal has submitted lots of these
> and I've looked at the scripts she uses but I'm very confused about the
> process.
> 
> Do you identify the structs that
> need to be const first, then write the cocci script? If not, then what
> is a basic script to use to find structs that need to be const? I can't
> find any specific documentation that pertains to constification and
> coccinelle.
> 

It depends on your approach. Sure you can manually identify by code
tracing if the struct qualifies to be made const then make a script to
write the changes esp. if there are lots of places to be changed.

You can also define a set of properties/situations where declaring the
structure const is justified like this:
https://git.kernel.org/cgit/linux/kernel/git/gregkh/staging.git/commit/drivers/staging?h=staging-testing&id=1c099ed63f8363228a0b075a25511c9feb90e03f

and from there write your script so that it'll detect instances where
the criteria you previously defined is met. Now that covers detection,
for making the changes I suggest you write another one to cater
specifically to a specific driver and also include the transformation
that needs to be done.

About the basic script, I suggest you try to match any struct
declaration first using the disable optional_qualifier isomorphism
stated on the project's small task 1. Start small then build your way
up.

Once you get your basic script running, coordinate the rest with Julia.
Bhumika's patches are great reference, just observe the 'criteria' at
which structures can be deemed 'const'.

I hope I clear some of your confusion,
Eva

> Thanks,
> Liz
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161016022145.GA2215%40localhost.
> For more options, visit https://groups.google.com/d/optout.

