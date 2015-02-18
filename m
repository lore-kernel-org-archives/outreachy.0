X-GM-THRID: 75436654592
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bead06cd7830e23e
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.28.137 with SMTP id b9mr240628lah.8.1424256604947;
        Wed, 18 Feb 2015 02:50:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.29.66 with SMTP id i2ls3283lah.23.gmail; Wed, 18 Feb 2015
 02:50:04 -0800 (PST)
X-Received: by 10.112.174.36 with SMTP id bp4mr4109992lbc.15.1424256604526;
        Wed, 18 Feb 2015 02:50:04 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id ew5si8779855wid.1.2015.02.18.02.50.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 02:50:04 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue005) with ESMTPSA (Nemesis) id 0Ll22r-1Xo99i42RJ-00akEf; Wed, 18 Feb
 2015 11:50:04 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Vaishali Thakkar <vthakkar1994@gmail.com>, Jes Sorensen <jes.sorensen@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Use put_unaligned_le16
Date: Wed, 18 Feb 2015 11:50:03 +0100
Message-ID: <57794805.aPSQI7lfOj@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CAK-LDbLbpQ0d7eyGbYfJPLWGASC9CJLfebpY+QwYeVFrdFssMg@mail.gmail.com>
References: <20150217044257.GA3424@vaishali-Ideapad-Z570> <54E392AB.2020405@gmail.com> <CAK-LDbLbpQ0d7eyGbYfJPLWGASC9CJLfebpY+QwYeVFrdFssMg@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:tCH7CbEkfGxO6BA5UdE5amvnJuPyZbbOqzGE8xxspfWS+h1WzEO
 cIgxm5Pv9PnjR0Ctm6AOqQgnIP9jibj9IlqHF1D8TOnPjHZSBXaAlCMki9yUrE+aZScozD0
 xBPu48F672TQRKrmuZ3Xw+PFLJbIDnx5KLoX4qiNz2TqBO+zFTJncOYMXUPYBL1I+W7H0IU
 oBMu9H5Fyyj1kCWSE8Fow==
X-UI-Out-Filterresults: notjunk:1;

On Wednesday 18 February 2015 07:02:34 Vaishali Thakkar wrote:
> On Wed, Feb 18, 2015 at 12:42 AM, Jes Sorensen <jes.sorensen@gmail.com> wrote:
> > On 02/17/15 05:11, Vaishali Thakkar wrote:
> > Your use of put_unaligned_le16() if good, the main issue is the above
> > assignment as you mention. Since you got rid of the tim_bitmap_le =
> > portion, the *dst_ie++ = is going to assigning random garbage since
> > tim_bitmap_le is not set.
> >
> > One way to solve the problem would be to make that line say
> >
> >                 if (tim_ielen == 4) {
> > -                       *dst_ie++ = *(u8 *)&tim_bitmap_le;
> > +                       *dst_ie++ = pstapriv->tim_bitmap & 0xff;
> >                 } else if (tim_ielen == 5) {
> > -                       memcpy(dst_ie, &tim_bitmap_le, 2);
> > +                       put_unaligned_le16(pstapriv->tim_bitmap, dst_ie);
> >
> > and hopefully eliminate the tim_bitmap_le variable completely.
> 
> Yes. This makes sense. And as there is only one use of tim_bitmap_le
> variable this will eliminate it completely. Should I go for v2 now, with this
> change?? I have one more such case in rtl8723au driver also. I think now
> I can go for it also.

Yes, please submit the change for both drivers as separate patches.

	Arnd

