X-GM-THRID: 6330669960642166784
X-Received: by 10.36.65.140 with SMTP id b12mr1459215itd.24.1474174088782;
        Sat, 17 Sep 2016 21:48:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.72 with SMTP id p8ls2704998otd.48.gmail; Sat, 17 Sep
 2016 21:48:08 -0700 (PDT)
X-Received: by 10.200.46.175 with SMTP id h44mr2517601qta.42.1474174088330;
        Sat, 17 Sep 2016 21:48:08 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id h124si5448101pfe.0.2016.09.17.21.48.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 21:48:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id n24so5505816pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 21:48:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=KSIewdjvjnF1bmcHHGBLkMZ9wp8u/sEXD54yKB4H3Sg=;
        b=a4TqVM0aqTsrf7PngtGizZ2PQP8MtiZbJSbxihiaVyE+Diiq4qwUfemvwPmfHv4A4F
         hccq3TE7UNpTBOPF1XE784/AY03m/3L6IeOmX1ug6hWUYX8oMYOm86n0QcZdd1fQA/h7
         hSQ2W7280Dtq0TFROdRqj4MvsKA4gE0tDftnxLDB/OTY60sLIZOKtnyGKoSbvvV0H4gc
         f4xMd/Zj1k67SXgbdabRbSrfy8AjMvykDUxJRk2JIldgBDJL/N71WGXUxoZ2zWpc+/5c
         pJRVX7+ZsMfWP9uy0adKpalyVR6ZgXTJ7Q6rAyV2vTQ6SvNfbNi5Lbd9ugtI/hTdkOg3
         B16w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=KSIewdjvjnF1bmcHHGBLkMZ9wp8u/sEXD54yKB4H3Sg=;
        b=gljdBd1q9jDwXsqfNI0z/5p3SkDdUEC9pLMKIVLtRDb/STFvHPosK9OLeNQFab9c/R
         DO5jKjZvvZgzeHpiFUoiDacdWyFTp9P2drMxlr2TBn2nC95rWT1v777aT86E3yVrt8MN
         8smO7JJEofTOqy/gpzFqVfo4fBmfVJVGu36iTC69xlkjsnpizjkr3ZPx+/k0y7KdQ8lc
         dUw3XpS4/ewlFvJ2z0o4wsug8RZ1vNzAGmuNiFGtcuNf+DXPG6S7ZHpo9n8/VD1jeLnV
         CD6FUHCDPr2P2tCk7Sa+bIzPvJOg9wscwGtd87H67eOqAj6qn8BhHRkiVdia89FrPPt6
         uZJw==
X-Gm-Message-State: AE9vXwP3e8gz70uJAaeYGtQfAEtl50pGr4zy0yLfQphrABkajZDnz1EEARQtb64wmDt/UA==
X-Received: by 10.98.9.25 with SMTP id e25mr30653581pfd.143.1474174088142;
        Sat, 17 Sep 2016 21:48:08 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id u64sm62085237pfi.0.2016.09.17.21.48.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 21:48:07 -0700 (PDT)
Date: Sun, 18 Sep 2016 10:18:02 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Arnaud Patard <arnaud.patard@rtp-net.org>,
	Clifton Barnes <clifton.a.barnes@gmail.com>,
	Geliang Tang <geliangtang@163.com>, Ben Marsh <bmarsh94@gmail.com>,
	Janani Ravichandran <janani.rvchndrn@gmail.com>,
	Benoit Hiller <benoit.hiller@gmail.com>
Subject: Re: [PATCH v2] staging: xgifb: Replace explicit NULL comparison
Message-ID: <20160918044801.GB4499@namrata-HP-Pavilion-g6-Notebook-PC>
References: <20160916105653.GE5686@namrata-HP-Pavilion-g6-Notebook-PC>
 <20160917183846.GA4232@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160917183846.GA4232@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Sep 17, 2016 at 08:38:46PM +0200, Greg Kroah-Hartman wrote:
> On Fri, Sep 16, 2016 at 04:26:56PM +0530, Namrata A Shettar wrote:
> > Replace explicit NULL comparison  with equivalent expression to resolve
> > checkpatch issue.
> > - x != NULL => x
> > 
> > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > ---
> >  Changes in v2:
> >  -sent using plain text mail agent
> > 
> >  drivers/staging/xgifb/XGI_main_26.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> >   diff --git a/drivers/staging/xgifb/XGI_main_26.c
> >   b/drivers/staging/xgifb/XGI_main_26.c
> >   index d56ef14..23a3bd7 100644
> >   --- a/drivers/staging/xgifb/XGI_main_26.c
> >   +++ b/drivers/staging/xgifb/XGI_main_26.c
> >   @@ -2085,7 +2085,7 @@ static int __init xgifb_init(void)
> >    {
> >            char *option = NULL;
> > 
> > 	   -       if (forcecrt2type != NULL)
> > 	   +       if (forcecrt2type)
> > 	                   XGIfb_search_crt2type(forcecrt2type);
> > 			           if (fb_get_options("xgifb", &option))
> > 				                   return -ENODEV;
> 
> This is really corrupted, I don't know how you did this, it's a new one
> to me...
> 
> Please fix up and resend.
> 
> thanks,
> 
> greg k-h

Sorry for that :/ Will look that up and resend.

thanks,

namrata

