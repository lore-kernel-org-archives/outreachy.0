X-GM-THRID: 6252116177284235264
X-Received: by 10.112.17.37 with SMTP id l5mr317791lbd.21.1455720377178;
        Wed, 17 Feb 2016 06:46:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.156.81 with SMTP id f78ls975951lfe.9.gmail; Wed, 17 Feb
 2016 06:46:15 -0800 (PST)
X-Received: by 10.112.16.34 with SMTP id c2mr322559lbd.19.1455720375446;
        Wed, 17 Feb 2016 06:46:15 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id e130si1005991wme.2.2016.02.17.06.46.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 06:46:15 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([78.42.132.4]) by mrelayeu.kundenserver.de
 (mreue001) with ESMTPSA (Nemesis) id 0MMKJ3-1abqep2B01-007zTc; Wed, 17 Feb
 2016 15:46:14 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v4] staging: wilc1000: Return correct error codes
Date: Wed, 17 Feb 2016 15:46:14 +0100
Message-ID: <3370869.Oc4nF81h8Y@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20160217144202.GA2860@amitoj-Inspiron-3542>
References: <20160217144202.GA2860@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:ULnhs+L2wIqOTOw1H2OsekXNEKaxBCVqXSi5f/bPi8FPnabRhg3
 CmWx1hhIcAgESf+AmEiQgr4+yCAiddMecIdMiVsw/rXsl40YzO2rBS3m5X573uCO1NCtUpy
 Fp0wnv8I37E/eX1Zw4m1AIZW8LF2vmJwZd59oKoREP6vWeha5l3IhbV4CXx9kz6EmPG25vH
 +IB0uDl7ADFv8drqY9UVw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:O4pa/sTsY2Y=:mLlDmbuUfhUtoShRYk6Gj6
 fXifkaKTRt7z3JKyDANOVZnemoONmR9gFjUksoAJJhJblVcMnm6Op9nRpIz5jmy//Ai/JhzEz
 ktc2wIDT0lO4TP80VnLFfL+3l0KGf907mOBc1vkzI67zTt6qQqqASR9+88BajkL15ztdkpifn
 VGNQAXsqgy8cGOTw2LTa+jcLPhG7V3AjaVieP05fyjsM+le3O+TKt5e5fyyH4iPUR/GUBrYn9
 fa2ikFQtDQI9ALoYfefPiwAHLp9tzHwPqN4OLDp8wx/zTi6/KuWz7bd2icIJySfHXBX6qzXA4
 TfnNrnGFNCLdKqaTogPiEddwQ+jqlFgoIiGL1KeqqVTUYn3Cc4fkNyErAQ3aoVkHqkQKIeSvX
 YmLxXCEBpf+7aAwCaunjxsupGxZMxSRwkTbsIFVfW2h6KyRIzIh+LFfctrLVUdDs0Nbairh1w
 4KzBotcwHnaiv4SR3PJx9ho+sOJ+qNAm4KEhgFQGkwHZ8Xt3vjZbkO5lPZZBlYPkEIhTkaz6t
 EyvvwBmD5/Q9dNBk6DsxV5dBEns/Tkj36DhULIcVpv8KLoHFuAi5HzGwK+BARTky7mvY8Qv7B
 8E1Pti9Uv7lXaHf2p7GFxMwccU96yyDxdDKpYVibyVKvBY4lPNiOS+oNmn0yG+O4p1UTk0lFU
 ngjrmUMS9L75r9d0lVQvgzwxxxB3kN5CYAZ7NER2wnwi4lEexYSIZbRTx3EfkfflmoPm7PPki
 xBhN8e6pQE+lzNT+

On Wednesday 17 February 2016 20:12:02 Amitoj Kaur Chawla wrote:
> This change has been made with the goal that kernel functions should
> return something more descriptive than -1 on failure.
> 
> The return value of alloc_etherdev on failure should return a -ENOMEM
> and not a -1. This was found using Coccinelle. A simplified version of
> the semantic patch used is:
> 
> //<smpl>
> @@
> expression *e;
> identifier l1;
> @@
> 
> e = alloc_etherdev(...);
> if (e == NULL) {
> ...
> return -1
> + -ENOMEM
> ;
> }
> //</smpl
> 
> Furthermore, introduced `ret` variable to store and return the corresponding
> error code returned by register_netdev on failure.
> 
> The two call sites store the return value in a variable which only
> checks that the value is non-zero, hence no change is required at
> the call sites.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> 

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

