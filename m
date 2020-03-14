X-GM-THRID: 6803941009110597632
X-Received: by 2002:a1c:ba04:: with SMTP id k4mr2994990wmf.165.1584192822713;
        Sat, 14 Mar 2020 06:33:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:208f:: with SMTP id g137ls3099148wmg.1.gmail; Sat, 14
 Mar 2020 06:33:41 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtcS2zutJTikV7bwT7j61UAbMuBuOf9VEoYOIJAfLkUSePVWjKQ/vEBOcHhw5CxgFJll4sw
X-Received: by 2002:a1c:e341:: with SMTP id a62mr17502430wmh.121.1584192821294;
        Sat, 14 Mar 2020 06:33:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584192821; cv=none;
        d=google.com; s=arc-20160816;
        b=jDTGwnrpvldeYcf/SsyVvAuCpdrZ3FMEQ2EZGOjdzpGKGCzkB7aN3nIjemCejQnxgp
         s2mpvz16Unx+6wG4JpTk2zbuw94WR8denxXWMfsrvu4YugPKwVTdiNxw7CBnQc0zsZW9
         HWZIsFkdBp4nfwSp8hBFYQBegcrO2CK/NyjAmRpl5t/g9nz6fMr2WAQdDJYi3xeDk5k8
         SvHPTJgVbdp1L9/r5rz4xcNV7Kq3fAcoD770+S7AYKp/mr5YK0CDFkQfWAjRiZ0DOMvT
         nfUsRky91Vtx0ONxAmKI49cpqu/fgaFjW2mhOq5CVs4JcLmK1Nhi4r9UFm3TkqTKcTYj
         qA3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=BaBZnHnEW6p02QY+kkLlnDvt4MtWQ9DRgevjs7nRNYw=;
        b=NquE5VE3h4RTWMy9N3FND5K6CDT1VauXPFWb3WmKHhd/TTsmcl72nozTW2vQr3l8C+
         Yi8VelfBg6OvmLz5LZsPTIP3ONkR1IWD37WEPU+ar0FIlNQmTvUn1w5Hte5/P6zFPLif
         fYg1QYaqnOZfSzd0ofUquujuld+FrPAXuxdnI86yvBaLIpwjOfkIJmdadtSNxG+pO8h7
         ivx9SXXdh41TS4h1qSc67LPccmF+V9yHJ4w/5QbN3cf6AXiGpU9+ttakB7MaVoqqC3fM
         sK88rH3uHmk08f8+DAP974akrhl8axAHqVYx6PCt05I3EuDaTGFTRaEn5wCwVzT98Ky7
         SkPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id y185si433243wmd.2.2020.03.14.06.33.41
        for <outreachy-kernel@googlegroups.com>;
        Sat, 14 Mar 2020 06:33:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 4691 invoked from network); 14 Mar 2020 13:33:39 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.209.197.122)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 14 Mar 2020 13:33:39 -0000
Date: Sat, 14 Mar 2020 19:03:31 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rts5208: Fix long line in C
 func call argument
Message-ID: <20200314133329.GA1569@tulip.local>
References: <20200314060539.GA2709@tulip.local>
 <alpine.DEB.2.21.2003141249590.3026@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003141249590.3026@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Sat, Mar 14, 2020 at 12:51:16PM +0100, Julia Lawall wrote:
> 
> 
> On Sat, 14 Mar 2020, R Veera Kumar wrote:
> 
> > A simple fix of long line in C function call argument.
> 
> Try to rewrite the whole thing without using the word "fix".  What did you
> do and why?
> 
> Simple is not a good word to use, because it is your opinion.  It is
> probably everyone's opinion in this case, but it is still an opinion.
> 
> julia
>

Is subject line ok? I mean the word 'fix' in it.

Is this ok for body:

A correction of long line function call with arguments exceeding the
80 columns limit of coding style.

> 
> > Found using checkpatch.pl.
> >
> > Signed-off-by: R Veera Kumar <vkor@vkten.in>
> > ---
> >  drivers/staging/rts5208/rtsx_chip.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/rts5208/rtsx_chip.c b/drivers/staging/rts5208/rtsx_chip.c
> > index 17c4131f5f62..c6f9375468eb 100644
> > --- a/drivers/staging/rts5208/rtsx_chip.c
> > +++ b/drivers/staging/rts5208/rtsx_chip.c
> > @@ -940,7 +940,8 @@ static void rtsx_monitor_aspm_config(struct rtsx_chip *chip)
> >  		if (maybe_support_aspm)
> >  			chip->aspm_l0s_l1_en = 0x03;
> >
> > -		dev_dbg(rtsx_dev(chip), "aspm_level[0] = 0x%02x, aspm_level[1] = 0x%02x\n",
> > +		dev_dbg(rtsx_dev(chip),
> > +			"aspm_level[0] = 0x%02x, aspm_level[1] = 0x%02x\n",
> >  			chip->aspm_level[0], chip->aspm_level[1]);
> >
> >  		if (chip->aspm_l0s_l1_en) {
> > --
> > 2.20.1
> >

