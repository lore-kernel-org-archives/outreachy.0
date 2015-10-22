X-GM-THRID: 6208399403783290880
X-Received: by 10.112.173.170 with SMTP id bl10mr3480860lbc.7.1445509869454;
        Thu, 22 Oct 2015 03:31:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.82.3 with SMTP id g3ls334142lfb.10.gmail; Thu, 22 Oct 2015
 03:31:08 -0700 (PDT)
X-Received: by 10.112.54.197 with SMTP id l5mr3448967lbp.21.1445509868894;
        Thu, 22 Oct 2015 03:31:08 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id hc2si487969wib.3.2015.10.22.03.31.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 03:31:08 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue002) with ESMTPSA (Nemesis) id 0MLWss-1Zpl741alO-000YOZ; Thu, 22 Oct
 2015 12:31:04 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Shraddha Barke <shraddha.6596@gmail.com>, devel@driverdev.osuosl.org
Subject: Re: [Outreachy kernel] [PATCH 0/2] Staging: lustre: Remove unused functions
Date: Thu, 22 Oct 2015 12:31:03 +0200
Message-ID: <3775464.sOJsegMime@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <alpine.DEB.2.11.1510221514420.31987@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1445505620-10350-1-git-send-email-shraddha.6596@gmail.com> <5359017.vBRWqNddLo@wuerfel> <alpine.DEB.2.11.1510221514420.31987@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:1I7a12f3IJSGr/TeN0XatgsujyH1OO/ObSlH0wb/CpXTxYtZldN
 jhpTvXrbSOpgoYpfKgsUVt/c++4M5DDqrqK07RgenrAS4+Dn0rE0Xv9+cRAjLgNdFKdLzpW
 oIBBLlwAC1n5rbazYjfAGtWgbIK/vzTPvhIlE0FlGlgs9xfLzYj908UmvjxRwJqYou/7Cxi
 h3KH4eawArgFHe28gYPLQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:m1Iz4g84Mko=:/EYJkgAFXhe4QGKVtbEMfd
 fROqyJ/LcVS9cz2Cc8eaOa09oQTtRIeXtk4PdTtWErhe6+04ThhvVV+L8PENdaRmZAF2F1HG2
 F5pjQF7w3YhhxjkQ1ayZR14yGrjYxwXb9KDaLhvtq2tWrW+Hp2S6JuB0WFXIk2lZcpgGNqsCc
 Rynp+ofaHJra/W5xb4odw6c2Ku2FzxAoBYjsGkq2bfMxjB+M+c4D/CVVfKEkWZEQ3baLJ+vGA
 sRbgZnf/9PA7Y08svcJUWfQYiXmR//if570cpCR10CGgThksRSxVDBrUmcQO4hL86VPCbxkBQ
 +9kbDxFBmWUCcg+VkvLLnu/KOyCKy8dW1uu15LVijg0dC5JUiP+0J1voA16H5If1Ctd0ukJfK
 sJH5jRfDH55jZhayTC5wjiRgV4d5iFHqmXPY/6cdEabFvcdpHTnB1KllUgENAoV478exi7ZAU
 TjV8mcwsg44hcBSl4X1A492Smzer51rYGmGOtbz+YHW25NVKsc6eyYrfGl+DANJmpi+8+PN+D
 nq4uz5JKesQHc2zBFADNuhFkxDjdqmiLxnv+5lrIfkMkL0anGyCXQJ4/o9zU194UN+/mpFwzX
 vpPlYb+tw5W4nobNAN5EEDn56lSeh6QWIuVfEDvvxh3wYDbvhHU1DfjwWpKv5aRVTws4X0wYr
 B4fBcTUPL0e5aZADQem29UN8oYC2JMhebw6XlUSKW1IbQocEtdU06YkGLmoFM9yCYPNC/zm2L
 Mq8EBq2KTm7mIxoZ

On Thursday 22 October 2015 15:16:39 Shraddha Barke wrote:
> On Thu, 22 Oct 2015, Arnd Bergmann wrote:
> 
> > On Thursday 22 October 2015 14:50:18 Shraddha Barke wrote:
> >> These patches remove the definitions of functions which are not used.
> >>
> >> Shraddha Barke (2):
> >>   Staging: lustre: ptlrpc: Remove unused functions
> >>   Staging: lustre: obdclass: Remove unused functions
> >>
> >>  .../lustre/lustre/obdclass/lprocfs_status.c        | 139 ---------------------
> >>  .../staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c    |  63 ----------
> >>  2 files changed, 202 deletions(-)
> >>
> >>
> >
> > How did you check that they are indeed unused? I suspect these two patches
> > are wrong.
> 
> I grepped for the uses of these functions. When I did make 
> M=drivers/staging/lustre, I didn't get errors. What am I missing here?

I see now that you did not remove the declarations from the header files.
Please remove those and try again. Alternatively, you should see link-time
errors when you try to do 'make' without the listing directory.

	Arnd

