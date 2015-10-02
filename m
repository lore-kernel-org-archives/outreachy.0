X-GM-THRID: 6201126582392717312
X-Received: by 10.112.136.99 with SMTP id pz3mr1433968lbb.11.1443820440417;
        Fri, 02 Oct 2015 14:14:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.226 with SMTP id fr2ls451118wib.50.canary; Fri, 02 Oct
 2015 14:14:00 -0700 (PDT)
X-Received: by 10.180.188.211 with SMTP id gc19mr202876wic.6.1443820440043;
        Fri, 02 Oct 2015 14:14:00 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id bj4si27470wib.1.2015.10.02.14.13.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 14:14:00 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue101) with ESMTPSA (Nemesis) id 0LpwXf-1aKBt219Ql-00fjvl; Fri, 02 Oct
 2015 23:13:59 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Shraddha Barke <shraddha.6596@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: clocking-wizard: Use devm_kasprintf
Date: Fri, 02 Oct 2015 23:13:58 +0200
Message-ID: <8069305.VuurK3BkkW@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1443812283-21310-1-git-send-email-shraddha.6596@gmail.com>
References: <1443812283-21310-1-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:8ItfwiHRhitxky/vmw4S4PrcXtFiM0teH4Na0Gqmjk/ny0Yy1C2
 aXwoNWw8mVGGAJHAK5v0+iSvXuo007I6+HXqmWQwu3FeO3gApbRygMAvF88TH4I1kOnkmnS
 5pem3ffDE4oMN22/+eOFXNRxVMHTNS7qVK9i2IkQA0T4zxPMnF3zzVUn5ySgUqtGhZqSBvM
 ckKLadz7wC4kOWo1ey9pQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:d8Ge0c/bNzM=:6jTaQfEqooTEL0hSxw7LvG
 o7VeVMw39na89fyiY0D5GVdIWrBmGFA6kYEAZg80++Wal1fB6KC2sRdQzBy0vlTqd5T1zMnYh
 2VDtTfayv+25ZaPka4qbCiISv5jk1dNRvVoHfaivVXDVeUZuc5d19aRo61P7MgZ4vjiP+ytkO
 fzNFY2mMNuKjO3kB9a1QQlICFlqlFy/sA7mxaTXrFghWrRMfCgi5h/LDh1xVHn2qvO3UcjnhB
 3opjulA1ThSUZphih/seP1W0oILlkJCG06qRF/fktoz8R4AZ/nrF3xicHyx2Y9nI10T2uOw88
 z6zSj9DhkgiuEPk9D+DgyxTBE5/2DLeiHEVDUu1GyFGxj48dkOpLXFEDSYT20HJI58wVUkZqA
 9dKSAdhryBP5sZuua41Z1oOjdnocplygz8J97+OEZcUWc+m2+IMJuSBv0HmPFql1ttzTa+ARk
 0qt6V2F/iiP0+SSUNv6uP+C525t2DhbGrvygE95F+3Iupv18eh+wqiM74hFLC53jkoE8QBXxt
 QCk4Bh4owYfnnAQDvxi7vzOSxwglYzXZjVyW6eW7ubJ3h3GM6atC2NuC2HuZ97vxrwV7CKicL
 xWvYqZLYMnCayWH/OGJpThfNtyOTe7HxGl6LeR0yzUwXui/fE3gkAUrV4ToJFgekYZ1/yki5z
 gxfBgFnFCNKWxrpxuNQA5aE8wEsHDwqxPNyjYsZVB/f02l/TClmeKus2w9UnkhUNYWNRANv8/
 DoB7meuPcMrvU30N

On Saturday 03 October 2015 00:28:03 Shraddha Barke wrote:
> 
> -err_rm_int_clks:
> -       clk_unregister(clk_wzrd->clks_internal[1]);
> -err_rm_int_clk:
> -       kfree(clk_name);
> -       clk_unregister(clk_wzrd->clks_internal[0]);
> -err_disable_clk:
> -       clk_disable_unprepare(clk_wzrd->axi_clk);
> -

Are you sure you can remove all of these?

	Arnd

