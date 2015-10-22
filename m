X-GM-THRID: 6208281535303385088
X-Received: by 10.180.35.132 with SMTP id h4mr8052704wij.5.1445504697741;
        Thu, 22 Oct 2015 02:04:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.16.40 with SMTP id f40ls310796lfi.59.gmail; Thu, 22 Oct
 2015 02:04:57 -0700 (PDT)
X-Received: by 10.112.173.170 with SMTP id bl10mr3377491lbc.7.1445504697075;
        Thu, 22 Oct 2015 02:04:57 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id d7si471116wiy.2.2015.10.22.02.04.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 02:04:57 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue102) with ESMTPSA (Nemesis) id 0MLgGJ-1Zq0sm2I7P-000pX9; Thu, 22 Oct
 2015 11:04:55 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Deepa Dinamani <deepa.kernel@gmail.com>, Marek Belisko <marek.belisko@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: ft1000: remove obsolete driver
Date: Thu, 22 Oct 2015 11:04:55 +0200
Message-ID: <3745748.XKTVPgGKoG@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1445478157-26453-1-git-send-email-deepa.kernel@gmail.com>
References: <1445478157-26453-1-git-send-email-deepa.kernel@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:W7eYjMzD4kN4BGgskswl7HLBs7K3egyfn9YTyR1DYIKI38RS6og
 e9xqHzjp5IuJno+DMheVj+XLyp42KdiHEWpGC4UpdiaZaVPF8j2zvxN70ZEkJUAm5o7Rkhe
 EeG/XkVwh97xQe0gB4+yB++zKNrKqlw9duEzqqeQYwDy4r5JjRu5x2gNvfCM2284XJJC2Cf
 fRSVcV+52+TB2itHnES0w==
X-UI-Out-Filterresults: notjunk:1;V01:K0:wsZoSK4MLxU=:asYQFwGZce2e7dZMiROkWK
 wsVD4mYr7X8E9ThHEAVYOqNZW+QiGynL0Qe2ypUpN/66ImgeXrhkCRfrrox8KoxheltQ9H9Nz
 vRVl7SGc4Yq5FWTyROApfwBqzXYxgvytbo8O9obv4xlVgKoSEFXnskZlyYNVKZJ5/syetFJ6b
 XMHv5wWejbr/1vtN5CtJQJf047hUdVTtODLKbmOyCOHTRiLM1xL6RIooRLixUWs5jPyLAFG9Q
 JeF1f0mvWwuJw1qFYgHHxq7dNsGHNKRRLL4RybarylzwsC8z/y06FTuz6XLPR2oMRzoWHjwos
 fiH7sjZuKyrz0VkoVt0VmN/ovdCCRCkaQeCQ7PoQw+X24uvh2/ai4TKQ4FCysueXbF4VXWPOo
 CQ5F3XAXz6vTXE+fXWx8RAg1kDhl3CJqUFCyncHUqU433rEmFh2iViHYwsYuF7boaCRN20Ecf
 Vulw2VbPD3O92WxgyS2c3yVFwxlhcrY75IQRO8w8cI9561lqdugt9b+GM7pD7MAZerjzkXyQ+
 XL7c9kJBODUgqA3lEfWAaoSFWW8Abq69+YAgv4t8Ecbg59F45oFcxubyuBBYGd89K5NhbpyKR
 DOR9eH3ksZK5/M9b7efN/JXxwLnGef3g6/+j7SVaeEIGT4zf/9WM86i8KjnxxLsdqdDYb0zLR
 fjll3qm6O3Prki5OzXK0qjIt1n4sboe5+owFawrM090SfXAS0OHF6I1TJ/VkzMgzlE5nXGHlp
 Z6/8Jq1hYuhxwSI9

On Wednesday 21 October 2015 18:42:37 Deepa Dinamani wrote:
> Remove support for Qleadtek Flash-OFDM modems. Telecom carrier is
> discontinuing service for the radio technology.
> See http://www.gtigroup.org/news/ind/2015-08-18/6996.html.
> 
> Suggested-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Deepa Dinamani <deepa.kernel@gmail.com>
> 

The patch looks good.

Acked-by: Arnd Bergmann <arnd@arndb.de>

Did you find any other users of this technology aside from Slovak
Telekom?

	Arnd

