X-GM-THRID: 6201691543779147776
X-Received: by 10.112.147.7 with SMTP id tg7mr4570213lbb.16.1443984592983;
        Sun, 04 Oct 2015 11:49:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.104.73 with SMTP id gc9ls678219wib.27.canary; Sun, 04 Oct
 2015 11:49:52 -0700 (PDT)
X-Received: by 10.180.160.146 with SMTP id xk18mr1414047wib.3.1443984592635;
        Sun, 04 Oct 2015 11:49:52 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id hs5si254308wib.1.2015.10.04.11.49.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 11:49:52 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue004) with ESMTPSA (Nemesis) id 0MaX2T-1a2H9N0xI1-00K4wo; Sun, 04 Oct
 2015 20:49:52 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Julia Lawall <julia.lawall@lip6.fr>, Shraddha Barke <shraddha.6596@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/4] Staging: lustre: ptlrpc: pack_generic: Declare as static
Date: Sun, 04 Oct 2015 20:49:51 +0200
Message-ID: <4961545.42gziCoAn3@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <alpine.DEB.2.10.1510041840150.2672@hadrien>
References: <1443974958-5994-1-git-send-email-shraddha.6596@gmail.com> <1443974958-5994-4-git-send-email-shraddha.6596@gmail.com> <alpine.DEB.2.10.1510041840150.2672@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:lMNutIrXVje3wZlDstA4a0XX+82tTC8cfftGuf3Tj0CQCw0VryY
 H4fzbE4NYQuhW1uZ20DSTI+NvJl8wnIwYalfglMq80MLUNmsnZ+CE1rZ/ouhmBhAVbxwalk
 1Jkt20+5DlLfHVP+SAw8FgNvnC1hF3v0ZdFfF26bSE2HdOtlJysC8T+bNEYmT2KndkawReY
 TqEF2xt1wTwk9tQXRn9kw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:HLUYclyLbqM=:lpigi/9uPhRQNZq759h12r
 f18lCl4LaFD+nYtU6yw8AqkqHshV5fN8ikg0zGDXbTUYV1pi2Q9os5rYJxGvh/4sPsN7/9HpA
 +ixlAR83nyW9TrmOhpOga2K8GuHfKlbz6lKz1BYDk4QxU7xORb7TxWglHQNt/FMOvI2YbqvPL
 eY/t7y/qinTr1/j5CMt09cvuqsvd9uOBZfK2PFh69YqSTura0U16gWKto4lKK3sWYj2iqusoZ
 EmGsxoTY65vY97VJa+K+KZZTDljwdknEKfuo7xAVzYwGRDoPtCq7hTcgaVuWHMVh/i8gBYDYv
 HVstPMBVH95WgsTcV1uTrZNNVJMwFE7s/nkplDgRbW5pBqhdtUeNess7DnRSQs9WdKOBeyKob
 6Se23Htc7IVPeyLxx/CfZpqTeFRmsb3y3w/Y5I2Ld8V7k5XEQKeUrow5Mj+B+wvelUBtNrauh
 Xuh3dFCdVTbDqwr1f1lqHzoU3tW/Jrf95oIy+HV3nlBrkXIIZdKG1Fp7FJPtGP6+SyEekpm0h
 TnddwnfoW1vENQR/QMYqM4r08sI8PXue0Z9tISLocYpihJ4KIoswDtuSaziOkZ4kyANwfzYdI
 zqf96sYQ3aTX8LMSahr5ASlP8eZ+SMCexYptKjoMNKvN6hsc9pEa2Huoe/IZm2PBef+9prbcQ
 lUWZbCN3wNR9EiPmQgog2hASdWAXc7JvfaZ0Owi/pUK6uMT/nQDLTJupZiqIy5T8BIRpnASyd
 OEmquwzaBukY1Nx7

On Sunday 04 October 2015 18:41:32 Julia Lawall wrote:
> The subject is a bit confusing, because it is not clear what is being
> declared as static.  Actually, it looks like the whole file is being
> declared as static.  Maybe "declare local functions as static", to give a
> clearer idea of what is being done.
> 
> 

Agreed.

Aside from that, the four patches look good though, so with that change

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

