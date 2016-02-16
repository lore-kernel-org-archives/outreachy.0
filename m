X-GM-THRID: 6251897983822987264
X-Received: by 10.112.201.104 with SMTP id jz8mr2687678lbc.13.1455634619833;
        Tue, 16 Feb 2016 06:56:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.30.145 with SMTP id e139ls606477wme.39.gmail; Tue, 16 Feb
 2016 06:56:59 -0800 (PST)
X-Received: by 10.28.128.204 with SMTP id b195mr2030620wmd.7.1455634619264;
        Tue, 16 Feb 2016 06:56:59 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id c143si638312wmd.1.2016.02.16.06.56.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 06:56:59 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([78.42.132.4]) by mrelayeu.kundenserver.de
 (mreue004) with ESMTPSA (Nemesis) id 0LqpOw-1a0T2O1dnW-00eHkq; Tue, 16 Feb
 2016 15:56:58 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] Staging: wlan-ng: Remove function hfa384x_drvr_commtallies
Date: Tue, 16 Feb 2016 15:56:57 +0100
Message-ID: <2494808.QaDGXxYktW@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <5a81c0ed4fb210731c9fe0b382de7ccf317eefbc.1455632723.git.bhumirks@gmail.com>
References: <cover.1455632723.git.bhumirks@gmail.com> <5a81c0ed4fb210731c9fe0b382de7ccf317eefbc.1455632723.git.bhumirks@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:aXOwv26gnhbQrLgdZ5DFUi71rmFZxMA1b0JMso5pkq0vzVZNgJv
 DojrNPYcnQoKJUpl2iNw1JhEEnNZkbdhK7lvPQ+oF4FvmzBbHdbCsGTnUq5JU39RtqHiluf
 OgvMhhXgPATZJ7Ub4ckg0revgR9wmyuYHwXpEprrl+741hQy/rO/aA5eEhWU8Dtcr6F5OR0
 4L3OviCxpEZ0tG8UZIfnw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:N4pi8cVHCQs=:mEw2/cZ+IrAa1yaXpua1pb
 3a9yyR4wxlaH3J6tOZVNWkrsaaWTvZxDIa3wyFI6Ht8EHkTluu2kdNTWN0/k1QpMtGn3uuv9Y
 PShp5s7Yyy3/OWsHJd3Eeajq9Sj+aYK9N0sn/zVhWFsNtvesEFf0MLbfqAc8ZJxuj1Y84DUok
 +gkwynjbjyRRnLqlNwp/2ueF9VdSvVE451b0yxiiiDslx7H/Wi7YDSu+wOu2NKXhwTKcebizt
 T1BCU1jdPYogQ/waOUiQ7HWzpAU0cSzIXpMrVRUJLhb4IRP72gOi2ZUDmzMpMwC4KTZiWU7QC
 7hxoCg0ZZctkh6ETxlwrfsHP++lGNlM38jTvDK66B/UvRuOVS55O/+6N7jqnJZA7XgV2bJCwL
 0tcqHCya+4Xg6kc7zYlF+QoNBoNfP9HHtW04WoUhkiKeMWkOi0J96Jh5ImeMViUBrdP1Et3rk
 KUBujttQjdBWEDtmGCSt2x5mTfLpCg8rRzWMPbZ728Ax1usVJJyGUT24Dh8XTgRQ6+3NTcM+F
 S4h9+xyDDIg76LL4Q71oc8CswDBVuHIZ1tBT6ssMjg6MkkQp9yNibNJfjIxM5uXJO1+S11b7l
 TERq8BEWd4WyDW1oANhV7wQzmOjqQbuPZqdNgev+8uBtM2LAHJEDZBsQoNGt24DXv0pT6B995
 TiYOeSAfRm0jVmCBv0vduhLVeQMXUDyjUY+JpsWAw5KMX9tEAlko/3IAh5PRvtmVlnbBXgn1x
 3i9K8dOr1T+Kah0U

On Tuesday 16 February 2016 20:06:58 Bhumika Goyal wrote:
> The function hfa384x_drvr_commtallies is not used anywhere in the kernel
> so remove it. Also remove its prototype from the header file.
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> 

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

