X-GM-THRID: 6607744026526351360
X-Received: by 2002:a24:2443:: with SMTP id f64-v6mr1751419ita.27.1538485989672;
        Tue, 02 Oct 2018 06:13:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:4d07:: with SMTP id l7-v6ls457543itb.4.gmail; Tue, 02
 Oct 2018 06:13:08 -0700 (PDT)
X-Google-Smtp-Source: ACcGV628UrvhptBNeCESPVuV3CwUl7m4w1e1qE2mhqfPmfhoG0S00wmoIWXHcSrv82CQlrnoqsU5
X-Received: by 2002:a24:5a44:: with SMTP id v65-v6mr1739620ita.14.1538485988748;
        Tue, 02 Oct 2018 06:13:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538485988; cv=none;
        d=google.com; s=arc-20160816;
        b=AMKQ7tBkrARckQku+oFRCRraACRoDKShrlvgAeNulkeUSinyTOrTjV3C+hYxK67V8T
         ttRTMfAIQ6j06tZf7lrrvKv2wam1uIAViSUZH2Egvi0jXb8GoYaCSH1tKNP7J5bCYr9H
         pkwxot9tqJJOtKqdfaKC/kuOqba1h5h9f6stFhYhn1ZZ0jjvoM/Lr3i2Lns07VwAwexF
         D0sVKeXQtmbKiZ0uDSlXtFKfQQc+lxW1GVwnqMXpl5hd6nNFVEdYEAa5tLT4sIq3bFe+
         Q51p1d8eodfUcTBIgZq7G3pPRRTpv0hQYo9/nT9VeiepK9lLHuQ61nHAnltoaNVVoows
         2ssQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=HpAdWaENYptgVw7ql/048aDAk4L/0Eb65ZJLuOysTSo=;
        b=S6hnF54WSbB+oHlSL6NuQsPFBVl5A/5zlDIvWr72KPqMUZ6b36QP6Kb46InjFYDBbz
         ItSCBgNoBNaDy/UR6xvND2YH/y0jZJxhQOi/FGyDxvjCrhLaK8yGaehRm6Ep/VhcMkhs
         BwtRoj5LJmHVb7csUQrQJmsxk5FPxSrDBAFdwLKPCgaNZ1GS4i421OwIRTHMbQemWMgV
         wrqWV9xhF6N8zpS6eQno3qya/GfdIHhqVlhufhUi5Y1a6ulxlapJZ3fWvIcJB5D+yWrq
         C4xl0DKtgqH4PJ4PeRatyV3/l34IMKDsot0EFm60tUuHwxguUlr/mAZZ4jSkscdRphcg
         LYQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id j6-v6si220821iog.1.2018.10.02.06.13.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Oct 2018 06:13:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (24-104-73-23-ip-static.hfc.comcastbusiness.net [24.104.73.23])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 0B0EAAC9;
	Tue,  2 Oct 2018 13:13:08 +0000 (UTC)
Date: Tue, 2 Oct 2018 06:13:06 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Mamta Shukla <mamtashukla555@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rts5208: Replace udelay()
 with usleep_range()
Message-ID: <20181002131306.GA32586@kroah.com>
References: <20181002130124.GA27163@armorer>
 <alpine.DEB.2.20.1810021505480.3460@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1810021505480.3460@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Tue, Oct 02, 2018 at 03:07:14PM +0200, Julia Lawall wrote:
> 
> 
> On Tue, 2 Oct 2018, Mamta Shukla wrote:
> 
> >     udelay(unsigned long usec) replaced with usleep_range(unsigned long
> >     min, unsigned long max) to prevent trigger by interrupt in specified
> >     duration.Also provides better scheduling,power management for drivers.
> 
> Thanks for the patch.  A few picky comments.  In English, it is more
> readable to put some space after punctuation.  It is also not necessary to
> indent the log message.
> 
> Also, it would be good to explain how you chose the upper limit.

It is _required_ to explain this.  This change comes up every so often,
and I keep rejecting it as no one knows what value to put here that will
correctly work.  So I recommend just leaving it alone unless you hav the
hardware and can test this type of change properly.

thanks,

greg k-h

