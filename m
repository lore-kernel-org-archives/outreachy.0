X-GM-THRID: 6805826308521590784
X-Received: by 2002:aa7:d551:: with SMTP id u17mr1680152edr.69.1584608664730;
        Thu, 19 Mar 2020 02:04:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:ce14:: with SMTP id y20ls878773edi.2.gmail; Thu, 19 Mar
 2020 02:04:23 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvGIHFq9pZH8ObdmG38AGEStI8SkB+BgQjj6TvPLSgMUD2cP+Y3l3l2vPC+swTHB+M+Ufka
X-Received: by 2002:aa7:dd10:: with SMTP id i16mr1654603edv.39.1584608662876;
        Thu, 19 Mar 2020 02:04:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584608662; cv=none;
        d=google.com; s=arc-20160816;
        b=mW6DCM3tiLFLXGJLPn4mi3ZgibHhpU+k5p6qt1qs+W88WolQ+2WFtmGWqgNXwyXHnL
         NrjtJ7SiVYPaEeCK7tZbRRlwy0rbPNcrmKZA26PKO/hT+lRdcnt5yZLTwYo+lOnHFYSd
         KUfE1i4FDbsIpyxGV1pYYQmNWuWvsDAJsvQLRngaLODdX+ng+TQsTO/sMG4UyWbD+7oi
         3WrBV+LdfUjFvC4PvHkscEUKsB3eo1UN9vMy3q9I+7PmptcC76LJjP220QMBa+Cc6F81
         TBURBrdSF/B7lIpv7p3UCLyEWMxwt7SrwzK3uGXX0xIAwSLkLSAHyCCojOFbBmBZR9pK
         Ue6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=CJceB/U1eey26NbZLfPcz90DfQONP/otVwjQ+X4tYpo=;
        b=VPAobRixSeABLbU/txZwy4HqtAcj3vCPMKMrH8AHJmOP0n91y79gDD1cLRaFz33IYY
         aZ9e1Vz/rGcfPtpRd+MbfmHhoW2y3CDCXYXfxEgnfNNFP/qQAGwDH5jfQWiHPuL839TZ
         6uTsW7a3wbra1Xf2rEraPMGBXn09eB9/DHcf55vYtIB36ht12aAqcGd7U6evQgF+Q+36
         j/rsBC6Pe6iDYFZh0blxW93Rlmrvbjhkej4QSHlxeozfk/xfgxzHi/pep48v7lp065Ll
         Ry3YaTjqAaTXCI8/RH5MI1t1iKjXxhTcbxbXofCm+T2rK3S0xOuxbKjrhi2nUV6vNOPM
         BJOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id k9si57023eds.1.2020.03.19.02.04.22
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 02:04:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 26387 invoked from network); 19 Mar 2020 09:04:21 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 09:04:21 -0000
Date: Thu, 19 Mar 2020 14:34:15 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: I need feedback on my posted patches
Message-ID: <20200319090413.GF1723@tulip.local>
References: <20200319080144.GA1723@tulip.local>
 <20200319080905.GA3489391@kroah.com>
 <20200319082249.GC1723@tulip.local>
 <alpine.DEB.2.21.2003190930420.3010@hadrien>
 <20200319083953.GD1723@tulip.local>
 <alpine.DEB.2.21.2003190940190.3010@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003190940190.3010@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Thu, Mar 19, 2020 at 09:42:14AM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 19 Mar 2020, R Veera Kumar wrote:
> 
> > On Thu, Mar 19, 2020 at 09:31:18AM +0100, Julia Lawall wrote:
> > >
> > >
> > > On Thu, 19 Mar 2020, R Veera Kumar wrote:
> > >
> > > > On Thu, Mar 19, 2020 at 09:09:05AM +0100, Greg Kroah-Hartman wrote:
> > > > > On Thu, Mar 19, 2020 at 01:31:52PM +0530, R Veera Kumar wrote:
> > > > > > Hi,
> > > > > >
> > > > >
> > > >
> > > > They are:
> > > >
> > > > Subject: [RESEND PATCH] staging: rtl8712: Correct a typo in a comment
> > > > Message-Id: <20200317234701.1383-1-vkor@vkten.in>
> > > >
> > > > Subject: [RESEND PATCH] staging: rts5208: shorten long line in func call
> > > > Message-Id: <20200317235413.1656-1-vkor@vkten.in>
> > >
> > > I searched in the Google web interface for RESEND PATCH and I don't see
> > > any of these.  I don't remember receiving them either.
> > >
> > > julia
> > >
> >
> > Yes. I also checked in Google web interface and I don't see them.
> > Is this mail address correct: <outreachy-kernel@googlegroups.com>
> >
> > This email also sent to this mail address. And the reply you and Greg
> > are giving are also coming from this address.
> 
> I received this email.  You sent it directly to Greg, but I don't see my
> name in the recipient list, so I must have gotten it via the mailing list.
> 
> Could you just send one patch, and then send a mail asking whether we have
> seen the patch?
> 
> I looked in the held messages and there wasn't anything from you.
> 
> julia
> 
> >
> > Please look into matter.
> >
> > Veera
> >
> 

Sending msgs to outreachy-kernel@googlegroups.com using cc does not
works. If I send as To: it reaches.
Google groups blocks CC msgs I think.
Oh my. I wasted all the time.

I am sending all the patches again.
Please specify these things in Outreachy pages.

Veera

