X-GM-THRID: 6249137798348013568
X-Received: by 10.194.178.129 with SMTP id cy1mr4090433wjc.2.1455028730847;
        Tue, 09 Feb 2016 06:38:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.12.7 with SMTP id 7ls628997wmm.53.canary; Tue, 09 Feb 2016
 06:38:49 -0800 (PST)
X-Received: by 10.194.110.233 with SMTP id id9mr4094549wjb.5.1455028729355;
        Tue, 09 Feb 2016 06:38:49 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id w197si543468wmw.3.2016.02.09.06.38.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 06:38:49 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([78.42.132.4]) by mrelayeu.kundenserver.de
 (mreue005) with ESMTPSA (Nemesis) id 0MMrhT-1aNuEx2JrD-008XOd; Tue, 09 Feb
 2016 15:38:48 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, Bhumika Goyal <bhumirks@gmail.com>
Subject: Re: [Outreachy kernel] Doubt regarding build warnings
Date: Tue, 09 Feb 2016 15:38:48 +0100
Message-ID: <2688292.r6RqQzfV0D@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <alpine.DEB.2.10.1602091209240.2578@hadrien>
References: <ba8ae97e-c7c5-4383-bffc-a5eac3003e1d@googlegroups.com> <5477208.ntDhW1kj3a@wuerfel> <alpine.DEB.2.10.1602091209240.2578@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:xH6/xpadwA/zNhz7POzJXftDyUhH1sWZqZXNhO48CeakH6PaAU8
 orXkyapxI2qK19b56wLIfx3KMDLb/qybZREpVz1my8G2xzxxPJdc6IiW1EHq7Vr2ogPQSgi
 eMWNIjkIv2xEHP2h7rr6QWZKhPzOfag2yesLQMl8E2rfWOSoLtDGHE9cmPiR3ELhDE6xGHq
 wOVZoMczgmsZdilIiDeCA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:6bPhk/GJvMY=:RgphoAlmEz7n9XxEqcly2b
 htjmQNAXPtBynFnAQdCMYff8v7c+CwIJQGWMXb+ESgShS+oMO72f6w9fLPCfvQ9QHtIF9OoqL
 2GIrX5Yszy67WVW0mxNF0THJvq3CE+DX0x8mNVpGW3ysNCsJ6GqsSVkeUJa48EM/ItT/FTVmW
 BTbmmHWva5mkDh4jlw1r4p1mTckn35nxjg7D56VD8Ka1RR6lfhMeZhns0HHBE/wr8NNqywYGn
 igGGLB4KeYreOKXzNMqV4jJso0GqnNv6z4b3nh84lIr4E7bZrXvgxkg70DeGDpSdYWnAxU8Eu
 pGVcotnj9kwIjWyCrK6xhiQiTTr6PgLyxE49IQrZDVuZ0O45AG2ZePumUrHih6baJ5pFLHu0K
 W3HkLopFXnyKs8E/DqkaBWNjyjdPkz+DGBl8zJsemHowX6G9EM4E9JgE61VT+oHx1ZsnAAKsD
 yut+CKk5H4EFwuVkpITnsQf7vbKuKRKnYJoLxF/jrS7G87sF2KT7QK7e5uE+86C5RhEvZubqP
 CO1IgJN7np3ppPKXR21mprYRFp0mIDLNq5CYT902BtP6JS6PQ4EYRUp9l7/HduqOJQkLpgAXk
 0mCEYQseAbn6NBUgq+LawqBlrALRjLsKC4d0wrzbd/IcDb0DPNWvsFI+nl/O9Q5rVHIE0VHVv
 M2ANP21TCJM0CZJg6vs/UNkXPr4+yLkO/otLLzQqYJlBstkJSYsTrESNkm5YSVcDVIR45i+ic
 lmNGVkvWntEvAIks

On Tuesday 09 February 2016 12:09:38 Julia Lawall wrote:
> On Tue, 9 Feb 2016, Arnd Bergmann wrote:
> >
> > The differences are very subtle:
> >
> > make drivers/staging
> >
> >    always succeeds, does nothing at all because the directory exists
> >
> > make drivers/staging/
> >
> >    descends into that directory to build all the files in it, but does
> >    not try to link the modules
> >
> > make M=drivers/staging
> >
> >    From the output you get, I think this must try to link the modules
> >    against the previously-build vmlinux file, which for some reason
> >    fails here. I suggested doing 'make' to rebuild everything including
> >    vmlinux, so it is up-to-date with your current configuration.
> 
> Could I add this to the wiki?
> 

Sure.

	Arnd

