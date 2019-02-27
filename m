X-GM-THRID: 6662711106976350208
X-Received: by 2002:a63:5054:: with SMTP id q20mr1373124pgl.127.1551285938811;
        Wed, 27 Feb 2019 08:45:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:2052:: with SMTP id r18ls709368pgm.10.gmail; Wed, 27 Feb
 2019 08:45:38 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYzkgOcwUn9w9OwR8XkPlr+HnPnAeEU0+BXVJSPK3uyeSfR7ukxm9OOK06VmVWGREqXQwYY
X-Received: by 2002:a62:2e83:: with SMTP id u125mr1000427pfu.91.1551285937988;
        Wed, 27 Feb 2019 08:45:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551285937; cv=none;
        d=google.com; s=arc-20160816;
        b=sdSei82F431Y5INTIUMrSVrplBhNl2UNjf3Hni035VFP9JGHC4szUSdRf2MU/dAL/a
         LyJjVISMutj2/b/LCQoJPZ3eCWADLLRQE4O7nphq5WwLCiQEHbnCB+uyAEj5phTXzDDs
         scM03YOTxUNgBLEQfUvsBWPzq3/C+PTw99faG3e75HCRc/qE/wWknkSH5S84FrCC1xHD
         Jn4kvoDRpRIx+mBlQ6W5iL32pBJsykNNUEkxqarm405Yx6USStE4yxOZhjCmzEwrKpue
         gU4uUljiBWjcy4I0E3YIt4fBk2Mh/TTp20BZggdigFMDTtcyuet6XLbgD17E3vNJTKWZ
         ZSyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=+apKfdp2HRNolLbZCV/iZyv/LheAr7yJVHjHO8Q7A08=;
        b=snPpHAHl/iWL8aEeFnHRj0L9xsHUX/0uLvodCbgF32EtE5gHhXteEGaiNZMpgOGOhp
         TIjmvar5svL11yz6ZM+B5sgRVHikB245OdHUOWStur+vjcMuia+CGUY5HwKYzaM1dE4W
         mgCRFzEAhBZq2UaXS1usydkd09KdExS/5Un4dzhznPJhyM4Hh8nb6jPaHCJQAp8VMriC
         jMAO3n+6WHBrGjUfBaQS1Prpl7sGs8WiNw0pGxUwBmWCoZG4jWm9tctGk9Qkg04P1R7n
         TsebvrI36qOZOFxYJPltmk14r+pyLj+cN8i4ixNk0bim/gG5ikyI0V3A8VHz08q+bas8
         Z21g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ojO5IEVM;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id r133si63362pgr.4.2019.02.27.08.45.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 08:45:37 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ojO5IEVM;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x242.google.com with SMTP id g16so13989055oib.1
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Feb 2019 08:45:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+apKfdp2HRNolLbZCV/iZyv/LheAr7yJVHjHO8Q7A08=;
        b=ojO5IEVMTNyml0AAg7AsMJUj/IGd+A8IVbx3w3vBf8GThHHKYmHIw7vnxZP3GYPjIQ
         80RMLWneQcGPjXQgRoDVnZ6ptzGNqQGTqk2ZPe9PBTrtYZCazQd0/CrYbJ9Dhs/sc30O
         Z8JBmi+8UDq4P7pvZUKGhrkzVUQD9fuJ+jmytdw0+j57PGSri6Pi6HNi/cPIFGg885Fu
         Onn+473ZOElybwN5yIyTB+1Qot6zu/eKtPkt2sy45FbL8MHriNmMvDEgwcb1LBZlBvS4
         SDar6dfACo/u5uWefppjqXpEgcPsYelnoPkqqcXo8tsEMaDWoCcKJRwtAJMrUf6ZlheX
         OoDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=+apKfdp2HRNolLbZCV/iZyv/LheAr7yJVHjHO8Q7A08=;
        b=shg4D+4MS6CWMt6w8WWG6Y+26Ky5jSp155RmDi4Lqf1z9nU3jUNC2HwCUDnAAr8C+0
         N4oZc+Ro416PZWchzGgL8z3a6HrOys6Dcg5XUW0Vz8uor/vhVd7v0/qtMVU0rdIx0jkZ
         th1hy6GSpzUCrwXC3PFhpGmmGl+eJ9IcNAIVP4ylB8T0h1fxW6PXbhDZxvSQcH7synFz
         chMpgZXh4yc/k0rHo/wgbUeBUcGUGConz66ZPRX445WgIJC4Zt4I7DNAub74y42Grmif
         n0x9T9Xa04lPOQoPvn8CN/ACy4auioY8hoP/GVBxZ7l8mEs3xeTO53vqUL75holS7AKj
         Oysw==
X-Gm-Message-State: APjAAAUpwdffUUeAJkmTkzuaY8qal5mSDFXWa0tqyToHHAqsLKfreXaK
	l5Zah9lUqoDtUD9H9sP0wLg=
X-Received: by 2002:aca:3209:: with SMTP id y9mr101701oiy.145.1551285937215;
        Wed, 27 Feb 2019 08:45:37 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id r1sm6627388otk.48.2019.02.27.08.45.36
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 27 Feb 2019 08:45:36 -0800 (PST)
Date: Wed, 27 Feb 2019 10:45:34 -0600
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: vt6655: Alignment of
 static function declaration
Message-ID: <20190227164533.GC22354@madhuleo>
References: <20190227160148.21914-1-madhumithabiw@gmail.com>
 <20190227162834.GC23972@kroah.com>
 <20190227163950.GA22354@madhuleo>
 <20190227164240.GA11873@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190227164240.GA11873@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Feb 27, 2019 at 05:42:40PM +0100, Greg KH wrote:
> On Wed, Feb 27, 2019 at 10:39:52AM -0600, Madhumthia Prabakaran wrote:
> > On Wed, Feb 27, 2019 at 05:28:34PM +0100, Greg KH wrote:
> > > On Wed, Feb 27, 2019 at 10:01:48AM -0600, Madhumitha Prabakaran wrote:
> > > > Align function arguments and function return type to improve
> > > > readability.
> > > > 
> > > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > > ---
> > > > Changes in v3
> > > > - Included driver name in subject line.
> > > > 
> > > > Changes in v2
> > > > - Improved alignment of function declaration
> > > > - Modified subject line and commit log
> > > > ---
> > > >  drivers/staging/vt6655/card.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> > > > index 229137f29690..8d0182f5725c 100644
> > > > --- a/drivers/staging/vt6655/card.c
> > > > +++ b/drivers/staging/vt6655/card.c
> > > > @@ -62,7 +62,7 @@ static const unsigned short cwRXBCNTSFOff[MAX_RATE] = {
> > > >  
> > > >  static void s_vCalculateOFDMRParameter(unsigned char byRate, u8 bb_type,
> > > >  				       unsigned char *pbyTxRate,
> > > > -				       unsigned char *pbyRsvTime)
> > > > +				       unsigned char *pbyRsvTime);
> > > 
> > > The patch does not do what your changelog text says it is doing :(
> > 
> > I want to ensure whether you mean 'git diff' is not same as it is stated in commit log. I think, i didn't reset the commited patch and just edited the subject line. Please correct me, if I'm wrong
> 
> I have no idea what you did here, but the diff here is not doing what
> your changelog says it is doing.  So something got out of sync.
> 
> greg k-h

I will fix it and update it. Thanks


