X-GM-THRID: 3765738405888
X-Received: by 10.182.148.164 with SMTP id tt4mr7487533obb.30.1424958353358;
        Thu, 26 Feb 2015 05:45:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.92.227 with SMTP id b90ls124604qge.49.gmail; Thu, 26 Feb
 2015 05:45:53 -0800 (PST)
X-Received: by 10.140.231.139 with SMTP id b133mr7980819qhc.1.1424958353110;
        Thu, 26 Feb 2015 05:45:53 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id mg3si1695625igb.0.2015.02.26.05.45.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 05:45:53 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.17.10;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue104) with ESMTPSA (Nemesis) id 0LylIV-1XU31k0aYh-0165pR; Thu, 26 Feb
 2015 14:45:51 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Vatika Harlalka <vatikaharlalka@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Replace if-else block with switch-case
Date: Thu, 26 Feb 2015 14:45:50 +0100
Message-ID: <3595776.j8hUQKWrrN@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20150226124402.GA21558@gmail.com>
References: <20150226124402.GA21558@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:QsrsrUZB49HMUuMBPi7LjOPku2zuJbMejiVPlKrCAFCLWpTjisl
 5MAumZzGrGUwvdpfZH9xaTHxIS4GTyNuDlnpiJG2isLtbESk3NfBC7UcXFq6vem9r3WdcDv
 +qZC9Z6MiTEnjTsPERFDrWnS+TwybiFs7Lllrdi0CM4nkXBduEeVYQC1aB1Uk7BwrLCBev/
 74GRMWxIH9a0w2mvCDu/A==
X-UI-Out-Filterresults: notjunk:1;

On Thursday 26 February 2015 18:14:02 Vatika Harlalka wrote:
> Replace if-else block with switch-case to make it more compact
> and increase readability.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> 

Acked-by: Arnd Bergmann <arnd@arndb.de>

