X-GM-THRID: 6614961709570326528
X-Received: by 2002:a62:8a41:: with SMTP id y62-v6mr23346075pfd.70.1540277830249;
        Mon, 22 Oct 2018 23:57:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:4289:: with SMTP id j9-v6ls981776pgp.7.gmail; Mon, 22
 Oct 2018 23:57:09 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63/qlWu+mYBrmw+3D7l7GfPFgDv1rck++Q9Bh+/u5t31pcdVsNHm6cdKXgolXolyeV1i4gu
X-Received: by 2002:a63:c40e:: with SMTP id h14-v6mr23756057pgd.53.1540277829267;
        Mon, 22 Oct 2018 23:57:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540277829; cv=none;
        d=google.com; s=arc-20160816;
        b=fHZykik6xjsc4yrK24OX3E11UpSlerk/akdFAjZpnvkH9e5lU65i3vxK1nC1k1lHLn
         56v4z7HtIKnVBc7YU5zmYs5NBW7ItQJTinEcMVhwdAudbbj+gSzKJYY92a2wAIdJ0dzu
         Ub8utGjt9YE1rBcAfGUMQ+ev7FEtnQ1go/YBswnIraevSTTaNPUs0NuheKKkfQHUL4ny
         Os3tRBvtZBz4/8+D2aKj0vkxSdyP3fn3yqr4iDzNyx3705cXYygzI4Segy3fXlU6wZ+e
         JTwutM9qB3S9TRzb7Xu1dkRgAT26khBKSp61SRLpYZD6Ybgv+EZNPi1Q/tPKbb6u4IBQ
         2Fwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=OggI3B8pQf9kprABWDItPSV2eTUg6h2TEMUdUBN1aQo=;
        b=I/FqG2TI/dOkaVYZmwyT/ZXXraKyBEqIK4YmZtqMDWyNvCAOWkcgYvkxVAHVHsfeFW
         PkvVAtNO5VNpme5lFxfTC0Rg0Gjy9sAq76xbblXaK6diaj1nBfA2aGvmyJRcV9VmaHWx
         QekOLxl6pYg1NCtNNq82GnlkbVvKwoyYojbm+kGW7SrZ2LtVXGCnovMTGSlNLZqY5hyp
         coS1ZW0VVvFeNc0gYUYe9dgpju+yGZlAFRBxtLohW2/y73SYzqeHSX7RivmEQM5VDtIx
         mJzM/ppnuuShrF0E6QbTF46iKJLGN86I5iCtLa/kI+V1t841A5giPPKk/r8h7itUDPDF
         VEDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bh+p26ML;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id 184-v6si10613pgb.4.2018.10.22.23.57.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Oct 2018 23:57:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bh+p26ML;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id a19-v6so200554pfo.8
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Oct 2018 23:57:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=OggI3B8pQf9kprABWDItPSV2eTUg6h2TEMUdUBN1aQo=;
        b=bh+p26MLvBqP6fhpHKl/iV66uWPw6iZ7rZP4ddfcbHF8UUVCTno56HWAf6iPk/dRJk
         rLpB9levYy9n23AH/YEz0Do+N6NQgvpUKOKw7JCuqK9f2D3B/OuNMBbs4cRcyfJQyfEt
         u0/batGv6fxHdP7K5m8F1CoHONkoCKM1XWn8l2mFeU61Vi4R1XcyVkudpOGZRixH1zHG
         ARqDgQCIUIpWSyM87pLjATECqgPSpd5vwOhsdwolqr2vOAKrPRTXJmlF65e/LKFfPs5e
         VfmiccTtrBM7bnSUZKdkCDD60RQa+cFNKSMrgjL6wDS5YqBrpOcoGDsF0NbKnA0+I+2H
         DaNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=OggI3B8pQf9kprABWDItPSV2eTUg6h2TEMUdUBN1aQo=;
        b=rkY57sCbByjORuY3AFuG6gceWvhA61WP+8Tic1zMqbrSsOpl0jmuvwbeIA9RAuapor
         KIazba/02RiZSNtkvCTD96eBmXATFtrCd+I6lfoxBV3dcNYVv5Lyb44loSrN5A1K4EE+
         MtOLzqo9dHaAn5rjXeB3KTP41tbl85rCVbLNGSA3DQaPRzrMCL+uVuqqnBWJ75aMgEwl
         cLAOYy+YzDabk0xP64foNbuLn+jY05WsgAVVNCaYo/BXk+ABFsQMRzxY30f9FP40ykMU
         co/r1CglQcBH9XLHv+gdIDPF3tz8sRSOdmgIqj+pqUkW3zAGDezD8oftZz732zh45KXY
         Sb+A==
X-Gm-Message-State: ABuFfohOqzyxVZMT/MMLCOX9ZZ5mjdmnOuyeQsdGa5YM0vuj10BbUhmL
	QmmxeK3IA1/qnKCHbjA23EX4KBdP
X-Received: by 2002:a62:583:: with SMTP id 125-v6mr36118117pff.186.1540277828867;
        Mon, 22 Oct 2018 23:57:08 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id e2-v6sm572314pgv.25.2018.10.22.23.57.08
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 22 Oct 2018 23:57:08 -0700 (PDT)
Date: Mon, 22 Oct 2018 23:57:05 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: rtlwifi: Remove an extra pair of braces
Message-ID: <20181023065703.GA3510@k-vBox>
References: <20181021234946.GA2183@k-vBox>
 <20181022082732.GD7068@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181022082732.GD7068@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Oct 22, 2018 at 09:27:32AM +0100, Greg KH wrote:
> On Sun, Oct 21, 2018 at 04:49:49PM -0700, Maya Nakamura wrote:
> > Remove an extra pair of braces. Issue found while reviewing one of
> > Coccinelle's semantic patch results for returnvar.cocci.
> > 
> > Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
> > ---
> >  drivers/staging/rtlwifi/phydm/phydm_hwconfig.c | 4 +---
> >  1 file changed, 1 insertion(+), 3 deletions(-)
> > 
> > diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> > index 4bf86e5a451f..90a41c64c0c2 100644
> > --- a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> > +++ b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> > @@ -484,9 +484,7 @@ static u8 odm_query_rx_pwr_percentage(s8 ant_power)
> >  
> >  s32 odm_signal_scale_mapping(struct phy_dm_struct *dm, s32 curr_sig)
> >  {
> > -	{
> > -		return curr_sig;
> > -	}
> > +	return curr_sig;
> >  }
> 
> 
> Why is this function needed at all?  Can't it just be removed and only
> use the curr_sig parameter where it is called?
> 
> thanks,
> 
> greg k-h

Thank you for suggesting further changes to the file! As you pointed
out, I can modify where the specific function is called (five places)
and remove the function's declaration/definition. I will submit a new
patch.

Maya

