X-GM-THRID: 6206160535830921216
X-Received: by 10.112.150.229 with SMTP id ul5mr5850070lbb.2.1445173928075;
        Sun, 18 Oct 2015 06:12:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.15.106 with SMTP id e103ls261199lfi.14.gmail; Sun, 18 Oct
 2015 06:12:07 -0700 (PDT)
X-Received: by 10.112.147.7 with SMTP id tg7mr5847694lbb.16.1445173927534;
        Sun, 18 Oct 2015 06:12:07 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id m4si354320wib.0.2015.10.18.06.12.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 06:12:07 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue104) with ESMTPSA (Nemesis) id 0MNLx3-1Zu6M33Yi1-006sru; Sun, 18 Oct
 2015 15:12:06 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: lustre: lpoc_osc: Change the variable to be checked
Date: Sun, 18 Oct 2015 15:12:06 +0200
Message-ID: <17155772.EFqutzHQyx@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CAKHNQQGC4LAGrQ2Z-A_TBVu9NhXE_uXpiQCBb-exKbuLMYHGMw@mail.gmail.com>
References: <20151016083218.GA2815@ubuntu> <11015695.tbMmBsISvl@wuerfel> <CAKHNQQGC4LAGrQ2Z-A_TBVu9NhXE_uXpiQCBb-exKbuLMYHGMw@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:5YYnbajxrKWAW05YHO0sVEtFdcgiVWP1LtG/cp1cPFwhLnDWrL+
 J0g9ofknyx1hwmDJZ83WJ6uZlZmxniZJvedLkRYm9TMFMMuVQcGAnIaFezqVdHzgb/p04YQ
 EgsfGrAbpUOPmn0Ff+J8cWZqM6btjHscbAkugc8TqtbxUVJs/w5CN5RNM8AUwX1G3tybIK8
 FEtIGE/m5sfKU3W6Jk88w==
X-UI-Out-Filterresults: notjunk:1;V01:K0:/RtpVTLskCA=:bdMs+PXFiUG+nbuRTjuekF
 3u3VKMsgkdmPjcr9U7g7RqVs8HPHAzVG/H7FuoOAY0HhJE9IQc/eD9Eaj/GbmtKpL3nz2UjYx
 5iuFmUseW/AxR3EDqEPSC4Tn5RqMOJ4ZeRTaOgXIkTM4Q/88oFtgucA5b6CB/bdxylkKZ8RsG
 iwgRb/jmkS5VaVy6qN9G3z6YrLT2hWXPGKKy9uze1AVU9zpAZwGEqPM5bA9o6INemQEgIjheb
 nw0JRW1wchuG0aa6dCSf5YnV+Pa8sBOq4XQSMXUQaUNn1cznTzClbbrPAgZIvkgw8eR6rbx8a
 uDKuKrvSoo+k+8Nq4MLwxOP/NgJaC2pqX+8FHBBFVHlI0ImSwHFpwhCs7oH2l6CqUie1XuSBa
 oO5n79kuoa8CwrkgEp+WfPqG1SBepbN8i20fPHlOx5VJTUufwPxn6AtyPaZc88TbuIV4GPc6r
 3MQlIdmsp3sT8m0kUSgZUxLmt/+r5o+VoAQvHvnOv2s+uvkyf5eG4HttJSuChSGXShmO4mmvX
 w9H6yaVbPkt+vHDTwqBwGlpeAXlenIOu89uw8xIG+LJ/2kSnGdw6Db28Kgt4/KWn3rgIDFAQo
 tvybc79mrnv2tWMmU91f3HP9g4fS1Qyghl+QuBX9G8irx6nCP7ac/Xdhf0KDvTIZS2VQsQOOA
 u9KTRFIOfvZX3iNibnQu/iPsQFIh7cvNSJ8vKRitBdU7JyDUZnRsSLtPIIcl7DLUAQJbe5hp5
 imubgzBuf+VThL+U

On Sunday 18 October 2015 18:32:06 Shivani Bhardwaj wrote:
> On Sun, Oct 18, 2015 at 6:24 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> > On Sunday 18 October 2015 16:01:48 Shivani Bhardwaj wrote:
> >> Hi Arnd! I still have a doubt.
> >> if (rc)
> >>      return rc;
> >>
> >> still doesn't make any sense, right?
> >
> > I don't understand what you mean.
> >
> >> On Fri, Oct 16, 2015 at 4:32 PM, Shivani Bhardwaj <shivanib134@gmail.com> wrote:
> >> > On Fri, Oct 16, 2015 at 3:25 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> >> >>>
> >> >>> This means it is never going to throw out of range error?
> >> >>> If that is the case why do we take the variable val as unsigned long?
> >> >>> It can be typecasted in the function kstrtoul. We can take it as
> >> >>> simple int. And still
> >> >>> if (rc)
> >> >>>      return rc;
> >> >>>
> >> >>> statement is never going to be valid, is it?
> >> >>
> >> >> A used may still write "aardvark" into the file, which would return
> >> >> -EINVAL, and writing 999999999999999999 would return -ERANGE.
> >
> > Anything wrong with my explanation here?
> >
> >         Arnd
> 
> According to your explanation, -EINVAL or -ERANGE if failure or 0 if success.
> if(rc)     ->   if rc happens to be true which means >0.
> This is never going to happen. Right?

No. 'if (rc)' means 'if (rc != 0)', so the condition is also true when rc<0.

	Arnd

