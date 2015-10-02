X-GM-THRID: 6201108859850850304
X-Received: by 10.112.138.4 with SMTP id qm4mr1777825lbb.6.1443818287413;
        Fri, 02 Oct 2015 13:38:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.159.82 with SMTP id i79ls267575lfe.102.gmail; Fri, 02 Oct
 2015 13:38:06 -0700 (PDT)
X-Received: by 10.112.181.10 with SMTP id ds10mr1911986lbc.3.1443818286866;
        Fri, 02 Oct 2015 13:38:06 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id bj4si23735wib.1.2015.10.02.13.38.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 13:38:06 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue102) with ESMTPSA (Nemesis) id 0Lk8eg-1aEPhf3EUc-00c6CP; Fri, 02 Oct
 2015 22:38:06 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Shraddha Barke <shraddha.6596@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/5] Staging: lustre: obdclass: obd_config: Declare as static
Date: Fri, 02 Oct 2015 22:38:05 +0200
Message-ID: <5034475.qjUZt7CvGz@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1443808154-13944-4-git-send-email-shraddha.6596@gmail.com>
References: <1443808154-13944-1-git-send-email-shraddha.6596@gmail.com> <1443808154-13944-4-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:chXEBEki3BoUwTcsp0qiXlq24hEQjHiF9tR8J18cpHPj9FEekxP
 WBQn5TTQQsrn9SFMQwy5i6ItTFntFFV+Gs5JR6wLOw24m76vw0edrSlHnp2YxHtw8/JpGwj
 JQUuyUGcEJU9tMDqXZ5OU9dOWPemYwpa/J34M7FMZ7JijHjjR8SwyrACuTfv/5zIjhDy4h5
 Y0U/pRHXQMsZpomn2BUYg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:uAj7BYxsZcE=:pmgxl6IUF2Q+BGJwpNRsUJ
 DXxdDuc/2MUUfo1wEjxJeVYdCIeHm54gBmRIHcFg6ZaH9ddmiAy2IwPPPWmDSlH1cqmj8XVxp
 nKP/S+dfEfO4QPT64GWGUdniXOOhB9mLDtlVrzw1hUqOFTT2EvYgose3O9yhKdneX+yhampGq
 5KcR6lZRMonWZI11EVmG23sDtKeLWQR0d1oy74QB3eEtnQv2Y0Kf0g6hw++hCpbPcTzjxy/J9
 M/wFHdSxjnNBmbX4Rd7QynD4OGv4uNd9HkxoQrQRV6NkZeu3YI7eh09mMlXjwNDzSzNvNLe0q
 xAjd3NzhrtiMfCYGBsqSqV0OqjG5BS+lvo7LhtjGJX+DXVaX5a9SzeEGkv0RtmERR6MNmrG6m
 5x+wnj6MSGQgKVx5Z4NJj8sbQOTFoVIT6nUZ3NmZ5E2u0sYlIuh6+TUgRN09hU2eTSGYt4e2l
 KJ2xZot+5LB2d/7sayOS5+LahOPc66EVJDwgBmmOjwYvXW4KkvWAfaiA+AjjUvVypsYv0PO2n
 fVwl3zePZ5kbFQkbBVl2+XUERDBeFB6yFuoEhvsIV0LJB0XlLRT/KPGhJ/pvOXa5n0vkrNVMk
 kAqDy7ySL2eShM8DMMEDO8uIn2PhRNjcgLY2ALzidr8Jqjf9tUAqGptTX8Ihza03QdvIkvuo3
 NZjWh78FDPncLw6IzAJFgFRr3OpLzvwVMo09X9bkQnnTpcx++xI3RtAzztuq6gyuNB+PO13hz
 zgY4l8MlRIiOa85F

On Friday 02 October 2015 23:19:12 Shraddha Barke wrote:
> Declare class_add_conn, class_add_profile, class_cleanup,
> class_config_parse_rec, class_del_conn, class_detach, class_match_param,
> class_attach, class_setup as static since they are used only in this
> particular file. Also remove the corresponding declarations from
> header files.
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> 

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

