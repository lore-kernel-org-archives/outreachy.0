X-GM-THRID: 6199821821107240960
X-Received: by 10.129.84.198 with SMTP id i189mr21871251ywb.32.1443512053964;
        Tue, 29 Sep 2015 00:34:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.80.208 with SMTP id c74ls4085513qgd.66.gmail; Tue, 29 Sep
 2015 00:34:13 -0700 (PDT)
X-Received: by 10.13.203.76 with SMTP id n73mr1006412ywd.15.1443512053437;
        Tue, 29 Sep 2015 00:34:13 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id x8si1744418igx.2.2015.09.29.00.34.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 00:34:13 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue001) with ESMTPSA (Nemesis) id 0M4NmW-1ab6H01kbs-00ygFh; Tue, 29 Sep
 2015 09:34:10 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>, Bhumika S Goyal <bhumikas.goyal@st.niituniversity.in>
Subject: Re: [Outreachy kernel] Error in building kernel
Date: Tue, 29 Sep 2015 09:34:09 +0200
Message-ID: <3724213.SJrJs5fn4P@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CAHWJYF=PDpQPFtGtdo9Hqb8wQ8CKmB3YEnR7osPpS-vqTj4mUw@mail.gmail.com>
References: <35465e02-616a-4c1a-b177-84f34b04700b@googlegroups.com> <CAHWJYF=PDpQPFtGtdo9Hqb8wQ8CKmB3YEnR7osPpS-vqTj4mUw@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:2EMPirSVzKbb9Tn8bn3vkusywu7BHCmcojp1UbFhu5E9kMoP/X2
 pNXDdBsRi48c/KEckvqQdzARYFIO4f7TGfhX8uMB1MyT2cCbSuwFa9mtw578WF97M50Q/OV
 Cc3GmP0hfHo9N0zJtLvQG9eRNJHz+7oqHBQsgJ0DpPHNueYVY6prXVkTpGnt8RXrxKqN8Gd
 0+O5Takm+FK+bbRyqjI9g==
X-UI-Out-Filterresults: notjunk:1;V01:K0:mH4Fm33g75E=:Jzg7kTYeMglliKcgAd8n7+
 iqyJj756UEYwfc8+AiUbBsAxHAWTGkGrF+OvomPa+BffLXDaiUnFwUd2iOfH3iHLKd+wLSW7R
 FtxluadgmUniJX+s3FtmmlzKvIKS0iUF5P9CbnkbuXeIdktXSPAaGQvJKF4OpLtmEgR7LFCYw
 QLkf62ZyhmfBkCiW94rvVc2gDesQHMHiEWy8qFFDCdMpqdnssWxYxYCDb8VWxB/09pGk9B6RG
 m3348d8r+nClXpOUvr/2YVEimdrCLU4LS3ly4j/YCPSj/i2k6BGJ7WAbIlinK73fplV9tOFIS
 936MY/B54uXxwXgk+Z0/YoQ1xep14igRL75p8TEhEqt1tTYr0ouwF/WuX1kNRXO8a59CzI1ay
 /ekpA5lsWwux8br35MmPWwplnMri4+te5gMShT1jbm0m1/8p6bZp1/d74RVX9D1m5Ncn5LL4r
 jU5N+dyQ1taN5gv+8+PfI6hc/Rrcpr0Y3ALfKXTAVsnX4zvLf3HIauLtlLD+1+NNqRfe826CT
 zThutVb36772PHGsv6YP8cr6QhknjThOsd0y6qa4boQlDVGpE3wFSmX8xdCizGfKoWh4ByGVu
 CmkylErfFZs6F5srvzACJ2H+YCUw1DxG8wlrhwZtAjOcRcPLFghnM2RnR0DVAp1/pty+TwzhH
 b7tmhkbs07ixvZRWzBnY/rOP7+Z6H5pqrJCriD9vwlZWNucqdjjGbv3vE463LEn13Q6sumCuV
 5c9RF8zIlcBvBucC

On Tuesday 29 September 2015 09:35:05 Ioana Ciornei wrote:
> On Sep 29, 2015 9:28 AM, "Bhumika S Goyal" <
> bhumikas.goyal@st.niituniversity.in> wrote:
> >
> > While building the kernel I am getting an error :
> > scripts/sign-file.c:20:25: fatal error: openssl/bio.h: No such file or
> directory
> >  #include <openssl/bio.h>
> >                          ^
> > compilation terminated.
> > make[1]: *** [scripts/sign-file] Error 1
> > make: *** [scripts] Error 2
> >
> > How do I fix it?
> 
> It seems like you need to install libssl-dev on your machine.

I've updated http://kernelnewbies.org/OutreachyfirstpatchSetup now to reflect
the new requirement, this library is only needed as of linux-4.2.

	Arnd

