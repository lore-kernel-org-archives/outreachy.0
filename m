X-GM-THRID: 6252116177284235264
X-Received: by 10.194.62.69 with SMTP id w5mr241023wjr.5.1455715008921;
        Wed, 17 Feb 2016 05:16:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.42.196 with SMTP id q187ls916412lfq.30.gmail; Wed, 17 Feb
 2016 05:16:48 -0800 (PST)
X-Received: by 10.25.15.161 with SMTP id 33mr244716lfp.0.1455715008305;
        Wed, 17 Feb 2016 05:16:48 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.74])
        by gmr-mx.google.com with ESMTPS id w10si721336wmw.3.2016.02.17.05.16.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 05:16:48 -0800 (PST)
Received-SPF: neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.74;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([78.42.132.4]) by mrelayeu.kundenserver.de
 (mreue101) with ESMTPSA (Nemesis) id 0MXYog-1aQxlh1l7G-00WYVy; Wed, 17 Feb
 2016 14:16:47 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: wilc1000: Return correct error codes
Date: Wed, 17 Feb 2016 14:16:46 +0100
Message-ID: <3731725.Uhb0JIDMJg@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CA+5yK5GyQ_zqLEVvVLh1YDT2w9Xp6VukA=Bu_CT+conNojXvJQ@mail.gmail.com>
References: <20160217124204.GA30394@amitoj-Inspiron-3542> <2870007.s5VBRruket@wuerfel> <CA+5yK5GyQ_zqLEVvVLh1YDT2w9Xp6VukA=Bu_CT+conNojXvJQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:XPwQhvn7n2N+ZFHdOxA1RaVAaL2yO6gafiXG6rzG0B3wh4Im2WZ
 5CdMFsR3wzHXEUzHUfrPnJqZLyp9Y6b1PnoA27cFZydOF5a668MCSQnDP7e5myASMlep5u1
 Wj+oJhN2UMUVjLFdqoQ5otB6mSrsODP/lddyl0EvoZdQfZnqz2jk3vdPnbL1Lf4or+gRJr9
 aOyT+5MMNkBQJsCMk2yuw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:9OzvoIDrOjI=:wAowcVcuSu2wNsPr+gx+XW
 vLlnnbMriXh5eIo3nx8mjbVhmLd75QtYtGOs2xb15CnnGfoWP33oIyhFo1V7G3MBFQ69ainDG
 +FR5rxvw9W8PvdkXns/s1gNyPvI9JGXnNEfaL4ZICgT0F8QNaMAXQO+ylp5mPPvUoAFzE13Ib
 LCoYDEGCR0K8WSCRp/Iawb53p/u/7zdC4mTiafrxq1mW0aPouXyag3OxdLs4H0AokUHuV9eCk
 Iy8VNgLvOHv6BjmMUvCO95gBwMAOncbKWKZjgfxxzOlYi+MaKzLCExQ6FeHvmYy+d8x46L9fh
 53zEi0sZF7BzMEZcukQsl4ficWsigPuczoHAvvGyTQSqGNmX0QVFY2apMrbHtVS3lgLh7nnzG
 XJmHusn6nisOrVX3rsBQGeSOkf7Y08TsOPs3Yjdxm/4MogEbCoFNjs7iwADpb3vdzoOsVgn0B
 zzPdpI8g1QLxan4yLFBCfIXNoWIVbWBjy3wKUHzf+XyBGcxnwD7Unq6a3jql7C2NucSjXkALs
 v8IAFmvRtxKmCUNlROpb4YCrstHTUbY7OU0QpgjAKAgVMa0A97ZxzDwqqp5wEmeA/z3yGUZn2
 3Hdt0MQd57BqL+ALevXRLcEP9Utefx1R56WCmEvtkq2rSKwdmmjyGb5mVV0izJozuAM9q7D76
 ipH55KU8sjFPMe5CK4lbdE0plhZ6XPaRgCfUf5A7gtAJe5xrQzFSGK6KA6+L4h1SqgDcZBJfj
 Hqfefka68YWggJ2t

On Wednesday 17 February 2016 18:43:01 Amitoj Kaur Chawla wrote:
> On Wed, Feb 17, 2016 at 6:27 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > I would use whatever return code that register_netdev() returns here.
> >
> >         Arnd
> 
> I can change it to that although I wrote the following script after
> your comment to find the general pattern in the kernel:
> @@
> @@
> 
> if (register_netdev(...)) {
> ...
> * return ...;
> }
> 
> and most of the cases, there are quite some results in drivers/net/
> return -ENODEV in the same scenario.
> 
> Would you still prefer to return the code that register_netdev() returns?
> 
> 

Yes, I think it's better: The reason for register_netdev failing is
almost certainly not that the device is not there, so -ENODEV is
a bit misleading.

	Arnd

