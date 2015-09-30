X-GM-THRID: 6200385233952440320
X-Received: by 10.152.120.232 with SMTP id lf8mr873489lab.1.1443647070246;
        Wed, 30 Sep 2015 14:04:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.9.6 with SMTP id v6ls70219laa.23.gmail; Wed, 30 Sep 2015
 14:04:29 -0700 (PDT)
X-Received: by 10.112.142.195 with SMTP id ry3mr891178lbb.22.1443647069587;
        Wed, 30 Sep 2015 14:04:29 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id c7si938359wiy.3.2015.09.30.14.04.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 14:04:29 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue004) with ESMTPSA (Nemesis) id 0LipzN-1aDh5t33VN-00cz7p; Wed, 30 Sep
 2015 23:04:28 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: comedi: Use mutex instead of semaphore
Date: Wed, 30 Sep 2015 23:04:28 +0200
Message-ID: <2184557.dYc5OihC5l@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1443639675-18965-1-git-send-email-ksenija.stanojevic@gmail.com>
References: <1443639675-18965-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:1lGdHxwL5Oyy1zG7Z23tGTjORhegQHTBB9HIMch6+V2TdXCkKOa
 nMPvztZ29Mj14X1SnG5zPkgCpYxB7t5z2WqZmeXpz7qIi3ZrlZkbdZK6HXMrLZ3FMojvtUQ
 KAYYOrc9fH2OEjdztq+yzI7l+kVXBKwAQKxDQ7y/XzOFYlDIy3Cn+GnoqQZuhAN7ikK1yOM
 SrsuH6AhyswdULTxvY33w==
X-UI-Out-Filterresults: notjunk:1;V01:K0:VfSFLG0r7Nk=:aMv2c6xG2Q6puCWw4lMbow
 oPONLmYnOPgAiPkMHlto8cXtiSlSNXjHTvYFN4wobrH+9ZA5y0LOnHcJiLIK5bK/sxL63juKI
 A2+clkBpX0tsRIZsxuWQrgKG8laTModWMospwcKtGLmHFaNlvqgSpMY1Vbxrafo08gw55UGGT
 9wROuhoCoavhsrVLTL0Sxz8LOO0rfti/eXKDoqJry2NbavXkK1z2YVj7AVd5jiyDoIgwPb9+t
 2jNv/KfjfhsEbUwU8+4/OEsiofB/dZpx8AmMhBsEID6P/Ql75KdX73DBg80bGPk+ozGPck9kW
 BZ2zrTVfWx9qzP0yFwKvlVLr0l0PKISHwr/rGE0nGWmkVAkerA+4SNUXWeQayoAA7P1czHicD
 VWDXDuaHkOii1Tl3K5rwFQQI5x19U9f1J3OwF9PPRXF7Eo2VzzA48zk6bo6HKRYDjkFa8+FPe
 Jg83r91VnbHgg3oAYDnVZ75/yG3l+vD+7pvht7IhCg8614TpJiBtdNNgjPmGf/uIbgOY92BSw
 0hOC6lYRghXPEvbIr0Y7oj8BTOviItjAJMH/ianKWBuKOpqEZVRKTAXKWihA552bOuEbFjyN2
 WkqO05B4ti1/XkIKctfo6lPCBqo4aUzQyDyteNx/E0+TTys2Yf2AtEnqiuNt5DMoOy22CAj+U
 SvbNvt665FcClhg+vpCOAO4PcbQ3qW4nyEL/YbccyxnhiZ3K4cSo7d75t2Oda7rpEPE4dz1bL
 OoqTn0IvTc8w9RXK

On Wednesday 30 September 2015 21:01:15 Ksenija Stanojevic wrote:
> Replace binary semaphore with mutex because mutex gives better performance
> than binary semaphore.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>

Very nice!

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

