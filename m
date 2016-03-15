X-GM-THRID: 6262299386982694912
X-Received: by 10.98.75.75 with SMTP id y72mr20303550pfa.10.1458060693651;
        Tue, 15 Mar 2016 09:51:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.30.226 with SMTP id d89ls317443qgd.81.gmail; Tue, 15 Mar
 2016 09:51:33 -0700 (PDT)
X-Received: by 10.129.117.11 with SMTP id q11mr22548786ywc.3.1458060693078;
        Tue, 15 Mar 2016 09:51:33 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sf5si4345566pac.1.2016.03.15.09.51.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Mar 2016 09:51:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B438F9D;
	Tue, 15 Mar 2016 16:51:32 +0000 (UTC)
Date: Tue, 15 Mar 2016 09:51:32 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Tejun Heo <tj@kernel.org>
Subject: Re: [Outreachy kernel] [PATCH] iio: light: tsl2563: Remove
 flush_scheduled_work
Message-ID: <20160315165132.GA29744@kroah.com>
References: <20160315151951.GA5890@amitoj-Inspiron-3542>
 <20160315154440.GA23557@kroah.com>
 <CA+5yK5H-ubVPv7_h12=sB9_TcWAaVh69Y=C272VQbZbY58swUA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+5yK5H-ubVPv7_h12=sB9_TcWAaVh69Y=C272VQbZbY58swUA@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Mar 15, 2016 at 10:09:58PM +0530, Amitoj Kaur Chawla wrote:
> On Tue, Mar 15, 2016 at 9:14 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> >>  drivers/iio/light/tsl2563.c | 3 +--
> >>  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > Please only touch files in drivers/staging/ for the application process,
> > I can not take any patches outside of that area.
> >
> > thanks,
> >
> > greg k-h
> Actually, Tejun gave the go ahead to move on to other drivers since
> the exhaustion of opportunities in staging drivers hence the patches
> in drivers/net/ and drivers/iio/.

Ok, but note, I can't do anything with them, so you need to be
responsible for getting them to the correct mailing lists and
maintainers after Tejun acks them.

thanks,

greg k-h

