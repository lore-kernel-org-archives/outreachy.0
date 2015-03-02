X-GM-THRID: 6035575144448
X-Received: by 10.180.182.44 with SMTP id eb12mr2444149wic.4.1425322946702;
        Mon, 02 Mar 2015 11:02:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.88.98 with SMTP id bf2ls488225lab.70.gmail; Mon, 02 Mar
 2015 11:02:26 -0800 (PST)
X-Received: by 10.112.147.35 with SMTP id th3mr3763061lbb.15.1425322946210;
        Mon, 02 Mar 2015 11:02:26 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id r6si730012wix.0.2015.03.02.11.02.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 11:02:26 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wivr20 with SMTP id r20so17333379wiv.2
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 11:02:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=5INgaSXfQoaIXLsZiAnhjYVQdEgpweavVxyNMRDrZEc=;
        b=uH65Nx0wExa+ZoBv2unYkDc5K2jEOoFG/7UsIUOu4fL3GH3Ie/1vCGWOTC5UwUMdCI
         vKjTYFTUQFOuYbUg8XFXLaQAwlenBROOt8Ht979Gf4sbcopAA1/79Tuz4gCgEUHfxC/1
         1aHREsnxXitUiCXBJitAAj6ZSiUJfjBE8kUr3EieVPTXSQmRvOsFhQID+48WGywkZhsX
         3a5+iSgkCvT16AxC+99+4amyMIdLw7FTag3Gex71PYaLvdf/oL8pKNxQA3GqJktNdhsk
         z9N99PubFBgjOIuSLN1dl2XvGkazTeJvbTMKOheKoAxY8b3vWrWGbR18s05UZdcS2bDQ
         7LRA==
X-Received: by 10.194.184.148 with SMTP id eu20mr47406896wjc.77.1425322946082;
        Mon, 02 Mar 2015 11:02:26 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id g10sm17277743wic.7.2015.03.02.11.02.24
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 02 Mar 2015 11:02:25 -0800 (PST)
Date: Mon, 2 Mar 2015 22:02:28 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v10 4/4] Staging: emxx_udc: Clean
 dev_err() logging
Message-ID: <20150302190228.GA12872@example.com>
References: <1425320718-28979-1-git-send-email-hamohammed.sa@gmail.com>
 <1425321923-4125-1-git-send-email-hamohammed.sa@gmail.com>
 <20150302185412.GA13368@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150302185412.GA13368@kroah.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Mon, Mar 02, 2015 at 10:54:12AM -0800, Greg KH wrote:
> On Mon, Mar 02, 2015 at 09:45:23PM +0300, Haneen Mohammed wrote:
> > This patch removes  __func__ from dev_err.
> > dev_err includes the function name in the log printout, so there is no
> > need to include it manually.
> 
> No, dev_err() does not include the function name, it includes much more
> than that (device, driver, specific instance of device, etc.).
> 
Noted. I learned about this from the logs. 
should I edit the commit msg and resed the patch?
> > 
> > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> > ---
> > v10: nothing. 
> > 
> 
> Then why send a v10?
> 
> confused,
> 
> greg k-h
Becuase It was included in the patchset.

Thank you,
Haneen

