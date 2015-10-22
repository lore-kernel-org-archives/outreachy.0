X-GM-THRID: 6208409681994448896
X-Received: by 10.112.202.165 with SMTP id kj5mr3591854lbc.5.1445516749338;
        Thu, 22 Oct 2015 05:25:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.206.211 with SMTP id e202ls334214lfg.109.gmail; Thu, 22 Oct
 2015 05:25:48 -0700 (PDT)
X-Received: by 10.112.169.34 with SMTP id ab2mr3591361lbc.23.1445516748832;
        Thu, 22 Oct 2015 05:25:48 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id cm6si113753wib.1.2015.10.22.05.25.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 05:25:48 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue103) with ESMTPSA (Nemesis) id 0MFRbQ-1ZlxA81Qii-00EM8I; Thu, 22 Oct
 2015 14:25:48 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] ide: Replace timeval with ktime_t
Date: Thu, 22 Oct 2015 14:25:47 +0200
Message-ID: <9825222.84loh1CGZJ@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CA+5yK5Fw8VKJorr5PoZbOwRkWVE-K7w0NDGaCr6APxT1nFBXXw@mail.gmail.com>
References: <20151022100014.GA13736@amitoj-Inspiron-3542> <6283563.jJXPJxPvGx@wuerfel> <CA+5yK5Fw8VKJorr5PoZbOwRkWVE-K7w0NDGaCr6APxT1nFBXXw@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:XQQ28f/adJmQTT95Q8lrUVd9rzCS/SuE39EH6NIa8JfcqjYgFSC
 f14HbaRcxeLBO/qEmaSMoaBrxSyXqr+A2zlFSGfxZozLBozc1dHwvaRu0QHEh6TbBLUOP4S
 iPrxtHP/xl/HPjAtNW4hcApsBMRXXPhpY/V8t1OftaHs4uCPbux5x4028d5G3mvHFADPuPi
 eCwnnM4QjzLNw38z+4h5g==
X-UI-Out-Filterresults: notjunk:1;V01:K0:TL0gPq6qlmk=:OjqNGgUwYfq5pILHvtImmR
 FIlNFtHUJztZXo6fAx1iNOfOICXvpJHHcpOQ3CAEgueoKZnC9Mtt0i7Rhd0k93OKA5hoMH9Xx
 2QPBfVS9pX/b2pBtGFvDw8wqGgs/ju/2qyZO/KfWlHrrUVn/4KLtVxVR8oO9HvN34Y7Ww7/7R
 e7CfGH7p/uZt72gGY6jAHyftjefArPz+T01iKuvSbdEeM4O7C4rwFL0aZaoI0B/Sh3n51ZIUR
 rOCepSaKz70wncPDLBWR3zvqQZdy5Dzr6tNM0yrOJf/lS7HKpEqrg3XgYVzaWe4nvNE33VUJd
 3c5sSa0URg3mXVNrSlT825EEKJsQs3Y7+BrnoB5OzKWJayWmcqcQTLmGJfF4xKtD3ixjjRr1z
 DTFaZQN0OFaaa971tkrcp5O5aXXy3WesYe11JZTbHGNlJ8vaiG9SSkx3ISd8T5eXSfXJlaLn+
 QLiuiBBSmILtgi8fxT0gKclBvonNjJrgmG/di1mWYyahLmFaumhaumTSMsnVPxCWQ8bDY7VPd
 gcAPbpfMXdybU8znjKYn8yu+K7pU8y+qPjBuktpX1XG5CB7KSq0NknmOteeGg0QScAhW7dCnC
 qe7Jc5VTfC2ZIVPLbaJ9cLTCSQ2VWfDexOdS83NWti3rlmZTw0wOy+iJtTB79abHERLzLVkeW
 3oCkCrMRR9jgJe96q7Kiman9mE77fprgkFH2ZkU098nUMaeEINQG3qWzz1jgxSW/Z7d+EZCrF
 76ucIXKFtKdF/42A

On Thursday 22 October 2015 17:53:34 Amitoj Kaur Chawla wrote:
> 
> > Please always add y2038@lists.linaro.org to Cc with these patches. If
> > you want to send more of the same, you can also subscribe to the list
> > at https://lists.linaro.org/mailman/listinfo/y2038.
> >
> 
> I thought that ccing would be done after your review. Should I do it
> from the first version only in the future?

The y2038 list is a bit special, I'd like you to Cc that one from the
start for all y2038 patches, but only Cc the maintainers after the
review.

The reason for that difference is that there are other people on the
y2038 list (outside of outreachy) that are also learning here, and
it is good if everyone can read and comment on everyone else's patches.

	Arnd

