X-GM-THRID: 6202655737022251008
X-Received: by 10.112.209.73 with SMTP id mk9mr1472359lbc.14.1444314304051;
        Thu, 08 Oct 2015 07:25:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.18.226 with SMTP id 95ls200561lfs.1.gmail; Thu, 08 Oct 2015
 07:25:03 -0700 (PDT)
X-Received: by 10.112.169.34 with SMTP id ab2mr1458780lbc.23.1444314303332;
        Thu, 08 Oct 2015 07:25:03 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id ch7si322605wib.2.2015.10.08.07.25.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 07:25:03 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue104) with ESMTPSA (Nemesis) id 0LsQye-1am12s0e9Q-0123xR; Thu, 08 Oct
 2015 16:25:02 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Cristina-Gabriela Moraru <cristina.moraru09@gmail.com>, Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [Outreachy kernel] [PATCH] staging: octeon: Fix return description for functions
Date: Thu, 08 Oct 2015 16:25:01 +0200
Message-ID: <6313725.C4Tx1IbYGi@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CAGZ2q2w+3demm5c3e1frND6t8+R7H35HnCBWH7jSUW+PR0DGXQ@mail.gmail.com>
References: <1444168297-90793-1-git-send-email-cristina.moraru09@gmail.com> <alpine.DEB.2.10.1510080820180.2559@hadrien> <CAGZ2q2w+3demm5c3e1frND6t8+R7H35HnCBWH7jSUW+PR0DGXQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:mbA0fU7sV40FQxMzRQwPVBnd76fbSiSab5R9yB9e50oxNuQQelj
 gPsOv1KeenquNpiYLnooxb3ZVd01STEQRMescMiFncoIizuea6iEkmZT4obIcgHeqZhRbqm
 Y5nUnU+kGChDBr6iXm7HfvLURS+6GUmqMRt+Cxi2ME4PZ9ZIV+kAKprhyGoE9wmzXejDoDm
 XQCZGz8OcUxZcCYg1j1Dg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:G38umd3dYSs=:yUj4nK4YD6oQt+VPQ/6m8D
 mKsA2o13pGRrnnTf7oI5edesoss0GGy4E+c2EC7Vt1GSAFYqHGzGyHxDtfoQ78eSeygSjB6dH
 ++uu9MCVQLLcdMFUosH/MEJ6QDf3hEcY5NR6R3PXlmT6HoNuMbko2v1CwBCxCSgoj5pbwQdJI
 r+WpdGs+SW36jf4p+TinwKa38fnvp8ZB/Lh1kxAWkvS3/yGl5NiCnjwmvMeqFZal0tsOSoyKG
 QZTRLQqYFUQ54cZ1UXCWy+yaMOq8W1U30FpMFPpOcxe3gi4fV6nFlw55wSbOXyghYwsF/pttS
 KGpf3TtccJ9ex3SSXBYx4/L2GjXy0w6R3JwZeWKPbJ75hgpLU5P+8IKdpjrA56ZrWdmkKALvS
 wVnPsBnwveZpYHiUCzlmPoRnzi2deAj9Xb1tt6Ji5kaDnjdEHXi2nU8IAe7ZA6vzC5jQPBf0N
 rNk/nGdsBi+AkreK+kY+wwqIivDEpty6KJ9EE3H4l9y2xF1OiDFpopgwumfVi5tZaA3mo7sQ5
 VDWIAs7HFMS+R1cnXioMeBp49Huu9XKR5iJqTNVTCjHAb/Kv9o7muqmSHUEIMOJJojWKRq2Wz
 9Ka5sUeP9KjggWxYWmgqydBgPjUnQpMBIneGF5QTUj8nSKSrtIpZV35lur8wNaQmKdXNxN5at
 LYTJRIUObJrMMUQAiQdQCFaTyHJBXl4FMke86xO4UBcnOM8RaTURYytTxrzhsRZi6BdEIO3Qm
 pVEjycETwOgRKUvC

On Thursday 08 October 2015 17:01:05 Cristina-Gabriela Moraru wrote:
> That's true. I will correct them.

Please avoid top-posting

> 2015-10-08 10:22 GMT+03:00 Julia Lawall <julia.lawall@lip6.fr>:
> 
> > On Wed, 7 Oct 2015, Cristina Moraru wrote:
> >
> > > Clarify return description for functions
> > >
> > > Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> > > ---
> > >  drivers/staging/octeon/ethernet.c | 8 ++++----
> > >  1 file changed, 4 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/staging/octeon/ethernet.c
> > b/drivers/staging/octeon/ethernet.c
> > > index a63488e..13ee25d 100644
> > > --- a/drivers/staging/octeon/ethernet.c
> > > +++ b/drivers/staging/octeon/ethernet.c
> > > @@ -173,7 +173,7 @@ static void cvm_oct_configure_common_hw(void)
> > >   *
> > >   * @work_queue_entry: Work queue entry to free
> > >   *
> > > - * Returns Zero on success, Negative on failure.
> > > + * Returns 0 on success or a negative error code.
> >
> > Is this really true?  I see only one return in this function, and it is a
> > return 0.

If a function always returns 0, it may actually be best to change
the return type to 'void'.

	Arnd

