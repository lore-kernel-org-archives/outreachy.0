X-GM-THRID: 6210663897171492864
X-Received: by 10.68.180.1 with SMTP id dk1mr28772033pbc.1.1446097307852;
        Wed, 28 Oct 2015 22:41:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.34.175 with SMTP id l44ls216669qgl.13.gmail; Wed, 28 Oct
 2015 22:41:47 -0700 (PDT)
X-Received: by 10.13.229.4 with SMTP id o4mr16377572ywe.36.1446097307290;
        Wed, 28 Oct 2015 22:41:47 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id fa8si5300465pab.1.2015.10.28.22.41.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 22:41:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id z6so29674635pas.2
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 22:41:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=xTmnVWLLHL2CrNfHhK3vn+Z34cCtr+veAfEW32Loc90=;
        b=KPz0DrMm6z/gIo6zQoIwuybeoggQSUIThpall/9un4/2WaQ9PVnWC3cXD7t9h00BqV
         11lSGZenLBF7hq+nZvq+aUUmUcvsTUvlkIfjj9sdROgC/8pEUcwnGcH/zSe84063YxF5
         /F+ReNFrYZHzzd/fMmz4M11uh9PKVjofiR4xnXVjnlI33/h7XAQqKcpL8kZxBUqXZkjE
         jygGmY7O3/7SY5YsAKdg5RMGOHbKDWRI4fUvBhgSHT0NYrVmb8I3rGFhYYMtADLxmNdH
         frC+1iZnQaoA3KuNQgPWY9uR6JzY+Ka14nc671NYbmJVbyn6jddKAErQ3xA6RRRRvH4Z
         NJtg==
X-Received: by 10.66.246.225 with SMTP id xz1mr38116273pac.60.1446097307114;
        Wed, 28 Oct 2015 22:41:47 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([122.169.170.95])
        by smtp.gmail.com with ESMTPSA id xs2sm48666523pbb.75.2015.10.28.22.41.45
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 28 Oct 2015 22:41:46 -0700 (PDT)
Date: Thu, 29 Oct 2015 11:11:35 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v2 3/3] Staging: wilc1000: linux_wlan:
 Replace function calls
Message-ID: <20151029054135.GA16140@sudip-pc>
References: <cover.1446032441.git.shivanib134@gmail.com>
 <f2a06d6455d1f322d873ec728f622162fd00d959.1446032441.git.shivanib134@gmail.com>
 <20151028131019.GB16810@sudip-pc>
 <CAKHNQQE6UVcQ9eS_pisCed4ExE4BU-KdzVGcd_T269tP8Pim2A@mail.gmail.com>
 <CAKHNQQFRRV3C3wqmatnf4cq525JcmJeXawqzF1-qFB4yy64YxQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAKHNQQFRRV3C3wqmatnf4cq525JcmJeXawqzF1-qFB4yy64YxQ@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Wed, Oct 28, 2015 at 10:28:29PM +0530, Shivani Bhardwaj wrote:
> On Wed, Oct 28, 2015 at 9:39 PM, Shivani Bhardwaj <shivanib134@gmail.com>
> wrote:
> > On Wed, Oct 28, 2015 at 6:40 PM, Sudip Mukherjee
> > <sudipm.mukherjee@gmail.com> wrote:
> >> On Wed, Oct 28, 2015 at 05:19:04PM +0530, Shivani Bhardwaj wrote:
> >>> Replace calls to wrapper functions with the actual functions called by
> >>> wrapper functions. Definitions needed to make those calls should also
> be added.
> >>>
> >>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> >>> ---
> >>
> >> Not build tested. :(
> >>
> >> error: implicit declaration of function ‘linux_sdio_set_speed’
> [-Werror=implicit-function-declaration]
> >>   nwi->io_func.u.sdio.sdio_set_max_speed =
> linux_sdio_set_speed(MAX_SPEED);
> >>
> >> drivers/staging/wilc1000/linux_wlan.c:990:41: warning: assignment makes
> pointer from integer without a cast [enabled by default]
> >>   nwi->io_func.u.sdio.sdio_set_max_speed =
> linux_sdio_set_speed(MAX_SPEED);
> >>
> >> drivers/staging/wilc1000/linux_wlan.c:991:68: error:
> ‘sdio_default_speed’ undeclared (first use in this function)
> >>
> >> regards
> >> sudip
> >
> > I'm really very sorry I didn't do make allmodconfig, make didn't show
> > me any errors at that time. In order to fix these mistakes, I'm
> > thinking of changing some part of code. Please check the next version.
> > Thank you
> 
> I need a bit of help here. While replacing the calls of wrapper function by
> actual function, I get the following:
> warning: assignment makes pointer from integer without a cast
> 
> Why is it like that? Wrapper function returns function which in turn
> returns an integer so ultimately the value that is to be returned is int.
> 
> I think I'm missing something trivial. I don't know what.

When it is doing nwi->io_func.u.sdio.sdio_set_max_speed = linux_sdio_set_max_speed;
it is saving the address of the function linux_sdio_set_max_speed in
nwi->io_func.u.sdio.sdio_set_max_speed.
But when you are doing:
nwi->io_func.u.sdio.sdio_set_max_speed = linux_sdio_set_speed(MAX_SPEED);
you are trying to save the speed value in a place where the function
pointer is supposed to stay.

If you want to remove this wrapper, then you can do:
nwi->io_func.u.sdio.sdio_set_max_speed = linux_sdio_set_speed;

and then in all places where nwi->io_func.u.sdio.sdio_set_max_speed is
used you need to modify that to use MAX_SPEED as argument.

But I guess that will make the code less readable.

regards
sudip

