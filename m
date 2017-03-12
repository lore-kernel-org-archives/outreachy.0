X-GM-THRID: 6396343645329424384
X-Received: by 10.129.146.139 with SMTP id j133mr13012080ywg.173.1489299227534;
        Sat, 11 Mar 2017 22:13:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.103.7 with SMTP id u7ls886396itc.19.canary-gmail; Sat, 11
 Mar 2017 22:13:46 -0800 (PST)
X-Received: by 10.99.116.23 with SMTP id p23mr12905908pgc.109.1489299226344;
        Sat, 11 Mar 2017 22:13:46 -0800 (PST)
Received: by 10.55.203.9 with SMTP id d9msqkj;
        Sat, 11 Mar 2017 17:12:14 -0800 (PST)
X-Received: by 10.46.7.80 with SMTP id i16mr4181192ljd.5.1489281133819;
        Sat, 11 Mar 2017 17:12:13 -0800 (PST)
Return-Path: <viro@ftp.linux.org.uk>
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk. [195.92.253.2])
        by gmr-mx.google.com with ESMTPS id p144si322133wme.2.2017.03.11.17.12.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 17:12:13 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of viro@ftp.linux.org.uk designates 195.92.253.2 as permitted sender) client-ip=195.92.253.2;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of viro@ftp.linux.org.uk designates 195.92.253.2 as permitted sender) smtp.mailfrom=viro@ftp.linux.org.uk
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.87 #1 (Red Hat Linux))
	id 1cms2u-0000v9-Ck; Sun, 12 Mar 2017 01:11:45 +0000
Date: Sun, 12 Mar 2017 01:11:40 +0000
From: Al Viro <viro@ZenIV.linux.org.uk>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: simran singhal <singhalsimran0@gmail.com>, gregkh@linuxfoundation.org,
	arve@android.com, riandrews@android.com, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: android: Replace strcpy with
 strlcpy
Message-ID: <20170312011135.GM29622@ZenIV.linux.org.uk>
References: <20170311204001.GA13301@singhal-Inspiron-5558>
 <alpine.DEB.2.20.1703112147110.2270@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703112147110.2270@hadrien>
User-Agent: Mutt/1.7.1 (2016-10-04)
Sender: Al Viro <viro@ftp.linux.org.uk>

On Sat, Mar 11, 2017 at 09:47:30PM +0100, Julia Lawall wrote:
> 
> 
> On Sun, 12 Mar 2017, simran singhal wrote:
> 
> > Replace strcpy with strlcpy as strcpy does not check for buffer
> > overflow.
> > This is found using Flawfinder.
> >
> > Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> > ---
> >  drivers/staging/android/ashmem.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
> > index 7cbad0d..eb2f4ef 100644
> > --- a/drivers/staging/android/ashmem.c
> > +++ b/drivers/staging/android/ashmem.c
> > @@ -548,7 +548,8 @@ static int set_name(struct ashmem_area *asma, void __user *name)
> >  	if (unlikely(asma->file))
> >  		ret = -EINVAL;
> >  	else
> > -		strcpy(asma->name + ASHMEM_NAME_PREFIX_LEN, local_name);
> > +		strlcpy(asma->name + ASHMEM_NAME_PREFIX_LEN, local_name,
> > +			sizeof(asma->name + ASHMEM_NAME_PREFIX_LEN));
> 
> There is a parenthesis in the wrong place.

Worse - moving parenthesis to just after asma->name would result in
interestingly bogus value (size + amount skipped instead of size -
amount skipped).

Folks, blind changes in name of security are seriously counterproductive;
fortunately, in this particular case overflow prevention is taken care
of by earlier code (source of strcpy is a local array of size that
isn't enough to cause trouble and it is NUL-terminated), so that
particular strlcpy() is simply pointless, but if not for that...
Variant with sizeof(asma->name) + ASHMEM_NAME_PREFIX_LEN would've
invited an overflow *and* made it harder to spot in the future -
"it uses strlcpy, no worries about overflows here"...

