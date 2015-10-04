X-GM-THRID: 6201390323940196352
X-Received: by 10.180.107.167 with SMTP id hd7mr1445163wib.6.1443988041210;
        Sun, 04 Oct 2015 12:47:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.159.212 with SMTP id i203ls405764lfe.61.gmail; Sun, 04 Oct
 2015 12:47:20 -0700 (PDT)
X-Received: by 10.112.158.202 with SMTP id ww10mr4610732lbb.13.1443988040561;
        Sun, 04 Oct 2015 12:47:20 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id q6si240909wif.2.2015.10.04.12.47.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 12:47:20 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue002) with ESMTPSA (Nemesis) id 0MaiO9-1a2QZQ2Hfd-00K95R; Sun, 04 Oct
 2015 21:47:17 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Greg KH <greg@kroah.com>
Cc: outreachy-kernel@googlegroups.com, Shraddha Barke <shraddha.6596@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: most: Use module_platform_driver
Date: Sun, 04 Oct 2015 21:47:16 +0200
Message-ID: <5205519.8Wzskdy2sz@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151004194144.GA23542@kroah.com>
References: <1443873690-30847-1-git-send-email-shraddha.6596@gmail.com> <6498111.CeIiP0D2Ox@wuerfel> <20151004194144.GA23542@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:R80F+qelLryJnzdQ/XQcAA/UIxBXFozmK5LW0w2LUGs0VaDsDpJ
 XmsN8QSNfhfVCIGyRNNa3cIlwfTjgKf0pXlmgwgSUn2XAN9ZuC9RRRiMHDe7NUHmlD6XKGP
 MP1EH6Oa3crrC9+RYk0JtM3OcsC3ltoia8s/BUEmSdcF0owYODHTR/idJc9ZbtAFHcfSdVI
 +ryoc2oW2sOOPkjRjmVTA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:APGFc7yihJw=:NUm4hT7tQe17Fx/9IHhXf9
 /EH2CPwa3PiODd08epwUfjoel1c8Ftjef2VqNuZDlOrlSbrnoTkMsLwgUCLKpwg58TfBSTS9F
 u8XY+/d2RtWV44TxSEuV+GvAnZ2zWi0qW71QNWIOM+5yfIlGD6bjmPqvmqCltmNLblK/Vbo5E
 m5dfabGprAC1I7M/zypdPoVktE3paCXHBGan1s20o2JmQFCHhzqWdWRzn1C8s5h+zC9RyRZKL
 XX9nmKz8Q+TVlM20JXLRLqC8NHEbkon+Zy0ng+jrJjrG9lTL/M6pUtImYQlHnU72+tOQ5e35I
 YZzJvxQ1GQhwpOLsI8SErN3uKKdzCLC12qDIyn2DT8TJRWQF4LcbW2Dnt6W+OAylgpuaYf2qf
 jF6JaJ6u4kf35kk7QTcYnrvq8NYEwPoh2YZhpm1i1tyqJidnaa5NAJUYoK2Y3mkCsIFzJnXtc
 q3fqzVueenUZ+mOZKTM5K0zzkMKPIRgaH2CCBvekZmgh61p70XQ/91esvVRhv1yt5GOszAXAv
 i2wEL6PYlTkr6ropMddH2MMpLyzPlR35mB4kj6weU43L+6euAahVjPsA98TRnz7Zu+EH+ugQh
 LqbSWQ5jREkOhFUvwpyLDJ3qUsnQRWlmIHTD+h3mdeGylOTMNmOVt6idISSoCOZBxeiDXgYaa
 pz+hN3HF6fBnlVSUCvJPnEC/qIyH58k1Vy9eHh6zu3ZXUpNB49zBqpxvCHei9cvWwtGIHfhmP
 LmcX32Wjax67L4BN

On Sunday 04 October 2015 20:41:44 Greg KH wrote:
> On Sun, Oct 04, 2015 at 09:30:50PM +0200, Arnd Bergmann wrote:
> > On Saturday 03 October 2015 17:31:30 Shraddha Barke wrote:
> > > 
> > > -/**
> > > - * dim2_hdm_init - Driver Registration Routine
> > > - */
> > > -static int __init dim2_hdm_init(void)
> > > -{
> > > -       pr_info("dim2_hdm_init()\n");
> > > -       return platform_driver_register(&dim2_driver);
> > > -}
> > > -
> > > 
> > 
> > Your changelog does not mention that you are removing the pr_info() lines
> > in the process of the conversion.
> > 
> > Removing those lines is a good idea, but that should better be done as
> > a separate patch upfront, possibly removing other debug statements
> > from the same driver as well.
> 
> No, this is how we converted all of the other drivers to this api a long
> time ago, no need to break it up into 2 patches.  This is also one of
> the main reasons to use this api, to keep things "quiet".
> 

Ok, fair enough. It's probably worth mentioning that in the changelog though.

	Arnd

