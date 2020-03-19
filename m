X-GM-THRID: 6805826308521590784
X-Received: by 2002:a1f:b695:: with SMTP id g143mr1537201vkf.59.1584608394730;
        Thu, 19 Mar 2020 01:59:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6102:530:: with SMTP id m16ls251363vsa.1.gmail; Thu, 19
 Mar 2020 01:59:53 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvTL7yS52wh0/ME5wy7KMueT+koMkbC2B9tUxzDMLzvPapGOkcYHPoO5YuZxfxN5PRmK2S2
X-Received: by 2002:a05:6102:3233:: with SMTP id x19mr1174609vsf.214.1584608393663;
        Thu, 19 Mar 2020 01:59:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584608393; cv=none;
        d=google.com; s=arc-20160816;
        b=UVFXoF784bRJiHod++xBfyPRYPijvd2LuneXfrRC4cr47sfH35L1gBudyCQLLmwzrc
         DTqIcjSIevCk8ksJCgrN7yBY1GOKsyzk8mNjbM9MVZh/DQ61zybkt82abWC7Gd3dHlNY
         C0XaY09NEYbglKfve6lwwoXhcMFHepYMI5FRtnlgbSLaGu9McfS5KgjnPsJrZNaPlge6
         4PsSMqVUV5DbjaV+GB9XZ/+3ONIfvhZDrbddP/I/54/MM6D+DrthH1fFj9AmFTz858HP
         3r1mKWqDoIuYiDRrfJTZAe0esj0wXRc3dZyNkklwW4p7y9tP0r6dxj4IjG5Qmt8GdVRB
         HgpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KeDq+vbiILe+hdyD4rQfVnh7ykv6KUrvwiB49cK5+Pg=;
        b=ySECb727waF+RDuLYfRbMdYCC+0uVdN49vhOWFZLfpr2bdr+Z5ROFlFOHyGkcPCj4H
         /03N7/kg7TKNkoM1uVtGwpIxU+iSWbYsP37qiRuRc1eCUWxVcrCyIlcQwDWnseMVuK13
         KSRHvsACi/t4iUG3D6VkeAMx2A6p1nhIlZo3hd3m/oiiJ/vzUjWRcKsszn+jbm7eEWMi
         nttevJLYCCrkJ39P/9L1VxuviRv3iXCAMADOEl90+YA44jHyjPGomL/EhuSxVeYuusqf
         yie+EdG888+UtrkQCbLsvzN6uAhQPyVcpzDLCDAKr/77rbfL4fT+fatpCbMicEsn+P2Y
         TJtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=VyZJlBNv;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 205si118031vkw.2.2020.03.19.01.59.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 01:59:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=VyZJlBNv;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E3DDB2051A;
	Thu, 19 Mar 2020 08:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584608392;
	bh=jUenbApVrX/+qrkJ0mDbEvMLUcjoXwPMASm2qLV5PIs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VyZJlBNvuY9JtwMvkXk+BniCzXz8QjuHEjiTOc0DFi9nf3Sb9kupPMywoG9VyHagY
	 QlWRmr2hZEL+4TQBUt3PIDuEOi5KDLK0gdvcNI2YecI4vMbBioP2JMhO46sywX7J46
	 ty2QCw6DsYPOMEla3sNpgrkTntTHUt2lDP6CjXyQ=
Date: Thu, 19 Mar 2020 09:59:50 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: R Veera Kumar <vkor@vkten.in>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: I need feedback on my posted patches
Message-ID: <20200319085950.GA3495501@kroah.com>
References: <20200319080144.GA1723@tulip.local>
 <20200319080905.GA3489391@kroah.com>
 <20200319082249.GC1723@tulip.local>
 <20200319083600.GA3490824@kroah.com>
 <20200319085151.GE1723@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200319085151.GE1723@tulip.local>

On Thu, Mar 19, 2020 at 02:21:54PM +0530, R Veera Kumar wrote:
> On Thu, Mar 19, 2020 at 09:36:00AM +0100, Greg Kroah-Hartman wrote:
> > On Thu, Mar 19, 2020 at 01:52:54PM +0530, R Veera Kumar wrote:
> > > On Thu, Mar 19, 2020 at 09:09:05AM +0100, Greg Kroah-Hartman wrote:
> > > > On Thu, Mar 19, 2020 at 01:31:52PM +0530, R Veera Kumar wrote:
> > > > > Hi,
> > > > > 
> > > > > I posted patches on Saturday. But I did not got a msg from Greg
> > > > > about they being accepted. Yesterday Greg posted that he has
> > > > > seen all outreachy patches upto now. And if we do not get reply's
> > > > > for the patches we should resend. So I resent it yesterday.
> > > > 
> > > > What specific patches did you submit that you did not get a response on?
> > > > I do not see any, but I might have missed some.  What is the message id
> > > > or subject lines?
> > > > 
> > > > thanks,
> > > > 
> > > > greg k-h
> > > >
> > > 
> > > They are:
> > > 
> > > Subject: [RESEND PATCH] staging: rtl8188eu: core: Correct a typo in a comment
> > > Message-Id: <20200317233020.575-1-vkor@vkten.in>
> > > 
> > > Subject: [RESEND PATCH] staging: rts5208: shorten long line in func call
> > > Message-Id: <20200317235413.1656-1-vkor@vkten.in>
> > 
> > I do not see any of these patches in my system at all.
> > 
> > I would suggest resending all patches that you have that I have not
> > applied as I am currently caught up on all pending outreachy patches.
> > 
> 
> Oh.
> Perhaps the issue is I am sending email patches with
>  To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>  CC: outreachy-kernel <outreachy-kernel@googlegroups.com>, others
> 
> I do not know but should I send all of them with To: field.
> 
> Greg, do you only read outreachy-kernel@googlegroups.com msgs for patch
> lookup.

I read whatever shows up in my inbox :)

I am subscribed to the mailing list, odds are things are broken on your
end with your 'git send-email' setup.

good luck!

greg k-h

