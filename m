X-GM-THRID: 6334961343676809216
X-Received: by 10.129.154.196 with SMTP id r187mr6835500ywg.54.1475005607522;
        Tue, 27 Sep 2016 12:46:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.41 with SMTP id u41ls6354114ioi.27.gmail; Tue, 27 Sep
 2016 12:46:45 -0700 (PDT)
X-Received: by 10.66.139.6 with SMTP id qu6mr7806781pab.121.1475005605507;
        Tue, 27 Sep 2016 12:46:45 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id f12si940773pfk.0.2016.09.27.12.46.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 12:46:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id oz2so1085144pac.0
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Sep 2016 12:46:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=jrpwrJOAw8DJ6/EfsiB6jTNtWxAPNeyUgMUdgHz07XU=;
        b=gdrPUvXPIkc+R3ejOnB0RyqXoVNzB3hryAdlRDCd6sYjgk1aGptwHwJRM2RT+GU34/
         dZjMXM7q0wofXoZz3M7qqfHTp+9S+lZsmZHyJf6o3OsiA/aGDMtmPiEq/YJSjKnYwd/u
         CE5tZFL+UTibqK/qP4NvcMCJF77VPl94BL2szrV6/eonDloYic0ThCVWJ20e/UVr511A
         9pj2/+MPIf35e0siVEeuSbyj1VqeVjUlYx2oG28qfAKI1qb3roKEw1BSq/QJMjvPfo0p
         RMp2hfEYNBBKM4R3QvEPX3NQ3luCPT08mTnFnc/mPe/dAISNcXIFcnHbnwWj8VnU4yDp
         1zVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=jrpwrJOAw8DJ6/EfsiB6jTNtWxAPNeyUgMUdgHz07XU=;
        b=ko25BoYlqcL5Cax23NqG632h9mUqo1EzuREB79r/SBxunh8LaLYyv4OXeu4+lUbWcq
         Zaa+1fmfoqOCkdwdRdnYZO9oub0CKpxCtuiY+S9REWgDtQ9ACv5B1wq4bZN29gBaSDF9
         2o3QrU+DmFZsL9gw8Osvmj80E73SsdCbCUqWIin3gwcuwCdH7vo/9MN9gj4lhkM3QVO8
         LYL0iZC9tdnvsp7ubIjG7WYitTn6z+ArGwoI5D7Zw8gHQ7NwQjrfidbzK/gISMiN9dAP
         5A18wvxHgo3JmDy/HHqzEUlSIszbTtGqzDUKVO6ycu3EOeLHgjByoqI42rUUjppa5vOe
         N9UA==
X-Gm-Message-State: AE9vXwM56GDnflRp+RImZ461NLT139uEI/7hh2fKvU54oonXTNm1qTFOv+74gHnR5EEH3Q==
X-Received: by 10.67.8.41 with SMTP id dh9mr50549869pad.132.1475005604941;
        Tue, 27 Sep 2016 12:46:44 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id w69sm6820558pfd.28.2016.09.27.12.46.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Sep 2016 12:46:41 -0700 (PDT)
Date: Tue, 27 Sep 2016 12:46:34 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Anchal Jain <anchalj109@gmail.com>
Cc: gregkh@linuxfoundation.org, Michael.Hennerich@analog.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: cdc: add comment to
 mutex
Message-ID: <20160927194634.GA20266@d830.WORKGROUP>
References: <20160927104504.GA13155@life-desktop>
 <20160927170701.GA18239@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160927170701.GA18239@d830.WORKGROUP>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Sep 27, 2016 at 10:07:02AM -0700, Alison Schofield wrote:
> On Tue, Sep 27, 2016 at 04:15:12PM +0530, Anchal Jain wrote:
> > Fix the checkpatch.pl issues:
> > CHECK: struct mutes definition without comment
> > 
> > Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> 
> Ahah ;) I've been wondering when someone would get around
> to these.  There are a lot of these CHECK's in IIO.
> 
> Following on Julia & Greg's comments, you do need to 
> explore what the lock is for and give a succinct comment.
> 
> Unfortunately, when you: git grep "struct mutex", even in 
> upstream iio, you won't find too many examples...but you'll
> find a few.  Usually, simply say /* protect <something> */
> 
> Fortunately, in this case, there is a comment for it, just
> in the wrong place - scroll up. That makes your task easier,
> although I still would suggest condensing it to a short phrase that
> fit adjacent to the definition.
> 
> alisons

Although, this change is 'just a comment', if you do a few of them
you'll begin developing an understanding of where and why things
are locked in IIO drivers.  That's where the value is - you are
exploring the code and figuring things out. 

Good patches for honing your patching skills.

alisons


> > ---
> >  drivers/staging/iio/cdc/ad7150.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
> > index f6b9a10..88c6ebe 100644
> > --- a/drivers/staging/iio/cdc/ad7150.c
> > +++ b/drivers/staging/iio/cdc/ad7150.c
> > @@ -78,7 +78,7 @@ struct ad7150_chip_info {
> >  	u8 mag_timeout[2][2];
> >  	int old_state;
> >  	char *conversion_mode;
> > -	struct mutex state_lock;
> > +	struct mutex state_lock; /*generic mutex for cdc and drivers*/
> >  };
> >  
> >  /*
> > -- 
> > 1.9.1
> > 
> > -- 
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160927104504.GA13155%40life-desktop.
> > For more options, visit https://groups.google.com/d/optout.

