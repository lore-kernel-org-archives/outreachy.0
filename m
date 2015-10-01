X-GM-THRID: 6200611211635064832
X-Received: by 10.112.12.132 with SMTP id y4mr1260136lbb.0.1443693245854;
        Thu, 01 Oct 2015 02:54:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.37.228 with SMTP id b4ls83195lak.28.gmail; Thu, 01 Oct
 2015 02:54:05 -0700 (PDT)
X-Received: by 10.112.130.41 with SMTP id ob9mr1236653lbb.17.1443693245237;
        Thu, 01 Oct 2015 02:54:05 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id k7si77554wif.1.2015.10.01.02.54.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 02:54:05 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue002) with ESMTPSA (Nemesis) id 0MD2RP-1ZqhEV2dN5-009fcH; Thu, 01 Oct
 2015 11:54:04 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Shraddha Barke <shraddha.6596@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: lustre: obdclass: Declare structure as static.
Date: Thu, 01 Oct 2015 11:54:04 +0200
Message-ID: <2343681.Woa399xRxt@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1443692278-9074-3-git-send-email-shraddha.6596@gmail.com>
References: <1443692278-9074-1-git-send-email-shraddha.6596@gmail.com> <1443692278-9074-3-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:R/3yM232AurAk//kh6TKHkfQIavbdTaFbsPvVLjoAMDJ3uQEWHm
 +REyz7+mGiAN2nzRePCfb4E9qgefszgliEYDTNjr0xgAgZpYgsUranR4+ewa+xueTLjYpOB
 FWzfX7rFHmbjixhd6GnIXFaqv5aaRSyOYTEwDh0SK8p+bGtPk959UnKEzrmNDNwmukvJEqb
 oGEZxAjWGw5l1qvcNl/SQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:u5QP+/7AbLs=:xtOQMwXf7bx8LlSZFt3t39
 Bie05HA5b9AaO6J/QeyzxVcozYJZdJLMUPiJWy9PQlzcO+f6hcdMHgHKOYLUtgZCis23LYD28
 3XjTP46W8+vOfiGKVEmF7C2GFGwIz7L8bUiWGs44dnt4J3faQ1zGq6qA3I3e9/eBX7h0BZGRJ
 TEs0mmrS01FpgBftCL1Z1h7J4vvvVkjG90qk4yOY8XpdWzR194kkOVNT+3lOnoj+tx/hqqDyR
 ZNDuumSlQzXwiLK+8j3nF9hv9RlFF+rzZQtrk4vfhx15JFK/hV33xYcn895EEydjs1IJ1XZEW
 RcYB/JGyGWLcTstfUXE50QmjzdCJ4N+NdGKRoWMDxvFbl8uOLY8lJWeNxrx1qqXD9wH2NCMJf
 VfqE/iooJN3fEYWO1tesb6ADfOsyw1aCoAXWdA/7VfyGM6DDqz6/N1mQ9iUefRuDFKrdBOh7J
 mkEPgQBYzCrJYF/tKz/0vdBGnkPdsrzJ9PHU+r6+NiQ/+N0C2b01Hb/vuLkf36PJiZkztaAW2
 EWe5/9MwtaS5KAF0eANl99b1/EZDE9FZ05lLkVFZPPT3gZF2HbsiLU0NrNSzdEdUqb13niIzX
 BObyejez7xtFypqLiHOcCRpLa+AVOvdZ+SSiV2BFoKxYJ/2agZFA/rB7cAS6MTSOnVmvG0csE
 hT0LzFsR+uYAePG6M9e6yQ0fTZRYZGlzOIWNGjAzpxwcN62p1BIrotiGXvZjmu7h5KdaCDp9G
 L/8PxoD+1ZeEKNms

On Thursday 01 October 2015 15:07:58 Shraddha Barke wrote:
> Declare structure as static since it is not accessed anywhere
> apart from this particular file.
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> 

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

