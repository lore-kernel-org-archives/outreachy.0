X-GM-THRID: 6155043602432
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,30cbcfb1097dadf6
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.40.81 with SMTP id v17mr170101lbk.5.1425422076355;
        Tue, 03 Mar 2015 14:34:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.19.234 with SMTP id i10ls100763lae.103.gmail; Tue, 03 Mar
 2015 14:34:35 -0800 (PST)
X-Received: by 10.152.45.7 with SMTP id i7mr167996lam.9.1425422075918;
        Tue, 03 Mar 2015 14:34:35 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id by11si1012200wib.1.2015.03.03.14.34.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 14:34:35 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,684,1418079600"; 
   d="scan'208";a="124247197"
Received: from unknown (HELO [132.207.219.164]) ([132.207.219.164])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 03 Mar 2015 23:34:34 +0100
Date: Tue, 3 Mar 2015 17:34:33 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vaishali Thakkar <vthakkar1994@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Fix duplicate
 conditional branch
In-Reply-To: <CAK-LDbKcVLuoedmX-HJxaeR9ZkY9ZNXdx+j7xzu1kx3+pmuyXA@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1503031734190.2677@hadrien>
References: <cover.1425367678.git.vthakkar1994@gmail.com> <1bdb9ff234b262793c0537cc9e11cf087202e61a.1425367678.git.vthakkar1994@gmail.com> <alpine.DEB.2.10.1503030722380.2723@hadrien> <CAK-LDbKcVLuoedmX-HJxaeR9ZkY9ZNXdx+j7xzu1kx3+pmuyXA@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 3 Mar 2015, Vaishali Thakkar wrote:

> On Tue, Mar 3, 2015 at 5:52 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > On Tue, 3 Mar 2015, Vaishali Thakkar wrote:
> >
> >> Replace duplicate branch with correct value. This branch
> >> is supposed to work for low thresh value.
> >
> > How did you find the problem?
>
> From git log. I was looking for git log of driver rtl8192e for that setup_timer
> problem and saw that someone sent a patch for this. And as rtl8192u and
> rtl8192e follows the same structure, I just looked at file of this driver. And
> this problem for rtl8192u was still there. So, I just sent a patch.
>
> Also, while changing this code I found that rtl8192u is not using any macro and
> rtl8192e was using one useless macro. So, I sent a patch for it also.

Good work :)

julia

> > julia
> >
> >> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
> >> ---
> >>  drivers/staging/rtl8192u/r8192U_dm.c | 4 ++--
> >>  1 file changed, 2 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
> >> index 7199616..5a01b7d 100644
> >> --- a/drivers/staging/rtl8192u/r8192U_dm.c
> >> +++ b/drivers/staging/rtl8192u/r8192U_dm.c
> >> @@ -1628,8 +1628,8 @@ void dm_change_dynamic_initgain_thresh(struct net_device *dev, u32 dm_type,
> >>               dm_digtable.rssi_low_thresh = dm_value;
> >>       } else if (dm_type == DIG_TYPE_THRESH_HIGHPWR_HIGH) {
> >>               dm_digtable.rssi_high_power_highthresh = dm_value;
> >> -     } else if (dm_type == DIG_TYPE_THRESH_HIGHPWR_HIGH) {
> >> -             dm_digtable.rssi_high_power_highthresh = dm_value;
> >> +     } else if (dm_type == DIG_TYPE_THRESH_HIGHPWR_LOW) {
> >> +             dm_digtable.rssi_high_power_lowthresh = dm_value;
> >>       } else if (dm_type == DIG_TYPE_ENABLE) {
> >>               dm_digtable.dig_state           = DM_STA_DIG_MAX;
> >>               dm_digtable.dig_enable_flag     = true;
> >> --
> >> 1.9.1
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1bdb9ff234b262793c0537cc9e11cf087202e61a.1425367678.git.vthakkar1994%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
>
>
> --
> Vaishali
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAK-LDbKcVLuoedmX-HJxaeR9ZkY9ZNXdx%2Bj7xzu1kx3%2BpmuyXA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

