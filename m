X-GM-THRID: 6208217817238470656
X-Received: by 10.112.55.2 with SMTP id n2mr1624891lbp.9.1446734604606;
        Thu, 05 Nov 2015 06:43:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.30.197 with SMTP id e188ls255003lfe.35.gmail; Thu, 05 Nov
 2015 06:43:23 -0800 (PST)
X-Received: by 10.112.149.7 with SMTP id tw7mr1598341lbb.10.1446734603882;
        Thu, 05 Nov 2015 06:43:23 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id 13si1074410wml.2.2015.11.05.06.43.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Nov 2015 06:43:23 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue003) with ESMTPSA (Nemesis) id 0LcCDx-1aLgEe2hnh-00jcSs; Thu, 05 Nov
 2015 15:43:21 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: Stefan Richter <stefanr@s5r6.in-berlin.de>
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>, outreachy-kernel@googlegroups.com, linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org, y2038@lists.linaro.org
Subject: Re: [Outreachy kernel] [PATCH v2] firewire: Replace timeval with timespec64
Date: Thu, 05 Nov 2015 15:43:20 +0100
Message-ID: <60126456.tuWtDFJgLx@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151105143448.302d85e9@kant>
References: <20151021223500.GA26701@amitoj-Inspiron-3542> <7551827.VsyUKdOpMQ@wuerfel> <20151105143448.302d85e9@kant>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:L6MlPke2VBsBvh/y69xa+MeZjsCV4Uj3g/DwiBTSst6YIxYOB6T
 SRdE+QCBU7K4rCqccdQuEoUc3r8AnaGE/nfXji20or3DFOTqvpmjl7S1vQ4iLDGfnBI4Vl7
 P+s61J10dU9cM2QAtOrisQhQLQ36Ne+UP8Cgp7Apc0OqMfkn64n1SfkNo47Nui+qYuSkUCu
 xPzCWodnJ2tOAwSxm0DZA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:+AmL33G1z9o=:n1wVnxgQwDzXR5DGeQwYuf
 9sO5MiHVnhpSj91sZo8wSiBvThC5gIZBsTL7lbSSpED20PxpPgdRUcJaCKe8RbwmxVo50c9jr
 7saitBQ0Ah3FtZ+3cQuW0pm0qkwRGZ830YRCh51vv/b6AQllSMFjN2kMLaEs5j0AU94+5dX7J
 53hpaPxJRcS4JbHc9XMqWo060Qead+6HmVXYZp643sjsZdphaGOPBwdkYOrKHuusEmzT07+UH
 fxTGnTHLCVCVFSAxvqC5hzNKiiFkjHir0nXo2Eiap3Wn1gA0rUUTLnpjQaywbZToq3sFfxPr3
 0z7a8teZ7gLiZ49UIIkDEMxABdG074RT6FfIDzPP0JrcDAr3nIgarkDhMxQ1RjSFPRZWelflt
 1tMhjVYxuIZ3bTf6XBgl4rSJNRFrlOvQ494jrVuaklXz94zBmgni7scDTtpil5zMsWUeBMuog
 WUFlIqr8YAt88NDBSXwo1wKwUNK7BiFAVRXOXVjDUlk9ZPQbmuOylNMFLt3fAp5tFdUS38A3L
 y3ll3T01g/WwqTh3/SgDQnrzd/lmgOkI06pZ/xxyXNLfPVVXRGizysS3dbU6grPRdHHe3yWFS
 w5NTamjPbdnQuZlH99T/BylMe3rX7m0aJoLtXlX7KHgpidTvYmIFbtwu/vN2Dmb+yjCta7cHv
 tk3/SWFXrAeI+61QGk1sjiy8anUWyHTC6aiOOypndYO/BxrukcjGeVN7htVc2xbh5JWg+OU+X
 bRrvmJ6gWUZdrlNx

On Thursday 05 November 2015 14:34:48 Stefan Richter wrote:
> On Oct 22 Arnd Bergmann wrote:
> > On Thursday 22 October 2015 04:05:00 Amitoj Kaur Chawla wrote:
> > > 32 bit systems using 'struct timeval' will break in the year 2038, so
> > > we replace the code appropriately. However, this driver is not broken
> > > in 2038 since we are using only the microseconds portion of the
> > > current time.
> > > 
> > > This patch replaces timeval with timespec64.
> > > 
> > > Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> > 
> > Reviewed-by: Arnd Bergmann <arnd@arndb.de>
> > 
> > (adding the y2038 mailing list as well)
> 
> Committed to linux1394.git.
> Arnd, do you have special y2038 plans that make it desirable to have this
> merged before v4.4?  Otherwise I would submit it for v4.5-rc1.

4.5-rc1 is fine.

	Arnd

