X-GM-THRID: 6526226538878205952
X-Received: by 10.99.108.200 with SMTP id h191mr1305987pgc.132.1519507320016;
        Sat, 24 Feb 2018 13:22:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.116.3 with SMTP id p3ls163723pgc.26.gmail; Sat, 24 Feb 2018
 13:21:58 -0800 (PST)
X-Google-Smtp-Source: AH8x226Ybrw2p0W03lWka0ldCZdvOzOtHyrpT6rUH/EzauiTX8M9penX6S42FIS29mu6vFuekj+P
X-Received: by 10.99.113.92 with SMTP id b28mr1275770pgn.27.1519507318576;
        Sat, 24 Feb 2018 13:21:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519507318; cv=none;
        d=google.com; s=arc-20160816;
        b=QNVbDiS+lmzlv6ZfBrjAmVRXtb1JX3D373kzthU28GNGyt5EJ7IY7V7E4tYRSE96oh
         vuLpXQnN3cLItWUEyhUGNN/SO/K5uIhzO4lXdfPujaqcFpJlL03K+6elCxslydIRjUng
         eH2U0Y0BlXs9iWlIwt5A0296sj1ZLuY87LuvB5yQ3hK27o4zFD/IGdhmrnvBxAz7ZT4x
         LYrKCZUavzfjt1KphN2SB09XJkOkIEJLqVqucWtgIhyVv2073ZDlcj11fsvpNiBgXZ/7
         AJobruGKQIuIUnmbhKeS7QtXDugmHkYrwu+P96XD/ynUPOOt5/As0GACgBTmIQwzWVji
         T3Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=zWOpzHdkOKERSORtBIlvjm6ghluUIT2TRZhKECZ205s=;
        b=IJlHri5Ls65gDl+17Lj7SN4+VHcQvo1Qyv+VYgFAMMJ26MJW4KIBil+pPaFSoPO2bd
         dKaTBTL7D62xTKdTsSKCfODqkcEEEs6MRAlZ9X68b3PyTtuutOW/wI6qKxV/ZNUKgyES
         yu2HgdSDw/ABjjji4LxsmARwABps8/m4rilgGDoOhBPMOM4/BMdyFvJt8JT7Nrl2UROW
         ZLp1MafVIoVvkdVGgvPryhv8TQsXM18USs/ghv19eNRB8GkFxlF64m+UbXHkqyCfjXIw
         Z0PATa4tq+tXTgBbyWT5VyWBHqhi3mnX+uCwf46huSkwozITakmIaMBVazySSc8791r9
         k79g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C9wPFAtr;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id l30-v6si257359plg.5.2018.02.24.13.21.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Feb 2018 13:21:58 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C9wPFAtr;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id t15so4950692pfh.9
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Feb 2018 13:21:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=zWOpzHdkOKERSORtBIlvjm6ghluUIT2TRZhKECZ205s=;
        b=C9wPFAtrOKIZ6v5VONRcdPQ931oLYAKSgXjU3KuTwuUTnnBYPzzbBmg5yX0fK01Apj
         Dj4CABD4wjiU6Kw9OlhgTjyl72KYZH7l747CoEfIy7vGvPHlSTbI4ADr/PYh+S4L+38x
         ay/ookajjjmskdPHTKrJCf5FoqKCaZAWQx2vr8YSQBU2MMp1RZFxO7oM4cCKTyUW4HHr
         YvcWqaaTdWDluXa66CreiF03tYsJpFeB19OY5NjXVQ2kZv6hSJOwSES25h1FGBo0yLj8
         L16eYZf8aLshF3CaKA5vZDAafDkpUgttaAF5zebdR00dUIt4BA6ORtEHcNfZdAtu8J74
         /lLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=zWOpzHdkOKERSORtBIlvjm6ghluUIT2TRZhKECZ205s=;
        b=hocNVR7bbNtVRdk3/FC/2YK9WFToJfqycNTSv1mMLgnoUK4IZ0XvTwwSzCk1zISddH
         VQIKMBEwyeBEnk6Hu88jkm5DALCEJbVMn18VWRACXYSthy9Hp2Afrjva8MGLjLWqPJAi
         iEWXTb4dsFpT8A5S2/2GORm297XB9jt8EI60GAWB8m14cbY2zFzweXS+suuCuQ0RdJDn
         Jm2OrxKjjtJDITSkgJuDSTzOR88kVARsGzEBrhzAtZa28AZ4bnfnOWzwrG/xK08gBC8T
         7Bf9/GmpXyjv4lOlJYr1CKtEOVSm9SIUwtJjOQtQO7NX2VmqR/LvcfWKHuke0y90DUNV
         GygQ==
X-Gm-Message-State: APf1xPCpmYS3cjSpTO5w96s3ed02sTqeG0ICMe9fONNQ842foqwoNIkR
	riCF0OEPXbVQYZnyaGq8Kg7EYw==
X-Received: by 10.98.19.146 with SMTP id 18mr5912128pft.3.1519507318225;
        Sat, 24 Feb 2018 13:21:58 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from ubuntu (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id z125sm10571074pfz.27.2018.02.24.13.21.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Feb 2018 13:21:56 -0800 (PST)
Date: Sat, 24 Feb 2018 13:21:52 -0800
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: use structure pointer to
 get the size of the structure
Message-ID: <20180224212152.GA11014@ubuntu>
References: <1519505516-10389-1-git-send-email-santhameena13@gmail.com>
 <alpine.DEB.2.20.1802242158200.3243@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1802242158200.3243@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Feb 24, 2018 at 10:03:54PM +0100, Julia Lawall wrote:
> Sorry for not noticing this before, but the subject line needs to be more
> specific than staging.  Use git log --oneline on the file to see what
> others have done before.
> 
> On Sat, 24 Feb 2018, Santha Meena Ramamoorthy wrote:
> 
> > Use pointer to the structure to get the size of the structure.
> 
> It would also be good to say why this is a good idea.  The code remains
> correct even if the type changes.
> 
> Also, it looks liek you have not followed the get_maintainer call
> suggested in the tutorial.  Greg is the only maintainer listed on this
> code.
> 
> julia

Sorry, I'll fix them now. 

Thanks,
Santha 
> 
> > Issue
> > found using checkpatch.
> >
> > Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
> > ---
> > Change in v2:
> >  - Use single line when the number of characters is less than 80
> >  drivers/staging/rtl8192e/rtllib_wx.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8192e/rtllib_wx.c b/drivers/staging/rtl8192e/rtllib_wx.c
> > index 03fbff0..74d4d2d 100644
> > --- a/drivers/staging/rtl8192e/rtllib_wx.c
> > +++ b/drivers/staging/rtl8192e/rtllib_wx.c
> > @@ -371,8 +371,7 @@ int rtllib_wx_set_encode(struct rtllib_device *ieee,
> >  		struct lib80211_crypt_data *new_crypt;
> >
> >  		/* take WEP into use */
> > -		new_crypt = kzalloc(sizeof(struct lib80211_crypt_data),
> > -				    GFP_KERNEL);
> > +		new_crypt = kzalloc(sizeof(*new_crypt), GFP_KERNEL);
> >  		if (new_crypt == NULL)
> >  			return -ENOMEM;
> >  		new_crypt->ops = lib80211_get_crypto_ops("R-WEP");
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519505516-10389-1-git-send-email-santhameena13%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

