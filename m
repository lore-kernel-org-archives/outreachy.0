X-GM-THRID: 6211564621691617280
X-Received: by 10.28.55.135 with SMTP id e129mr109626wma.7.1446244404872;
        Fri, 30 Oct 2015 15:33:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.147.16 with SMTP id v16ls271441lfd.63.gmail; Fri, 30 Oct
 2015 15:33:24 -0700 (PDT)
X-Received: by 10.112.134.129 with SMTP id pk1mr2159397lbb.24.1446244404240;
        Fri, 30 Oct 2015 15:33:24 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id g18si148921wmd.1.2015.10.30.15.33.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 15:33:24 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue005) with ESMTPSA (Nemesis) id 0LehC6-1aGrs51pnS-00qUd3; Fri, 30 Oct
 2015 23:33:23 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>, Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: llite: dir: Add __user annotations to remove sparse warnings
Date: Fri, 30 Oct 2015 23:33:22 +0100
Message-ID: <6574219.Db31ORpkC9@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CA+5yK5EEA2s1gEdOkc6x-S4H9skc6p6euaFbuz00yrupcC+UjA@mail.gmail.com>
References: <20151030220302.GA3803@amitoj-Inspiron-3542> <alpine.DEB.2.02.1510302312140.2057@localhost6.localdomain6> <CA+5yK5EEA2s1gEdOkc6x-S4H9skc6p6euaFbuz00yrupcC+UjA@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:A66iq60hGN++OzZIpFT4Bfcj09zEDF6uyXe+Cjada/V2ywHFG2e
 0HI4CBJBHF50vMZ6hmQNSv7lUUtd2+ZD5SklRctY1Pwmt8R+7W3JatJUy1uo2Anu3b088xd
 tNKyYZA41jv+NMwmMBGmQ9+xkap9rE4SpDSroUV1O854bbGBj2K6HumKqewWX7nO9OeNSLl
 IFLVOWVBoyR9809c0+hIg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:cboH+FbqJjY=:uxiKUdyxHpM6vDfLPE7OmP
 WIgVJdv0vsLklY7eKZV2bvnkyBewTg6Lk8B0xO1SPI/cQTEJJddWfc+TeE9rt+obmRqCmLsQS
 N++cLqpr7kUjVrCD4eNbik9mD3r4OQD+TKCfjiMkDQtR/3FLMYz3Pfk3Q+hllaH3+GpcxAcFw
 U6YbwxgNBrmTSELz3HRWxORLNAsY9ZM9ODyEaMvXOj6ek3XGWpqwMDKfajH3/p3kONfz4ArxG
 zwxo5iOut/NnwtdUhZb2CN20qs7dN1MpbH4hl2DiOt4PcI9VjQR5yHMjasftY3azqPPXYwwxU
 axlHpFDNqhzsNwdKYmiVzvJhyBDzafv7GSA1e6NFbLmpoWHPVTdhtB/u+MzexVY6Hchd7IV+A
 6/yLxYJNo4xCqvRzPZF5PrhTU5fJ/ttWFwzmmlzftwMC6LnNQWNZtQ8sYEc73rcCc3IzLtCT1
 CZJPHM+nqfPwg4ivDoTDvyZ8KJJmdf4LyEH4g5A/jMQAW7E3t6t16HYY4xQrV3G0lNtK4lW5i
 ArDSnYc3GA8FSfUT4N8NBCNTgxSJmJPKeFpSqkV9AYIPxgNpS0YhAlDD7ZY4lF35cLuYWZtie
 Rvt6yVAvkLryON4kYKiASyMuYN9cci8JWd2PlLBrtE/+vOWi6BgRNNUP723idR8QyHLB3By21
 DamIjVvntkMLfAYjpV7CsyRVhdbnS2ZGIQo0Unxlwemvo3f/6KhJeR+Qtc8NTVan+HeZuG9Ae
 asIQusTnpd4z/9bY

On Saturday 31 October 2015 03:56:27 Amitoj Kaur Chawla wrote:
> >> @@ -1244,6 +1244,9 @@ static long ll_dir_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
> >>       struct ll_sb_info *sbi = ll_i2sbi(inode);
> >>       struct obd_ioctl_data *data;
> >>       int rc = 0;
> >> +     int __user *argi = (int __user *)arg;
> >> +     void __user *argv = (void __user *)arg;
> >> +     char __user *argc = (char __user *)arg;
> >
> > I don't think you need three different variables.  A void * should be good
> > everywhere?  argv is also sort of a strange name.  Maybe buf?
> >
> > julia
> >
> >>
> >>
> 
> I thought so too that void is enough and I did that initially, but it
> gives errors when I change this:
> 
>                return put_user(inode->i_generation, (int *)arg);
> 
> 

Right, put_user() is a macro that needs an argument of the
correct type. Maybe call it 'intarg'?

I think the argc is not needed though, the other functions can
take a void pointer as far as I can tell.

	Arnd

