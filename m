X-GM-THRID: 6333973265710579712
X-Received: by 10.129.177.194 with SMTP id p185mr3210918ywh.115.1474743072088;
        Sat, 24 Sep 2016 11:51:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.200 with SMTP id x66ls11544751ota.23.gmail; Sat, 24 Sep
 2016 11:51:11 -0700 (PDT)
X-Received: by 10.157.36.133 with SMTP id z5mr3183340ota.89.1474743071696;
        Sat, 24 Sep 2016 11:51:11 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id um12si3056525pab.2.2016.09.24.11.51.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 11:51:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 21so6865631pfy.1
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 11:51:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=gOtAi7FPCukgykz3QgP5ynOEItXAw3f+kenrGjibzdw=;
        b=pGK2Dc6gAQGl3iexMbbC2NYj2RNcBDeb3hFknPeiN7H3maC43adw1GcVWHJFTajrop
         vQpRqSkwyrqxKip33QQPAT5uCOJRATaQGX5HrNpE7pvaD6D62KAKI85SVnHaiQVSN4yY
         XPOcq9Rn1utMLx+UXjB95WQ6pnJaTe8QUZZND7VZwl7yyh0vPVoBmh3aeFFcegmdhgux
         b76wrx0hXlnZiVnn+3mEnKZM0BtIyx2FI10hX5G+5D30Chevvv9T69gXlt0/JtlJTNzg
         WSbfz505te7ET3zA8CNdMEhmJKn3uCTIMyftnKIbZJdnp5G98UT6sSyglFCsMXMZG8ny
         1zcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=gOtAi7FPCukgykz3QgP5ynOEItXAw3f+kenrGjibzdw=;
        b=COuaf+KKs0ytjP0HIgVNUH+rG2CfvSYmtHJSgZJM8/+izCJYllKHnkSx1TeKoSdto/
         tIfIwzF/SehJ/4/SEVsxIsHBH85aDS0qVWftW7VugSP64VUl2IhTlwARRrijsMhVkxx/
         5rr9TvtrptYnrS9YFufSzuvh0XMxSuGQOsC5mDhtZ+k7HXAxQdr1q7kMz5HUC/Vh2Vxc
         w+b7/x+RlPrmEZB8NWdlmH5llAcngxNMebW6sPB3Y5Ac8nIwDFs9PccuWcW2Df/thYTy
         4hufbD9F6p6O7eeBFPfTzzA/iyDQBCGqWRf2LIrDwxZO6eg8R8PrKGJi4tDVCqBQtRwH
         xWAA==
X-Gm-Message-State: AE9vXwNf41vHrPjL95JqxtRWl4i/7NeFeIiaB57qhmX6acQntlJhMI7rk/jhcaUJ510ylg==
X-Received: by 10.98.217.70 with SMTP id s67mr23692107pfg.118.1474743071478;
        Sat, 24 Sep 2016 11:51:11 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id bu15sm20179267pac.15.2016.09.24.11.51.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Sep 2016 11:51:11 -0700 (PDT)
Date: Sat, 24 Sep 2016 11:51:08 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: jic23@kernel.org, outreachy-kernel@googlegroups.com
Cc: Sandhya Bankar <bankarsandhya512@gmail.com>, knaack.h@gmx.de,
	lars@metafoo.de, pmeerw@pmeerw.net, linux-iio@vger.kernel.org
Subject: Re: [PATCH] drivers: iio: light: Fix sparse warnings
Message-ID: <20160924185107.GA3190@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9c0fb251-3d55-9da9-0f12-71e2c26231e4@kernel.org>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Sep 24, 2016 at 04:21:01PM +0100, Jonathan Cameron wrote:
> On 24/09/16 13:12, Sandhya Bankar wrote:
> > Fixing below warnings:
> > 
> > drivers/iio/light/max44000.c:217:18: warning: cast to restricted __be16
> > drivers/iio/light/max44000.c:217:18: warning: cast to restricted __be16
> > drivers/iio/light/max44000.c:217:18: warning: cast to restricted __be16
> > drivers/iio/light/max44000.c:217:18: warning: cast to restricted __be16
> > 
> > Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> This is really just papering over the problem.
> A better solution would be to introduce a __be16 local variable to do
> the initial read into.  Then put it in regval via that be16_to_cpu
> call.
> 
> Jonathan


CC'ing outreachy-kernel@googlegroups.com since this is an Outreachy
task, and others will benefit from Jonathan's feedback to be sure that
we type the data correctly when it enters the system.

Sandhya, There are a few other patches from you in linux-iio that didn't
go to the Outreachy group. Probably not worth bouncing at this point.
Others can find them in linux-iio.  CC group on all future postings.

Outreachy applicant patch creation reminders:
 - use git log commands to decide on the commit path
 - commit message says what is changing
 - changelog says why it is changing
 - changelog makes a reference to the tool used to find the 
   issue and states the warning addresed.

Goal is not to fix checkpatch, sparse, 'insert-your-favorite-tool' warnings.
Goal is to correct the valid coding issues that these tools report.

alisons





> > ---
> >  drivers/iio/light/max44000.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/iio/light/max44000.c b/drivers/iio/light/max44000.c
> > index 6511b20..1ea9af9 100644
> > --- a/drivers/iio/light/max44000.c
> > +++ b/drivers/iio/light/max44000.c
> > @@ -214,7 +214,7 @@ static int max44000_read_alsval(struct max44000_data *data)
> >  	if (ret < 0)
> >  		return ret;
> >  
> > -	regval = be16_to_cpu(regval);
> > +	be16_to_cpus(&regval);
> >  
> >  	/*
> >  	 * Overflow is explained on datasheet page 17.
> > 
> 
> --
> To unsubscribe from this list: send the line "unsubscribe linux-iio" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html

