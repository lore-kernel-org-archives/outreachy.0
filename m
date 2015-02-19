X-GM-THRID: 75436654592
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bead06cd7830e23e
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.182.44 with SMTP id eb12mr843309wic.4.1424334482379;
        Thu, 19 Feb 2015 00:28:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.246.11 with SMTP id xs11ls127675lac.54.gmail; Thu, 19 Feb
 2015 00:28:01 -0800 (PST)
X-Received: by 10.112.168.104 with SMTP id zv8mr393692lbb.10.1424334481933;
        Thu, 19 Feb 2015 00:28:01 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id ev8si6348811wib.3.2015.02.19.00.28.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 00:28:01 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue005) with ESMTPSA (Nemesis) id 0Ld1hk-1XgGDg2lf6-00i8iN; Thu, 19 Feb
 2015 09:28:00 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Vaishali Thakkar <vthakkar1994@gmail.com>, Jes Sorensen <jes.sorensen@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Use put_unaligned_le16
Date: Thu, 19 Feb 2015 09:28 +0100
Message-ID: <8353755.unKOhaQ6P4@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CAK-LDbLMqPrkKyVuu8TX6jx4xXZom7J-R9gvR0Hi+NOBBFJyTw@mail.gmail.com>
References: <20150217044257.GA3424@vaishali-Ideapad-Z570> <54E512AD.4040303@gmail.com> <CAK-LDbLMqPrkKyVuu8TX6jx4xXZom7J-R9gvR0Hi+NOBBFJyTw@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:0fcYLjuqTj7MdUUviyjfXGT/WzhtcNrZ7Ab5/IUJkbulxAVB6tm
 tmIrbZdKlx8loAvgLGbzGDPXbFhvRMkFzDGkv1kE5EKoRaRpWtewzFLEd7jn4VnxHiszLGl
 hLXKPmoFgy5Il2E4qMFVGdaJYR1eeiFlR1i4+iYVsdHE+boX7d4BR/746RJBd4AydzjUczI
 qL9PDH8S6DzEPL9673pJw==
X-UI-Out-Filterresults: notjunk:1;

On Thursday 19 February 2015 08:35:46 Vaishali Thakkar wrote:
> On Feb 19, 2015 4:01 AM, "Jes Sorensen" <jes.sorensen@gmail.com> wrote:
> >
> > The key is to make the changes in two commits. In general you can post
> > them as part of a multi-commit patch set if you are fixing something in
> > a large number of places, or changing an API etc. For more independent
> > changes like these, posting them individually is preferred.
> >
> > I hope this makes more sense.
> 
> Yes. Ok. I will send this patch as a series of patches. One for
> put_unaligned_le16 function and other one for removing use of variable.

There are lots of ways for splitting a patch series, and usually doing
a multiple smaller changes is better than combining them, but there is a
limit. In this case you have four changes that could be done separately:

a) use put_unaligned_le16 in rtl8188eu
b) remove tim_bitmap_le variable in rtl8188eu
c) use put_unaligned_le16 in rtl8723au
d) remove tim_bitmap_le variable in rtl8723au

What Jes and I were saying is that you should do a) combined with b) as
one patch, and c) with d) as a second patch, but send them as a series,
not a) and c) combined as one patch followed by b) and d) as you understood.

There are other times when it makes sense to combine things differently,
e.g. when you do the exact same one-line change in 50 drivers, you should
not send 50 patches but rather group them by maintainers and send one
patch per recipient, or even a large combined patch.

	Arnd

