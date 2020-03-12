X-GM-THRID: 6802937311305662464
X-Received: by 2002:adf:fc0e:: with SMTP id i14mr4628895wrr.422.1583975691736;
        Wed, 11 Mar 2020 18:14:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:5233:: with SMTP id i19ls2017314wra.6.gmail; Wed, 11 Mar
 2020 18:14:50 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtwl/qF/Xg/dvdS1UVOwI9/cVayb+EP0594m8CQkD2XHU7ux6EZFhN0iI0SAVMSC941QbVk
X-Received: by 2002:a5d:468f:: with SMTP id u15mr7762738wrq.394.1583975690422;
        Wed, 11 Mar 2020 18:14:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583975690; cv=none;
        d=google.com; s=arc-20160816;
        b=u8Xm7bL7Jx+2m9+HgIisrjgO/J1TU1p+HIdhkGHzgn94weie2fZynEqARLE4QdkHt+
         /AjwNLXrOvgQrbY54mmwkK+WdqZIAf2WM54/3Wn83O6pfiUFmU57Hkcrjcn2IcVkwl+V
         SEuKK4EyrmGP5aVpA3vxjSr0Gzmbh78DgzuCmOpOY+schZ3gvGT0P6EZVPSlrGCtzVM4
         sRrlenOqvGEB9TWOOT95fo93zaM0qhpKG/iK5dN3RjQLNgowLy/9AWbLkBDyZhHws7Vp
         Wmu7iF1YhwR+MWOyN5HHN8eKqeNOrWtDxi28T3YRcsMuW6hgJJ0tNeV1kUzCEb2hDN+h
         jfOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=V42RcoKM56vHYl2L7kxpLD2ORuufpDN3Uo2CdpHkzOc=;
        b=YkjaHS9M6AgGZjJ3b7XJ7jO2RhGEzxVIAGz7j5jfzeJiXfa4j4S2pyPKrYf8jwZO+l
         2fGbZ4HRyKL5jdMxyt+9QJfIClU0l+lrWz3YseOLdAtvNRpzPWQbDQOpCI5ejaaYsKSO
         YmwDZhrSRcDRLDi2cpFAPzlK4xyECU1Zz7NYuq3QM4nnh1sX6QncZBXr5oT5iyOm4Dne
         poPtyZaOAbXYQ7wC1lbUEaPL0/LhfzgCYNMcR5FibNXs3AvugXjXKbRLlJxk2SiB2xd8
         cG8nY/6vEGuEIkaUcwpWbF9Nd0GCCW7uJC7NIsGK7oT5OHWIoqXI/P/riKW6q+CKEYwr
         AegQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id b81si132740wmc.2.2020.03.11.18.14.50
        for <outreachy-kernel@googlegroups.com>;
        Wed, 11 Mar 2020 18:14:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 6693 invoked from network); 12 Mar 2020 01:14:48 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.246.223.143)
  de/crypted with TLSv1.2: ECDHE-RSA-AES256-GCM-SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 12 Mar 2020 01:14:48 -0000
Date: Thu, 12 Mar 2020 06:44:46 +0530
From: Veera <vkor@vkten.in>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: makefile variable longline fix
Message-ID: <20200312011444.GA1928@localhost>
References: <20200311131056.GA4361@tulip.local> <20200311175839.24085e54@elisabeth>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200311175839.24085e54@elisabeth>
User-Agent: Mutt/1.4.2.3i

On Wed, Mar 11, 2020 at 05:58:39PM +0100, Stefano Brivio wrote:
> Hi Veera,
> 
> Thanks, this mostly looks good, in general. A few notes:
> 
> - the commit title is typically in an imperative form, that is, for
>   example, "[...]: Fix long line in Makefile variable"
> 
> Also,
> 
> On Wed, 11 Mar 2020 18:41:02 +0530
> R Veera Kumar <vkor@vkten.in> wrote:
> 
> > A simple makefile variable longline definition fix
> 
> It would be nice to also mention if you used a tool to find this.
> 
> > 
> > Signed-off-by: R Veera Kumar <vkor@vkten.in>
> > ---
> >  drivers/staging/sm750fb/Makefile | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/sm750fb/Makefile b/drivers/staging/sm750fb/Makefile
> > index 1cf3849cef23..6f832916ba65 100644
> > --- a/drivers/staging/sm750fb/Makefile
> > +++ b/drivers/staging/sm750fb/Makefile
> > @@ -1,5 +1,7 @@
> >  # SPDX-License-Identifier: GPL-2.0
> >  obj-$(CONFIG_FB_SM750)	+= sm750fb.o
> >  
> > -sm750fb-objs		:= sm750.o sm750_hw.o sm750_accel.o sm750_cursor.o ddk750_chip.o ddk750_power.o ddk750_mode.o
> > -sm750fb-objs		+= ddk750_display.o ddk750_swi2c.o ddk750_sii164.o ddk750_dvi.o ddk750_hwi2c.o
> > +sm750fb-objs		:= sm750.o sm750_hw.o sm750_accel.o sm750_cursor.o
> > +sm750fb-objs		+= ddk750_chip.o ddk750_power.o ddk750_mode.o
> > +sm750fb-objs		+= ddk750_display.o ddk750_swi2c.o ddk750_sii164.o
> > +sm750fb-objs		+= ddk750_dvi.o ddk750_hwi2c.o
> 
> ...and while this fixes the long lines for sure, a more common way is
> to use backslashes at the end of the lines. Compare it with other
> similar cases: you don't need to do something like:
> 	drivers/staging/wfx/Makefile
> 
> but what's done for example in:
> 	drivers/staging/comedi/Makefile
> 

Yes. I knew it. But thought preserving maintainer style may be right.

> looks appropriate here (using 3 or 4 lines I guess).
> 
> If you send another version of this patch, don't forget to indicate
> that under "---", see recent discussions on the outreachy-kernel list
> for examples.
>

I note 
 
> Stefano
> 

Regards,
Veera

