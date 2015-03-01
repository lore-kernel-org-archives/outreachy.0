X-GM-THRID: 5445984976896
X-Received: by 10.112.181.198 with SMTP id dy6mr3373066lbc.22.1425241783829;
        Sun, 01 Mar 2015 12:29:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.7.70 with SMTP id h6ls55218laa.78.gmail; Sun, 01 Mar 2015
 12:29:43 -0800 (PST)
X-Received: by 10.152.6.41 with SMTP id x9mr3300481lax.10.1425241783441;
        Sun, 01 Mar 2015 12:29:43 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id el6si541453wib.2.2015.03.01.12.29.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 12:29:43 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.17.24;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue104) with ESMTPSA (Nemesis) id 0M6ETS-1XYgBw0vrW-00y648; Sun, 01 Mar
 2015 21:29:42 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Vatika Harlalka <vatikaharlalka@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Remove unused variable.
Date: Sun, 01 Mar 2015 21:29:41 +0100
Message-ID: <2135305.a4gh6rpn1T@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20150301151625.GA3232@akanksha>
References: <20150301151625.GA3232@akanksha>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:guquShUVBNmTrK1Ngf9wKmzbj+0Sm20vSaC2+B2EHdUksAfJ7OH
 Wgji3HY547DtWora4WF5I2QCTHsfEKSlC4ag5xZNfgLMlAHbBTp4xs5DV+kkPYIJ81615mr
 iHZaH9OWzb7ljvXeTzU7UnalGw5GIsVNdqPGmKCBRG7oNXRJL49OXTyyewJeOb77wjyzTci
 rUkcajx55lRQNZE7zBzTQ==
X-UI-Out-Filterresults: notjunk:1;

On Sunday 01 March 2015 20:46:25 Vatika Harlalka wrote:
> diff --git a/drivers/staging/rtl8188eu/hal/fw.c b/drivers/staging/rtl8188eu/hal/fw.c
> index 3b28754..8f1fdf1 100644
> --- a/drivers/staging/rtl8188eu/hal/fw.c
> +++ b/drivers/staging/rtl8188eu/hal/fw.c
> @@ -230,7 +230,5 @@ int rtl88eu_download_fw(struct adapter *adapt)
>         _rtl88e_write_fw(adapt, pfwdata, fwsize);
>         _rtl88e_enable_fw_download(adapt, false);
>  
> -       err = _rtl88e_fw_free_to_go(adapt);
> -
> -       return err;
> +       return _rtl88e_fw_free_to_go(adapt);
>  }
> 

I'm guessing that you introduce a compiler warning with this
patch, and the subject line does not describe what you actually
do, because the variable is not unused already, and you remove
the only use but not the variable.

	Arnd

