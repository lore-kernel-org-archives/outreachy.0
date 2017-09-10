X-GM-THRID: 6464182084663508992
X-Received: by 10.202.0.193 with SMTP id 184mr5252462oia.124.1505062620724;
        Sun, 10 Sep 2017 09:57:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.9.21 with SMTP id j21ls1680161ioi.13.gmail; Sun, 10 Sep
 2017 09:56:59 -0700 (PDT)
X-Received: by 10.98.157.6 with SMTP id i6mr3374032pfd.57.1505062619955;
        Sun, 10 Sep 2017 09:56:59 -0700 (PDT)
Received: by 10.55.76.80 with SMTP id z77msqka;
        Sun, 10 Sep 2017 09:51:42 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCZO475JIJfoWGjj9a8iCCyZkPknBZA1zJfaBkaEXVKC2qEshRlLgcu4kby63Q2mDKSv8cQ
X-Received: by 10.28.138.130 with SMTP id m124mr196604wmd.27.1505062302190;
        Sun, 10 Sep 2017 09:51:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505062302; cv=none;
        d=google.com; s=arc-20160816;
        b=DlyDtPzEwLwgBSaBMYbrbb/rJVJ39/Kvz7y6QIde4R4WrSL4j85iunFLpoOcJc3mAh
         M3z12GxCOYXWzJneiWn4wfO8mWw2cJH5N0gQT83/7Dr8UHjQyH3BYp1aDRcKnqP1obhd
         Q49UG+B0qikZyAtwwrXzrNRCTbVYs4q/BmgFohyxmFiUKpBHa6yClG6TAha0AnxLxj95
         QEQW33BZWj5uEHvjMd8Gq+4+WbvOf6fQHxhh+0VatvvYixzejj4YDMabfn79orStQtIK
         jq8687Lb9J/lfkM0jvqmqefJMouuCpsKzLSFuIUtgFqe+e9WUTDwg+mFkgcxP+YSiQS9
         GGGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=importance:content-transfer-encoding:mime-version:subject
         :references:in-reply-to:message-id:cc:to:from:date
         :arc-authentication-results;
        bh=3CCPHnTBifZwirJfGHDIX21dP0EJ+8URmgRJY5lBYu0=;
        b=UQLeZnBoGzne4P+IeLqg5r0n36M1kd14jPnDHP7hXIr5yEx0voi3hfOfJ9UE9OA4ic
         OW7f3RjKD+CFtYEhYGK7rVrF8qM5teYDRS0wB6HViTWW/e/C1HZ+0+9irMIm8nkc1USt
         j9yNwLUBHuisGJ5cfYCj6sDOt9GOre/67IIc+u0K5O6X8bjm84s5YczOZKACPZ+Eytpj
         G/GYh5e0Bmi01HBghInrpzb/k0+UdsBv+fyPGVlIgbvDJpgm74CkurKNNjhmGqLFxI/4
         ckY0eoYlNdC3g74MK55VQd7XNL7Rs6Rvo/i63ow0xhvPShhnECx1ZTbeYni74Tpo4eSy
         M1dQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.135 is neither permitted nor denied by best guess record for domain of stefan.wahren@i2se.com) smtp.mailfrom=stefan.wahren@i2se.com
Return-Path: <stefan.wahren@i2se.com>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.135])
        by gmr-mx.google.com with ESMTPS id 7si272274wme.7.2017.09.10.09.51.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 09:51:42 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.135 is neither permitted nor denied by best guess record for domain of stefan.wahren@i2se.com) client-ip=212.227.126.135;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.135 is neither permitted nor denied by best guess record for domain of stefan.wahren@i2se.com) smtp.mailfrom=stefan.wahren@i2se.com
Received: from oxbsltgw02.schlund.de ([172.19.249.19]) by
 mrelayeu.kundenserver.de (mreue004 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 0LuHH1-1dPtXQ2poF-011l2N; Sun, 10 Sep 2017 18:51:39 +0200
Date: Sun, 10 Sep 2017 18:51:38 +0200 (CEST)
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: Eric Anholt <eric@anholt.net>, Julia Lawall <julia.lawall@lip6.fr>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Message-ID: <656135261.184372.1505062298737@email.1und1.de>
In-Reply-To: <alpine.DEB.2.20.1709101811350.4580@hadrien>
References: <20170910160750.GA9376@meghana-HP-Pavilion-Notebook>
 <alpine.DEB.2.20.1709101811350.4580@hadrien>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: vc04_services: Remove
 typedef
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.3-Rev30
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:lH1AcL6W99E2AdVj57WDGl/5tscgKQhJO0vjSiEI+Zm1Ht4j33k
 wgCYCYqjzEXjqIC5ZXraj/l6T4YmgVxXG/GPm03a4Po9gPtsfEjPFE8lrBj255P9GUjS/ae
 XQopBzDaD4tWzUK+lpxFfB2aQdwRb7DL9jQIbkthCz/R/QFwOE9nrMUF5wkwp0ssDN7n5jd
 zYXOGXZqYabRANMdAsU7A==
X-UI-Out-Filterresults: notjunk:1;V01:K0:MRmOcMWCjFo=:CXAVmWngN0Ne2fGVmpuc9d
 J94sTfCB4ccqM/VoFASLaZsP/hAjhZMGmTpyMDE1gRsqOrb1eoW7P+ukAw8PlJxlnLeH0+7+C
 j//mgEjcjkgfboP2OPyv56O3TI2OKakW2TycpMQ76qTVv0CiEokzxx2iQ48/4molj6kaqQvcF
 SKDw16lbMYgHd4s9Qs04BrQz3wKVEPA4NGhRCCtZ52OS+ll4Wtm57ngJGWya1AtADXyrpUrMR
 O+ePb5JGSgerhWWr033Ecvat6rWkUog28OmCt296lC2jSPMLjQIquEvohYR+oEfXtGHWlh1wy
 dt65c4Me/fuXH2evPRkyO6XvRxF/SH3w9sOocxgFH4MSchFRtZFzf7dJO0DkGXbVG5qWyKGml
 eicqB1Y6oba+C9lrxn+TMHWC1HzwmVRLho9tsm721EMNHSL65jQLk8xgbSfZr6zO3yp1Td/jH
 0d0rc1kqkVCWJXc+yAnkUmjwys3RSe7R04rLn3t4pFZX//FPL5nFVlo/6Wv8RLQDge4os3HoW
 AyKmIMFg431t7GBfl105AbYZCo2QqoXGc5w0OjeeUVV8MtLbdBIgGaPP/wGXqQUzMXXL5DNNX
 NdDfif/Q9wTy6HFOGV0SNje2E7uRmFOz7Y8YRv2Nip+mJhinhFG2y9z3M67o+cGNTJFwkG71j
 Y9jBDD9FisZX/sis8NDniRwjwg/Pd1T7m4Rt7hanlLYVNwEu5puj7L6Wb6ROPiXCVZBy1hMaP
 PvCic0ir5B7OwXQFO8auhoW+fNP73eiSp+8HKmJaHXpS27+wVWgGzV2HYAg=

Hi Meghana,

> Julia Lawall <julia.lawall@lip6.fr> hat am 10. September 2017 um 18:14 geschrieben:
> 
> 
> 
> 
> On Sun, 10 Sep 2017, Meghana Madhyastha wrote:
> 
> > This patch removes typedef vchi_connection_t VCHI_CONNECTION_T. This results in cleaner syntax.
> 

try to make your subject more unique. Unfortunately the vc04_services contains a lot of typedefs, so "Remove typedef" isn't very helpful. How about "replace VCHI_CONNECTION_T"?

These staging drivers aren't relevant to the Broadcom guys, so please do not send them to Florian, Ray, Scott or the bcm-kernel-feedback-list. But it's important to send a copy to devel@driverdev.osuosl.org.

Stefan

