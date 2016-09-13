X-GM-THRID: 6329663993990348800
X-Received: by 10.13.221.86 with SMTP id g83mr13590204ywe.45.1473757352841;
        Tue, 13 Sep 2016 02:02:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.193 with SMTP id b1ls773948otd.19.gmail; Tue, 13 Sep
 2016 02:02:32 -0700 (PDT)
X-Received: by 10.129.72.129 with SMTP id v123mr12160887ywa.21.1473757352466;
        Tue, 13 Sep 2016 02:02:32 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id y124si2973022pfg.1.2016.09.13.02.02.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 02:02:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 128so9345908pfb.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 02:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=mJ4U1xYGWKJrVFno6mPjlbUYpJwKyuMx1lSnjaKw3dY=;
        b=VBl8QKNVWd6yPAlmMQVDwDqNj8Rj23/3eu6yOlyo731+9j04/Yru6SvsEBnwDiOKCY
         8+5A44IOL7lYvjF8O0yIPAzRamLPAxg3g/LjG9eLz722ygTubKztIde4OjxR08fnSoV0
         AOlDnUqrWw9PQ7kEwiHqNYrYax1Y4IvdrvAN42DKUCzGuMxvtp3kwMg2SHGtVew1hPd+
         ViE4lhD3H5MAB36DwINajvevYWo39ccmEJjYwjKlXheZFZj5LCAye9LNgKBpZVUpi5Od
         IHy+Ao25YiQrDzY9ghf1tDCj/5bu5uJQf++pmUkE4ehIc4/x7prfG7f7FM7A9cxMoi/q
         obHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=mJ4U1xYGWKJrVFno6mPjlbUYpJwKyuMx1lSnjaKw3dY=;
        b=BVwzJFatKNIZwc7nwZwDXPwsy/Z++SiwVwpGelEki/VHqW9OIPVh2joL7DMuxtDOGZ
         aEMcl4ZriIUz2cOJRZ4bEv0JFuv8UP6fyZji9b6Ouzn/j+RRh/FUg3wftJFUDYHjDRv6
         yHlNQMWHmxN1sK2/NXXKp71WdZRn+bx+OFT3Ng1oiTsG7zrkDyK4OJX2yB5JsP6tRlBd
         6VGD2YzbCJyGyLNK6AlAb5/ViNZwr+A7HyQJCU33N455VMaR/35NNVvFvgpLA2zQGo2U
         J1gPQHeV1Z7aOHcx0L8Becrs4FY80sjUVX38P6g4ICqTehCwt3PcVe3UwETcfsFGPFDb
         7NFg==
X-Gm-Message-State: AE9vXwPmf4xO9T3UEqRBrobmXpijZitWbBu3DwXYVAQ347YH0lPwCdJuPIBdTTmn3zCwGA==
X-Received: by 10.98.14.20 with SMTP id w20mr6487821pfi.9.1473757352251;
        Tue, 13 Sep 2016 02:02:32 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([125.212.122.94])
        by smtp.gmail.com with ESMTPSA id l7sm13979271pac.43.2016.09.13.02.02.31
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 02:02:32 -0700 (PDT)
Date: Tue, 13 Sep 2016 17:02:29 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: most: move assignment out of function call
Message-ID: <20160913090229.GB4540@Socrates-DK>
Mail-Followup-To: Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
References: <1473739629-17286-1-git-send-email-eraretuya@gmail.com>
 <20160913060522.GE9098@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160913060522.GE9098@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Sep 13, 2016 at 08:05:22AM +0200, Greg KH wrote:
> On Tue, Sep 13, 2016 at 12:07:09PM +0800, Eva Rachel Retuya wrote:
> > Pull out assignment used as a function argument before the function call to
> > improve readability. Change was made by hand while the following coccinelle
> > script was used to pinpoint the issue:
> > 
> > @a@
> > identifier func;
> > expression list E;
> > position p;
> > @@
> > 
> > func@p(E);
> > 
> > @script:python b@
> > E << a.E;
> > func << a.func;
> > p << a.p;
> > arg_list;
> > @@
> > arg_list = []
> > for i in E:
> >     if (        '=' in i
> >         and not '"' in i
> > 	and not '==' in i
> > 	and not '!=' in i
> > 	and not '<=' in i
> > 	and not '>=' in i
> >        ):
> >        print "function: " + func + " has assignment at arg: " + i
> >        print "in file: " + p[0].file + " , line: " + p[0].line
> >        arg_list.append(i)
> > for j in arg_list:
> >     print j
> > 
> > Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
> > ---
> >  drivers/staging/most/aim-sound/sound.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/staging/most/aim-sound/sound.c b/drivers/staging/most/aim-sound/sound.c
> > index 9c64580..e9d6b67 100644
> > --- a/drivers/staging/most/aim-sound/sound.c
> > +++ b/drivers/staging/most/aim-sound/sound.c
> > @@ -236,12 +236,12 @@ static int playback_thread(void *data)
> >  		bool period_elapsed = false;
> >  		int ret;
> >  
> > +		mbo = most_get_mbo(channel->iface, channel->id,
> > +				   &audio_aim);
> >  		wait_event_interruptible(
> >  			channel->playback_waitq,
> >  			kthread_should_stop() ||
> > -			(channel->is_stream_running &&
> > -			 (mbo = most_get_mbo(channel->iface, channel->id,
> > -					     &audio_aim))));
> > +			(channel->is_stream_running && mbo));
> 
> This patch isn't doing what you think it is doing :(
> 
> You need to keep calling most_get_mbo() for this to work properly, look
> up how wait_event_interruptible() works.
> 

My bad. Thank you for the feedback. I will be more extra careful next
time.

> thanks,
> 
> greg k-h

