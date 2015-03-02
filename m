X-GM-THRID: 4857609060352
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,a8a47a8315808225
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.43.146 with SMTP id l18mr23521978yhb.23.1425257950093;
        Sun, 01 Mar 2015 16:59:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.42.202 with SMTP id q10ls539341obl.21.gmail; Sun, 01 Mar
 2015 16:59:09 -0800 (PST)
X-Received: by 10.182.28.104 with SMTP id a8mr22915354obh.15.1425257949876;
        Sun, 01 Mar 2015 16:59:09 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ri9si1321962pdb.1.2015.03.01.16.59.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 16:59:09 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 910AE475;
	Mon,  2 Mar 2015 00:59:09 +0000 (UTC)
Date: Sun, 1 Mar 2015 16:59:09 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija =?utf-8?Q?Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging rtl8192u: Remove typedefs.
Message-ID: <20150302005909.GA21527@kroah.com>
References: <cover.1425069407.git.ksenija.stanojevic@gmail.com>
 <4f46244ec99ca7d088e094221b36c2be29bd4a27.1425069407.git.ksenija.stanojevic@gmail.com>
 <alpine.DEB.2.10.1502281642570.2719@hadrien>
 <CAL7P5j+A3PdERuhdPqcpdrknwUwfjOzRO=nZ9Us4Nudm_tgRQQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL7P5j+A3PdERuhdPqcpdrknwUwfjOzRO=nZ9Us4Nudm_tgRQQ@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Feb 28, 2015 at 10:54:01PM +0100, Ksenija Stanojević wrote:
> On Sat, Feb 28, 2015 at 10:43 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > On Fri, 27 Feb 2015, Ksenija Stanojevic wrote:
> >
> >> This patch removes typedefs from structures and renames them per
> >> kernel coding standards.
> >> Issue found by checkpatch.pl
> >
> > There are other things in this patch.
> >
> > julia
> 
> Yes, where ever I put struct or enum, I have to make sure that thing are
> aligned well and that the line doesn't exceed 80 character mark.
> And I also removed macro cmpk_query_cfg_t, because it's the
> same as the struct above, and I removed also it's comment.

Then please put this in the changelog comment so we know you are doing
this.

Please resend with this information.

thanks,

greg k-h

