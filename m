X-GM-THRID: 6202253196489916416
X-Received: by 10.194.156.193 with SMTP id wg1mr6097937wjb.3.1444117886752;
        Tue, 06 Oct 2015 00:51:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.93.200 with SMTP id cw8ls1023831wib.39.canary; Tue, 06 Oct
 2015 00:51:26 -0700 (PDT)
X-Received: by 10.194.109.233 with SMTP id hv9mr6113263wjb.1.1444117886448;
        Tue, 06 Oct 2015 00:51:26 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id hs5si532944wib.1.2015.10.06.00.51.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 00:51:26 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue004) with ESMTPSA (Nemesis) id 0LzWb8-1ae2JD3vD0-014kBC; Tue, 06 Oct
 2015 09:51:26 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Julia Lawall <julia.lawall@lip6.fr>, Hatice =?ISO-8859-1?Q?ERT=DCRK?= <haticeerturk27@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lnet: klnds: socklnd: removed trailing whitespace
Date: Tue, 06 Oct 2015 09:51:25 +0200
Message-ID: <5592534.17srPIJp4I@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <alpine.DEB.2.10.1510052132150.2608@hadrien>
References: <1444074576-12447-1-git-send-email-haticeerturk27@gmail.com> <alpine.DEB.2.10.1510052132150.2608@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Provags-ID: V03:K0:r1UcxxDYUEq+2g4Khbz1xKEv/u+TIhQQd19zso4xzBPdrNRrAJR
 MpeTDlcUpgQ5QcBEaG4lpXPdMoOxTktwmTTD4igPlWHVeRAASIw2wCqW80PpnN2zwSmRuN/
 H9FKXCC/nsixymK/5UwGjKuHN0PXXtnpHZCzZQy8eiP6c1QBzIuqMA7TuKNdZ+hWjw4iVYp
 62iRLmxtlE6RRBDuebwkQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:JRdGIbmeCWs=:qMe+Lf1Q56HhTbAwb5SKHU
 3R+dmIsWYUNKY615eFrcLtKun3ja9O/P3rpJuk/qaIiQkaEllxqpspBkMR7sSPIeo5X9ibdy0
 Mwv1+RAOuA3Nkf3KTxXnuCb0dbYhAyFKPQ1TZ2/HcTCp5YDdCWxtdNGs9B4Nll0NhjaBORJ91
 kKjqnhJBBsUofKAE3F5dufCfe/t2zrjQMyjH2Gz0L3eP/8BhVbiQORFAK3ZwQCpzGoQwmIKIV
 lip+Wz6619vX4DEG8uDDU8gLiDLhlv1HN8n2aVsSmKYoNfyTzAqXiaz8vW3s5rKdGemDIBGCH
 kNCndLttTnF6HJVx1LMz/x0zL2Wveulo0bGIM+3TNHOkvl1AXeC7C4BdCpsVP2RcJj9axW++W
 DuEEueVgmT8bJfvbQ2CTUelaJy+M51rX8d8R6i2MBRukHTNZnAzXhBKyc4s7ci1tbuimqCP8I
 sn7h68P+YTjPYA+gD3r8QzR76jlhmOcx4k+971+ldcuIyN6Rk3tWMmNySdCOt3kc4Zz1r0PCT
 aeptWkEeDw1YGvjLxIvEIt/hZVX6dx1i5e9jXhST1b68xT2tXGQpKQngQ+zcp8NdFvcnzL9Vp
 0XrkrlDArXTQcfAfS7cA6t/ACfnMIX2yH/7pQy14qhyuZacyTmJ0AEchwfXjtRDJoL7SgUqBI
 nsqPpFJr6+TXrcDjwPN8GEOp6Mornx+V5bZYbnZtCOP/S/wZcJCR0PD7QGq5FmLHaPZX5cwX9
 Jc/GI4cGvdWmolo8

On Monday 05 October 2015 21:32:53 Julia Lawall wrote:
> On Mon, 5 Oct 2015, Hatice ERT=DCRK wrote:
>=20
> > Removed all trailing whitespace in
> > "staging/lustre/lnet/klnds/socklnd/socklnd.c"
>=20
> You don't have to redo it, but it's not necessary to put the whole na=
me of
> the file.  One can see it just below in the diffstat.

Right. Similarly for the subject line, there are lots of ways
to write this but using five keywords seems excessive. I would
probably write this as

"staging/lustre: socklnd: removed trailing whitespace"

=09Arnd

