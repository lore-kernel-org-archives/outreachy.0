X-GM-THRID: 6331276678266880000
X-Received: by 10.13.213.22 with SMTP id x22mr11582480ywd.52.1474117230210;
        Sat, 17 Sep 2016 06:00:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.60.247 with SMTP id t52ls8134908otf.28.gmail; Sat, 17 Sep
 2016 06:00:29 -0700 (PDT)
X-Received: by 10.13.229.6 with SMTP id o6mr1476248ywe.119.1474117229918;
        Sat, 17 Sep 2016 06:00:29 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 7si3569635pfw.1.2016.09.17.06.00.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 06:00:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id oz2so4631359pac.0
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 06:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=uVTiAzkoNEE9nMQXfisdUOVVNLWzgf1GkhkTGId5S7Y=;
        b=I9HNU5pi2UDdspnTZySc7vwBzMM6OjMJNFmJYkxYe7TQ32ql38vhbFD3VxfP6c7eHN
         IjDk0n/FUxd8QPlUPO+ttOqe9VeXzVbNnwxbVywXSvLL7bCvEwlzMw1dbcgf5Si6CEBF
         wQtwLHemnnN1Ke2ZUS4EWfDawiBsN6a00TjG9NMXb4vcjqpTnseERoJFtY+BZ5zm9bJv
         8hb0Se/0DVu9qZtJr4/cCVCCPL9phwmcUjjOGCeZEVmYECJPp7Q62tIZCm5Qd9R3G/WR
         aLDPjKpbPSJ6hWpdVD52SxlfkxO8FGurOLFJAOM4gRgTVi9p6cEcs05kw3H7IEmFpX9s
         /tLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=uVTiAzkoNEE9nMQXfisdUOVVNLWzgf1GkhkTGId5S7Y=;
        b=mKVzaEIUarbDgnCXm4NogZY/N9RHa+2Wb94xtZnjhqtOfJniK+oODwheemW72ixw6+
         cuaXa+QJ8tsxfmAmWtE/DgqOpOVSebhZkYD97xS4UVYoxV1G4Y6gFgKoRV/R+8Dj559U
         +ZnCNjDPt5y7JEaGyv9GmsvytDNTHJNJDkbiDdNZB550K8ZwGSTC5X0HlX8fauHNAINK
         L9TAhCfa7LLSL1Tynnfl5kiMorITr8uqcs4CT46mlp0rOCcrOf63fdTQfPNy9eeVropn
         l1yAxx8TswDqETrv626QDEbw1Y+jEZXrbVQEgPf8DQ/NLYLras7WWd7XDnCe6IYLSk4z
         EWgg==
X-Gm-Message-State: AE9vXwOfqrYrDGmTXoxPjWQa7HJC4rFj5nu5yg7MvwWCVc/zGLuRSHe/CRLHJF+Sk6kXHA==
X-Received: by 10.66.121.131 with SMTP id lk3mr15512399pab.139.1474117229706;
        Sat, 17 Sep 2016 06:00:29 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id 70sm26380062pfn.46.2016.09.17.06.00.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 06:00:29 -0700 (PDT)
Date: Sat, 17 Sep 2016 18:30:25 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rts5208: rtsx_chip: Add
 space around binary operators
Message-ID: <20160917130023.GA7058@namrata-HP-Pavilion-g6-Notebook-PC>
References: <20160917122654.GA6667@namrata-HP-Pavilion-g6-Notebook-PC>
 <alpine.DEB.2.10.1609171428560.3454@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1609171428560.3454@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Sep 17, 2016 at 02:30:43PM +0200, Julia Lawall wrote:
> 
> 
> On Sat, 17 Sep 2016, Namrata A Shettar wrote:
> 
> > Add space around binary operators to resolve checkpatch issue.
> >
> > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > ---
> >  drivers/staging/rts5208/rtsx_chip.c | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/staging/rts5208/rtsx_chip.c b/drivers/staging/rts5208/rtsx_chip.c
> > index bcc4b66..c75493a 100644
> > --- a/drivers/staging/rts5208/rtsx_chip.c
> > +++ b/drivers/staging/rts5208/rtsx_chip.c
> > @@ -760,7 +760,7 @@ static inline int check_sd_current_prior(u32 sd_current_prior)
> >  	int i;
> >
> >  	for (i = 0; i < 4; i++) {
> > -		u8 tmp = (u8)(sd_current_prior >> (i*8));
> > +		u8 tmp = (u8)(sd_current_prior >> (i * 8));
> >
> >  		if (tmp > 0x03) {
> >  			fake_para = true;
> > @@ -2288,7 +2288,7 @@ int rtsx_read_ppbuf(struct rtsx_chip *chip, u8 *buf, int buf_len)
> >
> >  	ptr = buf;
> >  	reg_addr = PPBUF_BASE2;
> > -	for (i = 0; i < buf_len/256; i++) {
> > +	for (i = 0; i < buf_len / 256; i++) {
> >  		rtsx_init_cmd(chip);
> >
> >  		for (j = 0; j < 256; j++)
> > @@ -2304,10 +2304,10 @@ int rtsx_read_ppbuf(struct rtsx_chip *chip, u8 *buf, int buf_len)
> >  		ptr += 256;
> >  	}
> >
> > -	if (buf_len%256) {
> > +	if (buf_len % 256) {
> >  		rtsx_init_cmd(chip);
> >
> > -		for (j = 0; j < buf_len%256; j++)
> > +		for (j = 0; j < buf_len % 256; j++)
> >  			rtsx_add_cmd(chip, READ_REG_CMD, reg_addr++, 0, 0);
> >
> >  		retval = rtsx_send_cmd(chip, 0, 250);
> > @@ -2317,7 +2317,7 @@ int rtsx_read_ppbuf(struct rtsx_chip *chip, u8 *buf, int buf_len)
> >  		}
> >  	}
> >
> > -	memcpy(ptr, rtsx_get_cmd_data(chip), buf_len%256);
> > +	memcpy(ptr, rtsx_get_cmd_data(chip), buf_len % 256);
> >
> >  	return STATUS_SUCCESS;
> 
> It could be interesting to look into the return values.  Normally the
> success return value is 0 and the failure return value is some negative
> error code.  To do this, you would have to look at 1) what the function
> returns, 2) what the definition of STATUS_SUCCESS and any other return
> values is, and 3) what is expected by the calling context.
> 
> julia
> 
Yes! will look that up. 

Thanks,
namrata
> >  }
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160917122654.GA6667%40namrata-HP-Pavilion-g6-Notebook-PC.
> > For more options, visit https://groups.google.com/d/optout.
> >

