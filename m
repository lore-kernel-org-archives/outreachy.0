X-GM-THRID: 6805826308521590784
X-Received: by 2002:a2e:9290:: with SMTP id d16mr1476566ljh.31.1584607926579;
        Thu, 19 Mar 2020 01:52:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:95c8:: with SMTP id y8ls356483ljh.2.gmail; Thu, 19 Mar
 2020 01:52:05 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt1rPFiiq0HewyOtq7q1Xs5Kkir7syw/OwQO+gSf85VGKlT95FL3/g4khCsoZ/aFSyAKQyL
X-Received: by 2002:a2e:89c9:: with SMTP id c9mr1509674ljk.181.1584607925284;
        Thu, 19 Mar 2020 01:52:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584607925; cv=none;
        d=google.com; s=arc-20160816;
        b=hZBJ3STuFR0gaR47B2I/eTzXGbtBBvjRIhASRkwD7SncUM3S1WOyeacovdJ1hoJaOt
         7abRzvxvwbbzD1WRzoqe/FW9dD4gHN8juGiUhAXE8MvVV538JZ+1NPG1DVyx3X4XxMk+
         dbI2gXxJce8kP/2fYjf6+J0lXVHnttnXhBtfHHbJgL0PwWuSYw6qmtYMMzNvYRaTy66b
         nZcVUXCW6UPNEpUc5kl3yf2jm8AL/Gp0lXjYpsso6vC2jL9Qc2wOaTgaPp2I+6D3UYJx
         M+8i1XFyQgV1hlJXRk7UYmR6GeEMWGmiYn4UZ5LAq/GaSPVFtqYkSjdG2tqrUu/yoAqS
         RRng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date;
        bh=z/nPKehVzgyaY4aryYczCaX4YqrwD1/a9d1m/MB7Tio=;
        b=Pc9ukksOlMNNO9apCXohdmjHRGJVkvOtJIdJZnG/+ib1VMzgtowWh0Toki/7icTMzQ
         +z00ltNSwBUCnOYONZt+PiFGUXMEigQul4GoBgzbItyRE3N92E9Q2goPTKF9JMZQhDei
         tLAPRjbzFUyozMk4moZERidHqkNTJAMan2lVL9w85J7FcJzlEPmhw/3fA+ZfRCNXNxq8
         FWwWMHp6UlLgsgBJdTwZP+8rkFOuYf5nxaBMF5AVggAXP5TkWWY726d17JtSJURJCU9m
         rdXKp3zbqiADMqPW8yQ3IE0npQSh4/bNq+NpNlejFdHg9iMNp263a/b6Gt2ahqWFRg/E
         cL/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id g23si55429lfd.0.2020.03.19.01.52.05
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 01:52:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 26245 invoked from network); 19 Mar 2020 08:52:02 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 08:52:02 -0000
Date: Thu, 19 Mar 2020 14:21:54 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: I need feedback on my posted patches
Message-ID: <20200319085151.GE1723@tulip.local>
References: <20200319080144.GA1723@tulip.local>
 <20200319080905.GA3489391@kroah.com>
 <20200319082249.GC1723@tulip.local>
 <20200319083600.GA3490824@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200319083600.GA3490824@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Thu, Mar 19, 2020 at 09:36:00AM +0100, Greg Kroah-Hartman wrote:
> On Thu, Mar 19, 2020 at 01:52:54PM +0530, R Veera Kumar wrote:
> > On Thu, Mar 19, 2020 at 09:09:05AM +0100, Greg Kroah-Hartman wrote:
> > > On Thu, Mar 19, 2020 at 01:31:52PM +0530, R Veera Kumar wrote:
> > > > Hi,
> > > > 
> > > > I posted patches on Saturday. But I did not got a msg from Greg
> > > > about they being accepted. Yesterday Greg posted that he has
> > > > seen all outreachy patches upto now. And if we do not get reply's
> > > > for the patches we should resend. So I resent it yesterday.
> > > 
> > > What specific patches did you submit that you did not get a response on?
> > > I do not see any, but I might have missed some.  What is the message id
> > > or subject lines?
> > > 
> > > thanks,
> > > 
> > > greg k-h
> > >
> > 
> > They are:
> > 
> > Subject: [RESEND PATCH] staging: rtl8188eu: core: Correct a typo in a comment
> > Message-Id: <20200317233020.575-1-vkor@vkten.in>
> > 
> > Subject: [RESEND PATCH] staging: rts5208: shorten long line in func call
> > Message-Id: <20200317235413.1656-1-vkor@vkten.in>
> 
> I do not see any of these patches in my system at all.
> 
> I would suggest resending all patches that you have that I have not
> applied as I am currently caught up on all pending outreachy patches.
> 

Oh.
Perhaps the issue is I am sending email patches with
 To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
 CC: outreachy-kernel <outreachy-kernel@googlegroups.com>, others

I do not know but should I send all of them with To: field.

Greg, do you only read outreachy-kernel@googlegroups.com msgs for patch
lookup.

Veera

> thanks,
> 
> greg k-h
> 

