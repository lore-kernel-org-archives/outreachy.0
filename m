X-GM-THRID: 6805826308521590784
X-Received: by 2002:a2e:7a0f:: with SMTP id v15mr1890377ljc.156.1584616649714;
        Thu, 19 Mar 2020 04:17:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:550:: with SMTP id q16ls451252ljp.1.gmail; Thu, 19
 Mar 2020 04:17:28 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuU/g20pmzNuZf6v9r76hI8zUo9ysnbCLVrTNJ7GO+G9HffMzD/wgjy54t3H/fFjopgxsg1
X-Received: by 2002:a2e:9dc8:: with SMTP id x8mr1902871ljj.212.1584616648524;
        Thu, 19 Mar 2020 04:17:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584616648; cv=none;
        d=google.com; s=arc-20160816;
        b=aDfBGG62uIJ3z8rAvvt5C5ou+0lobfEBbpuDD3E8EcfdVIEB5etOHlJF0zo6vzDLeF
         XMMCskpmcZ1u+5XgKMp2yhpmA24O0lsF/EZ8DJ7AjY3bxUbxBNC02P6ytfzNImXXlsgp
         nU6KxUJKJ4eaZg5FcH3k1HRp8rGNKjjJ1ralC5vYOlxsf0ba9QbQQCwFDXNbVDhfQ9h3
         EDErTTFOqkpMu7J7XNQ4OlmZKn2va0RfpOzMZfSi5g/gaJFDPyIh4TmQq867FMzT6x0i
         SP3q5Z0/cS0E/luKVEbwKBlVgZ//lvzquNM4Bz6ZnSw9u5JrxXGS/i07hurTUZJanZyF
         pKLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Hx27Od7ckxMzbok3po4C5uFC4+PI762PyH6lCZ65hYQ=;
        b=wCuyZhhh+VwVdjXu4p8SERLEn/khcmVjBAbyLmA1aCKvgEIse+7GEvx+BMMH92bgIX
         6uPFieRKxWN/4WI9lgdBR2yxjex6bxqjgG3Q85+qyMBPZ6SHFlxSWSt65ew7GpBMV48D
         oq0BzC3G0d6j4b/zOyy2zD67Xhe0zaFCGKKN5WD2+wdPCf3AeRISCzHwE35Fwrm9PsRL
         QzIIPBpzi5R7yLlm2av07l3VIvFNLuyrfRSxStd6UjbJzgKNysKDmlMQCi+bbSCcBhmt
         NWwpKiamO6FC/esleyWG1UHSxrtBQxJvUvjNYadHnjFycIVbH9ttUEtCqX64LFrJHFxD
         Jl8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id s22si86684ljp.0.2020.03.19.04.17.28
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 04:17:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 27911 invoked from network); 19 Mar 2020 11:17:26 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 11:17:26 -0000
Date: Thu, 19 Mar 2020 16:47:19 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: I need feedback on my posted patches
Message-ID: <20200319111718.GB3889@tulip.local>
References: <20200319080144.GA1723@tulip.local>
 <20200319080905.GA3489391@kroah.com>
 <20200319082249.GC1723@tulip.local>
 <20200319083600.GA3490824@kroah.com>
 <20200319085151.GE1723@tulip.local>
 <20200319085950.GA3495501@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200319085950.GA3495501@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Thu, Mar 19, 2020 at 09:59:50AM +0100, Greg Kroah-Hartman wrote:
> On Thu, Mar 19, 2020 at 02:21:54PM +0530, R Veera Kumar wrote:
> > On Thu, Mar 19, 2020 at 09:36:00AM +0100, Greg Kroah-Hartman wrote:
> > > On Thu, Mar 19, 2020 at 01:52:54PM +0530, R Veera Kumar wrote:
> > > > On Thu, Mar 19, 2020 at 09:09:05AM +0100, Greg Kroah-Hartman wrote:
> > > > > On Thu, Mar 19, 2020 at 01:31:52PM +0530, R Veera Kumar wrote:
> > > > > > Hi,
> > > > > > 
> > > > > > I posted patches on Saturday. But I did not got a msg from Greg
> > > > > > for the patches we should resend. So I resent it yesterday.
> > > > > 
> > > > > What specific patches did you submit that you did not get a response on?
> > > > > 
> > > > > thanks,
> > > > > 
> > > > > greg k-h
> > > > >
> > > > 
> > > > They are:
> > > > 
> > > > Subject: [RESEND PATCH] staging: rtl8188eu: core: Correct a typo in a comment
> > > > Message-Id: <20200317233020.575-1-vkor@vkten.in>
> > > 
> > > I do not see any of these patches in my system at all.
> > > 
> > > I would suggest resending all patches that you have that I have not
> > > applied as I am currently caught up on all pending outreachy patches.
> > > 
> > 
> > Oh.
> > Perhaps the issue is I am sending email patches with
> >  To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> >  CC: outreachy-kernel <outreachy-kernel@googlegroups.com>, others
> > 
> > I do not know but should I send all of them with To: field.
> > 
> > Greg, do you only read outreachy-kernel@googlegroups.com msgs for patch
> > lookup.
> 
> I read whatever shows up in my inbox :)
> 
> I am subscribed to the mailing list, odds are things are broken on your
> end with your 'git send-email' setup.
> 

Thanks Greg!

It was definitely broken git send-email setup.
I use msmtp instead of esmtp. Which was wrongly set up.
Direct git send-email was not working as my SMTP server
does not supports STARTTLS, but  only TLS REQUIRED PORT:465.
Esmtp also only supports STARTTLS not TLS REQUIRED.

git send-email should be made to support that.
Or may be I am wrong, as it did not worked in my server.

Veera

> good luck!
> 
> greg k-h
> 

