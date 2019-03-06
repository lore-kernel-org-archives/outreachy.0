X-GM-THRID: 6665329083117731840
X-Received: by 2002:a37:6549:: with SMTP id z70mr5209535qkb.14.1551893809341;
        Wed, 06 Mar 2019 09:36:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:8b55:: with SMTP id d21ls1338162qvc.2.gmail; Wed, 06 Mar
 2019 09:36:48 -0800 (PST)
X-Google-Smtp-Source: APXvYqzir+Y7bZwDYBX769enLkhREf4BPgp9ecCyihk6kStAG8x4vEHv87/y9Oddp1WZNUliAP49
X-Received: by 2002:a0c:af6c:: with SMTP id j41mr5410482qvc.29.1551893808709;
        Wed, 06 Mar 2019 09:36:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551893808; cv=none;
        d=google.com; s=arc-20160816;
        b=Df1+6O7dnQwxWS7vxMzWrmad+ZNJTN8IWaWD5gE1dL5BuGAXSVravL9qq8ZAkyPuS/
         rT+xy3MzMvRL8BtF2KwN9mbaKRQ+KPjdAzUNMyT/HTRED9rRyowUWdqjzGT3Lr2awfxw
         i0nGUwDonBd6HIgEgjLk66RvmZXc+PTi88Ctoxcm+WWMlqvnEnEOkpv8JeVdS6t20sVZ
         ye1qQ9uD/vjNfivk1T40xZQd6MWAdiBVda33XRHgUubQI8vi+aQOqtPClQ960HYRh3n0
         az9gTmv9QRb9Za9Xb5F42sX7NOxXMzCAw4+d9EKBCt6pT//quZVG4DdopFG8T+PF/r73
         XIVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZxIY4ejTjKrc/UxEXHGlLHdn7bMpzkuORytbe61caNo=;
        b=im64llBdrX7BipH6PRViXiSkIxcsnEQ4swbXDGZfnS8fWjJ85CtsP7b0MeOAxxqgDp
         wVvjotb8iJYp8XXx1q3rnx/CwG3fsQRHe1HHVQ7dgtGzQprFFu21LtmFJAm6YpukPNm8
         xDD4Q/NHFmALm1x1G0rHY5aPAlktPGce5PpmGW3P+hezTbHmyfP3jQ63IMe0w/aB7pIQ
         UvD5d0UJxAUeyQGoF1tXFo47ywsIWgACOKN4rIh13p6IWcXA2WUgoxZAv3yEz0NJGQA7
         sQHRRghwFTJ4mkEHJXVFWFaso0nbim270pLgfOEqeYr1m4fkJ7sNrnJ97DzRkfUYKWP/
         7xBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m24xak86;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id m1si149129qtc.2.2019.03.06.09.36.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 09:36:48 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m24xak86;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x844.google.com with SMTP id j36so13749839qta.7
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Mar 2019 09:36:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZxIY4ejTjKrc/UxEXHGlLHdn7bMpzkuORytbe61caNo=;
        b=m24xak86by4P+jqVgGRbFYkTr42g5Yr45LMiVuuc7bWva6fIK5YCBdad6sgm2oqdns
         oZ0Cy0Q9junlO6T9diHbdoBCVLUVcK7feY3OonEn/DP0g42cuFO0KurVaJW4cSyKTNwv
         RP/khNvi1Y9OqvrzM7y+k9TvmGXc7T99Z1yArT/Y07jd2nmivKPeMwV5tKshQ5bbisI8
         7WTXwlvnsGiBeNSxfXCX42kqa3sV1fliNi90CIC8pYQCGJHOoYBAe/W4DO+LxtsBCp2r
         0aX4IRL7t24DMjDGkTVFcWwelVhx6CMXUk+42WyA8zboVa/WIPSJeYQk388WX8o2YdOU
         /9Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZxIY4ejTjKrc/UxEXHGlLHdn7bMpzkuORytbe61caNo=;
        b=gy4IFZif1F2ym7QitRUGdHsN4R03WpgHQVMRrOrWbt9xIXKnH34OG7fML0kdzrJq//
         mM7hVspd4DFNLVJOZ8fMcbAFZ5fbENnUcb5SOucDmBbEVYgHCH+AFqd4LyxxmUSoq8F3
         MHSR0bfBfNizXzPbObYexM7h2IWpAvafzonZbbR8Lf9KjF0uZTVJ5X5tTZt9JySlWTVl
         RQfcYDURWI/wWMEy3LfSb/kBPAvBuxN9U+FFOhgGfD3aLO+L/mxH5YtZISH1Szkn3w6T
         eHQQF2lTOHd5qsCzL1AVptriQugN3CIDWbBRsDlEmToLBPVvDUj2D8JDeTgZmqLwW//9
         XZcg==
X-Gm-Message-State: APjAAAVULMbjNa57SR3ogPv2UHWgx/mI141n8hqWY4vhVTk/5sSLJxkF
	A+rnQCnl81XLJ2ePANczC3EloQd6eeVCRRkj9Vo=
X-Received: by 2002:ac8:2273:: with SMTP id p48mr6589142qtp.7.1551893808337;
 Wed, 06 Mar 2019 09:36:48 -0800 (PST)
MIME-Version: 1.0
References: <20190306172049.GA14665@bhagyashri-Lenovo-G570> <alpine.DEB.2.20.1903061824140.7484@hadrien>
In-Reply-To: <alpine.DEB.2.20.1903061824140.7484@hadrien>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Wed, 6 Mar 2019 23:06:10 +0530
Message-ID: <CAOMPgjhhuAM9f=G0Wef90EFUT-ht88=C8jOSLyASJJxOZfUPoA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: netlogic: Modify coding style alignments.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 6, 2019 at 10:54 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Wed, 6 Mar 2019, Bhagyashri Dighole wrote:
>
> > Fix coding style issues, detected by checkpatch.pl "CHECK:
> > Alignment should match open parenthesis"
> >
> > Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> > ---
> >  drivers/staging/netlogic/xlr_net.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
> > index 8554fcf..dc487d7 100644
> > --- a/drivers/staging/netlogic/xlr_net.c
> > +++ b/drivers/staging/netlogic/xlr_net.c
> > @@ -358,7 +358,7 @@ static void xlr_stats(struct net_device *ndev, struct rtnl_link_stats64 *stats)
> >                           stats->rx_missed_errors);
> >
> >       stats->tx_aborted_errors = xlr_nae_rdreg(priv->base_addr,
> > -                     TX_EXCESSIVE_COLLISION_PACKET_COUNTER);
> > +                                              TX_EXCESSIVE_COLLISION_PACKET_COUNTER);
>
> The code was better before, becuse it didn't go over 80 characters.

Yes. Sure.
> julia
>
> >       stats->tx_carrier_errors = xlr_nae_rdreg(priv->base_addr,
> >                                                TX_DROP_FRAME_COUNTER);
> >       stats->tx_fifo_errors = xlr_nae_rdreg(priv->base_addr,
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190306172049.GA14665%40bhagyashri-Lenovo-G570.
> > For more options, visit https://groups.google.com/d/optout.
> >

