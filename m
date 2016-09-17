X-GM-THRID: 6331206604146343936
X-Received: by 10.25.22.65 with SMTP id m62mr243022lfi.29.1474113403421;
        Sat, 17 Sep 2016 04:56:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.48.6 with SMTP id w6ls1045884wmw.17.canary; Sat, 17 Sep
 2016 04:56:42 -0700 (PDT)
X-Received: by 10.28.168.12 with SMTP id r12mr88168wme.12.1474113402466;
        Sat, 17 Sep 2016 04:56:42 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-lf0-x241.google.com (mail-lf0-x241.google.com. [2a00:1450:4010:c07::241])
        by gmr-mx.google.com with ESMTPS id s6si30547wmb.1.2016.09.17.04.56.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 04:56:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) client-ip=2a00:1450:4010:c07::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x241.google.com with SMTP id s29so6097227lfg.3
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 04:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ZG8pJq3GW95TOdTFLAJkSRIiobcSP31neo/ydvVMpqo=;
        b=m6sEYjJpk/TkwhunlHyRuWfVlYH4HrnegkQwJoOpLI9kMd+PngUu/b4EcQ3taRyJDu
         +yGoVP4vXhxtd8aNHV7tx8BXSSMnV17QYm2Y8Rn7c7Tnf16+HuMOjYckRoWaVzthAyK0
         5rrctxSF5EE2HTmka3ao9amaVmqZxAP+iQ5rjgjatxB4mDVobhInrycSVPfZkY+lGYVn
         v7bXUb2LM87gGg0+OWK4x3uALIW2MyJazjUy+cplMQdg/W7f76cxYZDmXO21bPXn2znT
         oq61nH7kLjoJSA1UbxMZpQMoF/en/0LE+a3AalZKMJ/mpo7MuKRINd1uQ28ZtqA+a9XW
         2CRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ZG8pJq3GW95TOdTFLAJkSRIiobcSP31neo/ydvVMpqo=;
        b=eoOtaQkfiU2V8GCmOF8x/GUFbk3YoJ/J0Fpyry4dNH9L6/Aa/INEJV3z5TKfsSuDZW
         J+uCM+qNoGZPQEXjOTApwCfvroX9wzSaAvuDfUlorbaTEjkHEJbc3wAFaS1R4VO75b6J
         bezq/u1M0gnUz/gIAwiPGs4RCOFbl2Fns2P0a5Orp7fkNG6+XVkWutxgJs+gFhXBy6i3
         cLoosT/h7YD08Z4DkfqPHRDjUbj5PXxB6JRQ9LXYXmI8ppQdqOjIo/Xk+YKovik5BpvU
         /qjpup+nLyhrUp7Ai9SNpkNMGsqcUJNzd+mn4Mf5kgULwsNMJSc8Vbnd0FhNLGGJAye1
         z7IA==
X-Gm-Message-State: AE9vXwMBoBHbMxjP4te/u6B35ZQuqcBL4+2uzZ3hWxg5IZ1ZYTlJ1/ycjJo/fihxorM29X0/ylPFkeo3ODQdrg==
X-Received: by 10.25.66.11 with SMTP id p11mr1077752lfa.154.1474113402116;
 Sat, 17 Sep 2016 04:56:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.78.72 with HTTP; Sat, 17 Sep 2016 04:56:41 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609171042210.3113@hadrien>
References: <1474098886-6239-1-git-send-email-bhumirks@gmail.com> <alpine.DEB.2.10.1609171042210.3113@hadrien>
From: Bhumika Goyal <bhumirks@gmail.com>
Date: Sat, 17 Sep 2016 17:26:41 +0530
Message-ID: <CAOH+1jHLEeGE2fSzKUqF4UOHZZO=6Bke8Xr_t11xa6kwvq2=xA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: Move extern
 declaration to header
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com, 
	ganesh.krishna@microchip.com, aditya.shankar@microchip.com
Content-Type: text/plain; charset=UTF-8

On Sat, Sep 17, 2016 at 2:16 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Sat, 17 Sep 2016, Bhumika Goyal wrote:
>
> > Move extern declaration in wilc_wfi_cfgoperations.c to the
> > respective header wilc_wfi_cfgoperations.h. Extern
> > removed using coccinelle and other changes done by hand.
>
> With grep, it looks to me like these functions are only used in
> linux_wlan.c.  There is a declaration in wilc_wfi_cfgoperations.c, but no
> use.  Thus, it looks like the functions could be static.  Furthermore, if
> the declaration of the wilc_netdev_ops structure were moved lower in the
> file, perhaps the forward declarations could be dropped completely.
>

Yes, the functions wilc_mac_{close/open} can be made static. So I will
do it in v2 of this patch and remove their declaration from the header
as well as it won't be needed after making them static.
And the forward function prototypes can be dropped as well  if the
structure wilc_netdev_ops is moved lower.
I will make a separate patch for this change.

Thanks,
Bhumika
>
> Be sure that you can compile the whole driver to check this.  There is
> always the possibility of something strange being done with a macro that
> could obscure another use.
>
> julia
>
> > Script:
> > @@
> > identifier func;
> > type T;
> > @@
> > - extern
> > T func(...);
> >
> > Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> > ---
> >  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 3 ---
> >  drivers/staging/wilc1000/wilc_wfi_cfgoperations.h | 2 ++
> >  2 files changed, 2 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > index 2c2e8ac..3b26130 100644
> > --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > @@ -90,9 +90,6 @@ static const struct wiphy_wowlan_support wowlan_support = {
> >  #define IS_MGMT_STATUS_SUCCES                        0x040
> >  #define GET_PKT_OFFSET(a) (((a) >> 22) & 0x1ff)
> >
> > -extern int wilc_mac_open(struct net_device *ndev);
> > -extern int wilc_mac_close(struct net_device *ndev);
> > -
> >  static struct network_info last_scanned_shadow[MAX_NUM_SCANNED_NETWORKS_SHADOW];
> >  static u32 last_scanned_cnt;
> >  struct timer_list wilc_during_ip_timer;
> > diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
> > index 85a3810..ca71e49 100644
> > --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
> > +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
> > @@ -19,5 +19,7 @@ int WILC_WFI_deinit_mon_interface(void);
> >  struct net_device *WILC_WFI_init_mon_interface(const char *name, struct net_device *real_dev);
> >  void wilc_mgmt_frame_register(struct wiphy *wiphy, struct wireless_dev *wdev,
> >                             u16 frame_type, bool reg);
> > +int wilc_mac_open(struct net_device *ndev);
> > +int wilc_mac_close(struct net_device *ndev);
> >
> >  #endif
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1474098886-6239-1-git-send-email-bhumirks%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

