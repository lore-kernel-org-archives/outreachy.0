X-GM-THRID: 6399195765741191168
X-Received: by 10.157.67.171 with SMTP id t43mr13131234ote.38.1490015180690;
        Mon, 20 Mar 2017 06:06:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.103.7 with SMTP id u7ls2031875itc.19.canary-gmail; Mon, 20
 Mar 2017 06:06:19 -0700 (PDT)
X-Received: by 10.107.9.228 with SMTP id 97mr7050655ioj.25.1490015179719;
        Mon, 20 Mar 2017 06:06:19 -0700 (PDT)
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp1040.oracle.com (aserp1040.oracle.com. [141.146.126.69])
        by gmr-mx.google.com with ESMTPS id t8si1011664ith.0.2017.03.20.06.06.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 06:06:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) client-ip=141.146.126.69;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com
Received: from aserv0021.oracle.com (aserv0021.oracle.com [141.146.126.233])
	by aserp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v2KD6GlO000809
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK);
	Mon, 20 Mar 2017 13:06:16 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by aserv0021.oracle.com (8.13.8/8.14.4) with ESMTP id v2KD6FdB008258
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK);
	Mon, 20 Mar 2017 13:06:16 GMT
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id v2KD6EOb023478;
	Mon, 20 Mar 2017 13:06:14 GMT
Received: from mwanda (/154.0.138.2)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 20 Mar 2017 06:06:13 -0700
Date: Mon, 20 Mar 2017 16:06:00 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
        driverdevel <devel@driverdev.osuosl.org>,
        Linux Fbdev development list <linux-fbdev@vger.kernel.org>,
        Teddy Wang <teddy.wang@siliconmotion.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4] staging: sm750fb: Code readability is improved
Message-ID: <20170320130600.GF4343@mwanda>
References: <20170319154920.GA12736@arushi-HP-Pavilion-Notebook>
 <20170320122817.GG4395@mwanda>
 <CA+XqjF-5cp0erq34KSdWexLaaumbWO9p2iA-CFiCsaF8uXsCZg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+XqjF-5cp0erq34KSdWexLaaumbWO9p2iA-CFiCsaF8uXsCZg@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Source-IP: aserv0021.oracle.com [141.146.126.233]

On Mon, Mar 20, 2017 at 06:25:19PM +0530, Arushi Singhal wrote:
> On Mon, Mar 20, 2017 at 5:58 PM, Dan Carpenter <dan.carpenter@oracle.com>
> wrote:
> 
> > On Sun, Mar 19, 2017 at 09:19:20PM +0530, Arushi Singhal wrote:
> > > New variables are added to make the code more readable.
> > >
> > > Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> > > ---
> > >  changes in v4
> > >  -try to make the code much more readable.
> > >  - defined the variable at the top of a block.
> > > ---
> > >  drivers/staging/sm750fb/ddk750_mode.c | 57
> > +++++++++++++++++++----------------
> > >  1 file changed, 31 insertions(+), 26 deletions(-)
> > >
> > > diff --git a/drivers/staging/sm750fb/ddk750_mode.c
> > b/drivers/staging/sm750fb/ddk750_mode.c
> > > index eea5aef2956f..6517e770e0a7 100644
> > > --- a/drivers/staging/sm750fb/ddk750_mode.c
> > > +++ b/drivers/staging/sm750fb/ddk750_mode.c
> > > @@ -76,38 +76,43 @@ static int programModeRegisters(mode_parameter_t
> > *pModeParam, struct pll_value *
> > >  {
> > >       int ret = 0;
> > >       int cnt = 0;
> > > -     unsigned int tmp, reg;
> > > +     unsigned int tmp, reg, temp;
> >
> > Let's not have "tmp" and "temp" both.  Generally "tmp" is better because
> > you can't confuse it with temperature.
> >
> 
> Hi Dan
> I have not added the tmp variable.
> So is it good to use any other variable like "a" instead of temp.

Just re-use "tmp".  No need to add "temp".

regards,
dan carpenter


