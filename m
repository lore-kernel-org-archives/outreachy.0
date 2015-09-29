X-GM-THRID: 6199955857120165888
X-Received: by 10.112.144.99 with SMTP id sl3mr4302914lbb.12.1443540913092;
        Tue, 29 Sep 2015 08:35:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.41 with SMTP id y9ls349679lag.109.gmail; Tue, 29 Sep
 2015 08:35:12 -0700 (PDT)
X-Received: by 10.112.169.34 with SMTP id ab2mr4407812lbc.23.1443540912075;
        Tue, 29 Sep 2015 08:35:12 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id fj10si759720wib.1.2015.09.29.08.35.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 08:35:12 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue102) with ESMTPSA (Nemesis) id 0M0i6Q-1aW0ob10Bi-00urSq; Tue, 29 Sep
 2015 17:35:11 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Y2038] [PATCH] Staging: wilc1000: Remove typedef
Date: Tue, 29 Sep 2015 17:35:10 +0200
Message-ID: <4500834.BoDDjqIb5v@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1443539701-2833-1-git-send-email-ksenija.stanojevic@gmail.com>
References: <1443539701-2833-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:IGsdUjvvP5mlqRIVF/xx7JkIzo4oHFWBnuxeZfbAg9U2yY3sCpQ
 mp/nuPKKeP+C3xNfz6oo5kqSIUuQ/iWDa3F7jkoxrodN26AZ5vIR9HbvNIDfv9HwLqdeVGA
 YiBmQIjUrckE1d5IhUAay2qCGp+WHw0xeVRPrYT2Ta8tndXpa5SqsUL+TvUZK+YA7fKT4eS
 iCc9FtS9o3XnWCvMIQe2Q==
X-UI-Out-Filterresults: notjunk:1;V01:K0:opJDac0Tp50=:EilZdemcg66VQDVyQfTP1K
 Tkq6ZH7AqzjnYzf6mgP6RAHJ0bdLokCLfxxZTqErmQ5l4/snEy3kqIQM/hH2tkP8AR+oAIiUb
 wkq3qVjuJ/dGQEdRCRZIBv81c52Jw68Z8g9yK3jn+fLM3XPJvqEzL6qSzPVD4T0Yc5E3mWOH0
 THuVSaqOZw60TODW95gUAYXF6AXOxjF0Z+qs9DYZHyYPHNnKJtQHa3DPuQFh+fkihGakXR8bQ
 3d1oUws6NFmXm4AG5SILa/vmfxowJYxRMiAGWok/x4PCevVG0HAMc70F8rXcTPdt2wgy1QNtn
 heHNyAhwe38uCgkVlBMvvPYUWbcyRmcSu8XEyMmzfd82xQcTjeztS8AFdlHD3Pr7Nn5mP6tFa
 HnkhkilcwS8PCqMn40IyPw236kdXkVJdh8urAWuE5CIlPCroRQtXUZVpPvbTpiiofDIUBILxe
 kPQPdZxcahMz4SybLkd9NAnqsnw4+K3HJ8LCBJKqh9gJlK8m10Kzxd87Ygf1iO1eww/5Cz25Y
 9eu3iiokXjFKJbrf7s5vGF+6DisCVoDpyaTFSG3jDYcatCAdXSEqgG7OrVo7S4rdq7DA4pq4V
 U4uZI6+QhNcbQTKEYrWABnMYLZNt3prGS8BuZicIbOglZQ0274ISFjCZPnhvi8Te4LVY1bBuo
 DNoera7Bbb+0HDCpJiWSe99WpoGPEgfd+TiV5qRPrib6r2j34cCY/EK05hYVGENKgzJBA8JCL
 HtjvKj6OwOPmgp7m

On Tuesday 29 September 2015 17:15:01 Ksenija Stanojevic wrote:
> WILC_Time is not used and also time_t is not y2038 safe, therefore remove it.
> Also remove comment refering to it.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> 

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

