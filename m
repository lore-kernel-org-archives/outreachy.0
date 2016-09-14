X-GM-THRID: 6330237513629696000
X-Received: by 10.66.226.10 with SMTP id ro10mr3840492pac.29.1473890608237;
        Wed, 14 Sep 2016 15:03:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.74 with SMTP id u10ls2197603otd.30.gmail; Wed, 14 Sep
 2016 15:03:27 -0700 (PDT)
X-Received: by 10.237.59.8 with SMTP id p8mr3932177qte.1.1473890607874;
        Wed, 14 Sep 2016 15:03:27 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id h124si1618017pfe.0.2016.09.14.15.03.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 15:03:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 128so1305977pfb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 15:03:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=kg0fNv+M2C994Rd7pKb1IY4VAbHbgqPPzE2qQKZtdsw=;
        b=1KOY+Ar31zQIf5e3stcSlxpHWncMG93WJgm6IJt1sFyVtxtuaxh5eUZgyfaU0hEwT8
         gOGNmu/B4E64/sXh7qNFdwLSIg3n8BSuWf7EZfJjkChCt5haGoF/ZGW9NHoDnCuwVcQ5
         JJhPVC3hWmw8C0P7s/4b0oODzMj0vgc6FfKgBK0+Y3pPfPnvnx1uCP+kM3L7739g7yMG
         ZkB5jfMnkkRg3Rd5Ki9o20XnORE95mEvZkYEFzXtr6dpAMhP2QsDmECOFwcmUhWmf9ch
         vdS4D5r1taBBB1axtmh4Rw5h5eKpUYsvUcv9ZAGQ3JO9SVekUM0wq5VGyOpvbyj9FKym
         I9Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=kg0fNv+M2C994Rd7pKb1IY4VAbHbgqPPzE2qQKZtdsw=;
        b=lfkDNR4MmBfXl+LWHgUx5h+AQEmmfpEt4gVauS6NPCg4Zv6Evp3x3s6WZYF+kJ9uUt
         rkpPeU8Es0qr/vzYDtKJaoObDfdkAJZIIWXZZzlEXkOewvFT6nY+qqEVcrc1UMrDoUDc
         ix0eNJgPib8uKbJxekqodT62ZCMKeagFZZ6Ywm8t4m1hX4bzJuvQIN5IbV+AFsho+cn2
         Q2qf+GyUVBBQ+zPgd/TqZUs8r78M5lm8YdhXjpShBrlD53P79yy337YcNaCx7mbQVxL6
         eWVhOT7mfORIqspclClYRuLJcgNH2wRwIAWncITH2kOZeQj+UvQ/swLaC0OsJ7VFn5cU
         VKNg==
X-Gm-Message-State: AE9vXwPNGp0xemYbWst9bnO/S9ncEfIEgG5oIZlTjRh4lZdXzp8YZhm6ccEfI342NCGBrg==
X-Received: by 10.98.85.134 with SMTP id j128mr8697705pfb.6.1473890607667;
        Wed, 14 Sep 2016 15:03:27 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id 5sm40139821pfy.81.2016.09.14.15.03.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 15:03:27 -0700 (PDT)
Date: Wed, 14 Sep 2016 15:03:21 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Katherine Dunne <kdunne@mail.ccsf.edu>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: How to start & where can I get patches to
 fix.
Message-ID: <20160914220321.GB5579@d830.WORKGROUP>
References: <6b561156-c351-45da-a22e-3a806aad1f27@googlegroups.com>
 <7d66e8c8-88fe-4fbb-ad4c-55b252a5a980@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7d66e8c8-88fe-4fbb-ad4c-55b252a5a980@googlegroups.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Sep 14, 2016 at 02:54:24PM -0700, Katherine Dunne wrote:
> 
> 
> On Wednesday, September 14, 2016 at 10:14:34 AM UTC-7, Manali Gadre wrote:
> >
> > Hi ,
> >
> > I'm Manali Gadre.
> > I want to start working on cleanup patches. Can anyone please guide me 
> > where can I find bugs or patches. 
> >
> 
> Hi Manali,
> 
> The first thing you should do it complete the First Patch Tutorial:
> https://kernelnewbies.org/Outreachyfirstpatch

Also, see Julia Lawall's  'Welcome' Message dated September 11 on this
mailing list.

BTW - these was something odd about this message.  I saw it in google 
groups but it didn't get forwarded. I couldn't reply until Katherine's
reply was posted and forwarded.

Welcome,
alisons

> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/7d66e8c8-88fe-4fbb-ad4c-55b252a5a980%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.


