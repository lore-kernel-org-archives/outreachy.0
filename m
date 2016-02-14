X-GM-THRID: 6250792352904904704
X-Received: by 10.28.129.210 with SMTP id c201mr750645wmd.1.1455478663958;
        Sun, 14 Feb 2016 11:37:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.212.198 with SMTP id l189ls265907lfg.67.gmail; Sun, 14 Feb
 2016 11:37:43 -0800 (PST)
X-Received: by 10.112.125.99 with SMTP id mp3mr1330315lbb.3.1455478663076;
        Sun, 14 Feb 2016 11:37:43 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id c143si380945wmd.1.2016.02.14.11.37.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 11:37:43 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([78.42.132.4]) by mrelayeu.kundenserver.de
 (mreue101) with ESMTPSA (Nemesis) id 0MGiFl-1aiWtb0ViD-00DVYi; Sun, 14 Feb
 2016 20:37:42 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>, outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: llite: Use IS_ERR_OR_NULL
Date: Sun, 14 Feb 2016 20:37:41 +0100
Message-ID: <2531432.nXVqgmrLL5@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <alpine.DEB.2.02.1602141845590.2066@localhost6.localdomain6>
References: <20160213150641.GA26097@amitoj-Inspiron-3542> <CA+5yK5HYMRvS0u_021v68oJnHciYh5MHboO2EwoCrAs+QzRM9Q@mail.gmail.com> <alpine.DEB.2.02.1602141845590.2066@localhost6.localdomain6>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:KGliA41ad0FQxX4obmAZPKXLgo1WqQ21szkLdzlSWKy+jItdSEr
 O3AH6N64MPCdwAQfYcrLIdSiEHfZ8UgCuZR/+ArrWX/UJFEwd3y7xHKqhEQtcJCAI4Be7Cf
 rHK2psMAjB0lMuY079pX595pExuax4QXF142NXjXDV+MurrG8qRGPaWK/RqXObociJ/yp/8
 x9NJW2lF0U6Ijtcq0Umug==
X-UI-Out-Filterresults: notjunk:1;V01:K0:2lczOyt+puI=:9xcJnlKwUTV9efGmsQtCrS
 kFWSgQmwgMorQFZe4mr2w98mKwIMq4OHJiG5fBQUdxuGs3G4Sy24KGAHgeTGXz6yqy2boKW+Z
 U14S550X4kHIC/hum3xrCdKQbzk9GFOivEUUZIZbrRjJ5rkbcpJ8BG61Lzyh3YnUdg9IXyYvG
 YVG+vhSg0NimdYNwOg1A1A5/LF5pXJGSpQ+v3nlLyW8vXg23LeErpUD4YrLr+WQLlcBYwK9lF
 lcqI5NXjyGz5vpynJ7r9d8kM7D7vsFfHCmZy62jzkwbVQQ9u7q+uhAQyTuovS4iTuEXdGbaJr
 f52aVJf3p98VLKvnQqmmhOufhHy7du8hmNkCkpAwPWY5vytXHCzmC5IWKGHmQK2OBhdcWcczo
 ezt8b9cuCTioi1R7X7Kf6kifAm23CgdqUnDREtmknN7gwuR6Wh5EIjvSjMMpUSzepWe4/CVaY
 sPy8Vve8xGRS/57phzBipV9jrgezBXahOhMnWDwHIWo945+Uxy289ka/cRiHlgOLZRfYtKi6U
 083+qEmnNsJjTfnT5sHpBnxSu2fyOR178CpalDeOIytZTNVmxyCjcerOdA/Lo3wpXa5FF+rTd
 F1PyynITKRitpEonjsn4QNAB8W53KbBfLNtf/bAAy4E7kDBKvv5Do16aSvR2roFpLZ8NHqSyC
 Dooq15REU5wjnMR6Kk4d/Ou0A3xDGNYuCI+Jhwmefw6I6DUIrI9DzIa91i23eI0+FjH39fQ3Z
 H/YnxZnKKlUKwtWI

On Sunday 14 February 2016 18:46:48 Julia Lawall wrote:
> On Sun, 14 Feb 2016, Amitoj Kaur Chawla wrote:
> 
> > On Sun, Feb 14, 2016 at 12:52 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > > You have to check all of the return points in ll_iget to see if any of
> > > them could return and ERR_PTR value.  This may require checking in some
> > > other functions to see what values they return.  If none of them can
> > > return an ERR_PTR value, you should just remove the ERR_PTR test.
> > >
> > > julia
> > 
> > For one case, ll_iget is returning a ERR_PTR value.
> 
> I agree.  Maybe a reasonable solution would be to check for NULL and, if 
> it is found return ERR_PTR(-ENOMEM).

That sounds good, it would even simplify the function.

	Arnd

