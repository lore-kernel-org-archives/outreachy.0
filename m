X-GM-THRID: 80310435840
X-Received: by 10.112.138.202 with SMTP id qs10mr894499lbb.24.1424163455972;
        Tue, 17 Feb 2015 00:57:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.97 with SMTP id p1ls658495laj.4.gmail; Tue, 17 Feb 2015
 00:57:35 -0800 (PST)
X-Received: by 10.112.199.69 with SMTP id ji5mr2015968lbc.0.1424163455445;
        Tue, 17 Feb 2015 00:57:35 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id l8si5807012wia.0.2015.02.17.00.57.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 00:57:35 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue102) with ESMTPSA (Nemesis) id 0M5fdw-1Xdg9O1x84-00xarM; Tue, 17 Feb
 2015 09:57:34 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Vaishali Thakkar <vthakkar1994@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: lirc: Use setup_timer
Date: Tue, 17 Feb 2015 09:57:33 +0100
Message-ID: <3457005.LTXKFus5ps@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20150217045149.GA3532@vaishali-Ideapad-Z570>
References: <20150217045149.GA3532@vaishali-Ideapad-Z570>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:msUrtXqdGoKjwA+izeitgw+pewDhUbeXzqYRzYqFTZJCUriVps7
 QL1ZWRVONWwWmJjCCvRRTfYs0s0texxtfgu9SRyKpbEDwd8rIF24hez4ZzK31xt+EldsDew
 n3F3rH7VIa25BVsOtyjUWsngm5sfdpNMlBXjer31PZLdfIe/A4hRTbp5/f4fI7L19fTA4K6
 59/jGrB3vrubG0QLf9JeA==
X-UI-Out-Filterresults: notjunk:1;

On Tuesday 17 February 2015 10:21:49 Vaishali Thakkar wrote:
> This patch introduces the use of function setup_timer.
> 
> This is done using Coccinelle and semantic patch used is
> as follows:
> 
> @@
> expression x,y,z;
> @@
> 
> - init_timer (&x);
> + setup_timer (&x, y, z);
> - x.function = y;
> - x.data = z;
> 
> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>

The patch looks great to me, but try to be more explicit about
why this change is done in the description. Rather than just
repeating the subject in the patch description here, explain
why this is useful. In particular, is the only benefit to shorten
the function by two lines and make it more readable, or is there
also a functional change where the new code avoid a potential
problem?

	Arnd

