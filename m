X-GM-THRID: 6331206604146343936
X-Received: by 10.25.204.21 with SMTP id c21mr270520lfg.19.1474126368952;
        Sat, 17 Sep 2016 08:32:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.181.209 with SMTP id e200ls1192765wmf.19.canary; Sat, 17
 Sep 2016 08:32:47 -0700 (PDT)
X-Received: by 10.28.167.216 with SMTP id q207mr128720wme.4.1474126367968;
        Sat, 17 Sep 2016 08:32:47 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-lf0-x244.google.com (mail-lf0-x244.google.com. [2a00:1450:4010:c07::244])
        by gmr-mx.google.com with ESMTPS id c13si1000218wme.3.2016.09.17.08.32.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 08:32:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) client-ip=2a00:1450:4010:c07::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x244.google.com with SMTP id s64so6283083lfs.2
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 08:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=1zbYuo2lLBJVrlF1Jn3ocZW+QBl+/JiPJ/ALI02PT+c=;
        b=p1RDdmd/bNzBG97fxXMtcTnGfiCQ/5MBR9Vr7RSDFezjVGzbKXU/H+EM/c21tkRRSV
         s3KSQkoidrJcQZDHw++nNwD+wNMX96w9uXf72uy9j9+fFmniUp2ul5olJDGafmdorsN+
         AT4Qb/Xue0n8ndz7nUw83DkcRSUKL0wHiEe0T1nSyoYvUanmV5TUmzGlGlbPUNL6THal
         pPOC+Xu/kvmVzWLIq4++HsJj0F5w7/v/8u+JlmsvSI1nj7LeTrzvIx+b/oulSeDZNJ/d
         g58Kf++X5egzoCmPrPuQNfIow3PKBRW86khwaCHzE8lfO9s+MYAhbdVJ1O+iXFGZYmSC
         tU0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=1zbYuo2lLBJVrlF1Jn3ocZW+QBl+/JiPJ/ALI02PT+c=;
        b=U+f/Vi9m8gVf13tXqHZAdpxcIWSB51LM2OrKG4uo+pEr5OwtYVw90b4qtruiubhr4P
         8LH7kt/f+1ni2sDF8wa0rY8kfieoWIpKnkmdCjnQ3Di64yWA92SZmtMEispCEjuMKzRY
         jSlglmhZrNBOv11iulugD9gnxEy9Ba9achr6R6DSejlt+jmfUYWvDsyYwcdYAkAydbWq
         TCtm5+FE1TBijjCeW7NLd+a3ybvLdxQW4ti6iGF+H6vV6xHHxi/p02kVemAOxxC0MulH
         lQ6DB+OJSSJ5878vKrZZzQPU1lhsRPt2/gMvjCBQr9FiJhSraoICiNjMtHRO/77W2rJs
         +kwQ==
X-Gm-Message-State: AE9vXwPmrGy+MlWFJwY22PtRuPO3ITbrw/cqIQNg0UegS2i7gqCTvWGhg3VNTS8/aSOOz6XfFPsMJdaeDW8oJQ==
X-Received: by 10.46.71.19 with SMTP id u19mr7746160lja.23.1474126367345; Sat,
 17 Sep 2016 08:32:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.78.72 with HTTP; Sat, 17 Sep 2016 08:32:46 -0700 (PDT)
In-Reply-To: <CAOH+1jHLEeGE2fSzKUqF4UOHZZO=6Bke8Xr_t11xa6kwvq2=xA@mail.gmail.com>
References: <1474098886-6239-1-git-send-email-bhumirks@gmail.com>
 <alpine.DEB.2.10.1609171042210.3113@hadrien> <CAOH+1jHLEeGE2fSzKUqF4UOHZZO=6Bke8Xr_t11xa6kwvq2=xA@mail.gmail.com>
From: Bhumika Goyal <bhumirks@gmail.com>
Date: Sat, 17 Sep 2016 21:02:46 +0530
Message-ID: <CAOH+1jFDpFBqb==s=VPZZjLojAP8GRD61sk5dgxZPmuY1MFTZA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: Move extern
 declaration to header
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com, 
	ganesh.krishna@microchip.com, aditya.shankar@microchip.com
Content-Type: text/plain; charset=UTF-8

On Sat, Sep 17, 2016 at 5:26 PM, Bhumika Goyal <bhumirks@gmail.com> wrote:
>
> On Sat, Sep 17, 2016 at 2:16 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> >
> > On Sat, 17 Sep 2016, Bhumika Goyal wrote:
> >
> > > Move extern declaration in wilc_wfi_cfgoperations.c to the
> > > respective header wilc_wfi_cfgoperations.h. Extern
> > > removed using coccinelle and other changes done by hand.
> >
> > With grep, it looks to me like these functions are only used in
> > linux_wlan.c.  There is a declaration in wilc_wfi_cfgoperations.c, but no
> > use.  Thus, it looks like the functions could be static.  Furthermore, if
> > the declaration of the wilc_netdev_ops structure were moved lower in the
> > file, perhaps the forward declarations could be dropped completely.
> >
>
> Yes, the functions wilc_mac_{close/open} can be made static. So I will
> do it in v2 of this patch and remove their declaration from the header
> as well as it won't be needed after making them static.
> And the forward function prototypes can be dropped as well  if the
> structure wilc_netdev_ops is moved lower.
> I will make a separate patch for this change.
>
> Thanks,
> Bhumika

Hey Greg,
I am dropping this patch because as pointed by Julia the functions can
be made static. So, I will do that in a separate patch along with some
other changes.

Thanks,
Bhumika
> >
> > Be sure that you can compile the whole driver to check this.  There is
> > always the possibility of something strange being done with a macro that
> > could obscure another use.
> >
> > julia
> >
> > > Script:
> > > @@
> > > identifier func;
> > > type T;
> > > @@
> > > - extern
> > > T func(...);
> > >
> > > Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> > > ---
> > >  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 3 ---
> > >  drivers/staging/wilc1000/wilc_wfi_cfgoperations.h | 2 ++
> > >  2 files changed, 2 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > > index 2c2e8ac..3b26130 100644
> > > --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > > +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > > @@ -90,9 +90,6 @@ static const struct wiphy_wowlan_support wowlan_support = {
> > >  #define IS_MGMT_STATUS_SUCCES                        0x040
> > >  #define GET_PKT_OFFSET(a) (((a) >> 22) & 0x1ff)
> > >
> > > -extern int wilc_mac_open(struct net_device *ndev);
> > > -extern int wilc_mac_close(struct net_device *ndev);
> > > -
> > >  static struct network_info last_scanned_shadow[MAX_NUM_SCANNED_NETWORKS_SHADOW];
> > >  static u32 last_scanned_cnt;
> > >  struct timer_list wilc_during_ip_timer;
> > > diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
> > > index 85a3810..ca71e49 100644
> > > --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
> > > +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
> > > @@ -19,5 +19,7 @@ int WILC_WFI_deinit_mon_interface(void);
> > >  struct net_device *WILC_WFI_init_mon_interface(const char *name, struct net_device *real_dev);
> > >  void wilc_mgmt_frame_register(struct wiphy *wiphy, struct wireless_dev *wdev,
> > >                             u16 frame_type, bool reg);
> > > +int wilc_mac_open(struct net_device *ndev);
> > > +int wilc_mac_close(struct net_device *ndev);
> > >
> > >  #endif
> > > --
> > > 1.9.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1474098886-6239-1-git-send-email-bhumirks%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >

