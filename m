X-GM-THRID: 6200282727557627904
X-Received: by 10.194.59.166 with SMTP id a6mr1421444wjr.6.1443707451918;
        Thu, 01 Oct 2015 06:50:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.3.234 with SMTP id f10ls108779laf.40.gmail; Thu, 01 Oct
 2015 06:50:49 -0700 (PDT)
X-Received: by 10.112.142.195 with SMTP id ry3mr1456770lbb.22.1443707449778;
        Thu, 01 Oct 2015 06:50:49 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id ch7si95299wib.2.2015.10.01.06.50.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 06:50:49 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue101) with ESMTPSA (Nemesis) id 0M3See-1aYeU51476-00qxqS; Thu, 01 Oct
 2015 15:50:49 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Aybuke Ozdemir <aybuke.147@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: octeon: Use preferred kernel type
Date: Thu, 01 Oct 2015 15:50:48 +0200
Message-ID: <2238663.E4LhdZQ91F@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1443706936-3622-1-git-send-email-aybuke.147@gmail.com>
References: <1443706936-3622-1-git-send-email-aybuke.147@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:8SdBQQJFhLPA8rt/liU8wiTnu2TNcm8S3+JE0oCJ48Yxe0+S+Hs
 RyiTpKOchj8Y2VVpEi4K0RHjtZDo7gc6u+RMuZDj7nVr0yXZ90rhCu8E2CGjwtPCdqPAspR
 XGxDRXLD2OkgE3IKsF7uZ9sb9ElHeFkhabkYNG9K3ZqLIT8+9lqP81MmbDFguqc8OT4fW0o
 B7dW1cv7QLrkq4XwMSfzw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:K6lOnyri+D4=:DxoOFUju1Ty8zHcYy3GEIp
 /BQPpXI1NyOkp3pDvu9PdlvBRSqo1hB31EnjmxE8/y3C8+uS0L0Vd4CUIOKYl7I7mVVOZSYvj
 RNr9rHVFTodJ5gEvyJM3bfq1T1dfVz88T34RlvV6cy+PpGnD5Xc1TrHAn0iQ56ZFcz1K1D6y1
 //zpqzz3Pp5u4mMzauYVNWgMpcj0Ag0V6BlMK+/pooH1q+VGv5EXTOuKaQSFNl66y59cMh8vG
 Y6HP/jEDZDwLhbj5+5wsd2viV+tBh9COIUN3BTGXd2vNYY/TgA7ZQNG8FwY5rJ7p7G6pxrN2t
 rtVvPGXmv48ez9BlmepIIvO9SIu6RusCt2ko4gSi+ZKdcYXsTLp5XYagRlHpnqaHYR6OsQ8Ku
 CmindrbM0nNQk6Teait8AduAiyfbsjjVP6OIndzeCJ2mOJP31bqK/X0PBKAWD0pljHS4lUImD
 d0J5QkYHE6enTZHnqQTmLoQtMF40Nlk942IC1SaxH001tw0v0mYsuLg60MOZAm0OS1RyXMQsS
 VwWybJk4TGjxZ0ztrhSvzDfSoeavlZ42LgogkKTtHJ04lODpwzvUOU4kg6FVqsV0fr2jspDCG
 h/W0O8PrY3v8ShA/wODGe7TXpss96KT7n7D83Z4Dk57KsKZ4jv8tOQKk/xEXXF/TRXotG0nGd
 pyR4+d7pgAbBMkX7NTYUGo4u44UHJO+T99WO1hf/G6idWojCGK7Os3SMvbPBEJlAzPJ8i7OAU
 Q+p3mqxhRAO5gHIW

On Thursday 01 October 2015 16:42:16 Aybuke Ozdemir wrote:
> This patch "uint*_t" type instead of "u*" type was used.
> checkpatch.pl issue in octeon driver.
> 
> Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
> 

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

