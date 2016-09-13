X-GM-THRID: 6329721618764398592
X-Received: by 10.157.15.145 with SMTP id d17mr19227950otd.21.1473762964095;
        Tue, 13 Sep 2016 03:36:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.112 with SMTP id 103ls917808oti.11.gmail; Tue, 13 Sep
 2016 03:36:03 -0700 (PDT)
X-Received: by 10.129.73.139 with SMTP id w133mr87329ywa.28.1473762963683;
        Tue, 13 Sep 2016 03:36:03 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.135])
        by gmr-mx.google.com with ESMTPS id m19si380589itb.0.2016.09.13.03.36.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 03:36:03 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.135 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.135;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.135 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([78.43.20.153]) by mrelayeu.kundenserver.de
 (mreue001) with ESMTPSA (Nemesis) id 0MFUge-1bn4Sa45gK-00EL7E; Tue, 13 Sep
 2016 12:36:01 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Anchal Jain <anchalj109@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, lidza.louina@gmail.com
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: dgnc_cls.c: usleep_range is preferred over udelay
Date: Tue, 13 Sep 2016 12:36:00 +0200
Message-ID: <5166979.RvC7fNVv5n@wuerfel>
User-Agent: KMail/5.1.3 (Linux/4.4.0-34-generic; KDE/5.18.0; x86_64; ; )
In-Reply-To: <CAAbeOSv0+HCx28Ug1eqEnFsEjT3sMuP6aMUR+J2G_gKFuYYcaw@mail.gmail.com>
References: <20160913075211.GA6959@life-desktop> <3010989.B07XkbaqhU@wuerfel> <CAAbeOSv0+HCx28Ug1eqEnFsEjT3sMuP6aMUR+J2G_gKFuYYcaw@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:dylSjxZbXXKTYYyoVxsq6mlrqThe/dmzSTwpY2qvPZbRPCEJYSc
 FFh/kA1QqxGuslzxDEIIe36U30tydXu77iOQ2627V8b82sUfw6N9ZGIqvEUqzauXbBmp6uO
 wkBiP2Js/IdD/wnsGBYQij+zJMCVwqUq6Upi46h6hQafugPhu78AtOJHlu+YjEgyCtJZmQ9
 YVOAP7Iad0VR94wLT8gEg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:HjbZyORDXbY=:DhGIzEfY3at28i+fyhF6JS
 VpVCFbNlEFWR5UxXpXZ/YYoubkGo0W/viOzbBMO3ziijz57OTGHXFOdRcOzuXGAPaiCZC7Rrt
 UzkaITraYTY7uQ+1oKie+EtpdrWdCQhgEX/gDZCU/xQ83V700A6yGWNV4WP1GUJWmCrBb/vGJ
 FY2KfFP6o3Vm4/B8IsPVnWwU1X0E5wQxPGP+FxW/9FI1bUUIUFpoD/6774a+C8mCPexTeAT/0
 AeFDpX/O4zUh5jULS5JeMq8XHlmbvqkfoMvl+Pb5AZpv7LOWH7kUUVtD8+lhZq7Re0f6Fo66F
 /LGiBm7NI9nTQt2RMeTA0Q7J1Lm7dts4lJv+fgkJqjJJFeXuNPneRjNS+FHO8WgF47zW1k6o0
 mmZBa7wIKK+BJNUbER5ca+0Xn2jcpFYpYpnqzObiSxhPhrjgM8HZMm4vrWB0t9VbLaVSMUXDQ
 OcXLpEGOnPehHuhcwGy4ZUccIXxxCX67XnlLCbb6LIGNHmFDLwJHTpoxzftjlgmwZgmA7xWFt
 ox+CbhjqkCFZUW4KY9EwVpZSgVEEwg8r//IBwCSzD+ise4qTzxcmR9bF107QhTSmBOoOsy5g1
 6sm1SpnQ7ETRfRYtEwGfO8qc4VqyHYErwSgIdhGeYJz9FfG5FLsVXW5OJ9SEHeV257570K3fU
 7u3uDn2CvIVhZmJCZJ2Y43cvhCRkibhwy7T+Pn5ao5cpPpcFoSR84+lY9OZYSa3Q2aCaOvJJm
 9Ya71GUDw1dCntvl

On Tuesday, September 13, 2016 1:54:57 PM CEST Anchal Jain wrote:
> > This gets called from cls_copy_data_from_queue_to_uart() under a spinlock.
> 
> According to the documentation "Documentation/timers/timers-howto.txt".
> In this documentation no explanation of "spinlock". What is that meaning?

Holding a spinlock is one of the things that imply "atomic context",
which is mentioned there. Other examples would be

- being called from an interrupt handler
- disabling interrupts
- disabling preemption

	Arnd

