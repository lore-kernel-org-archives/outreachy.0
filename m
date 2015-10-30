X-GM-THRID: 6210868560555671552
X-Received: by 10.112.55.2 with SMTP id n2mr1574285lbp.9.1446201276691;
        Fri, 30 Oct 2015 03:34:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.39.77 with SMTP id n74ls167019lfn.36.gmail; Fri, 30 Oct
 2015 03:34:36 -0700 (PDT)
X-Received: by 10.112.142.195 with SMTP id ry3mr1583028lbb.22.1446201276030;
        Fri, 30 Oct 2015 03:34:36 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id t72si69160wme.0.2015.10.30.03.34.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 03:34:35 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue103) with ESMTPSA (Nemesis) id 0LdL6H-1aIPD02bs9-00iRru; Fri, 30 Oct
 2015 11:34:35 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: Ksenija =?utf-8?B?U3Rhbm9qZXZpxIc=?= <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: comedi: Fix sparse endian warning
Date: Fri, 30 Oct 2015 11:34:35 +0100
Message-ID: <10521079.79icb2S4AQ@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CAL7P5jKGVmw=OypR=u7vLWRnALNVC5kmUXKtJsuCKMHWkp79JQ@mail.gmail.com>
References: <1446080515-29734-1-git-send-email-ksenija.stanojevic@gmail.com> <3936694.NLtiS3J4cs@wuerfel> <CAL7P5jKGVmw=OypR=u7vLWRnALNVC5kmUXKtJsuCKMHWkp79JQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Provags-ID: V03:K0:11s743WrV3OOYdJnbzxiHULtj57Yc3fmsaZd2I4kwz4O5xomFr8
 MJbkD+4WLk8FtwhKSfsMyMzcItCPUWY5eQlbF464u7RRnQ7uE78TpZQbCZvn/NxfWtJFwva
 zfebzkVgOnSwyypVIrfD2XKpOucC2hmPibTd/AN3wVTgNN4rBMl7xY1sUiNyHT1bVEjNMkU
 Vc4nDsC0C8HOHHpNSXKIA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:3Y77FhLOCGE=:iQ7rzYXPl3xLzMgjlZgDoe
 b/k2OXIqrGilvLwVX2YC5dQD0EBAL9vyGxKwqKe67CTJdxLkouEt0zgDaPl7EbF1TOkteG7Dv
 V7U5NfTDyyQemmE3EYQgJoaWSNYDVdoPFDyzf17GAntR442YZrN6fyQfIne5W3IbPx2caY0co
 Am6kF7YetTAEYmsTmh3aHvMbeX38HZwv8dsj9LN6cnQ0O0dc9j52OJGboBoqQmmLEi1rOypD4
 Ddw57/ma2icajiO81mdhXU5VzQPpTgiWGmKo2cpydMKtFHIx66CFN4PE+qqorg+uMSTxk4Ho4
 pQo7WV8NkT6aknzzOJxNvY1+IyIzHOjG5yLDZZVgUKnbUfh/mDcxa8T2x56pl0MqrIWfgF363
 GQXiRU6kIiKjqrLTZpxfx++eCyKogizZ0iAZEsKuQlbd1a+gshed1XKzntrbYssQuneZHaWaq
 K0bKbzW2aMJiydsX2a0gKEVCsmHV5O+0t7V6edjYsLpXXAJaS8a2hqtMFB38mOkXAcDDg/PCF
 poqQumVw05/bcqxIe5YyNfDikgfO73PVc7EXmTiYiSYuVI7tMlKqzfrPbkMXnjdqExZ+PunFa
 8ER0vGQHXCl50RM+C4c+8Z59vtINX+MoIlEVxNaw7EdK/yVeSEDpwctvWGdMVhHY/K0Y2lkMq
 bDIhrmgD3lPov7Rq5+/YgupAeb1rwiqliIdkUc1COVX+q8hr5kSxtW/xu4HsJhUKXJI/5eaTs
 OHLKrxBD8BnJDr+g

On Thursday 29 October 2015 18:02:30 Ksenija Stanojevi=C4=87 wrote:
> >
> > However, I think this needs more explanation to why this is a
> > valid solution here, and it would be good to do the same thing
> > for the other handful of comedi drivers that provide a 'munge'
> > callback. Most of them seem to have fixed endianess and use the
> > same code as this one, but there are some examples that currently
> > do not do endianess conversion, and it would be good to check if
> > that is correct. I suspend those only work on little-endian
> > machines.
>=20
> My understanding was that since "array" is pointer of type void, it c=
an be
> used to store any type of data and offset of the array would be the s=
ame
> because unsigned short and __le16 are both 16 bits in size.

This is correct, but it means that the caller has a similar issue, beca=
use
the data that is passed into the function can be either CPU-endian or
device-endian, which makes it impossible to have correct annotations fo=
r it.

This is of course part of the design of the comedi API, and we would li=
kely
have to change a bunch more things to fix this properly.

=09Arnd

