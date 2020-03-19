X-GM-THRID: 6805826308521590784
X-Received: by 2002:a2e:a3d3:: with SMTP id w19mr1467877lje.232.1584607206315;
        Thu, 19 Mar 2020 01:40:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:b042:: with SMTP id d2ls348012ljl.3.gmail; Thu, 19 Mar
 2020 01:40:04 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsucAEXGMjB1nY6ievgfv54nlwqI+phFZxFPdt6Wj5+6m2bZEPXj6MYfKcCvAeUqFVfNSOy
X-Received: by 2002:a05:651c:1186:: with SMTP id w6mr1426874ljo.205.1584607204425;
        Thu, 19 Mar 2020 01:40:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584607204; cv=none;
        d=google.com; s=arc-20160816;
        b=e74yX7QJHbA7nZaZjoUQdy5yC41m7kRwL5YCaV5upFtFJfMqEXwE3MvpueHPLknDWv
         eLS1sRqhdTEMq6TdSPP5Qn8inO2U86Dd7Bkd1FLISg+Cj+qDv7jxb4M+rhZK10qXC4wM
         fFFFuHtZjjYJ3LZ4reNs0GWxy3CXrSLLLJVzYuiYvhx3AmMJGXL5+gfb3xcnwGutLbWV
         fzYo3JEJOSh61PN7XH3W7v0euIOvmr0hAWBjjePz+VKATRrXk/M/nktJUbc5uI96XX+F
         XzjcyFXxuyUsiKtk+IRsLoTbTJZW1MlaIzr4ADlHA6p5Oy75unXwcPHDwwprAlQWKvVQ
         jODw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=zMS2FdwD+KNwyYI5grva+Z78xwmv/t3ph/uJX8zgIVM=;
        b=MHGZ7a4uUsTAvhNsDUZd5iQuSWBcY1cgAh6PYWnPpsKIyYgFBTjOaWMyyopcfiEwWF
         kM/3p5wyW0fQKzK2jlqHxVsaQ8afypre49TiLResJgQhH1+bF3chBz0f2OTKvr8sR8hH
         LSg2nj1y46nQbUU1YV2rMl6Gssq6ayvyw9puawOJ5GjY+Y6+rCKaLVt53MLTutpgn0pb
         Wi02GrJjnRXCcKwYwNzH7KltDSiHZa/mgrcjHvYMtbM3Anulb+qmSBXBNtghs7oH25CA
         enD4eP0vhx2pl/vnpc8s2ABLQP3DwEkSxPNvkwRFYPom8TDDdWXebpkFiPPb5okh7eY4
         NsIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id t3si37338lfq.5.2020.03.19.01.40.04
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 01:40:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 26131 invoked from network); 19 Mar 2020 08:40:02 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 08:40:02 -0000
Date: Thu, 19 Mar 2020 14:09:55 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] Re: I need feedback on my posted patches
Message-ID: <20200319083953.GD1723@tulip.local>
References: <20200319080144.GA1723@tulip.local>
 <20200319080905.GA3489391@kroah.com>
 <20200319082249.GC1723@tulip.local>
 <alpine.DEB.2.21.2003190930420.3010@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003190930420.3010@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Thu, Mar 19, 2020 at 09:31:18AM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 19 Mar 2020, R Veera Kumar wrote:
> 
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
> > Subject: [RESEND PATCH] staging: rtl8188eu: include: Correct a typo in a comment
> > Message-Id: <20200317233845.894-1-vkor@vkten.in>
> >
> > Subject: [RESEND PATCH] staging: rtl8192u: ieee80211: Correct a typo in a comment
> > Message-Id: <20200317234252.1128-1-vkor@vkten.in>
> >
> > Subject: [RESEND PATCH] staging: rtl8712: Correct a typo in a comment
> > Message-Id: <20200317234701.1383-1-vkor@vkten.in>
> >
> > Subject: [RESEND PATCH] staging: rts5208: shorten long line in func call
> > Message-Id: <20200317235413.1656-1-vkor@vkten.in>
> 
> I searched in the Google web interface for RESEND PATCH and I don't see
> any of these.  I don't remember receiving them either.
> 
> julia
> 

Yes. I also checked in Google web interface and I don't see them.
Is this mail address correct: <outreachy-kernel@googlegroups.com>

This email also sent to this mail address. And the reply you and Greg
are giving are also coming from this address.

Please look into matter.

Veera

> 
> >
> > Subject: [PATCH v2] staging: unisys: Documentation: Correct a long line in doc
> > Message-Id: <20200318002938.2326-1-vkor@vkten.in>
> >
> > Subject: [PATCH v5] staging: sm750fb: Fix of long line in makefile variable
> > Message-Id: <20200318005820.2983-1-vkor@vkten.in>
> >
> > Subject: [PATCH v3] staging: rtl8712: Fix for long lines in Kconfig help
> > Message-Id: <20200318011856.3547-1-vkor@vkten.in>
> >
> > Subject: [RESEND PATCH] staging: rtl8723bs: hal: Correct typos and long line comments
> > Message-Id: <20200318013414.3861-1-vkor@vkten.in>
> >
> > Subject: [RESEND PATCH 00/10] Correction of typos and long lines of comments
> > Message-Id: <cover.1584514678.git.vkor@vkten.in>
> >
> > Subject: [PATCH v2 0/4] Correction of typos in comments
> > Message-Id: <cover.1584517384.git.vkor@vkten.in>
> >
> > Subject: [PATCH v2 0/7] Correction of typos in comments
> > Message-Id: <cover.1584519269.git.vkor@vkten.in>
> >
> > Subject: [PATCH v2] staging: vc04_services: interface: vchi: Correct long lines and style of comments
> > Message-Id: <20200319005434.1453-1-vkor@vkten.in>
> >
> > Regards,
> > Veera
> >

