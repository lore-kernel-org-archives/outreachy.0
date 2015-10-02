X-GM-THRID: 6201143102107811840
X-Received: by 10.180.107.167 with SMTP id hd7mr187306wib.6.1443819123329;
        Fri, 02 Oct 2015 13:52:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.35.225 with SMTP id l1ls481262wij.2.gmail; Fri, 02 Oct
 2015 13:52:02 -0700 (PDT)
X-Received: by 10.195.18.100 with SMTP id gl4mr3022366wjd.4.1443819122983;
        Fri, 02 Oct 2015 13:52:02 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id bn1si32189wib.0.2015.10.02.13.52.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 13:52:02 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue004) with ESMTPSA (Nemesis) id 0Lj7Eo-1aDJSm16lS-00dG5p; Fri, 02 Oct
 2015 22:52:02 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH  v2 1/4] Staging: comedi: Use mutex instead of semaphore in usbduxsigma.c
Date: Fri, 02 Oct 2015 22:52:01 +0200
Message-ID: <6680937.1mLriPNGFd@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <9a65d840cc57e2ec29bf2dc1ea6269c2e80e6859.1443815181.git.ksenija.stanojevic@gmail.com>
References: <cover.1443815181.git.ksenija.stanojevic@gmail.com> <9a65d840cc57e2ec29bf2dc1ea6269c2e80e6859.1443815181.git.ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:imOcf9p4YNV/frCuHE6bflRxFCW4mrOp57i9rfsxFmUtx5pNQAA
 6XeDJeQ5gvP2+8gfdyBbLazioVUny3fuCzEJmLcSWxSaB2g8h0ioqYMXiDqjBL6J5oObKw/
 irVyOeGzqd6DZJJKBP3pcexj6cx5JvjPFvo43KwMCTqrGTRygomtgb78HLGm8bGA5UEBTKx
 BMmsTwFspPJiEH+stYlKQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:2nz1hePBV4g=:MqjzmtpfffDGspKfRNDYXm
 cyNMgNEsIDy6AbdU8Lsrh8DCAabGxv3UPotwMcN5Y+UDTEPZJwGgPzEDj9gM+w+dd65268Qjv
 XiMv8pk6Nk5IrvjVkAypdKMFNleOi36o6jep2SW3AQrviiUsV/uzcaVJcrTLberyeHRzUe6u2
 SekJSeF3DKmTARmJ0iAXPGDYm0oCZQICBUuEFBr9i2nmpHdYo0+TKzSxZOyPt3ywtWXulcyUY
 TNECDCYGRF39yMF8mx5f6uz/iB2GpKbkv/ZExoczUCl5x9Q/rsY6Xv19HXaVbrJW7Gmr6cvvf
 fJtPGchKEjuhsHEozARZsQRml2w96zkntvoUk/8ypwFbgafGCZtQR6nn5XNYpw1YRv0dS+ICF
 yWWVlEzVYSNi7fT6M+RbMIXgP6nQWViZ7rOvo2oon+xinGo9vgDAW+bS9Gt9IZH3pmWiHrAZ0
 bMprBjZWovGtrgZ4H2wm8PbGzG399nzmq8doo2o5OWqXHDZLpTlu9tk/J7+03kTveJ2KEUOO9
 5I1vivM+IRfNKs6lxL+4sccSZgPqaUAkXQFbh3ff/YFcDZNbQUrPiX0fyFciKVFUgGgtZ6TqK
 l4jpLTkyZB9IEMZG0u/1JGlMv8vrg54hAa6KEt98qaQnIk1810w5yfkCBcz6PY389Ep6s4Zws
 55Rvpwg5wsZHamtDXrJ7wzEisQabEmVbN08yIwCCrHOlXW5UTvanh50pqHz11L0wedYr23Idf
 8wzs30ndgyZ5g0Ax

On Friday 02 October 2015 22:04:22 Ksenija Stanojevic wrote:
> Replace binary semaphore with mutex because mutex gives better
> performance.
> This change is safe because the thread that decrements the value of semaphore
> is also the one that increments it, and acts like a mutex where owner of the
> lock is the only one that can release the lock.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> 

(all four patches)

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

Generally speaking however, the subject line is nicer if you put the
driver name in front, to make it easier to distinguish the subject
lines, like:

staging: comedi/usbduxsigma: use mutex instead of semaphore

Greg will let you know if he wants you to respin the patches once
more or if he just takes them as they are.

	Arnd

