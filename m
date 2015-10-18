X-GM-THRID: 6206645020679733248
X-Received: by 10.194.109.233 with SMTP id hv9mr5759224wjb.1.1445172957639;
        Sun, 18 Oct 2015 05:55:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.169.198 with SMTP id s189ls419570lfe.87.gmail; Sun, 18 Oct
 2015 05:55:57 -0700 (PDT)
X-Received: by 10.112.169.34 with SMTP id ab2mr5686699lbc.23.1445172957129;
        Sun, 18 Oct 2015 05:55:57 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id h2si352576wiy.0.2015.10.18.05.55.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 05:55:57 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue002) with ESMTPSA (Nemesis) id 0LjiA5-1aOn9334R7-00boSw; Sun, 18 Oct
 2015 14:55:56 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: mt29f_spinand: Remove space after a cast
Date: Sun, 18 Oct 2015 14:55:56 +0200
Message-ID: <5200397.Z5PqNk5xTM@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151018101529.GA6434@Socrates-Mint>
References: <20151018101529.GA6434@Socrates-Mint>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:gCEKRL8J3NiDapdT4w3YWD5ikVrzdbAXWlpqPL28rn1N15U3qFE
 TS9kcmGDc/yLu7IHMKRi1/ALsm2L2zXnc8eYaqt6n8dWMzGV0DXknXaMm9I3gUSLgJgmfEo
 mk/3LjIGnITS1pVyeEP7aQWjgVQ43H7VeoslqugKByd4kj1YXo25FtVo75osTyiMBQnCsgy
 3YhajW457L4GTAs1ov9pg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:PbFIbY3QRcs=:RCbSBF6OFoUS57dnMtzaFs
 qKuMXqtz1QGqT6fwNM5maj3lSNrSbzEXahBNOy+9Eaghd7hs/85m5Bttc0ReSRzv5ZrSfcgUN
 Yr2jXkPz5fEqUnanFHiMmimOK6/+3VOuaVNt882U6rpUgw2TWIZA508tX9orYQVa0K6+dS4gb
 7f+UGR2CC48XwVv8kSEK6zyAuFeN3GkonodIyLGsL9Hh2ioj7J4qq9FFm0ZolfHlE+YG1jB5q
 LrvZ7JYeo1d2Uk0xe4SB/79iu/E+N9o91XI/Ab8KSbEX7fbmwbKGxmUozCwnfdiLWCFCz9HFE
 00u4D3CZ1VJEw1BiwEtmgTjNdO0BqjtZjg6J/Vl/CZ4JrfrAAvSbuKdN0rg9Fnix5MKOJncpW
 1dex6TZbXtALtgKWE0GAlkca8farHrXnzKeEpXCUzo/xN10PItBEdM7ZiUOKxGN+P41iDrlmS
 ARul0jomcSsVvduDlCJxuPdQsufRcvTHqpDp/TvE0B0D4sajLTJwvUML6s7uw7zpb7P6nFSTD
 orXnyu984ks5sG1SOk/7P/cgEz/wMqQkcFbX37v8f0IFXJgVaLf+jDUoafsPjAb9g1aU0kf9n
 J65nkVwE1Id7x42vvTfsxg2rvO2KGlhO73tdSgURRTX01fIApXWAB7KNMJCUy+XbAu1moGkro
 mNlw826jLgYjSa+k8MVrGt4XvEku17rjPIUllPyz2h2zllbweO9JcW5kITPNUiQbgPfubTUdL
 l3YffhHt+XYofMw6

On Sunday 18 October 2015 18:16:09 Eva Rachel Retuya wrote:
> diff --git a/drivers/staging/mt29f_spinand/mt29f_spinand.c b/drivers/staging/mt29f_spinand/mt29f_spinand.c
> index 1aa449e..cf98228 100644
> --- a/drivers/staging/mt29f_spinand/mt29f_spinand.c
> +++ b/drivers/staging/mt29f_spinand/mt29f_spinand.c
> @@ -594,7 +594,7 @@ static int spinand_erase_block(struct spi_device *spi_nand, u16 block_id)
>                 if (retval < 0) {
>                         dev_err(&spi_nand->dev,
>                                         "error %d reading status register\n",
> -                                       (int) retval);
> +                                       (int)retval);
>                         return retval;


The change is correct, but it would be nicer to remove the cast as well,
because 'retval' is already an 'int'.

	Arnd

