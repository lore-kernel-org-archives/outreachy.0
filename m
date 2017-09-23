X-GM-THRID: 6469025072932716544
X-Received: by 10.129.79.200 with SMTP id d191mr1536169ywb.184.1506188944492;
        Sat, 23 Sep 2017 10:49:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.109.197 with SMTP id i188ls794636pgc.32.gmail; Sat, 23 Sep
 2017 10:49:03 -0700 (PDT)
X-Received: by 10.84.232.134 with SMTP id i6mr1358288plk.42.1506188943475;
        Sat, 23 Sep 2017 10:49:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506188943; cv=none;
        d=google.com; s=arc-20160816;
        b=ZsL+dZp3c7/FQyjISKPIvGBVALc0OVjdDiPcd71HDIYM46gtlGQjbgF6VHFaK3zefD
         Tew4QqnErlZrd8w6LvebwmMgcJS0/o5L2jko+a5UKpHqA+KPPUBrEdL5s0LXq1PYig/C
         XqS61/YXTcGY7l3fvrXT20DGoyw4HEctAMdCBU+LfQpNgAnIHIujoyAv3XbEFgHPNI4h
         ha8mcEiDsMqP/suHeAdIQeHISWKnoLD1A7qYownzylnW/7CWNQSmesNyO5WBX27pA5EW
         Fqpoiox9aO2T4HvNerL984neaA8/QjoGbCbXXRl1LxUnq5E9Nnxlwces4I4Ava5GVsNj
         YqBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=ShomvA20xAZirDks0HH7LJKQh/U6N97MFPZfXBRywTo=;
        b=ChfKKu+2erKrDbww3lneBmKzW0lNTGBr6lvwUAv8GPMzoe4lBg9XRCeFZE9h4C5bI9
         vh2MVVVCTfc3aOVSVQ5HHDH4YFDO9Ga8ZQUzL8MybjOArB0GayDSDsMX6Oix2HEs1Gm9
         TXL13UEffy1wl5JqtfCK2RHUF8rPL/HJOIg4wNpODmpHX+v0tDg8ORxVua5lVteqhHlv
         SciqkQ6HByeBfp4BsTDcGy+ZN19cUamed0r056kHG85dk+IJVmQmfoc23mlBIZrsF6jf
         kbnyj0DKF9o7lGF97cQ24O+P/mFpuTY4sZV+rh0CQdjNxlEUMM3C3qfWLM+Uz3OGeLkm
         9xnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I/dXF4lA;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 13si181424pfk.26.2017.09.23.10.49.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Sep 2017 10:49:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I/dXF4lA;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id d8so2491953pgt.3
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Sep 2017 10:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ShomvA20xAZirDks0HH7LJKQh/U6N97MFPZfXBRywTo=;
        b=I/dXF4lAeQzqPie2SNgJ72w1JRX8LBQGfZDfPe7wTKuE2h/n4u9rtUPApeStlHfv0o
         YX9c+kn1GahPUTxoBNNWPuEON4ECchyYXa0EojeBnx2p5vLYBFhbtXL4DLv8CZiyUkCD
         gfEDZwwJz84baj2JYoq0s+AtJVw7enz+3h91rurWo2NolC4+3AF/+21vC6XnIbiq3y2T
         LH+6bkRMgB0QSUiev/44ereTYDySAZWiDNRgp+ltdYLBeWRobX8ilKb7XrJa14q39DaJ
         ZuumsmYE42UGHi5/+cbSuLjTxsnUykRyr4QI/26oLASjHDTWZ/l+C3hqGzHpsWSD9/x8
         JMHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ShomvA20xAZirDks0HH7LJKQh/U6N97MFPZfXBRywTo=;
        b=Vi25JzXZWYzm3/TmL4TvwiMCO/4SeH++cOBnTvvt860fAqN9WKQTLIQX8LlajwqKBu
         hyQdAatgVgZe3zeHqUzgQZjErh+pGj5kWWBlTHrqS+w9LdQK9hwpHIIfmPC9VlYLptiA
         UDRud0soEc/S8ZREYE54hly3tWnRhPoWcPQ2JI5vpv/qjiWXBPIbQciZ1D13AIzzPge6
         fgdGgd4qsYVRqWTIHfhz4JuZhooIwckn5WuMhpWt9XhjsJMVZPHzQd2XunRC+GcX9iCP
         fTu1L5AyTPcuufv3e9xc9RncJ+6HQNgYU+s03lagJd4TX2ijbtcKX5wCATlql+ac0Gqa
         8/Gw==
X-Gm-Message-State: AHPjjUhPn3QlY2Tqz+u4hlVJmk3lsdeaeCfIwfhRVq4EN0hXSsXhTfdZ
	YeredeXQRi+G+1rrp1q6tCQ0iqq9
X-Google-Smtp-Source: AOwi7QCqlCs48BuYa5Eo5Xubc0IBGrQtoIvhUhwg4dm+BiBrZQHlUzAwji9rc7929vyg7cIzVfZLHQ==
X-Received: by 10.98.103.89 with SMTP id b86mr2615085pfc.319.1506188943202;
        Sat, 23 Sep 2017 10:49:03 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([14.139.122.139])
        by smtp.gmail.com with ESMTPSA id n2sm4772534pgs.89.2017.09.23.10.49.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Sep 2017 10:49:02 -0700 (PDT)
Date: Sat, 23 Sep 2017 23:19:00 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: Blank lines aren't
 necessary before a close brace '}'
Message-ID: <20170923174900.GA9303@manoharreddy>
References: <20170923172108.GA8880@manoharreddy>
 <alpine.DEB.2.20.1709231928150.5987@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1709231928150.5987@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

 Sat, Sep 23, 2017 at 07:28:36PM +0200, Julia Lawall wrote:

> This is on the same file as your previous patch, so they have to be put in
> a series.
Can I update the patch previous patch into a patch set by combining this
one the previous one?
> 
> On Sat, 23 Sep 2017, Keerthi Reddy wrote:
> 
> > Before closing the brace, the blank line is not needed. That blank
> > line has not meaning here. so remove it.
> 
> This is on the same file as your previous patch, so they have to be put in
> a series.
> 
> julia
> 
> >
> > Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
> > ---
> >  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > index 36dc2a0..e7882b2 100644
> > --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > @@ -1111,7 +1111,6 @@ static int del_key(struct wiphy *wiphy, struct net_device *netdev,
> >  		g_key_gtk_params.key = NULL;
> >  		kfree(g_key_gtk_params.seq);
> >  		g_key_gtk_params.seq = NULL;
> > -
> >  	}
> >
> >  	if (key_index >= 0 && key_index <= 3) {
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170923172108.GA8880%40manoharreddy.
> > For more options, visit https://groups.google.com/d/optout.
> >

