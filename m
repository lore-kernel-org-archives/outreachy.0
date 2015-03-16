X-GM-THRID: 8004958158848
X-Received: by 10.50.254.161 with SMTP id aj1mr18999975igd.6.1426525545494;
        Mon, 16 Mar 2015 10:05:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.121.232 with SMTP id ln8ls351072obb.62.gmail; Mon, 16 Mar
 2015 10:05:45 -0700 (PDT)
X-Received: by 10.182.91.79 with SMTP id cc15mr67137560obb.20.1426525545076;
        Mon, 16 Mar 2015 10:05:45 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ni4si2015875pdb.2.2015.03.16.10.05.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 10:05:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C17EF98E;
	Mon, 16 Mar 2015 17:05:43 +0000 (UTC)
Date: Mon, 16 Mar 2015 18:05:38 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija =?utf-8?Q?Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: Compile driver as a
 module
Message-ID: <20150316170538.GB19496@kroah.com>
References: <1426193381-9039-1-git-send-email-ksenija.stanojevic@gmail.com>
 <20150316151911.GB20416@kroah.com>
 <CAL7P5jKESCNAsVXyv1V9W2x=7e0xcHpyFQBMLXQki5Wf9PN_Vw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL7P5jKESCNAsVXyv1V9W2x=7e0xcHpyFQBMLXQki5Wf9PN_Vw@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 16, 2015 at 05:16:22PM +0100, Ksenija Stanojević wrote:
> On Mon, Mar 16, 2015 at 4:19 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> > On Thu, Mar 12, 2015 at 09:49:41PM +0100, Ksenija Stanojevic wrote:
> >> This patch changes Kconfig file so that driver could be compiled as
> >> a module. Changes have also been made in TODO list by removing this
> >> task.
> >>
> >> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> >> ---
> >>  drivers/staging/media/omap4iss/Kconfig | 2 +-
> >>  drivers/staging/media/omap4iss/TODO    | 1 -
> >>  2 files changed, 1 insertion(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/staging/media/omap4iss/Kconfig b/drivers/staging/media/omap4iss/Kconfig
> >> index b78643f..32403cc 100644
> >> --- a/drivers/staging/media/omap4iss/Kconfig
> >> +++ b/drivers/staging/media/omap4iss/Kconfig
> >> @@ -1,5 +1,5 @@
> >>  config VIDEO_OMAP4
> >> -     bool "OMAP 4 Camera support"
> >> +     tristate "OMAP 4 Camera support"
> >>       depends on VIDEO_V4L2=y && VIDEO_V4L2_SUBDEV_API && I2C=y && ARCH_OMAP4
> >>       depends on HAS_DMA
> >>       select VIDEOBUF2_DMA_CONTIG
> >> diff --git a/drivers/staging/media/omap4iss/TODO b/drivers/staging/media/omap4iss/TODO
> >> index fcde888..4d220ef 100644
> >> --- a/drivers/staging/media/omap4iss/TODO
> >> +++ b/drivers/staging/media/omap4iss/TODO
> >> @@ -1,4 +1,3 @@
> >> -* Make the driver compile as a module
> >>  * Fix FIFO/buffer overflows and underflows
> >>  * Replace dummy resizer code with a real implementation
> >>  * Fix checkpatch errors and warnings
> >
> > How did you test that this worked?  Did you cross-build for the omap
> > platform?
> 
> No, I didn't. I don't have the hardware.

You don't need the hardware to be able to build it.

