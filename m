X-GM-THRID: 6202847107501522944
X-Received: by 10.66.219.2 with SMTP id pk2mr447829pac.16.1444217772074;
        Wed, 07 Oct 2015 04:36:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.6.36 with SMTP id 36ls197796iog.81.gmail; Wed, 07 Oct 2015
 04:36:11 -0700 (PDT)
X-Received: by 10.107.134.150 with SMTP id q22mr795748ioi.31.1444217771703;
        Wed, 07 Oct 2015 04:36:11 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id uv4si5278987pac.0.2015.10.07.04.36.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 04:36:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pablk4 with SMTP id lk4so19348947pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 04:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Z24NI/zf1nnL4AiB977tXPSS7yDqxKrv+zvpksivXzg=;
        b=FitgsmXImtFnR/JP3fGlqdxSrDPodYiS4TEKWlhnS+hRX9p/YZ3gfa8NMf7lETTVoD
         Jlg1b+Hl3nGMLrKs5M6E4W8kxjhEOgPzCogTV0bI1O5PyuxvYkxNIqiyHwp1/4A7/bbW
         lAu7Q0aRzz2he9iYw57E8uvfpGjgOI2E838gWpioCb365bIHQAR712NxHgGX/efjcE6W
         EX+f5NSwmiScFRGVSQ4GLqD0JTvaqwq10zj2tZ0RxENxgN69vZbti1luGhmiI6aaBlbx
         T4deL2DKlv0oLCOHGkLKWOqwUl2+LTBkpMO8YORwiEVqwKUnt5bSjv8+xrzUkGHhmi8S
         Vo3Q==
X-Received: by 10.68.129.198 with SMTP id ny6mr693382pbb.42.1444217771549;
        Wed, 07 Oct 2015 04:36:11 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id on5sm39017569pbb.65.2015.10.07.04.36.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 04:36:10 -0700 (PDT)
Date: Wed, 7 Oct 2015 17:06:02 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: most: video: Changed the
 return value integer to NULL
Message-ID: <20151007113602.GA51792@ubuntu>
References: <20151007101433.GA50144@ubuntu>
 <alpine.DEB.2.10.1510071214591.2533@hadrien>
 <20151007113026.GA51614@ubuntu>
 <alpine.DEB.2.10.1510071233150.2536@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1510071233150.2536@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Oct 07, 2015 at 12:33:32PM +0100, Julia Lawall wrote:
> 
> 
> On Wed, 7 Oct 2015, Shivani Bhardwaj wrote:
> 
> > On Wed, Oct 07, 2015 at 12:15:11PM +0100, Julia Lawall wrote:
> > > On Wed, 7 Oct 2015, Shivani Bhardwaj wrote:
> > >
> > > > Fixed the sparse warning : Using plain integer as NULL pointer, by
> > > > changing the return value of function *get_aim_dev(struct, int) from 0
> > > > to NULL.
> > >
> > > If you want, you could try doing this sort of thing with Coccinelle.  An
> > > easy case is the assignment case.  The following would find an assignment
> > > where the type is a pointer and the value is 0:
> > >
> > > @@
> > > type T;
> > > T *x;
> > > @@
> > >
> > > x =
> > > - 0
> > > + NULL
> > >
> > > This makes a rule where T is an arbitrary type and x is an expression that
> > > has type pointer to type T.  Then it searches for an assignment where
> > > there is this pointer typed expression on the left side and 0 on the right
> > > side, and then makes the change.
> > >
> > > The function return case is a bit more complicated, because you have to
> > > find the function return type and the return statement, which are not
> > > right next to each other.  But it can be done as well.
> > >
> > > You can find out more at the Coccinelle web site: coccinelle.lip6.fr.
> > > There are some tutorials at the papers and slides link.
> > >
> > > julia
> > >
> > Thanks, Julia! Is this patch not acceptable?
> 
> The patch looks fine :)  It was just something else to try.
> 
> julia
>
OK. Thank you, Julia! :)
> > > >
> > > > Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> > > > ---
> > > >  drivers/staging/most/aim-v4l2/video.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/staging/most/aim-v4l2/video.c b/drivers/staging/most/aim-v4l2/video.c
> > > > index d968791..8333245 100644
> > > > --- a/drivers/staging/most/aim-v4l2/video.c
> > > > +++ b/drivers/staging/most/aim-v4l2/video.c
> > > > @@ -430,7 +430,7 @@ static struct most_video_dev *get_aim_dev(
> > > >  		}
> > > >  	}
> > > >  	spin_unlock(&list_lock);
> > > > -	return 0;
> > > > +	return NULL;
> > > >  }
> > > >
> > > >  static int aim_rx_data(struct mbo *mbo)
> > > > --
> > > > 2.1.0
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151007101433.GA50144%40ubuntu.
> > > > For more options, visit https://groups.google.com/d/optout.
> > > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151007113026.GA51614%40ubuntu.
> > For more options, visit https://groups.google.com/d/optout.
> >

