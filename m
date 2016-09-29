X-GM-THRID: 6335783132038430720
Date: Thu, 29 Sep 2016 09:47:39 -0700 (PDT)
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: bankarsandhya512@gmail.com, lars@metafoo.de,
	Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net
Message-Id: <f906ebdb-6d67-4a7a-b337-b35ee3aaff43@googlegroups.com>
In-Reply-To: <20160929155940.GA30055@kroah.com>
References: <20160929155417.GA5224@localhost.localdomain>
 <20160929155940.GA30055@kroah.com>
Subject: Re: [PATCH] drivers: iio: meter: ade7753: Replace
 IIO_DEV_ATTR_SAMP_FREQ attribute with IIO_CHAN_INFO_SAMP_FREQ handlers.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_80_974018234.1475167659633"
X-Google-Token: EKuLtb8Fx6HAoWe2Jy80
X-Google-IP: 182.70.75.136

------=_Part_80_974018234.1475167659633
Content-Type: multipart/alternative; 
	boundary="----=_Part_81_369990767.1475167659633"

------=_Part_81_369990767.1475167659633
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Thursday, September 29, 2016 at 9:29:37 PM UTC+5:30, gregkh wrote:
>
> On Thu, Sep 29, 2016 at 09:24:17PM +0530, Sandhya Bankar wrote: 
> > Moved functionality from IIO_DEV_ATTR_SAMP_FREQ attribute into 
> > IIO_CHAN_INFO_SAMP_FREQ handlers. Added ade7753_read_raw() and 
> > ade7753_write_raw() to allow reading/writing the element as well. 
>
> That says what you did, but why would you want to do this? 
>
> What benefit is this?  Why do this churn at all? 
>
> Changelogs should say why you do something, not just what you did. 
> Hopefully what you do should be obvious from the diff itself. 
>
> thanks, 
>
> greg k-h 
>


Thanks !  got it, I will fix in next revision.



Thanks,
Sandhya  

------=_Part_81_369990767.1475167659633
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Thursday, September 29, 2016 at 9:29:37 PM UTC+=
5:30, gregkh wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;mar=
gin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Thu, Sep=
 29, 2016 at 09:24:17PM +0530, Sandhya Bankar wrote:
<br>&gt; Moved functionality from IIO_DEV_ATTR_SAMP_FREQ attribute into=20
<br>&gt; IIO_CHAN_INFO_SAMP_FREQ handlers. Added ade7753_read_raw() and=20
<br>&gt; ade7753_write_raw() to allow reading/writing the element as well.
<br>
<br>That says what you did, but why would you want to do this?
<br>
<br>What benefit is this? =C2=A0Why do this churn at all?
<br>
<br>Changelogs should say why you do something, not just what you did.
<br>Hopefully what you do should be obvious from the diff itself.
<br>
<br>thanks,
<br>
<br>greg k-h
<br></blockquote><div><br><br><span class=3D"im">Thanks !=C2=A0 got it, I w=
ill fix in next revision.<br><br><br><br>Thanks,<br>Sandhya=C2=A0</span> <b=
r></div></div>
------=_Part_81_369990767.1475167659633--

------=_Part_80_974018234.1475167659633--

