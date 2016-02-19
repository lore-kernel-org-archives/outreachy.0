X-GM-THRID: 6251802816159940608
X-Received: by 10.28.47.140 with SMTP id v134mr963371wmv.3.1455869497704;
        Fri, 19 Feb 2016 00:11:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.158.148 with SMTP id h142ls103319wme.12.canary; Fri, 19 Feb
 2016 00:11:37 -0800 (PST)
X-Received: by 10.28.30.147 with SMTP id e141mr967252wme.0.1455869497051;
        Fri, 19 Feb 2016 00:11:37 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.75])
        by gmr-mx.google.com with ESMTPS id e130si307067wme.2.2016.02.19.00.11.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 00:11:37 -0800 (PST)
Received-SPF: neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.75;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([78.42.132.4]) by mrelayeu.kundenserver.de
 (mreue104) with ESMTPSA (Nemesis) id 0MS2e2-1aPU6E1Ass-00THcm; Fri, 19 Feb
 2016 09:11:36 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Alison Schofield <amsfield22@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: wilc1000: host_interface: remove unused semaphores
Date: Fri, 19 Feb 2016 09:11:35 +0100
Message-ID: <4510768.RHHeBtvDZW@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20160219064551.GB2364@d830.WORKGROUP>
References: <cover.1455609607.git.amsfield22@gmail.com> <4981983.aWxGuik0IG@wuerfel> <20160219064551.GB2364@d830.WORKGROUP>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:Z4dqlPLcJ6A44IXYex7BbAKSaWIaRnmbnB93rzR1OZuYDNjggQi
 ac76mzrLYx71WOgJc0X/2kR8+AW0PdG61X6wj/R1THwUCMPF5tTrlVJgGjofyXLoc9a7wQA
 U6sRhNk2jTOc5YtiMTTkVtHtLvJ/yV4zx6TFgSXITrpik7mUn+Ir7b8CSOeiJ6saHpo5lBR
 gtbHJ+mGCGuhp6Mf77JMQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:a6DqC96TonM=:pd9XRVoZZN6cp/F2njm16H
 bsvN1PKA276QeMIMEDCIAtVWmXnpBwfL6iR3KyxGb3fsUhvZ4az+8wuN4BUxtbupcxFOeC+7y
 F9XZsO2Pzz5lRoFup9DIWideLbWG6zcvckbw9UWUILGZIgMitTYZMOe14xNIW8XkxFRBL2mO4
 2OHI9MAHswBgmKGyDrCBIuVlJGKeguGqR9H/2KBUNy8UxUXN6+ZmOo4sgz9ZKzF7HG8bWgRPP
 eW9ynlPwFqJeJ6iMuFPM0w05cuk7CfSlve0WLzNwN8my5ukR2T1B414ccibGKY9IynuJ3i+PI
 Xy7zwvXcTsp6cuuFuDcUheStIasEWGoe9ReDRt53eJ1NVkl7k9KHhXC12cblhrPwPQm/HKfSM
 5ypYOs3rN69m1EkGTT3eyqiJCRyCB6jSlwNFMxUaW73WB/fTRedIKWyvh+s3jiW3EmVlcTl79
 lyFojGpgOTmi3xVy6Ow9yI8kKZiM0jf/5RT5IWRg/cJ/kyQJtOEpqlIyY16XQms5IIUBAgQdC
 N/OFqUhuAEhf3AL0jAjtPVATQxZi0Lg24pBMAjp8SzH1N2bgnLYTD8S0/zF7oKEDXxj6Ksx/e
 5p26AOaBbV2/K8CV+/GN5Pu9wiezUb3vbr8vv16PqpHolaQSRmOPnX65SIq/QzqTmbGx4bnGn
 Y/eZF5hZGFhOwtGeScd9ZKT37CmAOQSksK4zhj1u5BCsu6z9DN/DU7bLeG0SSY/HPjzx/h0vi
 QJ82FYzVwCjwGO8D

On Thursday 18 February 2016 22:45:53 Alison Schofield wrote:
> On Tue, Feb 16, 2016 at 09:33:38AM +0100, Arnd Bergmann wrote:
> > On Tuesday 16 February 2016 00:30:35 Alison Schofield wrote:
> > > Remove unused semaphore declarations, initializations, and unlocks.
> > > 
> > > The functions that locked these semaphores were previously removed,
> > > so this cleans up the remains.
> > > 
> > > Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> > > 
> > 
> > Nice!
> > 
> > Reviewed-by: Arnd Bergmann <arnd@arndb.de>
> 
> I'm wondering if I should have cleaned this area up more. I was 
> cleaning up the semaphores because the functions that locked those
> HOST_IF_MSG's has been removed.  However, the "handlers" for these 
> returned HOST_IF_MSG's still exist, as does the case in the 
> hostIFthread() switch.
> 
> They seem like artifacts, but then again, they could be needed for
> some pass-thru mode.
> 
> Leave it, clean it, or seek more info?

Maybe do one patch, and Cc the maintainers on that patch. From looking
at the history, I'm quite sure that this is also dead code.

My understanding is that this was originally part of an operating-system
independent library abstraction for a larger set of devices. The driver
is being stripped down to only support Linux and only a couple
of devices, and that has left tons of code that is never called.

	Arnd

