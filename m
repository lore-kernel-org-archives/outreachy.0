X-GM-THRID: 6201888067640360960
X-Received: by 10.194.240.230 with SMTP id wd6mr4976373wjc.0.1444032706484;
        Mon, 05 Oct 2015 01:11:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.82.73 with SMTP id g9ls765185wiy.30.gmail; Mon, 05 Oct
 2015 01:11:46 -0700 (PDT)
X-Received: by 10.180.210.71 with SMTP id ms7mr1872778wic.4.1444032706098;
        Mon, 05 Oct 2015 01:11:46 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id q6si306741wif.2.2015.10.05.01.11.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 01:11:46 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue101) with ESMTPSA (Nemesis) id 0LdVp4-1aQZ6J0bGk-00iou0; Mon, 05 Oct
 2015 10:11:45 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija =?utf-8?B?U3Rhbm9qZXZpxIc=?= <ksenija.stanojevic@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/4] Do not DMA on the stack
Date: Mon, 05 Oct 2015 10:11:44 +0200
Message-ID: <7470920.ePDpii2jg9@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CAL7P5jJDJKXjERbZXvmyt0V22zbbWCr2=_rMVbwptK_WtQCuFA@mail.gmail.com>
References: <cover.1443989364.git.ksenija.stanojevic@gmail.com> <CAL7P5jLBOQH4Z7vk62uKMRoV7EO3AwCkVBL4ODto-oTyS+XKWg@mail.gmail.com> <CAL7P5jJDJKXjERbZXvmyt0V22zbbWCr2=_rMVbwptK_WtQCuFA@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Provags-ID: V03:K0:emmDO8N+cB0WMLJ6YxKijxFqHMgYXDg7GGVe89Inj4n0pdLYizT
 SEz+qna4ge3TXjkEdxg9qVKosSNiWTKos0TrM+ENxns6kcrAmPzaAxr9n6ji/x8VjAfEek1
 Op5J6hXfHzCJy2MmfRTAtFlV/4MrmlOVKaEZsK+1lNgmgQvej8VjgRQ5GWAgiCh13qQH/5B
 Dh6fZmjTzzYkacblY6jPA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:M/PxearSU2g=:H0O+wYKhi2Td35pQRnuZd/
 tmQQFzB1T0wOkJ4p492y0ppwJ9buT7wgYvNXTL2Rurg0MxHdoRZ8R3a3S2Sv4xH5n+IWXDoZB
 vYhlBqc1dhtqvhi9XLLYB9lGjFQ5dkU3iMYO+T6usbD9UJi3Jq0w64yIfbaGlFGenvL1vjN9y
 pIUDttnfjkZ6pkcZxZ0D5mFHs3nPEYhf57d0fkBvGPHN1ZHmdtLPBUcU7w2yF0skFF6ya4ITm
 9HqLPnes5uOrLMD1yOk9GDfRf38d9qYNfULzeqcuyOx4SzDulNndw/2dhJ1TeFrO08O8ZCquC
 3tG27zoh89RfnaWAun5p3nmcCnH31OXgiU5qesCwbGr6Uau+7Bcs5+XC9lw8qbA886A54OJ+T
 ndhkBPeXx1Fv/NC6BW+sAVq4xZqseuYRRUBAuHz1pfzcx/TsOckuW2Hpww898PTCq93WgcvoZ
 xjKwRrcJfTNaw65mcAx6Q8BMd9V8MhFnmnCH+xw3uVBPaRDhT19FErJBE8F5fCj5t17YKtb0t
 DOvo0D3Ga5Fcby1AYbgiR4DVdD376isEI+QMIBfSkCEMnbxTdjcQKUjzx3gxC+WCv/PZxW1fg
 61NNMBAgVjcDBNVxJmiQnefq3R07QzWhdOh9H5uqBkbe5flaC9jcYaxzQuPwTam8hRPAsWo4+
 9U/mDR4OxPlqbaQbHOfeaPvV84m+k9E9B0WAnmD+aWKKoSQKu1zr6EVHLjX4plWkB5nPOafQu
 aa2+dzw66UCl2kSF

On Monday 05 October 2015 08:50:09 Ksenija Stanojevi=C4=87 wrote:
> On Mon, Oct 5, 2015 at 8:44 AM, Ksenija Stanojevi=C4=87
> <ksenija.stanojevic@gmail.com> wrote:
> > On Mon, Oct 5, 2015 at 8:40 AM, Ksenija Stanojevi=C4=87
> > <ksenija.stanojevic@gmail.com> wrote:
> >> On Mon, Oct 5, 2015 at 7:28 AM, Ksenija Stanojevi=C4=87
> >> <ksenija.stanojevic@gmail.com> wrote:
> >>> On Sun, Oct 4, 2015 at 10:39 PM, Arnd Bergmann <arnd@arndb.de> wr=
ote:
> >>>> On Sunday 04 October 2015 22:13:02 Ksenija Stanojevic wrote:
> >>>>> Fix error "doing DMA on the stack" by using kzalloc for buffer
> >>>>> allocation in rtl8192u/r8192U_core.c in the following functions=
:
> >>>>>         write_nic_byte_E()
> >>>>>         write_nic_byte()
> >>>>>         write_nic_word()
> >>>>>         write_nic_dword()
> >>>>> Issue found by smatch.
> >>>>>
> >>>>> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com=
>
> >>>>>
> >>>>> Ksenija Stanojevic (4):
> >>>>>   Staging: rtl8192u: Do not DMA on the stack in write_nic_byte_=
E()
> >>>>>   Staging: rtl8192u: Do not DMA on the stack in write_nic_byte(=
)
> >>>>>   Staging: rtl8192u: Do not DMA on the stack in write_nic_word(=
)
> >>>>>   Staging: rtl8192u: Do not DMA on the stack in write_nic_dword=
()
> >>>>>
> >>>>
> >>>> The changes all look wrong to me, can you guess what the problem=
 is
> >>>> when you read them again?
> >>>
> > Please ignore this.
> >> And also assign pdata to point to data
> >>  pdata =3D &data;
>=20
> I meant *pdata =3D data.

Right. Once you change that, it should be fine.

=09Arnd

