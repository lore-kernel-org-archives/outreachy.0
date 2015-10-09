X-GM-THRID: 6202253257836855296
X-Received: by 10.112.12.132 with SMTP id y4mr2954414lbb.0.1444419553415;
        Fri, 09 Oct 2015 12:39:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.151.203 with SMTP id z194ls311296lfd.57.gmail; Fri, 09 Oct
 2015 12:39:12 -0700 (PDT)
X-Received: by 10.112.151.9 with SMTP id um9mr2939324lbb.19.1444419552819;
        Fri, 09 Oct 2015 12:39:12 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id c1si6470wiv.3.2015.10.09.12.39.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 12:39:12 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue003) with ESMTPSA (Nemesis) id 0LvNnr-1alIGp1Ud1-010bBL; Fri, 09 Oct
 2015 21:39:12 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>, Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: usleep_range is preferred over udelay
Date: Fri, 09 Oct 2015 21:39:11 +0200
Message-ID: <7171425.3xfd39zfgx@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CA+5yK5F6=SeWD0XFXu9QcMu7=_HimGjL9=GpevzCaRzK78b9_g@mail.gmail.com>
References: <20151005195012.GA21881@amitoj-Inspiron-3542> <6179643.RVhvoqj9Rt@wuerfel> <CA+5yK5F6=SeWD0XFXu9QcMu7=_HimGjL9=GpevzCaRzK78b9_g@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:OtNys5RrDfsSrL7nihr5+EvLoL6pOZaGPx8N8Pn5/jKoR90Ng4D
 LAoTv0NJzxjKJM8Kbsh+bvuhXYHusjQ38Otu+7tXVQpnPhb0nK99UMzxSHHi7leIzOKDS+Y
 Xt56PgH/wolqLyLs0CcMjI+MJ2FoqnWXqXe/OBrVqvjG9S4kRU82vU8MwRuLQmKtWAB42AE
 ReTcV/N4OfOAlly/3LcHw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:d9IsUtqwE+k=:QMfe1I1k53rz3E9hIqSTm7
 9VPnQTm/Isr+2zcWUB7b56DWplrlsI+OAzEWTpCtqX7FPDUqvpVKdx0XY6U+LIIPRn1FJgr9s
 1VEanBxKW935VF/vFdJrlzsBiCr3Cw6dYlDC9/mW1c7njhYOi41Vr1XPKo1UJErcogyu8TJlc
 kY+W8YLUi5jk8z0ety+02M+awf3Kg2uePaKU9kC7o+Corq8QIFZnh0P1LRHRr6o/Ts/ylRls8
 8phfYXgQTTtavZpGDXiijCVNLn+09yT1Fti64Qekl7X9vy/zrlDPjLGLdCfs4VBaRpdCOlclP
 C74BMY6Lbvo5c5iiqWJUwxZYDs4c8f/111bJkomstvU7Xm/C0I9wsDGInhvdtgB+7PYuN1Rv/
 cByhyxqJEivT4rImDYKLFzLCpIgHok5wTCB/Y3Cuitw/oxHZyV1j2RLuOvAYjbjeLNMgXT6Nx
 RpKuRtqTXx7jNtmGfZS4Xl8V9unA8LXbCdmaBepgKs8H+5uTtrsa1wGDnWXhWdRCx7/IIU3SN
 OIr7Wdm4RH/eX5ulcqLEr/UEdG7/WeUWYEWkCfFW7zY6bfHEjGWExSxKR/aZsefmfhyLb2VTU
 4rfeOVC8+UJog/lUo+FIdFKkB0Ah48o8ZuPg5RHj1KaB3ETS8PIH4dwxhqRyZJbzB8fwHvuH8
 5kr1RK2hKJ+fn8apDjC/38yxnJplrT+SvNTAEJNb+nuawBgyJohqBc2kfltpiqvDUlQ2onvih
 FdPhW7TlBG/qVc7U

On Saturday 10 October 2015 00:41:37 Amitoj Kaur Chawla wrote:
> On Sat, Oct 10, 2015 at 12:34 AM, Arnd Bergmann <arnd@arndb.de> wrote:
> > This means the function can sleep up to 2 seconds, which is basically
> > an eternity from a driver's perspective, so adding a few shorter sleep
> > periods is certainly not harmful.
> >
> >> Is usleep_range() only used for short delays and msleep() for the longer
> >> ones?
> >
> > Yes. There are other differences, but a main one is that msleep() can
> > not sleep less than a millisecond, while usleep_range() can sleep much
> > shorter periods.
> >
> 
> Conclusively, Shorter sleep periods means using usleep_range() instead
> of msleep() in this case with a small range since the loop is
> repeating a 100 times?

That is a bit oversimplified. What we found so far is 

- This is a function that is allowed to sleep. We know that because
  it calls msleep(). This means your original patch is good, but you
  should explain this in the changelog.

- you found another bug in the same function, which is allowed to
  sleep but calls kmalloc(..., GFP_ATOMIC) when it should use GFP_KERNEL.

- usleep_range(10, 1000) is a huge range (a factor of 100). This is ok
  here, because even the time spent in a 1000 microsecond wait is dwarfed
  by the 100 * 20ms wait time later in the function.

Other points that we have not talked about are:

- using a smaller range would also be ok, typically one would use a factor
  between 1.1 (+10%) and 10 (+1000%), but not a factor of 100.

- the function actually has two copies of the same loop with udelay()
  in it. If you change one of them, it would be logical to change both
  in the same patch.

- the loop you found below is interesting as well. Waiting 100 times for
  20ms means we can actually wait even longer, as each 20ms interval can
  turn into 30 or 40 milliseconds. If we care about the actual maximum
  time, this could be improved by writing it as:

	unsigned long timeout = jiffies + 2 * HZ; /* up to two seconds */
	do {
		tmp16 = r8712_read16(padapter, TCR);
		if ((tmp16 & _DMEM_CODE_DONE)
			break;
		msleep(20);
	} while (time_before(timeout, jiffies));

  We probably don't care about that here though.

	Arnd

