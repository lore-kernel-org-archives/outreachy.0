X-GM-THRID: 6200365191427784704
X-Received: by 10.194.118.65 with SMTP id kk1mr882979wjb.5.1443648591516;
        Wed, 30 Sep 2015 14:29:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.9.98 with SMTP id y2ls77159laa.92.gmail; Wed, 30 Sep 2015
 14:29:50 -0700 (PDT)
X-Received: by 10.112.130.41 with SMTP id ob9mr868623lbb.17.1443648590668;
        Wed, 30 Sep 2015 14:29:50 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id c7si940709wiy.3.2015.09.30.14.29.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 14:29:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mailfrom=mahfouz.saif.elyazal@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x229.google.com with SMTP id gb1so1981987wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Sep 2015 14:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=SWrTUokw27BlRGXNBV2WU+hFiNdb+tccZlIwwv7/Cl4=;
        b=m1RqI4k7dYBlL8e3pxySA+cUGnfKeLyL1YC0l+5vZFcv+n9vGmf0F6CQZl83OnaqX4
         r2scphQ2X2pXvEIwNXk9hFH75HONN71vZH/gCyHPS/CYG56R+16Dy14vTqCanXIRwlDq
         2rKhZrD46Sh9XsvrUL5hoiQX4wFP40o5xw8miIw6zp/XbU9umprdXrnsaKd+6J5wu0KE
         Hu9XsPAZ1p+9FKw4dmFDPQ1h9TKw3bCx3uyXlC1YCDQjMdaruYAMu58DiBtHVf4TIHCV
         AfmC6Pya1LJqw9rSpGhp3FalJlER8oh07JCfwG6zzlj4K+KttCEr12+Rv0lbVYR1wUPU
         VE9g==
X-Received: by 10.180.87.225 with SMTP id bb1mr35649973wib.0.1443648590498;
        Wed, 30 Sep 2015 14:29:50 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.239.135])
        by smtp.gmail.com with ESMTPSA id pb4sm2658181wjb.8.2015.09.30.14.29.48
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 30 Sep 2015 14:29:48 -0700 (PDT)
Date: Wed, 30 Sep 2015 23:29:47 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Concerning applicants who are CCing themselves
Message-ID: <20150930212947.GA6942@waves>
References: <20150930174335.GB12195@waves>
 <4543594.pJ5pIvqNYp@wuerfel>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4543594.pJ5pIvqNYp@wuerfel>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Sep 30, 2015 at 11:15:42PM +0200, Arnd Bergmann wrote:
> On Wednesday 30 September 2015 19:43:35 Aya Mahfouz wrote:
> > Dear All,
> > 
> > I've realized that there are few interns who are add themselves to the
> > CC field in the mails that they send. I don't think you need to do that
> > if you adjust your group membership settings to receive every email sent
> > to the group. 
> > 
> > I would advice the applicants who do that to manage their
> > group settings from groups.google.com to receive all the emails in their
> > inbox. It will help you get important notifications from the mentors and
> > threads of fellow applicants.
> > 
> > If there is another reason for that behavior, kindly enlighten us.
> > 
> > 
> 
> I think this is just because git-send-email by default adds
> the sender to 'Cc', unless you add an explicit --suppress-cc=self
> argument.
> 
> 	Arnd

Interesting! Thanks Arnd for pointing this out!
-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

