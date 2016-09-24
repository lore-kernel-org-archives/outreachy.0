X-GM-THRID: 6333851090177490944
X-Received: by 10.36.254.193 with SMTP id w184mr2004233ith.34.1474720304684;
        Sat, 24 Sep 2016 05:31:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.167.13 with SMTP id q13ls7088615ioe.40.gmail; Sat, 24 Sep
 2016 05:31:44 -0700 (PDT)
X-Received: by 10.107.164.68 with SMTP id n65mr3069427ioe.46.1474720304135;
        Sat, 24 Sep 2016 05:31:44 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id f12si2907235pfk.0.2016.09.24.05.31.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 05:31:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id my20so6285572pab.3
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 05:31:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=JMoGifkNrHbgXmCCdwLx9KbMwIdRgFcI0oh1VxXbr6Y=;
        b=HAMhoiGLXcxbbiPfkHDqVJltntbIFFomnpvCDDdm8ltCeMksoaZYCG13lI2etWkZSU
         yon1Ljb5rCSQRpQvzUiEJRrOpM4vNzMzN6mfxnU8IyZqEyYHCJfPPZ+vgUGN6z9nPzr3
         VUsUe6OIZWGV2xYJLlF6a8KG885AwjjSJXqnSJ19MBQpYlMOlmJpUSFSaA/ufUrHukAT
         6mbIFbwhQyK1bHhpwlzctlDEyaVSsXkPeNkDPiNsadMHbGbwOg9Bpa2CKGF9iL499oWo
         D0clwCsnPUKthVsF2fvLF+lGDAdWa2kgBg+km0oURFeTuFL2l/gtigMNhkWzGuNaz+5p
         WoVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=JMoGifkNrHbgXmCCdwLx9KbMwIdRgFcI0oh1VxXbr6Y=;
        b=kVyfo4K/G4QN4AZFDhPKwwidQzAc8dzwAslOtyfPv7xC5AvZ53F7a/ZKyMUhkf+5nd
         4V9rA7yfFMov1tANZRg2XhvZwzqtrDpF9EK58V6CKgATT7lwcvlIstkuuPszd5VGSNdu
         82vM/26gZLb9fvPODXRkE21csGQqyscRdNBOPlsOP5Ja+B0MbwcKKIxIU3UMD734tJM4
         tomapdgPOEUtE5i1odZNMHaAfYIxUnEQoR4epOLwaRdhMGDhueoqRDdWFwz645VFhfq0
         c3kL3IDwNMHErwE2rJBCnapQ2vaq1g80//P9sPy4lvKTnTXsEIhBuNvQ2l4WBXfdlUWO
         nEag==
X-Gm-Message-State: AA6/9RlXP+D0Nk/55wpNk9uE6kknXA4TRhHN83VPcs90OJYt/wFmBkBxEE4iTqn2xLemWw==
X-Received: by 10.66.47.170 with SMTP id e10mr16177610pan.110.1474720303922;
        Sat, 24 Sep 2016 05:31:43 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([122.15.200.115])
        by smtp.gmail.com with ESMTPSA id co6sm18469116pad.23.2016.09.24.05.31.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 05:31:43 -0700 (PDT)
Date: Sat, 24 Sep 2016 18:01:39 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v2] staging: wilc1000: Remove 'else' after 'break'
Message-ID: <20160924123137.GA9545@namrata-HP-Pavilion-g6-Notebook-PC>
References: <20160924115810.GA9412@namrata-HP-Pavilion-g6-Notebook-PC>
 <20160924122246.GA6511@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160924122246.GA6511@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Sep 24, 2016 at 02:22:46PM +0200, Greg Kroah-Hartman wrote:
> On Sat, Sep 24, 2016 at 05:28:16PM +0530, Namrata A Shettar wrote:
> > Remove 'else' after 'break' to resolve checkpatch issue.
> > The statements after the 'if' condition body are executed only if
> > condition not true due to the 'break'.
> > 
> > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > ---
> >  Changes in v2:
> >  - Code indentation
> > 
> >  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 7 ++-----
> >  1 file changed, 2 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > index 05e4501..042185d 100644
> > --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > @@ -695,11 +695,8 @@ static int connect(struct wiphy *wiphy, struct net_device *dev,
> >  			   sme->ssid_len) == 0) {
> >  			if (!sme->bssid)
> >  				break;
> > -			else
> > -			        if (memcmp(last_scanned_shadow[i].bssid,
> > -							sme->bssid,
> > -						       	ETH_ALEN) == 0)
> > -			                              break;
> > +			if (memcmp(last_scanned_shadow[i].bssid,sme->bssid,ETH_ALEN) == 0)
> > +			        break;
> >  		}
> >  	}
> >  
> > -- 
> > 2.7.4
> 
> Always run your patches through checkpatch.pl so you don't get a grumpy
> maintainer telling you to run your patches through checkpatch.pl...

Haha yes! Will do that. Thanks for being patient and will keep that in
mind.

namrata

