X-GM-THRID: 6886283537092182016
X-Received: by 2002:a25:b316:: with SMTP id l22mr1222153ybj.395.1603349217922;
        Wed, 21 Oct 2020 23:46:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:df0d:: with SMTP id w13ls333455ybg.11.gmail; Wed, 21 Oct
 2020 23:46:56 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyfoX2kXKN8W2OgX1HEbhZgcnRDsIdUvg1lK++BI0yRA4w8LkeKgc6QDC2FqtQQzyI7d2QD
X-Received: by 2002:a5b:d4d:: with SMTP id f13mr1433086ybr.172.1603349216296;
        Wed, 21 Oct 2020 23:46:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603349216; cv=none;
        d=google.com; s=arc-20160816;
        b=PAyDzBhG0Gs3Y5QOy3luX5gB3+AH9PlKzp3iK+syQZ8e/5WKrXPeoCiiJ62ow4Jx+2
         k8xkunwHFKPFJuYUqfmJHy2oqRprEq0C5cntfR+2QVIpcMY0Fsi5/jBwrN/iKq+DUoXo
         lRRq0Pew0z2H1cgCYHDgIA4sTimDUS9Jr3YyWsDVxs5VXk2dQhksqPa5fCQzq7ohh5gg
         xzjk6R2pj3IZfpCPRC0/As2Irxo3W6DFkTqv3z54jXHsO4qPsOrgOB1gULCR8TYvVV0z
         kqIG10pa+5eN06mygDx1oRBRjraqfuJRrxzwPKDDZgiEqnvjXF8jiAC8jyNE+P3AzDJb
         WZ4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0WrnMd2LNPPj+2D4lLqH93MCcvhS9gwX7h302REyvo0=;
        b=MPQq/Mcd9y2aZwQm7VyuPwdYi71RjYkfnbHw3s/tmtPNXUCqLOmDB8bBaBvLLkmwdn
         klJtXg5tDRwnOrlf7ZSW3hk7bLWwafRIrrWdLIFrGadFfO4obnZcXFXJNvKkvLWL6Mm9
         d3CEsMA+fZnzCmNG2PZ4ur/NK4QkFOviZ+eUFGUF/KzU/Wuq3MSV6GdQV6bYkBD9Ax5m
         rNQlNG+rhQKPW9M7o78NIImfxj6mqaqs5eORkQW5ujk5lb8pJH7kNXo/SQ5gtkUsmmC9
         GPi1D9gx2isw9O34RqfuwrUoJfLjt78SWZTFl3VL9JF4YgF7hkcIzZYQEpPHF0QmnmTK
         KXgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vDYB1sEM;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id e184si31253ybe.0.2020.10.21.23.46.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2020 23:46:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vDYB1sEM;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id n9so363202pgt.8
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2020 23:46:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=0WrnMd2LNPPj+2D4lLqH93MCcvhS9gwX7h302REyvo0=;
        b=vDYB1sEMcEaIU+Wd++uwCQto9ubA41QNO0AyLFcki8A8JHLBVPBsEWyP+hNuga5XHl
         4l7DEw+wzMFh69Lg/rOHO/w8LTPia79S2b1lnrKdlqM/UKi82k/M2t6UDL6qYPocR4kZ
         OEuOtiZRgmmn0WetkAOQ7ktaJW/zPdyXLl/5ntJncSFz66SiHWlFws6xA9epcxa+B1yu
         KpHQ42Ex6QWvC3ANfP4BZPdGpBbC5hdls3bOGcf7ZyKp5jOwJnMjf22imGIrdfkP/UMQ
         9M9QAbSMjIAUVXIuubZwDHLGHqnPt7+VoH1UsuwD3frnO+jmAqw8XisxTb1LriTLiQjb
         bQ3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=0WrnMd2LNPPj+2D4lLqH93MCcvhS9gwX7h302REyvo0=;
        b=f5GeyhfRZ0ZPkSdbhRRD3kBwaE67x2Vid9WOyHtWEN6qarsySi2dtovE58jYygYPvz
         Vx+GRHvE6LxnKBp9+7OPbK39Z+o1RTbpVe50gPtqemwoUH0qlxbizGo++KF2vfyUY+Lb
         vz8HwuSn02WzXhXDPZFwWyg9kbSfyv1SmDxFqTJsyW210zJcybl0yA071krWiClkKpjt
         3j8pekTukfaRha0/Dpfc8hokX79i2WGAoqakXDSi0ud7ZGehXGdROUFHv3myQ14OUN2f
         iWVIwaKTPjMLKh7iPGBsqe323sTtJgFqCjig6fPuWVrTXa6oKPCAnyh1U5oXXtSF1Z/3
         P6NA==
X-Gm-Message-State: AOAM531Nu/PRm+yraf8VRdELMEIFWhvlnH7M9K4TEURLZ8ZEygupNjki
	5bsJgmpVZffuVesVTi9Yf/JWKIybBy8=
X-Received: by 2002:a65:4386:: with SMTP id m6mr1046019pgp.319.1603349215625;
        Wed, 21 Oct 2020 23:46:55 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id v6sm809833pjh.10.2020.10.21.23.46.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 23:46:55 -0700 (PDT)
Date: Thu, 22 Oct 2020 12:16:50 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, vaibhav.sr@gmail.com,
	mgreer@animalcreek.com, devel@driverdev.osuosl.org
Subject: Re: [Outreachy kernel] Clean up query: greybus/audio_manager_module.c
Message-ID: <20201022064650.GA351945@ubuntu204>
References: <20201022033701.GA329478@ubuntu204>
 <20201022052931.GA6093@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201022052931.GA6093@kroah.com>

On Thu, Oct 22, 2020 at 07:29:31AM +0200, Greg KH wrote:
> On Thu, Oct 22, 2020 at 09:07:01AM +0530, Deepak R Varma wrote:
> > Hello,
> > I am reviewing the file: drivers/staging/greybus/audio_manager_module.c
> > and have found that there are several gb_audio_module_*_show functions
> > that accept "struct gb_audio_manager_module_attribute * " as a function
> > parameter. However, this parameter is not used and should not be
> > necessary. Would you suggest cleaning up such functions.
> 
> Try removing it and see why it is really needed to be there :)

Sounds exciting. I will definitely do that.

> 
> good luck!

Thank you.
Deepak.

> 
> greg k-h

