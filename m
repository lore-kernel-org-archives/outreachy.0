X-GM-THRID: 6249599077237915648
X-Received: by 10.182.204.74 with SMTP id kw10mr5424459obc.45.1455346274709;
        Fri, 12 Feb 2016 22:51:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.92.203 with SMTP id b69ls2192700qge.5.gmail; Fri, 12 Feb
 2016 22:51:14 -0800 (PST)
X-Received: by 10.129.88.135 with SMTP id m129mr5204898ywb.47.1455346274271;
        Fri, 12 Feb 2016 22:51:14 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id tn7si1909421pac.1.2016.02.12.22.51.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 22:51:14 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id gc2so962668pab.3
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 22:51:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=bbZaYmjXOqq4uuQPQCuPjUUtQsbV1Un6EWCG0Jm3WpA=;
        b=LBHKqHomN7sCF52ehPaLvmNNuRM4SkwOsurOHBKXlrFA6jai+khfpDsVneTr/9J4dh
         oTgz26sBZndiqlEZppb6EY1PeI9jdueMAHPCYi7VuOj38pWCtFjEagUc7A8LndBCSGXI
         L66bFtlbt7NgE8S9muva6f655g7HFtt3dYQto4ZzskDYw3DH0k6pZiIkr+/Cp/GDigvU
         ZeRZ/KT4ePwFE+bugApWbImYu7fvkDBIhzLlQ7L12iJ81OM9UhuaNbGBshjA3mRhtVd/
         xENKuVp8tibOyWdvdTo0rZ3ElCKEwW8pDhttjYZqHhklDHRZfegdGe7C741U8CVQaqiD
         ehWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=bbZaYmjXOqq4uuQPQCuPjUUtQsbV1Un6EWCG0Jm3WpA=;
        b=b3UZTv7o+5yTHmn6Pn6GZ19kZtdqc0DCR14NU3t4uyW2q3tBb1ZIvUgjQOQDYsnBiP
         VntOtfysubZEM1weP+UtzvKgJQurPunHbJTDqYERPwCT8CcZT2u+BR40367Tb7ghcY/W
         2dlI7zIATeab+qzoPPXMPc0XBMgMqGOsXjHoyLAjs9TRMnN/BNHvFTD/5SVcU1a+RZYR
         8g8773n1HRRvg68PMIo35qH6Vnc1pvrSX8k4cf9c4cmr1ZvayUGrOlmXGIElxEZx8AML
         6/XFbtC4fRnmY3rS09JCFZ/Dmbnqz30pla07OilEZ0n+vjEj01DgRXIUk+Yrv/ja8yio
         LyMg==
X-Gm-Message-State: AG10YOT/kP2nOBB1ftLktCL7O/g30x8OmmEv4ss0T9SFIKKvinXnawhit+RfsRyKShWa1Q==
X-Received: by 10.66.255.39 with SMTP id an7mr2443152pad.2.1455346274096;
        Fri, 12 Feb 2016 22:51:14 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.121.84])
        by smtp.gmail.com with ESMTPSA id fa3sm23738539pab.45.2016.02.12.22.51.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 22:51:13 -0800 (PST)
Date: Sat, 13 Feb 2016 14:51:09 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: Tejun Heo <tj@kernel.org>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 5/5] staging: fbtft: Remove the use of
 CamelCase
Message-ID: <20160213065108.GB31021@Socrates-Mint>
Mail-Followup-To: Tejun Heo <tj@kernel.org>,
	outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
References: <1455210550-11363-1-git-send-email-eraretuya@gmail.com>
 <1455210550-11363-6-git-send-email-eraretuya@gmail.com>
 <20160212171024.GJ3741@mtj.duckdns.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160212171024.GJ3741@mtj.duckdns.org>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Fri, Feb 12, 2016 at 12:10:24PM -0500, Tejun Heo wrote:
> On Fri, Feb 12, 2016 at 01:09:10AM +0800, Eva Rachel Retuya wrote:
> > Rename the macro defining constant ROWxCOL into ROW_X_COL to remove
> > checkpatch check concerning use of CamelCase and to achieve better
> > readability.
> > 
> > CHECK: Avoid CamelCase: <ROWxCOL>
> > 
> > Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
> > ---
> >  drivers/staging/fbtft/fb_ili9481.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/staging/fbtft/fb_ili9481.c b/drivers/staging/fbtft/fb_ili9481.c
> > index fb0e6c3..242adb3 100644
> > --- a/drivers/staging/fbtft/fb_ili9481.c
> > +++ b/drivers/staging/fbtft/fb_ili9481.c
> > @@ -64,13 +64,13 @@ static void set_addr_win(struct fbtft_par *par, int xs, int ys, int xe, int ye)
> >  
> >  #define HFLIP 0x01
> >  #define VFLIP 0x02
> > -#define ROWxCOL 0x20
> > +#define ROW_X_COL 0x20
> 
> This really isn't camelcasing.  I can't see how this change is
> beneficial.
> 
> Thanks.
> 
> -- 
> tejun

My bad, you are indeed correct. My apologies. I was set on getting rid
of the "check".

I'll CC Greg to let him know not to apply this patch.

Thanks,
Eva

