X-GM-THRID: 6209266424669536256
X-Received: by 10.28.170.203 with SMTP id t194mr912891wme.1.1446749320619;
        Thu, 05 Nov 2015 10:48:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.5.205 with SMTP id 196ls35520lff.43.gmail; Thu, 05 Nov 2015
 10:48:39 -0800 (PST)
X-Received: by 10.112.166.40 with SMTP id zd8mr1829425lbb.21.1446749319522;
        Thu, 05 Nov 2015 10:48:39 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id t18si172402wme.0.2015.11.05.10.48.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Nov 2015 10:48:39 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue004) with ESMTPSA (Nemesis) id 0LdIcX-1aKMcR2L9l-00iWdp; Thu, 05 Nov
 2015 19:48:38 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: Eva Rachel Retuya <eraretuya@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: mt29f_spinand: Replace udelay function with usleep_range
Date: Thu, 05 Nov 2015 19:48:37 +0100
Message-ID: <6220768.i1voOuvBYI@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151105181955.GA6328@Socrates-Mint>
References: <1445707491-28304-1-git-send-email-eraretuya@gmail.com> <8309352.N5ZdtU6YYI@wuerfel> <20151105181955.GA6328@Socrates-Mint>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:Mbo3HsU/p4Zpsijg4yXlsUZ/c8TjQf0RSSV1O9N/UpG95+Lf9Oh
 BfmB68PoYBvNCsIx5lmepgPemCQz8yfP5xXvkUCWWFJZrh5syBRZ0xiQjCphBLQ99D3YgyQ
 nNp4oZMHE5cei7Vr20gZjknHJBUWZ/l56UuNfRQ3cS5ozSkJFm/ihMigMC7cmXQ2mBI3Thr
 HqD0x+1Og0Hm3lL4TMo7Q==
X-UI-Out-Filterresults: notjunk:1;V01:K0:nR2+r0qdbqc=:ouCQXH0w3XBFDr9sgbnnrN
 y+BYCQiSxwkTZLMZIS09iREekkt3l8/GZ6J/dyrth3L3E4EHnTfTJQ1IualRYIWN9TfxVXA98
 1DJOIM1Y2PpQcty2r0I9cy5NOno/QvjGdNg/jvTkYaaiVhs5O50AkWBKbjySOsneziip+xW4X
 KzCmjSTa+NT+Ot0BDpallsj1rY3XakCEU0p9iKpsYtGTZkq6hu9XXmbrjAX4kJxM/h8MA+PAU
 +cA9cxc9tqRiaU3/4+VVe+805srunTW1EVDdZBbjGomMej+uSPdv0wkALtgtIC6WJWYSo0Ayy
 7QwMhq5tGTzW10l01yC2ijHlCjvco6v0EFnL6zGB13hgMaVF7EzPZ6Xs2Tg6gO/40C/BHH8oW
 Q1gb3V0YzeDlPclpDUCRWB56Xt3lWwZ32zP75kIVdSmBBiOYoGdKM6HcwdoyOfM5C3eNqdJY/
 JWRGyGeAIkeXOT8+GqMnaURtq8VoWuC5RwxVqwBfvsgDNw4DsBV5p4dUYy01snKbTRPQm+HlD
 MQ6PhDjBmyDFIIX1VKI/tAwvsYh0Fqu3VNz4NqAa+Eo5OH/Ao608FNULSBjTAWo71Ig2MkGbj
 QiKIVSkUwDkrQTyUNhBnN5jMh4HCpcE+AAAtjGnmXo45pI1qcWPgUlQTk9UsgWMbU4cNiDcO2
 +Dr3FGjzQu0xI/mjsBXGMQhjdiHTU7cVtw4MfJJDhmN5gWLSWGbow5zG8tSt+3om1JgMpMAb1
 x9ulFSNjrZXHD0aQ

On Friday 06 November 2015 02:19:59 Eva Rachel Retuya wrote:
> 
> The change from udelay to usleep is a safe conversion because the
> spinand_reset() calls spinand_cmd(). The return value of the latter
> depends on the return value of spi_sync() which is a function that is
> allowed to sleep therefore, I have confirmed that spinand_reset() is
> not in atomic context.
> 
> I hope I got it right this time. Thank you for bringing this up.
> 

Yes, very good. FWIW, the wait_till_ready() function also sleeps
when it calls cond_resched().

	Arnd

