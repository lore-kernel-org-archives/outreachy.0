X-GM-THRID: 6206645020679733248
X-Received: by 10.66.146.131 with SMTP id tc3mr22606485pab.20.1445184020454;
        Sun, 18 Oct 2015 09:00:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.58.81 with SMTP id o17ls946927obq.52.gmail; Sun, 18 Oct
 2015 09:00:20 -0700 (PDT)
X-Received: by 10.182.19.195 with SMTP id h3mr4294241obe.13.1445184020135;
        Sun, 18 Oct 2015 09:00:20 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id ce6si2500010pad.0.2015.10.18.09.00.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 09:00:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id z6so4977253pas.2
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 09:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=or6qeNB/vzQAnZ6axYTwSG6CDlSgav6wEQPWkG8jJEw=;
        b=FjnvJtwOf2Mmpj1in0dm09UczTYOt0iVhulJbg9GVU6cKxyxOzWIttwE5wEhY1xLlN
         4EkOlJaxJ8i+LG0S3o5hAtaw5RlS+co1MlGGL1TfuhdUndK59eG+a+EVpruRLyKrTv8Z
         VteAzbKzwK7srcjjyFeOCSEAf189VxR8SGN4Z74QeDOVr6Y+tHj6xXXKCndyxzE03B+H
         Vuq2NJUP5jQsRpvxfbPSSie2eZdO4t7mMc0nn3aVK46oI/3lOwY36t5HevBGIywi1DRL
         LIMB7wtxRW7Rn5ocLyKCq5nt1n+JELxoF5eycNvfglo35hsXDKSweNK9bt1Mmqhu80rn
         kZiA==
X-Received: by 10.68.239.165 with SMTP id vt5mr28799392pbc.15.1445184019989;
        Sun, 18 Oct 2015 09:00:19 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.121.180])
        by smtp.gmail.com with ESMTPSA id qa5sm31566477pbc.70.2015.10.18.09.00.18
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 18 Oct 2015 09:00:19 -0700 (PDT)
Date: Mon, 19 Oct 2015 00:00:16 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: mt29f_spinand: Remove
 space after a cast
Message-ID: <20151018155912.GA3682@Socrates-Mint>
References: <20151018101529.GA6434@Socrates-Mint>
 <5200397.Z5PqNk5xTM@wuerfel>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5200397.Z5PqNk5xTM@wuerfel>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Sun, Oct 18, 2015 at 02:55:56PM +0200, Arnd Bergmann wrote:
> On Sunday 18 October 2015 18:16:09 Eva Rachel Retuya wrote:
> > diff --git a/drivers/staging/mt29f_spinand/mt29f_spinand.c b/drivers/staging/mt29f_spinand/mt29f_spinand.c
> > index 1aa449e..cf98228 100644
> > --- a/drivers/staging/mt29f_spinand/mt29f_spinand.c
> > +++ b/drivers/staging/mt29f_spinand/mt29f_spinand.c
> > @@ -594,7 +594,7 @@ static int spinand_erase_block(struct spi_device *spi_nand, u16 block_id)
> >                 if (retval < 0) {
> >                         dev_err(&spi_nand->dev,
> >                                         "error %d reading status register\n",
> > -                                       (int) retval);
> > +                                       (int)retval);
> >                         return retval;
> 
> 
> The change is correct, but it would be nicer to remove the cast as well,
> because 'retval' is already an 'int'.
> 
> 	Arnd

Looking back, you are indeed right. Do I have to send this change as a
revision or go for a new patch? 

Thank you for pointing this out. I admit, all I did was to change the
piece of code as suggested by the checkpatch. Next time I will be more mindful of the change/s I'm introducing.

Eva


