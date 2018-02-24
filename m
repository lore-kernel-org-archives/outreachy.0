X-GM-THRID: 6526024412200697856
X-Received: by 10.28.196.7 with SMTP id u7mr422429wmf.14.1519462931977;
        Sat, 24 Feb 2018 01:02:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.214.21 with SMTP id n21ls795258wmg.0.canary-gmail; Sat, 24
 Feb 2018 01:02:09 -0800 (PST)
X-Google-Smtp-Source: AG47ELs9vP0DpW/lcQR0i8h7EUGHYHBzMhJo9z+8IVyGsiJt8q5IUsGsBYEygIDxt5Ef4s7xxRgy
X-Received: by 10.28.99.8 with SMTP id x8mr426869wmb.13.1519462929347;
        Sat, 24 Feb 2018 01:02:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519462929; cv=none;
        d=google.com; s=arc-20160816;
        b=VdBWH2DXUgb+jUhxjXFFwQq+hChoozsKwnScmaitUixPL2IK8NGU1dsPvfwec+Q0Qf
         XkUpZiTDtUBZER7+HWGYTQGkub7ogoinLslayIh/PLiS9eLtugObNB5KkIaw88ILddyl
         9AroXhcJ8dbmyUopjRaEGgqaszdBuSmgoDL1rvAMgJZ38ayWtFoxiedan7ba/2rwMR4E
         yz9tisZpsunZQvsIiriVqyJigxt38G2divOutjUKWOUD+uKs0JheOCiQJ+1/GtAwLC04
         MsORuiMuatCeDVHBhynl5vpgn6vufcIgDJ6kXBQU5s9lbsuRcd6DfGVKTccVqL8Gk/dA
         O0JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=PydEt5aJBU/e0fJUSKJuwlFGNvfeSKikzJEIzeXzpBo=;
        b=Zbm0/BHNkFGyAeaDhWnxDX1aWTCe6cYliN+r3EjzbAOWDRYL458NCdYgxSbgWW/vYT
         QyC8TOkMHm3V7d2/wpt5gO/Dk0v7fYCv0FoamXgmS8tOLccfaz82wSZoFDTTiH7Hc5Qw
         9nisTSbt3i1wWBEX+Mf3PT+3E9V1pV06gKtYAhtZ3PmbYF3yFN+6px3LVrJOzNfswaGe
         hpz6pAlJceFtcYcgkID0YixY1m3/08AjCa7OJf7qeJ1IlF/u/najO1uTdJl3B4mnoJXw
         tBkfJYGBywC6MiwykoDDgsRV3iU2LMoTxvB8KhIP9yaokw9Yq9w+LhyUpK6TQpjXHK7n
         TaCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UFLm9DXd;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id s81si154523wmd.2.2018.02.24.01.02.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Feb 2018 01:02:09 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UFLm9DXd;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id a20so9988443wmd.1
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Feb 2018 01:02:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=PydEt5aJBU/e0fJUSKJuwlFGNvfeSKikzJEIzeXzpBo=;
        b=UFLm9DXdjdY/wKKrKi1r+m7rrh/VUDyv6UJDxnzR9P6yw9Sfai9TK+tskaHBcB6HZ2
         wYp5yC/ms1Xjse/Cp0vjfZP5Dt2+IY4aNHXVwNmk1Y6KNTgY/3PaTozJLaDbJkE3jCqs
         MjbmAofFWZDR2qUaCRFwtHUrH/X+JK3Z920eIC0YPGW2tPZgrLNE8vOdkykyQnAQa3D+
         r6/UuZoMq6HxfKFHqUuY0JfFOosL7ZUamFc1X/ZisCzmKGRD9Yjq/PjxEaGIbUgpkfRd
         YCF2DngTV5Lt/UCt4K/AOSdZko+KqKPvQQFcfga7HCCSf9FgCl3VL90qiPXguiJdAP3H
         oiyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=PydEt5aJBU/e0fJUSKJuwlFGNvfeSKikzJEIzeXzpBo=;
        b=NZXlbzH/UPiGnusEQA03WG8mgy4H6NR/MpC5o68B8tIUTcM273DKXRRqTgajUQ3Ew4
         UFesX8V6561EvXm7qnjyaekfFjNPzIj8YttwJY+wMowipNd4Oe48fymSdcAXMq3mvv2C
         inwsUMujw1vb13LoklOWyT7i50q6eUXQOcL3zDe4Or2QS7I4vhvdypu5B+td4GZVamH0
         /e5/wolE4irlGQxyI2yZxOzmvHiT1Eukv83B98b5pP0G2028w9jdFkdfV335/EVdQwjp
         //NlJx96n+pAJ9k3PVoTqmAEygnlyMJyvyMAN6PbLstRqOYHvDDEMH0py+zlWgXYAFE3
         9V1g==
X-Gm-Message-State: APf1xPDrWdcOfN42b7L2vzQjpXG2zj68SBojn4d9+FGnqsEjPCRiAHBQ
	czWKpSlM/af7hqOMZ9Njqro=
X-Received: by 10.28.144.193 with SMTP id s184mr3940542wmd.68.1519462928913;
        Sat, 24 Feb 2018 01:02:08 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from gmail.com (IGLD-84-229-101-166.inter.net.il. [84.229.101.166])
        by smtp.gmail.com with ESMTPSA id z73sm4395311wmc.3.2018.02.24.01.02.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Feb 2018 01:02:08 -0800 (PST)
Date: Sat, 24 Feb 2018 11:02:04 +0200
From: Dafna Hirschfeld <dafna3@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: merge 'if'
 statements that test the same condition
Message-ID: <20180224090203.GA29453@gmail.com>
References: <20180224074733.GA6487@gmail.com>
 <alpine.DEB.2.20.1802240859300.16912@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1802240859300.16912@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Feb 24, 2018 at 09:03:20AM +0100, Julia Lawall wrote:
> 
> 
> On Sat, 24 Feb 2018, Dafna Hirschfeld wrote:
> 
> > Merge the instructions of two 'if' statements that test the same
> > condition and move a 'memcpy' instruction related to a different variable.
> > Issue found with coccicheck.
> >
> > Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> > ---
> >  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 8 +++-----
> >  1 file changed, 3 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > index 621810d..f6f2c7f8 100644
> > --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > @@ -962,15 +962,13 @@ static int add_key(struct wiphy *wiphy, struct net_device *netdev, u8 key_index,
> >
> >  				priv->wilc_ptk[key_index]->key = kmalloc(params->key_len, GFP_KERNEL);
> >
> > +				memcpy(priv->wilc_ptk[key_index]->key, params->key, params->key_len);
> >  				kfree(priv->wilc_ptk[key_index]->seq);
> 
> How about moving the memcpy up a line to be next to the kmalloc, and to be
> separated by a blank line from the kfree, which is on a different
> location.
> 
> These kmallocs should also have null tests to check for failure.  That
> could be the first patch in the series with this patch being the second
> one.  The missing null checks represent a small bug, and a bug should not
> depend on a cleanup.
> 
> julia
> 
Hi, the file has about 17 calls to kmalloc that are not tested for null.
Wouldn't it be better to fix all of them in a different patch?

Dafna
 
> >
> > -				if (params->seq_len > 0)
> > +				if (params->seq_len > 0) {
> >  					priv->wilc_ptk[key_index]->seq = kmalloc(params->seq_len, GFP_KERNEL);
> > -
> > -				memcpy(priv->wilc_ptk[key_index]->key, params->key, params->key_len);
> > -
> > -				if (params->seq_len > 0)
> >  					memcpy(priv->wilc_ptk[key_index]->seq, params->seq, params->seq_len);
> > +				}
> >
> >  				priv->wilc_ptk[key_index]->cipher = params->cipher;
> >  				priv->wilc_ptk[key_index]->key_len = params->key_len;
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180224074733.GA6487%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

