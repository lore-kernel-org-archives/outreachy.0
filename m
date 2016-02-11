X-GM-THRID: 6250070785112670208
X-Received: by 10.129.41.70 with SMTP id p67mr20899311ywp.33.1455219439808;
        Thu, 11 Feb 2016 11:37:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.87.101 with SMTP id w5ls605763obz.33.gmail; Thu, 11 Feb
 2016 11:37:19 -0800 (PST)
X-Received: by 10.182.247.97 with SMTP id yd1mr45521581obc.9.1455219439384;
        Thu, 11 Feb 2016 11:37:19 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 12si1007978pfb.1.2016.02.11.11.37.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 11:37:19 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 14DDE1022;
	Thu, 11 Feb 2016 19:37:19 +0000 (UTC)
Date: Thu, 11 Feb 2016 11:37:18 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Janani Ravichandran <janani.rvchndrn@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: goldfish: Remove unneeded
 parentheses in assignment
Message-ID: <20160211193718.GA32329@kroah.com>
References: <20160212002435.GA5778@janani-Inspiron-3521>
 <alpine.DEB.2.02.1602112027230.2061@localhost6.localdomain6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1602112027230.2061@localhost6.localdomain6>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Feb 11, 2016 at 08:27:56PM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 11 Feb 2016, Janani Ravichandran wrote:
> 
> > Remove parentheses around the right hand side of assignments as they are
> > not needed. Semantic patch used:
> > 
> > @@
> > expression a, b, c;
> > @@
> > 
> > (
> >   a = (b == c)
> > |
> >   a =
> > - (
> >   b
> > - )
> > )
> > 
> > Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> > ---
> > Changes since v1:
> >  *Lined up the expression on the right hand side in one of the
> >  assignment statements modified.
> >  
> >  drivers/staging/goldfish/goldfish_audio.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/staging/goldfish/goldfish_audio.c b/drivers/staging/goldfish/goldfish_audio.c
> > index f1e1838..eea7bbf 100644
> > --- a/drivers/staging/goldfish/goldfish_audio.c
> > +++ b/drivers/staging/goldfish/goldfish_audio.c
> > @@ -122,7 +122,7 @@ static ssize_t goldfish_audio_read(struct file *fp, char __user *buf,
> >  		return -ENODEV;
> >  
> >  	while (count > 0) {
> > -		length = (count > READ_BUFFER_SIZE ? READ_BUFFER_SIZE : count);
> > +		length = count > READ_BUFFER_SIZE ? READ_BUFFER_SIZE : count;
> >  		AUDIO_WRITE(data, AUDIO_START_READ, length);
> >  
> >  		wait_event_interruptible(data->wait, data->buffer_status &
> > @@ -197,8 +197,8 @@ static int goldfish_audio_open(struct inode *ip, struct file *fp)
> >  
> >  	if (atomic_inc_return(&open_count) == 1) {
> >  		fp->private_data = audio_data;
> > -		audio_data->buffer_status = (AUDIO_INT_WRITE_BUFFER_1_EMPTY |
> > -					     AUDIO_INT_WRITE_BUFFER_2_EMPTY);
> > +		audio_data->buffer_status = AUDIO_INT_WRITE_BUFFER_1_EMPTY |
> > +					     AUDIO_INT_WRITE_BUFFER_2_EMPTY;
> 
> It looks like nothing changed?

The ( ) are gone.


