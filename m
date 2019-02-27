X-GM-THRID: 6662431164424257536
X-Received: by 2002:a17:902:a60c:: with SMTP id u12mr1026151plq.114.1551289339907;
        Wed, 27 Feb 2019 09:42:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8a85:: with SMTP id p5ls1079223plo.4.gmail; Wed, 27
 Feb 2019 09:42:19 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZTQEuPldcR5Bx/toALP8/iKNTqxoPu+Bwwfmj/vIyb9yaRHIgNE5THMS/7Ba17rR/k5hik
X-Received: by 2002:a17:902:b715:: with SMTP id d21mr1053298pls.141.1551289339279;
        Wed, 27 Feb 2019 09:42:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551289339; cv=none;
        d=google.com; s=arc-20160816;
        b=FLQ+4/wa7BI62i447z8PGIL6x5nQ7LWDAagFSmpbEp0TQqEihxUSS4XytdiSbVsO3k
         0BNITRxKH9wRDz+cBOT9DLOocLXyBVcrDNFp6nyEQCwwnxTb2J0Bdt+EL4PUlofolUZi
         4CaynWGv21PT1wEZTxpboOwfewiwujQZFgRbXhOWN513+DpkvjhgycgDTlMdF69QkWyl
         bGI3lJjDLrydc2A485PyZdwLGoT2Zf+VBhYRmvQXKpT17fxwf1tCc70J/VmZSs4E/Y1p
         MpcHcky9ovrV0paQK5GlGtS4vTZoO0+f5qS2YwM9RsolDcQPuhGVGmbPlvqySAVgGrI4
         hZ1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=c8TUYdgjZHhKCnNO0/OUTcyHVSPn5vN2pqch7uCj5f0=;
        b=HZrJjwE9poNduGsj0x3VlhSufTmrxu0HwcHEZpa+aAkf3MbNff2nfh7Bcz6ldrKlug
         buek+3yewaVQqk1b1vbJcWH13aazW4sxWUQlc9cPUTyeUJqLFs4DEk452pNRQ4SDFkWg
         kmljHTtDy02JdwKJnW8/jKbT6B+7HgxqiVbGAcqqctGSMC1C/T1tLZoKOrx1TbIyzAUU
         5fZ66sPZbfF5JE78/8x2pdbzrYR3x+dB06CZZxSsesf2TJLHxQkuxiWr70Lw//VT+ZDm
         6T/RFbIQ4pR0cinXQ5vKdWRirPGTEeZb54Hgaf59M06yszuW6No655juxQHDYwM/kSt3
         FKMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ljU3UZXW;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::232 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com. [2607:f8b0:4864:20::232])
        by gmr-mx.google.com with ESMTPS id z184si862629pgd.0.2019.02.27.09.42.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 09:42:19 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::232 as permitted sender) client-ip=2607:f8b0:4864:20::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ljU3UZXW;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::232 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x232.google.com with SMTP id z14so14174708oid.0
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Feb 2019 09:42:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=c8TUYdgjZHhKCnNO0/OUTcyHVSPn5vN2pqch7uCj5f0=;
        b=ljU3UZXWrVNWqR4vZjbBRRDqLo9ki0lWESrKqjoU3Ui1gmEF9E4ASkFMYCB+zQJmJY
         9GxmfJG2QQMq4MTy8sboHTj0RZyeWXkWKDjMkCmFIZSCQ57Fc1ta44XmrnA8IjpGpDrt
         MPNOqPopXh2vRIqESW7OjsUGBEg5Rj/DehweDckwpTzMtnNxE/YFc+S98MJxax4FvaTl
         et+Ve0hf8R553R0ZBKpyNh2CD/OoGipckVC+3nJ2tcx07kVGl3JNehgptppQIiN6ci9l
         fOhHEYpqyPMTKzQFZp/ufVjBu7OeHDutX/6RwmyUsKFX/CTk4Ywg8CXUuD+X9R1B+2Yr
         3BLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=c8TUYdgjZHhKCnNO0/OUTcyHVSPn5vN2pqch7uCj5f0=;
        b=HWEilqck6zFNPgmiT/RqXFLf4YVn8rAUqbfkRLagFfhH6VaxmmLp/DUE42jhcT6Qcb
         /bFueJrt8JF+r4uMx3GaYtYb6bueXGekVxWWKEj0ZNk92T/RN5uahmJjA29dC2PGnnI6
         mel52VLELeRD9Ey1JJt+TVOfYVm+sZRVQsCHxW+9OXS88A1JgLEPduzGjEXk6zR4UR5p
         Zp6qACggaMPGMjOq6pp8e3DqHoHISkVYibPUKoZTn5imZPZd6K+wmEtqXmcFoJ4dwJf0
         9tXqkH380gki+yJ47YiazQ47IVPFHgyfqBJpG28nmbxw9fcdJj9x64xQZELWhEKDZ+Mr
         zSKQ==
X-Gm-Message-State: AHQUAuaYcaPM1ajaVU0gdWVuk/YymFSMTVfyu/MTq159oWm+80mLiZgD
	Ggdzy1md2NYyLUnuIqy1Sisbhu2x9oI=
X-Received: by 2002:aca:cc0f:: with SMTP id c15mr305427oig.105.1551289338899;
        Wed, 27 Feb 2019 09:42:18 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id s21sm7604052ois.2.2019.02.27.09.42.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 27 Feb 2019 09:42:18 -0800 (PST)
Date: Wed, 27 Feb 2019 11:42:16 -0600
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging: vt6655: Modify comment style for SPDX
 License Identifier
Message-ID: <20190227174215.GA22758@madhuleo>
References: <20190226215531.5196-1-madhumithabiw@gmail.com>
 <20190227144836.GA32231@kroah.com>
 <20190227164328.GB22354@madhuleo>
 <20190227170513.GA18050@kroah.com>
 <20190227171022.GA22572@madhuleo>
 <20190227173302.GA16146@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190227173302.GA16146@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Feb 27, 2019 at 06:33:02PM +0100, Greg KH wrote:
> On Wed, Feb 27, 2019 at 11:10:23AM -0600, Madhumthia Prabakaran wrote:
> > On Wed, Feb 27, 2019 at 06:05:14PM +0100, Greg KH wrote:
> > > On Wed, Feb 27, 2019 at 10:43:29AM -0600, Madhumthia Prabakaran wrote:
> > > > On Wed, Feb 27, 2019 at 03:48:36PM +0100, Greg KH wrote:
> > > > > On Tue, Feb 26, 2019 at 03:55:31PM -0600, Madhumitha Prabakaran wrote:
> > > > > > FIx the warning by changing comment style based on header file type as
> > > > > > per License identifier syntax
> > > > > > 
> > > > > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > > > > ---
> > > > > > Changes in v2
> > > > > > - Modified subject line and commit log
> > > > > > 
> > > > > >  drivers/staging/vt6655/baseband.h | 2 +-
> > > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > > > 
> > > > > > diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
> > > > > > index f2b6a98de2c1..0cc2e07829c5 100644
> > > > > > --- a/drivers/staging/vt6655/baseband.h
> > > > > > +++ b/drivers/staging/vt6655/baseband.h
> > > > > > @@ -1,4 +1,4 @@
> > > > > > -* SPDX-License-Identifier: GPL-2.0+ */
> > > > > > +/* SPDX-License-Identifier: GPL-2.0+ */
> > > > > 
> > > > > This patch does not apply to my tree :(
> > > > > 
> > > > 
> > > > 
> > > > I didn't understand why it doesn't apply to your tree. 
> > > > 
> > > 
> > > Neither do I :)
> > > 
> > > Please try rebasing your patch on the top of my staging-testing branch
> > > and see if that produces a different patch or not.  If it does, please
> > > resend.
> > > 
> > > thanks,
> > > 
> > > greg k-h
> > 
> > 
> > I will rebase it and send it again.
> > 
> > Also, I want to make sure whether you got a similar patch with same commit log or not.
> 
> I have no idea.
> 
> Remember, I get over 1000 emails a day to do something with, I have the
> short-term memory of a squirrel and have no idea if someone has sent
> something prior to this at all, sorry.
> 
> It is your job as a patch submitter to make it as easy as possible for
> me to apply patches.  Sometimes that requires extra work, and rebasing
> patches due to other people's patches colliding with your work.  That's
> just part of the development process.
> 
> thanks,
> 
> greg k-h

No problem, I understand. I will rebase it and send it again.

Thanks,
Madhumitha


