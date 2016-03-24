X-GM-THRID: 6264811554202451968
X-Received: by 10.129.159.209 with SMTP id w200mr5269877ywg.4.1458827774923;
        Thu, 24 Mar 2016 06:56:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.94.34 with SMTP id f31ls933340qge.76.gmail; Thu, 24 Mar
 2016 06:56:14 -0700 (PDT)
X-Received: by 10.31.52.207 with SMTP id b198mr5236069vka.5.1458827774212;
        Thu, 24 Mar 2016 06:56:14 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ui7si1719834pab.0.2016.03.24.06.56.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Mar 2016 06:56:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-138-182-192.hsd1.ma.comcast.net [50.138.182.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 8232B92;
	Thu, 24 Mar 2016 13:56:13 +0000 (UTC)
Date: Thu, 24 Mar 2016 09:56:10 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Angel Orejel <deutschluz@gmail.com>
Cc: sveta.orlik.code@gmail.com, Alison Schofield <amsfield22@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: add more
 information to Kconfig
Message-ID: <20160324135610.GB21239@kroah.com>
References: <CAGLzxAr5=CPi-K9rsLHwqgKhmj=1jVHygQ3NHi=EZMcpGWQTUg@mail.gmail.com>
 <20160322211338.GA9367@kroah.com>
 <CAGLzxArcwTX1VnkSQs=wr_hpB=uoKPcPQ-WVMZXCDc1M8ZAmOg@mail.gmail.com>
 <20160324025609.GB19662@kroah.com>
 <CAGLzxAo=DPVr5+DEFxqxdMWRqGEVWkt_9dTHCLEMfrCiSnE9oA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAGLzxAo=DPVr5+DEFxqxdMWRqGEVWkt_9dTHCLEMfrCiSnE9oA@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Mar 23, 2016 at 10:09:50PM -0700, Angel Orejel wrote:
> I can fix this but I need some clarification about your question. Should I
> delete those untracked files? The top two will be gone because I piped the
> output of checkpatch to them, but the bottom two might have been put there
> after running the command 'make -j2'. Can I just delete those? or use 'git
> checkout'. may be I could use 'git stash'?�

I don't understand this at all, 'git stash' is not for making a patch,
when you create it, those # lines will not be in the changelog comments,
how they showed up in your patch is very odd.

Try working through the tutorial again to figure out the steps that are
needed for this.

> Also, about the fact that my patch has html in it: I ve been sending the patch
> to my gmail from evolution and then from my gmail to whoever. So i think i ll
> just skip that part and send from evolution. I think that should fix that.

Just use mutt :)

thanks,

greg k-h

