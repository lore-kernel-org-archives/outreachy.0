X-GM-THRID: 6803023005726277632
X-Received: by 2002:a9d:369:: with SMTP id 96mr6213500otv.174.1584024762511;
        Thu, 12 Mar 2020 07:52:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a4a:4557:: with SMTP id y84ls301184ooa.8.gmail; Thu, 12 Mar
 2020 07:52:41 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsd1dWBsLMCHvBk72LAPx0RRMJJ+ObL/EKSOOhbR9dwqlmKBQM3gQFDwzmahcsJwqtleEwZ
X-Received: by 2002:a4a:d311:: with SMTP id g17mr4313180oos.92.1584024761290;
        Thu, 12 Mar 2020 07:52:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584024761; cv=none;
        d=google.com; s=arc-20160816;
        b=VoXMzz5/ePu5XAtC9p2wWMZZJMMkR90RSIChaxvPgnt17zMbrAKZG74wmRo9PjF67+
         GdU8rqQTQ/hGWjq3lRmhVyxZJ01qMqZuCNe2JcBKL7CuLHHN7FyONsW/poZx68W77yu5
         glOwGAV3h8U1V7mfqLm/qCEXr41Aix/CS5RgMCM0A5dEFsokauFaWJL4p6VCwO0pk6HR
         6ULoEs5XkqMxRhZBrRh77gumsp1v5WEHqNcM3A40w8tQ7/Yl0+D8Z4MAIroAc0sxT0Du
         ZOxUMayc0n7DNQVQAxdRmBOKX7NKxzdphi95u2MfObrB+sODc1pHYfe00rmFABjjkWyy
         ilqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=92DCj1FY1Kc+Y5zuS3G5li1dKOk9D59WBhjMoMejF5k=;
        b=dipGPGnC8/ifj/ONirNzBRDghz5UA7wmxt+3avrG8ZFvG/uF3zbVnbPhshFQEs0+AP
         QJ9pSCU/1lmhY02kz5Xzpl/YkRlJQMZTZO/SPcNnJCzXfXfH+k9D91gubLc+CxukC02N
         vthBg00eEjeO4YwC21o1jUtXZ+vUsvizuPzOXFatuVUhc0GpMtzwpWFv3/PXVda+KE/G
         r8qKvkm5O16/5wX2ykio29afMV3ivdwDxSnLVNEfRhYeM07Bf7JrYLaRMtzoRmQfafCh
         ufsN42SZmbEqRobVD7TQghmsish5TBtdeh+qO6moKgsxcYQCT+thESUCkf6t+kW1xcBi
         zQyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b="0erTKr/i";
       spf=neutral (google.com: 2607:f8b0:4864:20::541 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id o11si371536otk.0.2020.03.12.07.52.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 07:52:39 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::541 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b="0erTKr/i";
       spf=neutral (google.com: 2607:f8b0:4864:20::541 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pg1-x541.google.com with SMTP id m15so3180154pgv.12
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 07:52:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=92DCj1FY1Kc+Y5zuS3G5li1dKOk9D59WBhjMoMejF5k=;
        b=0erTKr/ivfioDt7Gb1V6SU91bmi5IsEAzv+kS3Y/zFtSLWp+u6cTZKMwS+uv8ajAkW
         jEqTRNxmGX4a5a4fvsfEDPgkU5OdtxeU5UWJQaUG11p3ztzT/utXxJ7Vf3Avprq73RX+
         rnqLmL5/2S8QdoApZf141ghxdctL1vJVj2qTJfAtQB/b777sOVYaEmkE1sGeClUXp3iu
         LVi7WC+7ACd9X0u6+bxcQi76gidIi54WxyE/x8w7Sx7K8YMBB5Mgv5LQnx7WbH+zs99M
         fp0mc5f2kPVAmMu9ok9UjkC7ttadHUzSSb9S0HsE3hXuB7FcOK+8AmNRKDrsG7RTXyCU
         gmZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=92DCj1FY1Kc+Y5zuS3G5li1dKOk9D59WBhjMoMejF5k=;
        b=m8CcIv8OA/VmZ3Gelu7CKbwovkd2aQoNlfNEVwR4Bwh6wsrt+orMosUyNPUUUsApBi
         7QNTnadLwQoZbnOnqyqSJ+gLykLt01V+YF152LUCpGqeB7JPDJcDOTlOT7UT5jK9GTn0
         yOsWZvG8+INy9Vjf0G0mTQSDdjsILZZdsuSETT15p9igzWWBB+Kv0F7AFrzVmllRdme6
         y0T53DZU+6tF2LdEtmT0zcl7KS/DOp1sDWq7wl0KskRGzqSP/WUqvmzghqz/k/+6MTop
         orCrpCRLP1hieDgrc6InMoLjf0+nd5g515x9WiR+GOEhB/EHdEE+kQ9YF1VhbByvDoo3
         cRnA==
X-Gm-Message-State: ANhLgQ14gegDO3hgaJwCFzlucqDlOVQHSnfQk/vMMyaC8ln6vb1eHj7H
	MdyeQo9g22vPxMRQ+ksVq8VJiw==
X-Received: by 2002:a63:4e01:: with SMTP id c1mr7925363pgb.435.1584024759467;
        Thu, 12 Mar 2020 07:52:39 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.175])
        by smtp.gmail.com with ESMTPSA id b15sm55540061pft.58.2020.03.12.07.52.36
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 12 Mar 2020 07:52:38 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Thu, 12 Mar 2020 20:22:31 +0530
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>, Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 5/5] staging: comedi: drivers: use unsigned int
Message-ID: <20200312145231.GA30896@kaaira-HP-Pavilion-Notebook>
References: <20200311184327.25338-1-kgupta@es.iitr.ac.in>
 <20200311184327.25338-6-kgupta@es.iitr.ac.in>
 <20200312081714.GD11746@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200312081714.GD11746@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Mar 12, 2020 at 09:17:14AM +0100, Greg Kroah-Hartman wrote:
> On Thu, Mar 12, 2020 at 12:13:27AM +0530, Kaaira Gupta wrote:
> > Change i's type to unsigned instead of signed. It's always positive.
> > Reported by coccinelle.
> > 
> > Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> > ---
> >  drivers/staging/comedi/drivers/ni_mio_common.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
> > index 06ed4b1dd875..034cf8dafaf0 100644
> > --- a/drivers/staging/comedi/drivers/ni_mio_common.c
> > +++ b/drivers/staging/comedi/drivers/ni_mio_common.c
> > @@ -888,7 +888,7 @@ static void ni_sync_ai_dma(struct comedi_device *dev)
> >  static int ni_ai_drain_dma(struct comedi_device *dev)
> >  {
> >  	struct ni_private *devpriv = dev->private;
> > -	int i;
> > +	unsigned int i;
> 
> Why is this needed?

Since it's always positive and I though that it's maximum value might get
greater than 2^31, hence I changed it.

> 

