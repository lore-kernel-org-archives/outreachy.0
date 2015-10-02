X-GM-THRID: 6200774307110453248
X-Received: by 10.112.202.165 with SMTP id kj5mr3016244lbc.5.1443821287326;
        Fri, 02 Oct 2015 14:28:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.39.6 with SMTP id n6ls242131lfn.36.gmail; Fri, 02 Oct 2015
 14:28:06 -0700 (PDT)
X-Received: by 10.112.130.41 with SMTP id ob9mr2990546lbb.17.1443821286612;
        Fri, 02 Oct 2015 14:28:06 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id xl3si126238wib.1.2015.10.02.14.28.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 14:28:06 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue104) with ESMTPSA (Nemesis) id 0LbagN-1aNU1l0zud-00lDhg; Fri, 02 Oct
 2015 23:28:06 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 0/3] use resource managed devm_iio_device_register
Date: Fri, 02 Oct 2015 23:28:05 +0200
Message-ID: <8187227.aifReskkfY@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <cover.1443781973.git.ciorneiioana@gmail.com>
References: <cover.1443781973.git.ciorneiioana@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:/2gD/ZAHhMAeq5xku2Ywd+7qfCy1oX4BVCPJCKmxyE/BJWUm3bc
 vlz5JEGO3tDvY5/oeT8TmQBF1avKLuycNol+sf5x7D8QcR2vudd918yO0ABLgm/0dT02Uip
 C7b5L4HRY5xcrAvk35CYoibCLLMIUf7gpBdKmTNXFVoAzFf9r2xpwxmAk+dkZYK9HqW2vZ/
 Xtbtn4sMisGsOotba+rXg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:HFYQ1wYBfJ4=:4MHikNfBS2C0j0xh4C7zr9
 VQ7/TM+WIwanmEKETNicFbKTmOFuuIVNwQXDARlHW9JnmSGM0IilKtpV2EWLTxWx0o7Ehoq/l
 07M/5DxfP82vCrqjhyHyX7zqof/MKeSMSDFuxWh5/hClYkOLYPvfSfkiyWHrOJal77+tiDek6
 Gk34MHOF6v/4ZhCevsK8BgBGeTDHfGb4Y6geKhJihxrXmwtpehWW3wLbE429Rp1cJUwRtpTU3
 /WLXiWcX2Z5AeIeq4mB7hal8j46H3Tb1iKh742UtPIQr4mu3tDQgO5/3ULVW9qkcWu7SFN2/g
 XVguKXFyjgeyZkxAEggqfngZ6niQ6UvahFcuPAxwTDrvCLXjl9eNhuYcFQ6H3wiQ+85Rrwpay
 bybRczr+dvLxI4p4Mfo+AQnA6+tTp7mQGRKvQzMIVTMSc1cn9nZcVTBfsywIDxRB1lQuzLAy3
 l2UHYhFtU3b3q5U4wCI03bx2FdXL6OJf/Ok8FHKyvulWlcDlVRJTJy3w75D1XAxNNZ184b6j5
 sIslB/rLDujE8n60fc+jtgji+GzqoNij9MSCQrwSys0s/9gr3R/mObeOXkPqowPUi4zTlmuhz
 Nb99+dWoPi6FUS1qDwSAPVUoGXnhSHWajoXLM5EXSrWNeouFxQ9JsyUqf9J12helitU8nADpn
 B8tqNLjuLUexo2S2+b+UlIpL+GYBUXxrDPGvMpIYK+qwyHvmPsNk2Tz6kNw+dz8YUShnRng/f
 tcELUjAE/Xw+qxX7

On Friday 02 October 2015 13:37:47 Ioana Ciornei wrote:
> This patchset replaces the use of iio_device_register with
> the resource managed function devm_iio_device_register when the remove function
> only unregisters the device. Since an iio_dev registered with this function is
> automatically unregistered on driver detach there is no need for the remove
> function and therefore it is removed.
> 

Hi Ioana,

I see you got a 'Reviewed-by: Vaishali Thakkar <vthakkar1994@gmail.com>'
reply for this already. If someone replies with a tag like this, please
it add below your Signed-off-by line.

[The patches look ok to me as well, but I'm not sure enough about the
meaning of devm_iio_device_register() to provide my own Reviewed-by]

	Arnd

