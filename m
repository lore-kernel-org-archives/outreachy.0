X-GM-THRID: 6468561252741283840
X-Received: by 10.28.236.83 with SMTP id k80mr2314216wmh.29.1507047403109;
        Tue, 03 Oct 2017 09:16:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.216.71 with SMTP id p68ls2768117wmg.2.gmail; Tue, 03 Oct
 2017 09:16:42 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDJyU4WoKQ3Slfx8+l1XSPPxx2rGIxUFrzWBxeIKDtWFPIhzJ2MH/jKMKW3YrgZkXxdH/E7
X-Received: by 10.223.174.201 with SMTP id y67mr1777424wrc.7.1507047402418;
        Tue, 03 Oct 2017 09:16:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507047402; cv=none;
        d=google.com; s=arc-20160816;
        b=LHW3XLRyKa+CV6/yQceJ61zGs1Fu63s6xCG2FBhq6G+3tYFsXSwfvZMRaoZfAW1gDv
         fB5UCFEfD+IFVxAGi6IjMsGlOoCxN5Jucq+iO2RroP77sZaN71/XV4wom7yQK8F5jPr2
         OnwrM9My3aqLZ2OJVw4DPvjhawvNJIdjdYX9CCW48zO/844oXLdE0UcthUgfD0YQXrt/
         4tV7ODGKuFPHvvRf/YnjKGtL+lXwTufEvRvnX55NQ6YL8cNZFce/Bj/tA2PmKzw2k6B3
         4IGXm9UC7lEUDuiuUE6fr5r+THvBiMU4lKDzcyaVN2+0Gv/u90hte6Q2lW0gXdBRXcdV
         5+3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=j30q0k/wnPW6h2kkhrtv9GyrqxYAgh7Kf0HOlvPvCRw=;
        b=z1OjeP0GSaK10CAxsyroK2DAVu/1XgQiGvGfM8rxhu5pfEDSUXhO3KisL5sq1ROsca
         832ylEB+oe29WZOJFE4rI0O1BMdWtF+bXFMa3BUuPPbowjmoIWxORSjYvb1Ifv+C1V6+
         Dpuh9WoMUAtAehvBkP4mvjA9jVd9Qkh9hVBQ8WgcjM6cdwiTA0bA+6PGlh7M2u6o5Pv9
         tlDZzCuMkTXqryR3lwWB/YxHBtWWtOu7Wlnxbb/kSZZdN6hnTzWCSJDQNF/1wcaFI9/f
         tvnIOEoKEpOJsMKUAc2If//LVBZ0F2b0wG81LBaZ0yca1zaPvTxqKQtHgvH8ncplu3KC
         /2gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id h17si1635550wmd.0.2017.10.03.09.16.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Oct 2017 09:16:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 990528FF;
	Tue,  3 Oct 2017 16:16:40 +0000 (UTC)
Date: Tue, 3 Oct 2017 18:16:49 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: Re: [PATCH] Staging: media: atomisp: Remove duplicated argument to ||
Message-ID: <20171003161649.GA25889@kroah.com>
References: <1506079255-127380-1-git-send-email-georgiana.chelu93@gmail.com>
 <20170929133624.GA12135@kroah.com>
 <CALta04xfmkg3+4ABi-Ts_ja613up7xLy0BZ3yuXc0kVNhw8dfA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALta04xfmkg3+4ABi-Ts_ja613up7xLy0BZ3yuXc0kVNhw8dfA@mail.gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)

On Sun, Oct 01, 2017 at 01:47:41PM +0300, Georgiana Chelu wrote:
> On 29 September 2017 at 16:36, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> > On Fri, Sep 22, 2017 at 04:20:55AM -0700, Georgiana Chelu wrote:
> >> get_user() copies a variable from user space to kernel space
> >> put_user() copies a variable from kenel space to user space.
> >>
> >> Remove duplicated argument to || because consecutive calls
> >> of these functions with the same arguments will have the same
> >> result.
> >>
> >> Issue found by coccinelle script.
> >>
> >> Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
> >> ---
> >>  drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_ioctl32.c | 4 ----
> >>  1 file changed, 4 deletions(-)
> >>
> >> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_ioctl32.c b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_ioctl32.c
> >> index 0592ac1..a27ecbe 100644
> >> --- a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_ioctl32.c
> >> +++ b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_ioctl32.c
> >> @@ -432,8 +432,6 @@ static int get_atomisp_overlay32(struct atomisp_overlay *kp,
> >>                               &up->blend_overlay_perc_u) ||
> >>               get_user(kp->blend_overlay_perc_v,
> >>                               &up->blend_overlay_perc_v) ||
> >> -             get_user(kp->blend_overlay_perc_u,
> >> -                             &up->blend_overlay_perc_u) ||
> >>               get_user(kp->overlay_start_x, &up->overlay_start_y))
> >>                       return -EFAULT;
> >>
> >
> > I don't understand, you are changing the output of the code here, right?
> > Why is this patch ok?
> 
> The output of the code is the same. This patch just removes the duplicate.
> I know, it's hard to see it because the patch does not show the whole
> if statement. The get_user() function does not change the value
> of the variable from userspace. So, I thought that consecutive calls
> over the same variable will have the same result.
> 
> Here is the whole if statement. The get_user is called twice for
> the "blend_overlay_perc_u" and "up->blend_overlay_perc_u" variables.
> 
> if (!access_ok(VERIFY_READ, up, sizeof(struct atomisp_overlay32)) ||
> get_user(frame, &up->frame) ||
> get_user(kp->bg_y, &up->bg_y) ||
> get_user(kp->bg_u, &up->bg_u) ||
> get_user(kp->bg_v, &up->bg_v) ||
> get_user(kp->blend_input_perc_y, &up->blend_input_perc_y) ||
> get_user(kp->blend_input_perc_u, &up->blend_input_perc_u) ||
> get_user(kp->blend_input_perc_v, &up->blend_input_perc_v) ||
> get_user(kp->blend_overlay_perc_y, &up->blend_overlay_perc_y) ||
> get_user(kp->blend_overlay_perc_u, &up->blend_overlay_perc_u) ||
> get_user(kp->blend_overlay_perc_v, &up->blend_overlay_perc_v) ||
> get_user(kp->blend_overlay_perc_u, &up->blend_overlay_perc_u) ||
> get_user(kp->overlay_start_x, &up->overlay_start_y)) {...}
> 
> 
> The reason behind the second change in this patch is the same.
> The put_user() function is called twice to write the same value
> into the same variable from userspace.

Ah, ok, care to put this type of info in the changelog itself to make it
more obvious?

thanks,

greg k-h

