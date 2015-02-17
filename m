X-GM-THRID: 160604094464
X-Received: by 10.182.24.97 with SMTP id t1mr16260372obf.46.1424200979951;
        Tue, 17 Feb 2015 11:22:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.170.81 with SMTP id t78ls1451813ioe.21.gmail; Tue, 17 Feb
 2015 11:22:59 -0800 (PST)
X-Received: by 10.42.62.19 with SMTP id w19mr10722351ich.30.1424200979773;
        Tue, 17 Feb 2015 11:22:59 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id nt6si1153111igb.2.2015.02.17.11.22.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 11:22:59 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.17.10;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue103) with ESMTPSA (Nemesis) id 0MZwSd-1Y8kes1Rap-00LqsT; Tue, 17 Feb
 2015 20:22:57 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Jes Sorensen <jes.sorensen@gmail.com>, Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: fix spacing errors
Date: Tue, 17 Feb 2015 20:22:56 +0100
Message-ID: <29889867.SyN9ErTGdA@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <54E393A7.3030402@gmail.com>
References: <20150217174851.GA7053@localhost.localdomain> <54E393A7.3030402@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:d23rc1redMjkN8sqw52NCGcyLRRuwxValYRr1sKic6sKb/448nM
 lxH5nfmcugO9J6p9YFZBqLvvk1D/oXUCiFmYiPE4AxuFAiV8R15g0Fb0x0xLvdie5Rb721/
 xjwKDF2amUGQvycSMI+TrEPAvu2c5CbO0Rh5aJJU7OJPI3poZuHheCptboI73wEp73zUwLY
 3m6j/YIuTWDj09ZvFwELw==
X-UI-Out-Filterresults: notjunk:1;

On Tuesday 17 February 2015 14:16:55 Jes Sorensen wrote:
> On 02/17/15 12:48, Aya Mahfouz wrote:
> > This patch fixes the following checkpatch.pl errors for
> > the file fb_bd663474.c:
> > 
> > ERROR: space prohibited before that close parenthesis ')'
> > ERROR: space prohibited after that open parenthesis '('
> > ERROR: space required after that ','
> > 
> > Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> > ---
> > v1: I know that typically one patch should fix one type of
> > checkpatch.pl error/warning but given that they are all 
> > spacing issues, I merged them into one patch.
> > 
> >  drivers/staging/fbtft/fb_bd663474.c | 100 ++++++++++++++++++------------------
> >  1 file changed, 50 insertions(+), 50 deletions(-)
> 
> The patch looks good - your reasoning for merging the patch is sound too
> since you would otherwise have to modify the same lines 2-3 times.
> 
> The only issue is that you shouldn't put comments below the
> signed-off-by line. The comment you added about merging the 3 rounds of
> changes into one is valid, but I would do that in a cover letter, if you
> don't feel that is relevant to go into the commit message.
> Using '--cover-letter' with git format-patch will generate that for you.

I usually recommend doing it exactly the way that Aya does here
when there is only one email, but use a cover letter only when
there are multiple patches in a series to which that comment applies.

	Arnd

