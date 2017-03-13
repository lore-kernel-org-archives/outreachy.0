X-GM-THRID: 6396343645329424384
X-Received: by 10.129.99.195 with SMTP id x186mr13661332ywb.41.1489409947728;
        Mon, 13 Mar 2017 05:59:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.176 with SMTP id 45ls14402401otd.49.gmail; Mon, 13 Mar
 2017 05:59:07 -0700 (PDT)
X-Received: by 10.13.224.70 with SMTP id j67mr16698593ywe.44.1489409947361;
        Mon, 13 Mar 2017 05:59:07 -0700 (PDT)
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp1040.oracle.com (aserp1040.oracle.com. [141.146.126.69])
        by gmr-mx.google.com with ESMTPS id r66si3068298pfb.7.2017.03.13.05.59.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 05:59:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) client-ip=141.146.126.69;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com
Received: from userv0022.oracle.com (userv0022.oracle.com [156.151.31.74])
	by aserp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v2DCx3Gp012770
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 13 Mar 2017 12:59:03 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by userv0022.oracle.com (8.14.4/8.14.4) with ESMTP id v2DCx2Gl028974
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 13 Mar 2017 12:59:02 GMT
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id v2DCx1OF007225;
	Mon, 13 Mar 2017 12:59:02 GMT
Received: from mwanda (/154.0.138.2)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 13 Mar 2017 05:58:40 -0700
Date: Mon, 13 Mar 2017 15:57:46 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
        outreachy-kernel <outreachy-kernel@googlegroups.com>, arve@android.com,
        riandrews@android.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: android: Replace strcpy with strlcpy
Message-ID: <20170313125746.GD4187@mwanda>
References: <20170311204001.GA13301@singhal-Inspiron-5558>
 <20170313124144.GE4136@mwanda>
 <CALrZqyPRjhnpVswEDXqdiP=e+5Z5GKxUqomVXDExpa5thjGuPg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALrZqyPRjhnpVswEDXqdiP=e+5Z5GKxUqomVXDExpa5thjGuPg@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Source-IP: userv0022.oracle.com [156.151.31.74]

On Mon, Mar 13, 2017 at 06:17:22PM +0530, SIMRAN SINGHAL wrote:
> On Mon, Mar 13, 2017 at 6:11 PM, Dan Carpenter <dan.carpenter@oracle.com> wrote:
> > On Sun, Mar 12, 2017 at 02:10:01AM +0530, simran singhal wrote:
> >> Replace strcpy with strlcpy as strcpy does not check for buffer
> >> overflow.
> >> This is found using Flawfinder.
> >>
> >> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> >> ---
> >>  drivers/staging/android/ashmem.c | 3 ++-
> >>  1 file changed, 2 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
> >> index 7cbad0d..eb2f4ef 100644
> >> --- a/drivers/staging/android/ashmem.c
> >> +++ b/drivers/staging/android/ashmem.c
> >> @@ -548,7 +548,8 @@ static int set_name(struct ashmem_area *asma, void __user *name)
> >>       if (unlikely(asma->file))
> >>               ret = -EINVAL;
> >>       else
> >> -             strcpy(asma->name + ASHMEM_NAME_PREFIX_LEN, local_name);
> >> +             strlcpy(asma->name + ASHMEM_NAME_PREFIX_LEN, local_name,
> >> +                     sizeof(asma->name + ASHMEM_NAME_PREFIX_LEN));
> >                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> > This isn't right.
> >
> > Also please do some analysis to see if it's a real bug or a false
> > positive.  It is a false positive in this case.
> >
> 
> Dan,
> I have already sent v3 of this in which I have used:
> sizeof(asma->name) - ASHMEM_NAME_PREFIX_LEN

Yeah.  I saw that.  It's fine, I suppose but you should have done more
analysis to see if it was a real bug like Al and Greg suggested.  The
changelog should say something like:

"The destination buffer is 12345 bytes long but we're copying a 10000
character string so it can overflow."  Occasionally, I will fudge a
little bit on these changelogs to say that I have looked every where to
determine the size of the source buffer and can't figure it out so this
change makes it easier to audit.  But I try to figure it out generally.

Really tools should be able to show that this code is safe.  They
currently don't so far as I know, but they should.  It's a matter of
waiting a year for Smatch to improve.

regards,
dan carpenter


