X-GM-THRID: 6465168256299696128
X-Received: by 10.129.160.151 with SMTP id x145mr12727017ywg.220.1505339047706;
        Wed, 13 Sep 2017 14:44:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.150.135 with SMTP id y129ls695581iod.32.gmail; Wed, 13 Sep
 2017 14:44:06 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb7ZgneGq5o62tszsBuBfV0qBKj+H3cTA7WMMinBqTDMVS6pgSKOsq2Dkp2b1jptXbQM31YJ
X-Received: by 10.101.72.197 with SMTP id o5mr11834361pgs.66.1505339046741;
        Wed, 13 Sep 2017 14:44:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505339046; cv=none;
        d=google.com; s=arc-20160816;
        b=Y9tX/xAxMG41KipTDsW3ouVhJlWlFKVYx6uAtaAtHoKeWDdd7fZjasYibKa94bjTaa
         kr2ayf8At/Skd9gcdRci9KM77Jf9FgKc0JLUePYHBPjhRGr2gubNbYM1xCv0naDiSXRP
         oB/g2glXxbJaA+MRGkP/H1PH661EUNnk9XRwOoQGQ9mop2Xxqrxo7FJNNm4eaI71sTS/
         QdHjmDLixsI95ifj5ziy0BjPKA3IsI5ywIlpfH0crEQCaNjyxTl8VioTtSc2OCW/PC59
         B2xC0Q97T417tdenBjJw5/xS4aZE4f5wdYyqYmEAzjvTZRa6U3u70LkfRfyImL7cwEjv
         O8nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=amduYUZrjEsQlFeAPvs4AROZkf2UlOWm9Ba13xVEDgc=;
        b=r45/LlnBIkHdvuaYNH/0hqEBsZ8NRc9J55bUJSld5ZaXj8WhNzImkxSEIwNnJywotU
         bqI4KuCiKXMw4OYXYVbsdoEKoBKjZghGpYvRQB3pHob7cCbz+3lJAYk110lS7FrPA0br
         73oEuOt/JTuEsnaRa2mIVbOKAbN+iE27oOclgr4cXN7SjYMHs/iA86H08f+gxh4uBklG
         xJB69HwGB3CyDr+tpCKInNTce2Ll+xGLvhIClNk+wDouNpDae9UURZb0XpqyE8HxrRrz
         ENEWxwZL5e5AM9rVuUY88bb3WRHeWE/hoLVsP7DQHX4wNak2gs+4cL4caU/qedOU3I4o
         9dMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp1040.oracle.com (aserp1040.oracle.com. [141.146.126.69])
        by gmr-mx.google.com with ESMTPS id l77si1147599ywc.16.2017.09.13.14.44.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 14:44:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) client-ip=141.146.126.69;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserv0021.oracle.com (aserv0021.oracle.com [141.146.126.233])
	by aserp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v8DLhuQN022627
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 13 Sep 2017 21:43:57 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by aserv0021.oracle.com (8.14.4/8.14.4) with ESMTP id v8DLhuvK012840
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 13 Sep 2017 21:43:56 GMT
Received: from ubhmp0015.oracle.com (ubhmp0015.oracle.com [156.151.24.68])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id v8DLhsF4019121;
	Wed, 13 Sep 2017 21:43:54 GMT
Received: from mwanda (/41.202.241.15)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 13 Sep 2017 21:43:53 +0000
Date: Thu, 14 Sep 2017 00:43:33 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>, devel@driverdev.osuosl.org,
        daniel.baluta@gmail.com, Himanshi Jain <himshijain.hj@gmail.com>,
        Michael.Hennerich@analog.com, linux-iio@vger.kernel.org,
        linux-kernel@vger.kernel.org, nick.desaulniers@gmail.com,
        outreachy-kernel@googlegroups.com, pmeerw@pmeerw.net, knaack.h@gmx.de,
        Jonathan Cameron <jic23@kernel.org>
Subject: Re: [PATCH v2 1/2] include: linux: sysfs: Add __ATTR_NAMED macro
Message-ID: <20170913214333.mcw4f24fkzndwh5k@mwanda>
References: <cover.1505291907.git.himshijain.hj@gmail.com>
 <2bc7a124ab925dd2c50aa8c778745d179777d50d.1505291907.git.himshijain.hj@gmail.com>
 <20170913180310.27cbf1b1@archlinux>
 <20170913185805.GB26390@kroah.com>
 <5e43ea4d-eab8-c4be-c5dc-2f862578d011@metafoo.de>
 <20170913212952.GD9288@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170913212952.GD9288@kroah.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Source-IP: aserv0021.oracle.com [141.146.126.233]

On Wed, Sep 13, 2017 at 02:29:52PM -0700, Greg KH wrote:
> On Wed, Sep 13, 2017 at 09:23:31PM +0200, Lars-Peter Clausen wrote:
> > On 09/13/2017 08:58 PM, Greg KH wrote:
> > > On Wed, Sep 13, 2017 at 06:03:10PM +0100, Jonathan Cameron wrote:
> > >> On Wed, 13 Sep 2017 14:14:07 +0530
> > >> Himanshi Jain <himshijain.hj@gmail.com> wrote:
> > >>
> > >>> Add __ATTR_NAMED macro similar to __ATTR but taking name as a
> > >>> string instead of implicit conversion of argument to string using
> > >>> the macro _stringify(_name).
> > >>>
> > >>> Signed-off-by: Himanshi Jain <himshijain.hj@gmail.com>
> > >>> ---
> > >>>  include/linux/sysfs.h | 7 +++++++
> > >>>  1 file changed, 7 insertions(+)
> > >>>
> > >>> diff --git a/include/linux/sysfs.h b/include/linux/sysfs.h
> > >>> index aa02c32..20321cf 100644
> > >>> --- a/include/linux/sysfs.h
> > >>> +++ b/include/linux/sysfs.h
> > >>> @@ -104,6 +104,13 @@ struct attribute_group {
> > >>>  	.store	= _store,						\
> > >>>  }
> > >>>  
> > >>> +#define __ATTR_NAMED(_name, _mode, _show, _store) {			\
> > >>
> > >> I'm not sure about the naming here.  The normal __ATTR macro is also
> > >> 'named'.  Maybe something as awful as
> > >>
> > >> __ATTR_STRING_NAME ? 
> > >>
> > >> Greg what do you think?
> > > 
> > > ick ick ick.
> > > 
> > >> This is all to allow us to have names with operators in them without
> > >> checkpatch complaining about them... A worthwhile aim just to stop
> > >> more people wasting time trying to 'fix' those cases by adding spaces.
> > > 
> > > Yeah, but this really seems "heavy" for just a crazy sysfs name in a
> > > macro.  Adding a whole new "core" define for that is a hard sell...
> > > 
> > > I also want to get rid of the "generic" __ATTR type macros, and force
> > > people to use the proper _RW and friends instead.  I don't want to add
> > > another new one that people will start to use that I later have to
> > > change...
> > > 
> > > So no, I don't like this, how about just changing your macros instead?
> > > No one else has this problem :)
> > 
> > Nobody else realized they have this problem yet. E.g. there are a few users
> > of __ATTR in block/genhd.c that have the same issue and are likely to
> > generate the same false positives from static checkers.
> 
> Then fix the broken static checkers :)

He was exagerating a bit to call it a "static checker" warning...
It's just checkpatch.pl complaining about adding spaces around the -
operator.  The sysfs file has a hyphen in the middle.

regards,
dan carpenter



