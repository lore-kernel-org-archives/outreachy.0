X-GM-THRID: 6035575144448
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,44622202b52d33bf
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.220.74 with SMTP id n70mr357110yhp.40.1425408389502;
        Tue, 03 Mar 2015 10:46:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.161.209 with SMTP id k200ls301740ioe.20.gmail; Tue, 03 Mar
 2015 10:46:29 -0800 (PST)
X-Received: by 10.42.62.19 with SMTP id w19mr2537353ich.30.1425408389301;
        Tue, 03 Mar 2015 10:46:29 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id bo1si235220pbc.0.2015.03.03.10.46.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 10:46:29 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.135.0.216])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id F18B8B10;
	Tue,  3 Mar 2015 18:46:28 +0000 (UTC)
Date: Tue, 3 Mar 2015 08:52:05 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v10 4/4] Staging: emxx_udc: Clean
 dev_err() logging
Message-ID: <20150303165205.GA8132@kroah.com>
References: <1425320718-28979-1-git-send-email-hamohammed.sa@gmail.com>
 <1425321923-4125-1-git-send-email-hamohammed.sa@gmail.com>
 <20150302185412.GA13368@kroah.com>
 <20150302190228.GA12872@example.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150302190228.GA12872@example.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 02, 2015 at 10:02:28PM +0300, Haneen Mohammed wrote:
> On Mon, Mar 02, 2015 at 10:54:12AM -0800, Greg KH wrote:
> > On Mon, Mar 02, 2015 at 09:45:23PM +0300, Haneen Mohammed wrote:
> > > This patch removes  __func__ from dev_err.
> > > dev_err includes the function name in the log printout, so there is no
> > > need to include it manually.
> > 
> > No, dev_err() does not include the function name, it includes much more
> > than that (device, driver, specific instance of device, etc.).
> > 
> Noted. I learned about this from the logs. 
> should I edit the commit msg and resed the patch?

Yes please.

