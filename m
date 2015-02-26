X-GM-THRID: 3919989178368
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,aa4591b8c94b67e5
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.8.67 with SMTP id p3mr3969312wia.7.1424981253678;
        Thu, 26 Feb 2015 12:07:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.164.193 with SMTP id ys1ls87597lab.39.gmail; Thu, 26 Feb
 2015 12:07:32 -0800 (PST)
X-Received: by 10.112.167.98 with SMTP id zn2mr1535733lbb.6.1424981252450;
        Thu, 26 Feb 2015 12:07:32 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id l8si24996wia.0.2015.02.26.12.07.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 12:07:32 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.17.10;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue101) with ESMTPSA (Nemesis) id 0MXYog-1Y3Iwv432E-00WVf6; Thu, 26 Feb
 2015 21:07:32 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: ft1000: ft1000-pcmcia: Fix line over 80 characters
Date: Thu, 26 Feb 2015 21:07:31 +0100
Message-ID: <5866014.ciRG3ir031@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1424980060-13121-1-git-send-email-yeliztaneroglu@gmail.com>
References: <1424980060-13121-1-git-send-email-yeliztaneroglu@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:a62foDYUx5JTLLUNbL/SoLfQ8CPlIAoizhyOSdEKNhn+qh/LuHj
 ho2CLWYpWyXIdJdYw9lJM0Nu4G8iE8rl7bQ+mluuS+iDdEULA89uVIuj9/Qi7xBDrjF1JxP
 Wpxomy3oscZq3QW2uamjwl4Ldg1DcSqPG16qXspioaaS4spW752Nfs6xQmPy6NzeSe0YcG4
 bg/3wl+MKoEmv1eo91Lyw==
X-UI-Out-Filterresults: notjunk:1;

On Thursday 26 February 2015 21:47:40 Yeliz Taneroglu wrote:
>    License along with this program; if not, write to the
>    Free Software Foundation, Inc., 59 Temple Place -
>    Suite 330, Boston, MA 02111-1307, USA.
> -  -----------------------------------------------------------------------------*/
> +  ----------------------------------------------------------------------------*/
>  
> 

Better just drop the line, or convert the entire comment block into
standard format as documented in Documentation/CodingStyle.

Also, the address above is wrong because the FSF has moved. As the address
is not part of the license, just drop that paragraph like we did in a
lot of other files to avoid updating it in the future.

	Arnd

