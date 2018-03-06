X-GM-THRID: 6528703529529376768
X-Received: by 10.200.38.208 with SMTP id 16mr15460896qtp.8.1520412031504;
        Wed, 07 Mar 2018 00:40:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.20.141 with SMTP id l13ls704826qtj.8.gmail; Wed, 07 Mar
 2018 00:40:30 -0800 (PST)
X-Received: by 10.200.57.105 with SMTP id t38mr15855018qtb.22.1520412030939;
        Wed, 07 Mar 2018 00:40:30 -0800 (PST)
Received: by 10.55.195.150 with SMTP id r22msqkl;
        Tue, 6 Mar 2018 15:35:09 -0800 (PST)
X-Google-Smtp-Source: AG47ELsIRiXFH4J/jiE2Trb1AgeqCQvxAbixDG6Yh7hWHv+jisKJz6GKe9QF3xi0vkuOEGUzTlSm
X-Received: by 10.28.144.17 with SMTP id s17mr368376wmd.29.1520379309240;
        Tue, 06 Mar 2018 15:35:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520379309; cv=none;
        d=google.com; s=arc-20160816;
        b=Ye9q59ZcS1vOA01xvOhucr3Bq2yRUZToVQj4k+adpCjo/Idg0Ybu5mCejlnOGTI+J9
         N/Xz0JvuE+v46iYNj8TJV4UuGp6BehZJJjEhkDP/eGcTYN7fW6pcBLQG/9i8fBJjrvdW
         aAXObWEF6fGLXmVObw7Wstl6G7Arn/eCRTuDmaPSiOCdYxL+96a9MGohud022smrIUxA
         vejZL5SRgxiXTaVjVncQx6qX6xx1dY9YizM3qy7TeXykJnM5mVVWh02DevTYEU+2OShF
         1RTzyI9awsBaoWawWAfB1tNgT4RhJIJWyN1GF/sIUkDALGHvCXP0RA2u5lY33V3k4Aqr
         x6Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=7kbE0xUoEbyzRI2viRsSR22r9eevLw94V+peLncbY1I=;
        b=bsXL05Rq0PHzUjsMmzwZauIUTn/IFUADUM0shpmkwGaSspFbPtfKTigrEoOItlSz1J
         lnyrdkyGjqsTk0GYaWYrGtV7WXCkgsuTH2lb+QSGEwVCpRMUtqJfldX/oObb7KoSBPW/
         2Kd1hH3/+6E39JSVGjTLMFaZyYv8MRe1eHSWaf4O8ZR+ktftSCEfvs1yV9ZF1G9wB2Ys
         +VuVN695+WXQYhydInI1el7s29WEM9/qRKfBA82gkRK6h00bzHBIdptmm3i4gcFCHXdH
         sHnzwrLqV8KFjSaAGaAC6etrphUI9Q4zFhVxpIYenATHStZFjyhO4tXdfCemFYxFtORH
         iXWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=QG9ETXz9;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Return-Path: <jgg@ziepe.ca>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id 51si871981wrw.0.2018.03.06.15.35.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Mar 2018 15:35:09 -0800 (PST)
Received-SPF: pass (google.com: domain of jgg@ziepe.ca designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=QG9ETXz9;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Received: by mail-wm0-x241.google.com with SMTP id w128so1429439wmw.0
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Mar 2018 15:35:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7kbE0xUoEbyzRI2viRsSR22r9eevLw94V+peLncbY1I=;
        b=QG9ETXz9wdAOI0e+PqDmMSvSwrWpKKuzUS/eBcvvjzHvZ/1XVTyO81/9qYBIZ+malG
         edg4hgfMdRH2b2a57gwOVkpa5EzfdvPqlJmalRtA/O5TeTacCbwoqIrKOi6wtwbAZnR4
         2sTLevZO3HD1IFM3Ef2zyQqMspXW02oF5ezbsMJryUF/NQsNFpkX9PKZ1t5vWPPMmzMr
         hQJAzccxyqmiQh6GHEIUfZGyF9vhFWpKLiJX+5/D1WZEOvJHZraMnIxnecke59gPIIO+
         PI6GfH2eXv9BxEzoaxG/eWyYis0zKzHlcvPj9FHlpFG+aJA3Jq3vJOeW5IqYTIZtZx2z
         GHEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7kbE0xUoEbyzRI2viRsSR22r9eevLw94V+peLncbY1I=;
        b=Favym6wCpFm01dj2ouSy5eD67N/MxVPQm01ewAB61qy4Jj6IJZqVM0io1E9fqh342b
         /YecQKB5ng31KXM3d6T7r9hmJYtayIlELbJTR0WQ2LGQYto23dWq4OJmk0hrtZ0JRqGa
         kZCpVtxK2Iv0VZYHcj2IZb5+ZnBZDJgyhBmL+Bq9us9bOFZP0y+WXVG5Ji5+f350WmXB
         hsuqetYTCqN2ilC1Ak76CU5iIjN1WAzXp7rcE0rWm7JhxLA7m4fAbTacSDECuzRl+36T
         HPuhbxit1oeBhinqqQWbqyfFYVbgBcLU2i8oAlXWvXzjZVi9HIPUOLuEWF2/zRrCTVjO
         oyew==
X-Gm-Message-State: AElRT7HoonkeHqni1tlAPWmG4WJ8bsnKQwqa26UWmYanYzxbtIopPz8/
	iXsr3VLqdWDIh0fQrLPDtbqs6w==
X-Received: by 10.28.84.19 with SMTP id i19mr11790947wmb.7.1520379308922;
        Tue, 06 Mar 2018 15:35:08 -0800 (PST)
Return-Path: <jgg@ziepe.ca>
Received: from ziepe.ca (S010614cc2056d97f.ed.shawcable.net. [70.74.179.152])
        by smtp.gmail.com with ESMTPSA id j6sm986055wmg.14.2018.03.06.15.35.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Mar 2018 15:35:08 -0800 (PST)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.86_2)
	(envelope-from <jgg@ziepe.ca>)
	id 1etM6r-0002Bq-6n; Tue, 06 Mar 2018 16:35:05 -0700
Date: Tue, 6 Mar 2018 16:35:05 -0700
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Arushi <arushisinghal19971997@gmail.com>
Cc: dennis.dalessandro@intel.com,
	Mike Marciniszyn <mike.marciniszyn@intel.com>,
	Doug Ledford <dledford@redhat.com>, linux-rdma@vger.kernel.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] infiniband: hw: Drop unnecessary continue
Message-ID: <20180306233505.GD8328@ziepe.ca>
References: <20180303162457.GA21730@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180303162457.GA21730@seema-Inspiron-15-3567>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Mar 03, 2018 at 09:54:57PM +0530, Arushi wrote:
> Continue at the bottom of a loop are removed.
> Issue found using drop_continue.cocci Coccinelle script.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> Changes in v2:
> - Braces is dropped from if with single statement.
> 
>  drivers/infiniband/hw/qib/qib_init.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)

applied to for-next

Thanks
Jason

