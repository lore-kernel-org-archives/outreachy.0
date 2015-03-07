X-GM-THRID: 6035575144448
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,44622202b52d33bf
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.39.164 with SMTP id q4mr3477743wik.5.1425748090814;
        Sat, 07 Mar 2015 09:08:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.37.229 with SMTP id b5ls28748wik.8.canary; Sat, 07 Mar
 2015 09:08:10 -0800 (PST)
X-Received: by 10.180.13.98 with SMTP id g2mr6188037wic.3.1425748090506;
        Sat, 07 Mar 2015 09:08:10 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id l8si440654wia.0.2015.03.07.09.08.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2015 09:08:10 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x236.google.com with SMTP id bs8so10460952wib.0
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Mar 2015 09:08:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=q1J/vz93rC4E+xPb5TYaOqR8jIvBBkEyPRtvgD6LsJU=;
        b=m04nuMqqtV8ddwhLNB1rl68678Rcz3hY9KDHbGYK0SCG061JLUok1TGTFzMDrgjplN
         zI96s1tu9GD/mrHJk1l6bDsiDXXr8bFb3MeblI5f+qwGTGwCRP1aHJz6TXMJE4j/koVF
         8p4nchwVRA6AOiapMlyXtJn41J34Om41+EnWH/eVwBVPRyl7S9W0RL7wTQJPcpIeABiU
         PXl+gNqs3soF3T4NYZFFvb+/UalCnfkzLEPWq777oks7Dg4Juxu9jog2I6Lr+r8dKpr9
         YuwIYS3aKbNATLpjUg3NG67nS5Lcg7tg19FKot1fflQ8AtmGlgYrMNQ11JOLTuMB4mn8
         1nIg==
X-Received: by 10.180.104.66 with SMTP id gc2mr86968946wib.34.1425748090372;
        Sat, 07 Mar 2015 09:08:10 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.240])
        by mx.google.com with ESMTPSA id uo6sm20088578wjc.49.2015.03.07.09.08.08
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 07 Mar 2015 09:08:09 -0800 (PST)
Date: Sat, 7 Mar 2015 20:08:07 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: emxx_udc: Clean dev_err()
 logging
Message-ID: <20150307170806.GA2813@example.com>
References: <1425320718-28979-1-git-send-email-hamohammed.sa@gmail.com>
 <1425460224-8110-1-git-send-email-hamohammed.sa@gmail.com>
 <20150306232951.GB6279@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150306232951.GB6279@kroah.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Fri, Mar 06, 2015 at 03:29:51PM -0800, Greg KH wrote:
> On Wed, Mar 04, 2015 at 12:10:24PM +0300, Haneen Mohammed wrote:
> > This patch removes  __func__ from dev_err. dev_err includes information about:
> >  (devcice, driver, specific instance of device, etc) in the log printout, so there is no need for  __func__.
> > 
> > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> > ---
> > note: this patch separated from "Staging: emxx_udc: Fix checkpatch.pl warnings" patchset.
> > 
> >  drivers/staging/emxx_udc/emxx_udc.c | 18 ++++++++----------
> >  1 file changed, 8 insertions(+), 10 deletions(-)
> > 
> > diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
> > index 35dc1c4..cfe55dc 100644
> > --- a/drivers/staging/emxx_udc/emxx_udc.c
> > +++ b/drivers/staging/emxx_udc/emxx_udc.c
> > @@ -2632,7 +2632,7 @@ static int nbu2ss_ep_enable(
> >  	if ((udc->driver == NULL)
> >  		|| (udc->gadget.speed == USB_SPEED_UNKNOWN)) {
> >  
> > -		dev_err(ep->udc->dev, " *** %s, udc !!\n", __func__);
> > +		dev_err(ep->udc->dev, "  udc !!\n");
> 
> Why keep the leading spaces?
> 
> And dev_err() does not have __func__ in it, so maybe this should just be
> left alone, as these messages are not unique enough to determine the
> exact place the error happened.
> 
> sorry for missing that last time.
> 
> greg k-h

what about the other patches? You have told me to refresh my tree and resubmit the other
patchset, should I do that? or just leave it as it is?

Thank you,
Haneen

