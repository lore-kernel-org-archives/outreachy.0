X-GM-THRID: 3321174687744
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bcdbd9470f1685b9
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.40.81 with SMTP id v17mr874lbk.5.1424813735990;
        Tue, 24 Feb 2015 13:35:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.45.6 with SMTP id i6ls728889lam.10.gmail; Tue, 24 Feb 2015
 13:35:35 -0800 (PST)
X-Received: by 10.152.6.232 with SMTP id e8mr5395laa.2.1424813735440;
        Tue, 24 Feb 2015 13:35:35 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id ev8si982348wib.3.2015.02.24.13.35.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 13:35:35 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.17.10;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue101) with ESMTPSA (Nemesis) id 0MCIPR-1YHoYB3Or3-009BsL; Tue, 24 Feb
 2015 22:35:34 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Julia Lawall <julia.lawall@lip6.fr>, Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Simplify if condition.
Date: Tue, 24 Feb 2015 22:35:34 +0100
Message-ID: <6220123.OEaHGpHvmv@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <alpine.DEB.2.02.1502242219480.2081@localhost6.localdomain6>
References: <1424811248-8150-1-git-send-email-ksenija.stanojevic@gmail.com> <alpine.DEB.2.02.1502242219480.2081@localhost6.localdomain6>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:/h5BhVNnzzPyEY+18Q0xSo5AZfv0FkPXiAr/C1WcmDYU4Iy21Hn
 C1rgOzTMfZb02AnFeQh7sg/LsPqv4ektfdYHlwe+TUnsfhf4QTrg89HAOYhUmGLOQ8m+Bmx
 sW6kwMW34zY5XzEMRkzAE0VY5kpYFrfOelIW+BI9cu9943scgnUmesoHngDk4gBw7425TNo
 UHOURjBdwxZ7Gfo8AFkQw==
X-UI-Out-Filterresults: notjunk:1;

On Tuesday 24 February 2015 22:24:23 Julia Lawall wrote:
> On Tue, 24 Feb 2015, Ksenija Stanojevic wrote:
> 
> > Remove unnecessary TRUE statement. Fields bDynamicTxLowPower and
> > bDynamicTxHighPower are of bool type so such change is correct.
> 
> I'm not sure that the compiler actually enforces that a bool variable is 
> only ever assigned to 0 or 1.  The kernel contains the following in 
> types.h:
> 
> typedef _Bool                   bool;
> 
> The following (non-kernel) C program compiles with gcc with no errors:
> 
> _Bool x;
> 
> int main () {
>   x = 12;
> }
> 
> To be on the safe side, you should look at each place where the field is 
> initialized and check that the value is true or false.  If that is what 
> you have already done, then you should expand on the commit message to 
> make that more apparent.

Actually C enforces this:

_Bool x;
int main()
{ 
        x = 12;
 
        if (x == 1)
                return 1;
        else
                return 2;
}

The compiler ensures that this program returns 1, not 2.

	Arnd

