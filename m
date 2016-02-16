X-GM-THRID: 6251897983822987264
X-Received: by 10.112.199.136 with SMTP id jk8mr2653084lbc.11.1455634632203;
        Tue, 16 Feb 2016 06:57:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.60.212 with SMTP id j203ls790159wma.37.canary; Tue, 16 Feb
 2016 06:57:11 -0800 (PST)
X-Received: by 10.28.45.151 with SMTP id t145mr2036791wmt.6.1455634631728;
        Tue, 16 Feb 2016 06:57:11 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id w128si759215wmd.0.2016.02.16.06.57.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 06:57:11 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([78.42.132.4]) by mrelayeu.kundenserver.de
 (mreue103) with ESMTPSA (Nemesis) id 0MNeGY-1abig82t5O-0079zM; Tue, 16 Feb
 2016 15:57:10 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] Staging: wlan-ng: Remove function hfa384x_drvr_getconfig_async
Date: Tue, 16 Feb 2016 15:57:10 +0100
Message-ID: <2614552.GUKi9PW2Vh@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <4f96e06bbf4e5226491acca62af017c2ee74da7e.1455632723.git.bhumirks@gmail.com>
References: <cover.1455632723.git.bhumirks@gmail.com> <4f96e06bbf4e5226491acca62af017c2ee74da7e.1455632723.git.bhumirks@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:OMtdSAluXuH2dF/uJ+AckFplSgDu0eLiRFofnJ4eZo7KJVbBJCH
 n6Jtvqmtk5gJacCS2igpU4s/1pf+7IBzaKpnhNvoEfwZVcDFzlrmkGPjy0uWOGhb3ZUzhd2
 MzfUck30Q5ce4AjnbEteoX6H5UcDgIvFAqk31ka5LXW4dsO0/dcyNq1oF2nS3ypKV02guHu
 ALdpnLSnNnWspvE5R3S7g==
X-UI-Out-Filterresults: notjunk:1;V01:K0:Ooa1HiGwAn0=:sd7n073ZiXlvV9T7T2LR9h
 x7fo7ZzzLLgLqB29Q7qn4Ua0oGhwgiJ/fKZ3NR1TBMIFu+xSOh8oZg25b6Hr3C54PfatVRMsy
 aRWjZJqdt+3c+JSQEOC152qwT5O4aCAwGJne0Iy/JAZJD80bM77IPf5e/jMRq5Q4laPYjlslN
 jHsxofaga5gSJe54x06RQebG+6Rn+Z8E9KjM/+P6q07ophZwa4RIhUM3BW9jEnhXgupSUGyR9
 62iItYAK04Xomf8enBqcnhQhbz3YDf/uzIr0NBKfJnKwVrXux73UMhQPxjO1gC8IOLKiYGGyx
 3BCooFEGWRm0Twi+Pmd23R6DTaZhAEuqZ8LWUpT1RLu+IyX2eA9/u87dcyEy5Jh60q9bQW8PB
 i9Hw1kZdI5vM2/+2pEdPkkAJsxWbHmCwZEPtL0nF36lz4pHYZqNVNVfprtgUas9m3ZMyAD3ia
 kMLZ5IOthcN9WEROmXvqUgLCXGI/fJvCCSoIjBeeyPppkIF+Xq97qZ/HEjzuNnNIT6O3vhrnm
 Js69K/H579Zw9LS9ubucNeXssieezAlNx6borQEnYJ80Ga92Fjz3wn8xqeq6SJVXr9e1C3olf
 IKtqE0RUAyjU193/aomK/BonZb2Ph96+T7IR3Rox475MQ6G7kVNyQMu1SDu50sFcH34TpnoJg
 x9EW0/b1jpZJT5fLmD9GLjV8+58OmFyeQwXVGNP/8Y1i48Nd2kGcsPPR8A9Ha2046G6V8w3AI
 4QwaDS+ByBcF0obh

On Tuesday 16 February 2016 20:06:59 Bhumika Goyal wrote:
> The function hfa384x_drvr_getconfig_async is not used anywhere in the
> kernel so remove it. Also remove its prototype from the header file.
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---

Reviewed-by: Arnd Bergmann <arnd@arndb.de>



