X-GM-THRID: 6210549354962354176
X-Received: by 10.112.173.170 with SMTP id bl10mr971656lbc.7.1446157255860;
        Thu, 29 Oct 2015 15:20:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.23.206 with SMTP id 197ls436635wmx.5.canary; Thu, 29 Oct
 2015 15:20:55 -0700 (PDT)
X-Received: by 10.28.145.213 with SMTP id t204mr1634706wmd.0.1446157251900;
        Thu, 29 Oct 2015 15:20:51 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id l1si346220wmb.1.2015.10.29.15.20.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 15:20:49 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue101) with ESMTPSA (Nemesis) id 0MMF5h-1Zr51Z1bVF-0085AD; Thu, 29 Oct
 2015 23:20:48 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Greg KH <gregkh@linuxfoundation.org>, Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: comedi: Use rwsemaphore
Date: Thu, 29 Oct 2015 23:20:46 +0100
Message-ID: <5132136.EW41hst8xX@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151028044625.GA6015@kroah.com>
References: <1446006196-6294-1-git-send-email-ksenija.stanojevic@gmail.com> <20151028044625.GA6015@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:jxh7w+XFR3z6Pv3QR1aljA2YVQOm66mj+SmVPdLgNDz48t3P5o5
 yxx1VaaErGdSucX/tk8UTZCsgXudCm/QZp56RtjmpZnb5t6MpMhERLcD4jidZyDah0MlL5Z
 7sNiyXaqsnyMTDPc7dIks0wvYwO42T0b0mv3z8KsIDTotP4KWOGZZx4Gs6LV/crtPbXU0F+
 nWIQGibMzNazxHPzxf+qw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:b0XBXwoy+DQ=:Mmi401rhZDNxdOkdm74Ul2
 HFayabr9h8ouIBEsrUiRXKQ9E3WA7rQy6z/OP7SZ3fFvhxRAXCMU2Mo9k2VWRho18fdzgBYjp
 NyAKak6cQXkM0SdJm6kzxtCi8QP+avk3wl5ZKFWdfYpnJX4fI0KdzOxl2TT5h6CHlShrXPmaB
 XafJG2arBAkhM5D+zmm/47R89EO1Y1NLF5fnOOaW5g6C+vAp9PhZnfGQfjTWPbnWbHg6OZjMr
 bzYiP45c+JCdEIVaeqWc7f7Pl5cxH2srJt71uoDKrxzJcoI9aaxshcNPqVkFewefaHVTJ20Mi
 OCJ8llSySzp0cLh/Gtqog3oLfGcN6DnFAeyWtCpYgJLxLa88kxejAmLrpNjoA8qMkJ1b6wmtw
 moNMaO9geWl/+GUo1nNLRUBikXifUo2503xnb1c4MdR/HqP3y7+OIiE3DG6PI7/Gqt6IHa9ya
 rgQVeH1hAiQLQfpYnco4dCPcPhus/dPQTIdVlSNAS1bjI8SltdSJLZZomkCPsGBe2Bccot9bs
 NRSJ/Nxk776wiFdwd5NGN82pRh8+JeXOz8nKSm+aWKFtzVKb06ZIUAO7wxrOLv5vN4LhnG+8V
 qkkLc9isZQoWXTLpmTckXZO9mLhmDqgtlZYqV2Eyi55kURtbbH4HllbUK+ohHnc8KBtcfKvgV
 f2vWFYS97RbYEeXH6S40tJxGDHlRk73+nLIrY5qw1ledrLI7hiHBuVeYTjHmh10T2JxvpkXbF
 WAZExf5HBMqYCzcH

On Wednesday 28 October 2015 13:46:25 Greg KH wrote:
> On Tue, Oct 27, 2015 at 09:23:16PM -0700, Ksenija Stanojevic wrote:
> > Functions that use semaphore for locking are divided into read/write
> > functions, so use locking mechanism that provides similar semantics.
> > 
> > Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> 
> Unless you can measure the speed differences by switching to such a
> lock, never switch to such a lock as they are much more complex and can
> actually cause things to go _slower_.
> 
> So I can't take this patch unless you have measureable benchmark
> numbers.
> 

Agreed. However, changing this driver to use 'struct mutex' would
be an obvious improvement and should be safe as far as I can tell.

	Arnd

