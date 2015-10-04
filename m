X-GM-THRID: 6201728963441590272
X-Received: by 10.112.63.165 with SMTP id h5mr4582356lbs.18.1443984875330;
        Sun, 04 Oct 2015 11:54:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.4 with SMTP id gq4ls701193wib.25.gmail; Sun, 04 Oct
 2015 11:54:34 -0700 (PDT)
X-Received: by 10.194.59.166 with SMTP id a6mr4511326wjr.6.1443984874965;
        Sun, 04 Oct 2015 11:54:34 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id q6si235997wif.2.2015.10.04.11.54.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 11:54:34 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue102) with ESMTPSA (Nemesis) id 0Mbyj8-1a1zRP1kVK-00JKZS; Sun, 04 Oct
 2015 20:54:33 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Julia Lawall <julia.lawall@lip6.fr>, Amitoj Kaur Chawla <amitoj1606@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Remove space after paranthesis
Date: Sun, 04 Oct 2015 20:54:32 +0200
Message-ID: <725507103.bmWo1bzATP@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <alpine.DEB.2.02.1510041211390.2026@localhost6.localdomain6>
References: <20151004095542.GA7011@amitoj-Inspiron-3542> <alpine.DEB.2.02.1510041211390.2026@localhost6.localdomain6>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:0Mo49IJFvZc8/280hNXM4hn9p4MvPOIz9aPbDpJZ0gR3OPKkL5l
 SsPqfQ6NCDIaxH0H9e4rSqoKta8tkKBhoiKpzPHQNolTiwU6+s1M2q2/5H0MpKMJd3xKjCJ
 DipWVbvLdvaoaMaKWAtiY+N/pD8LnBPxs0vzD4QKiOCZxAxGGyjaENzwYPSyzMyFeU4WEvn
 DsHni0mrf1kYRk+BEyTrQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:+VLsy44O38Y=:6NnMnixC6x72URXI0fivaz
 QxinJKFwRC6wez1APG0ax870q25I2Mb4Kn8G+uOcV4ncqgcsB8ZJK+MML6Ke2fJOZ+yZNX7bn
 doWAgmdMHR3H5m1PREyMOtpr9ZonoxIbW/wpvsyYFE0RLFpvB+Utmt5R5SVlpbKBIjXBCzw7e
 lehIOJ55DpRSuLAN+BnEVX51OvvgOtMUfTNudrOMhCkT1UHvsyyVmKsaK/Rfs1ifBPUXGVuHn
 YgOWIQ9qLDQtX0Boh4djOt4V4KLghjtfaq78+dJD7fEY++K3ZED3oHkT4/MmSQJbVbP7F7BuJ
 fXZojs8KC217MN8zYsZMFo9rNRKyHj8VDEWUxu6Q8rtu9HcgMoCr6qalsrOte404mS6tH/gF2
 3dkui3xHhYgyV4HFJ+ekftn/Y0/SYqXWVVnMG5nUaRcD8bDT/GtbRiufcuULHtkZQSgbyiLzT
 hyv+i8dFFwvUywoUJU93j/CUFuVFzjjkFFj4vZTmWFVg+njiebJ88owqRnaVGhSX7gU9lacb1
 YkCBgCFTv5JfSCEwHMit16I5Alm+cvj8AuhYmn+W2FY2edjjjnFDBUzvVdl7vpSqgVK5XI1jN
 Cq0hg8xkGt/JbUYAR3Kw5k9mxDD5+lq2VxHijQfzQGJDOpq1FAheCaCvrj1P+hKvliyu6wIYk
 W/3HK49IUvqNCUVNREfSmFrxh3rC1FSU9yljJxUeIM7w4JnTYIoi3yrJEJLoQN9qp29KwM/Qu
 0HaTzUDXWIrF3DFz

On Sunday 04 October 2015 12:14:00 Julia Lawall wrote:
> > diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> > index 665238c..9f0883b 100644
> > --- a/drivers/staging/sm750fb/ddk750_chip.c
> > +++ b/drivers/staging/sm750fb/ddk750_chip.c
> > @@ -600,9 +600,9 @@ unsigned int formatPllReg(pll_value_t *pPLL)
> >         On returning a 32 bit number, the value can be applied to any PLL in the calling function.
> >      */
> >       ulPllReg =
> > -     FIELD_SET(  0, PANEL_PLL_CTRL, BYPASS, OFF)
> > -     | FIELD_SET(  0, PANEL_PLL_CTRL, POWER,  ON)
> > -     | FIELD_SET(  0, PANEL_PLL_CTRL, INPUT,  OSC)
> > +     FIELD_SET(0, PANEL_PLL_CTRL, BYPASS, OFF)
> > +     | FIELD_SET(0, PANEL_PLL_CTRL, POWER,  ON)
> > +     | FIELD_SET(0, PANEL_PLL_CTRL, INPUT,  OSC)
> 
> This code still looks unpleasant.  It would be better with an extra tab in 
> front of the lines of the right hand side of the assignment, and possibly 
> with the first FIELD_SET on the same line as ulPllReg.  And there 
> should uniformly be one space after the commas.  This makes several 
> changes, but since they are all related to the formatting of a single 
> expression, they could all be in one patch.
 
I'm not sure about it now, but isn't the kernel coding style to put the
operator at the end of the line in a multi-line statement like this?
I mean

	ulPllReg = FIELD_SET(  0, PANEL_PLL_CTRL, BYPASS, OFF) |
		   FIELD_SET(  0, PANEL_PLL_CTRL, POWER,  ON) |
			...

	Arnd

