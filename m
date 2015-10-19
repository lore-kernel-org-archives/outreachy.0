X-GM-THRID: 6206645020679733248
X-Received: by 10.112.63.165 with SMTP id h5mr6805306lbs.18.1445259575763;
        Mon, 19 Oct 2015 05:59:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.35.33 with SMTP id e1ls611139wij.19.gmail; Mon, 19 Oct
 2015 05:59:35 -0700 (PDT)
X-Received: by 10.194.109.233 with SMTP id hv9mr6615726wjb.1.1445259575141;
        Mon, 19 Oct 2015 05:59:35 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id hs5si513297wib.1.2015.10.19.05.59.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 05:59:35 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue005) with ESMTPSA (Nemesis) id 0LfFgy-1aKzny2b0q-00oqMD; Mon, 19 Oct
 2015 14:59:34 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: mt29f_spinand: Remove space after a cast
Date: Mon, 19 Oct 2015 14:59:34 +0200
Message-ID: <6020768.AuWQ7PzczV@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151018155912.GA3682@Socrates-Mint>
References: <20151018101529.GA6434@Socrates-Mint> <5200397.Z5PqNk5xTM@wuerfel> <20151018155912.GA3682@Socrates-Mint>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:xdI2wG5ILixbqiJIYy65FumE3sioDT4VwKgZAf++JefkDjdEKtc
 oX/NHFu8sn1ZxRQT5Jyku/1lnEhk4/ploU0YMRr0FCbtxgtTJ7W7kzIu8JNbiD7A/e3lvVc
 NVN8Ncok6LPyuZtKvf9JSBPCfbh8I9oDyepmqPKJ0XMy4k7BMS2VpoT/fNPIdzT/BxB04zK
 t+9wuC48/LnVmgcvP2KHw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:zs7VthWgRDI=:NTbQMG8wSwRy3WkYW6azPH
 ri/Oncf8K36GTOgr310x9waUicDNUbORwUjW+2vcEuaLAOISL4g/0rBAPp3tNwdgU3hVzE1BK
 qUHsZEFP+Zy6Km/07JYkCi0nYEcCt2IPK8R502e52itZ/ZXUED6u9K9Q8v4XqmSktjEKbPMAK
 a2IJuMCSQ0EqEoJ/lE+5FcC2Hwzk5ut6AoJtVGlWP5J5KVTkYxfUvo7Lw2ZtRN4WS1GERvTKM
 5HKSt7Ia1YuszL9UaS0trQSjIEqXD4bzgdrqitMjOS7nDvQNMt1pVXMvjcHsuifbVJXfClOUW
 b99FiEL8eW6wufxCuudv/ND4JjJQMrFC02QDRsQUh5ihm9W4fzIwrg0ClVLq+8RqgjGtAlPyN
 VLnoDiSR/qHw42VHK2x1jt8AEB0GaC0cATKJ53MZszl1oShD2ebEGjkHPVcnonFYBwn6k+fqj
 lJkk1aW7hQYbv2ro8r8kfTWIuQ5RWKh8pWQbcC7jmT+FtXgbP4VVoEp7TnmCZWYtFDBSH2IbV
 k6fRVzu2K6BIYcVRpU2EdVvxACjexM/hQ6sZOzdZq8ZK3dBno00hKOQm3gFZpxrmoSNrBM/Se
 iEOuitaSYPU5FJcHfF2/f1akg4JLWitr9PfbtBCBYxRjLkhA9ziTaeIjyfLtWkj4M09jXXsQo
 aJnNvUOK616EOWtFIo5hIZ0349Vf0XMWYgB+8pVJ13IEezybKqhbohM56ayfQsmQ0zGH9F7of
 dXkkGSf/QXSHUd7R

On Monday 19 October 2015 00:00:16 Eva Rachel Retuya wrote:
> On Sun, Oct 18, 2015 at 02:55:56PM +0200, Arnd Bergmann wrote:
> > On Sunday 18 October 2015 18:16:09 Eva Rachel Retuya wrote:
> > > diff --git a/drivers/staging/mt29f_spinand/mt29f_spinand.c b/drivers/staging/mt29f_spinand/mt29f_spinand.c
> > > index 1aa449e..cf98228 100644
> > > --- a/drivers/staging/mt29f_spinand/mt29f_spinand.c
> > > +++ b/drivers/staging/mt29f_spinand/mt29f_spinand.c
> > > @@ -594,7 +594,7 @@ static int spinand_erase_block(struct spi_device *spi_nand, u16 block_id)
> > >                 if (retval < 0) {
> > >                         dev_err(&spi_nand->dev,
> > >                                         "error %d reading status register\n",
> > > -                                       (int) retval);
> > > +                                       (int)retval);
> > >                         return retval;
> > 
> > 
> > The change is correct, but it would be nicer to remove the cast as well,
> > because 'retval' is already an 'int'.
> > 
> >       Arnd
> 
> Looking back, you are indeed right. Do I have to send this change as a
> revision or go for a new patch? 
> 
> Thank you for pointing this out. I admit, all I did was to change the
> piece of code as suggested by the checkpatch. Next time I will be more mindful of the change/s I'm introducing.
> 

If Greg has applied your patch already, it would be nice to get a patch
on top. Otherwise, I would suggest sending a replacement.

	Arnd

