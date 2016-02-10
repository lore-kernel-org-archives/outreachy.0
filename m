X-GM-THRID: 6249397284630429696
X-Received: by 10.107.168.139 with SMTP id e11mr11913063ioj.32.1455090167902;
        Tue, 09 Feb 2016 23:42:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.170 with SMTP id k10ls148522igx.9.canary; Tue, 09 Feb
 2016 23:42:47 -0800 (PST)
X-Received: by 10.50.62.113 with SMTP id x17mr6665656igr.13.1455090167687;
        Tue, 09 Feb 2016 23:42:47 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id ui7si270754pab.0.2016.02.09.23.42.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 23:42:47 -0800 (PST)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id e127so7928633pfe.3
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 23:42:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ZOUy/mctLx0GmwsfWQnaCe7BYRAw/R9xv2YmEb1yBHc=;
        b=WEKNBmM9SJuZbnl/f39RXUU5RB1RcICvucOApmMJKPebx63z/ZfjmG9PLJHt+tTTJF
         L6BaRuMMYBjyLT9PHAhiinbTfGECX/+ZdY9UC+yVU1vEs6+S3sAF1bnuOLlBjAMBmdYK
         U/DT46QHDiPdNuI+njtPLJmfCRaIkEV49spj2IeZ2XLfVqdeZNgxzwp9j2Og6DmWkyJK
         ELBl17dWm8g3E0yYx80K6nvGbzP1n8ufEFCpKOkyqvhLYJixvTG9KM8+TpfHxTwmmNwF
         5p6TJR5m/njTymIDpIOVi2/u2zEJ5ixNTEAMPPF7TZGfkz/8z028YdpGK8/XaWBDk60s
         JkrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=ZOUy/mctLx0GmwsfWQnaCe7BYRAw/R9xv2YmEb1yBHc=;
        b=fPYDxc5G68ZP/E0XCtW6CpzPPqwJI0hSFAoPts66wpGU8q+7X2ymkHMa8NXz4sFqA2
         s5BMNIpTd/COOGtvEGwy8UJiGpCP6EMoLA5L4o1hX+rpZed+30br8zyS9ey/3nCiQTqZ
         lxGGNhsh2+4LyHoJkZ45C97yibL2qKKg9r8aZNJsRxaeTQNyh99RR4NJdlkquKdJnIAa
         oJKER1H789amghggFKggJ+iwbmIWYf+AcSlMURzoVWBJ8Y+UyP6zjiisOOtQRVh4heWS
         +xtPuGvcANC5Lea828mZ4VTWspwy27Kqv4OAcETjJy3lmrGvP1LIihsSnunVZ/fKze8c
         bjaw==
X-Gm-Message-State: AG10YOQ9nmnbK1efHrLxRYjprD4oc/uxxCHe1R2fJ1YC6leHLabguMgFxtfSiPWz+fJINw==
X-Received: by 10.98.70.80 with SMTP id t77mr56244199pfa.107.1455090167572;
        Tue, 09 Feb 2016 23:42:47 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([183.82.227.168])
        by smtp.gmail.com with ESMTPSA id lt14sm2726643pab.39.2016.02.09.23.42.45
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 09 Feb 2016 23:42:46 -0800 (PST)
Date: Wed, 10 Feb 2016 13:12:42 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Janani Ravichandran <janani.rvchndrn@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: xgifb: Rename local
 variable
Message-ID: <20160210074242.GB24358@sudip-pc>
References: <20160210033729.GA2677@janani-Inspiron-3521>
 <alpine.DEB.2.02.1602100828060.2050@localhost6.localdomain6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1602100828060.2050@localhost6.localdomain6>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Wed, Feb 10, 2016 at 08:29:45AM +0100, Julia Lawall wrote:
> 
> 
> On Tue, 9 Feb 2016, Janani Ravichandran wrote:
> 
> > As one of the global variables and a local variable share the same name,
> > change the name of the local variable to avoid confusion.
> > 
> > Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> > ---
> > Changes since v1:
> >  * Changed the name of the variable to something more meaningful
> > 
> >  drivers/staging/xgifb/XGI_main_26.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
> > index f11cea1..0091d8d 100644
> > --- a/drivers/staging/xgifb/XGI_main_26.c
> > +++ b/drivers/staging/xgifb/XGI_main_26.c
> > @@ -1230,7 +1230,7 @@ static int XGIfb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
> >  	unsigned int vtotal = 0;
> >  	unsigned int drate = 0, hrate = 0;
> >  	int found_mode = 0;
> > -	int refresh_rate, search_idx;
> > +	int local_refresh_rate, search_idx;
> >  
> >  	if ((var->vmode & FB_VMODE_MASK) == FB_VMODE_NONINTERLACED) {
> >  		vtotal = var->upper_margin + var->yres + var->lower_margin
> > @@ -1268,7 +1268,7 @@ static int XGIfb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
> >  
> >  	/* Calculation wrong for 1024x600 - force it to 60Hz */
> >  	if ((var->xres == 1024) && (var->yres == 600))
> > -		refresh_rate = 60;
> > +		local_refresh_rate = 60;
> 
> So this variable is only initialized, but never used?  If that is the 
> case, then a better solution would be to drop it.
> 
> Or maybe it was not intended to introduce the local variable.  You might 
> want to see what you can find with git blame on the line that makes the 
> local declaration.

If you remember in the last round of Outreachy also we had a similar
discussion, I will see if I can find out that thread.

regards
sudip

