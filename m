X-GM-THRID: 6330466800696819712
X-Received: by 10.157.46.36 with SMTP id q33mr6140554otb.40.1473941027998;
        Thu, 15 Sep 2016 05:03:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.29 with SMTP id i29ls3307224otc.12.gmail; Thu, 15 Sep
 2016 05:03:47 -0700 (PDT)
X-Received: by 10.31.193.150 with SMTP id r144mr2204412vkf.3.1473941027608;
        Thu, 15 Sep 2016 05:03:47 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id si10si1130829pab.1.2016.09.15.05.03.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 05:03:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 128so2159766pfb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 05:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=QAnqjgapTXLbPfNMyIzh+ztkw1LqMjidsqZpO2TWo8c=;
        b=C3i97+hPj3s7LIHrdnT3Jkl/x+btuOy0uB5asN+SqEmXjLdBwunwlZfvv5rmiTZViZ
         23u3DP/h7DAvS8CCBZkLrmH9ewFj6CHBe0xbRrAHm5FgFCLJIk2vDguiatlbKet8d+RT
         91yNuUvj/K5G1rBUJYarNX//QUbySkYLS6sjfJ/TtQDD/mdkuIUwev46l+lRbn4uCcVK
         5OsdIENfuXOsKv9ES2eSoMQlKno/V45bqu8u/wXiSYz/7U9cjK2XPDo7XQy+vUG8eesZ
         xpE0zNsGHet8FSQxckKNrVBWDcWO7ui7SY2NHLiuzUb7TpVdxw+8GyjkJrqHF4FfkmS1
         eoBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=QAnqjgapTXLbPfNMyIzh+ztkw1LqMjidsqZpO2TWo8c=;
        b=DHtwC2Wr4bEh22loDHjci5ie+4QTanTC/Dx/AWzq9KZmWo/UwoIjgE+i3GGdd77wKJ
         hZONxFKF/xxDhAW0b/inVDx2vpgjRjuUqDqpFj/NAMvR7bq77+ZWqg4vthPHIbp4ga4C
         hhHg1sQuCl8ng8bq+ur3FpUychCTi0Wg1nUlGWaXM/dApkh+MakLoogCTAws00+cyOpg
         XyhARW1q/30uX/Rc5aOLKKZXiWI0g+ivAfjve5vTSWQhhBsnZTjWUUlWf6s73HhHRJ3+
         Ituel98yXcdx9/g2grAd4wjsD61FigTcOD3PSekr0Y18UGiOE6X5I1F3EexZRYhs+I4J
         jWJA==
X-Gm-Message-State: AE9vXwOnZdT4xzja/BX5qGBmphdW2rS1l+JJQY8VWqCVliaFCyncV/EoFxXBVBRi551HlA==
X-Received: by 10.98.4.71 with SMTP id 68mr10780639pfe.18.1473941027394;
        Thu, 15 Sep 2016 05:03:47 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x66sm44885186pfb.86.2016.09.15.05.03.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 05:03:46 -0700 (PDT)
Date: Thu, 15 Sep 2016 17:33:36 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 5/6] staging: lustre: Remove
 unnecessary 'return'
Message-ID: <20160915120336.GB12108@toblerone>
References: <cover.1473923837.git.aquannie@gmail.com>
 <bfedf0128abd4c08512b015481be1d5fd1d0d01e.1473923837.git.aquannie@gmail.com>
 <alpine.DEB.2.10.1609151010010.3045@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1609151010010.3045@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Sep 15, 2016 at 10:10:49AM +0200, Julia Lawall wrote:
> On Thu, 15 Sep 2016, Rehas Sachdeva wrote:
> 
> > Fixes checkpatch.pl warning:
> > WARNING: void function return statements are not generally useful.
> 
> It would be better to say what you did, rather than saying fix.  Here you
> could say:
> 
> Remove unnecessary void return at the end of a function.  Issue detected
> by checkpatch.
> 
> julia
> 

Right. Thanks for the feedback Julia. I'll change it right away and be more
careful next time.

Rehas

> 
> >
> > Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> > ---
> >  drivers/staging/lustre/lustre/llite/rw.c | 2 --
> >  1 file changed, 2 deletions(-)
> >
> > diff --git a/drivers/staging/lustre/lustre/llite/rw.c b/drivers/staging/lustre/lustre/llite/rw.c
> > index bb85d16..23747fa 100644
> > --- a/drivers/staging/lustre/lustre/llite/rw.c
> > +++ b/drivers/staging/lustre/lustre/llite/rw.c
> > @@ -667,7 +667,6 @@ static void ras_update_stride_detector(struct ll_readahead_state *ras,
> >  	ras->ras_stride_length = stride_gap + ras->ras_consecutive_pages;
> >
> >  	RAS_CDEBUG(ras);
> > -	return;
> >  }
> >
> >  /* Stride Read-ahead window will be increased inc_len according to
> > @@ -883,7 +882,6 @@ out_unlock:
> >  	RAS_CDEBUG(ras);
> >  	ras->ras_request_index++;
> >  	spin_unlock(&ras->ras_lock);
> > -	return;
> >  }
> >
> >  int ll_writepage(struct page *vmpage, struct writeback_control *wbc)
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/bfedf0128abd4c08512b015481be1d5fd1d0d01e.1473923837.git.aquannie%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

