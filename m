X-GM-THRID: 6254945718130180096
X-Received: by 10.129.88.135 with SMTP id m129mr15216419ywb.47.1456804074390;
        Mon, 29 Feb 2016 19:47:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.22 with SMTP id f22ls1583781iod.62.gmail; Mon, 29 Feb
 2016 19:47:53 -0800 (PST)
X-Received: by 10.107.184.195 with SMTP id i186mr21300264iof.24.1456804073849;
        Mon, 29 Feb 2016 19:47:53 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id 12si4126507pfb.1.2016.02.29.19.47.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Feb 2016 19:47:53 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id yy13so103688962pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 29 Feb 2016 19:47:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=dqy4UhR1m391E9Ra2PLkUUCQfvm87MKWgSPhlS4UFVo=;
        b=VlYLaBrglDu8GZKR7f/Txnazc75v3hCJsnfOtLf5tDUUFdGKK0KgtU5rKglpJlFUKr
         HSzoN6VeocTYSlwPsiVfNbk+jJGS5Ra6nD+a58+gcACwPWInzR+KWTNh33i+F5UCBPpo
         poHUmczxlaUGRTFISxLP6gICiO1D/NHP1rJ6+4oOh+RYp43ggwJozA6nBEZyMK+PQMB3
         2azS4GLmKogxehqKNFSAMJY/Pi5ATao37z1gkXElb4Fa1hvNWJLcvvIPhBPuNzJ7L3qs
         SxLUASsV8M4CTRaBOrD+fxKZmi9mpK1QCJwGsVKaLrlwbiAMd6jDE9j21BwOiQJ0ZEh9
         mwqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=dqy4UhR1m391E9Ra2PLkUUCQfvm87MKWgSPhlS4UFVo=;
        b=e52EltKckCl+RZIYl6RDDx+1AAnzzGLLX/ZyaQR+iGy4RZeZe0D3dBUDa4uhM2vqRZ
         TXzISFCOZ8xnpII8CsQ0+gDS0w52swFz57wUEoXRXjtYS58LwK1yD33NyYdO3torpxri
         GEWeama7TNPQ/ZIuK1Va14mhA+5PE8o+2RQStcyQ01+r9ib/xX9z+d9ITLtcSWk2Tizh
         f0cGWfBbQbPGLnTNoXsVSzO2fvH+cpxMsomZ0jK4+WanDkqctypX3KXK8CIfC5/yfNg6
         MeValn0eC9wO8NvjLZ98IybdI/d1K2/jGTVkEZQE/V1w5o5pE28Ex9WzVjx/SjQAi1BK
         IbWQ==
X-Gm-Message-State: AD7BkJJgSZC+x0LyTKX4sfsykA4vz99i1D85sjKHC8OHRVoQWmEViznnqt8b052F5Nk5/g==
X-Received: by 10.67.7.197 with SMTP id de5mr27389282pad.105.1456804073661;
        Mon, 29 Feb 2016 19:47:53 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-71-235.dhcp.embarqhsd.net. [67.232.71.235])
        by smtp.gmail.com with ESMTPSA id yj1sm41347209pac.16.2016.02.29.19.47.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 29 Feb 2016 19:47:53 -0800 (PST)
Date: Mon, 29 Feb 2016 19:47:51 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Daniel Baluta <daniel.baluta@intel.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: IIO Coding Task 2 ?
Message-ID: <20160301034750.GA2401@d830.WORKGROUP>
References: <20160224194352.GA3122@d830.WORKGROUP>
 <56CEB5B4.5060605@intel.com>
 <56CEC19C.1010300@intel.com>
 <20160225182612.GA2359@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160225182612.GA2359@d830.WORKGROUP>
User-Agent: Mutt/1.5.23 (2014-03-12)

.........................snip...................
> > >
>t > >We will make this in two steps:
> > >
> > >* introduce API
> > >* find a place where locking is not done
> > >* use new API
> > >
> > >After IIO maintainer says this is OK:
> > >* update all places with the new API.
> > >
> > >thanks,
> > >Daniel.
> 
> Thanks for the directon.  I am working on that first step.
> alisons
> > 
Hi Daniel,
I'm ready to send out the RFC PATCH, but I wasn't able to meet
one of your requests.  I did not find a place where the locking
was not done. The 'sample' is one where mlock was used with
iio_buffer_enabled. I think it illustrates the API well because
it clearly shows the before/after that would occur in other drivers.
Send it? 
Thanks,
alisons


