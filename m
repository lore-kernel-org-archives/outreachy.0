X-GM-THRID: 6208125602285748224
X-Received: by 10.13.234.66 with SMTP id t63mr12266756ywe.45.1445524374811;
        Thu, 22 Oct 2015 07:32:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.50.208 with SMTP id e16ls1440546igo.42.canary; Thu, 22 Oct
 2015 07:32:54 -0700 (PDT)
X-Received: by 10.50.142.103 with SMTP id rv7mr31482873igb.2.1445524374292;
        Thu, 22 Oct 2015 07:32:54 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id j129si387632vkd.1.2015.10.22.07.32.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 07:32:54 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue004) with ESMTPSA (Nemesis) id 0LoMIP-1aQnSl1R97-00gIXj; Thu, 22 Oct
 2015 16:32:50 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Navya Sri Nizamkari <navyasri.tech@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: xgifb: Replace udelay function with usleep_range
Date: Thu, 22 Oct 2015 16:32:49 +0200
Message-ID: <4068506.RiYt4poRS2@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151022142429.GA13638@navya>
References: <20151022142429.GA13638@navya>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:s7OsYTXlB/YUqDrJ8AR5IqMXIm+8yOsDM+oz8wUjO3Keu0oMy8U
 IEKTpgktjBnuA18q1t2JQfJ9nH9cE03Cer6IwvakL6EMfT8ilwrwZv41iZokCZyzJt354Ar
 obNcKVWNBxBxUrl/wZj1wxx6H9QEPqXREWh/C+xsDHrCGWbuSKoNl9FaWHtyopBSv870hWI
 RGYRlk6VoASBzO6BaL/LA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:Y6a6BC9513c=:pbI2BBq/dwwSjN29s03cV9
 56CcagQmHdoPzkqkzwf+9qIyjUGIhwlvef2VfoXNqDv9Nfr6yArdTngEeiqwRBOHUi8Hxmb50
 uLFhT/uOXuM06vOUnlrhUP/Q6qkI9CCcFMwlH90M/WO48POfe2v2Urh//cNXoj0eOspkAMVzW
 0RwFwUc2hLIVEVr3nPFuIdhTQkheqNabJai4XT31486vvBmAIxrVBdIsSHHSawF+x2nMF92N5
 04SHPDHeJLNDGh7MQZA5uua0ND0/4CV9qInhjvTp4lC3UHOEkL9GPBHeH/ly2nkhuF0oJWFI7
 oV4shg8j9Q4ICFR9kLntdTRvkc9xOFswBuNkVbBebqwBq0L0r4lRd8zWcD+i9iKdbAHqj+RWW
 Af01Mum8rIf1PNSacp0jb2lzfDnz4Te7V0BQ+7TMuCN4O985gLSb/rCgQvThcLB2dA3z+VLTD
 Vcq1mD6SpivMCmMFJWT1XN8eUMn/D67KbfWViuDm4FbwvVvJ7TjfAY+PmU3iEr4Kix23dARbB
 KnmGz4Qcc0ftQQ3J7sMy1oyvN4zl8dDc8OwC9ThNoatvrDmSMsQHvTs0C8X9WhXbe01qJFwDt
 u0aj8Rlj+v1x6EKJkl89w65ecnYK9Yh2FZ0fXV8spwK1cLcsWkvekTnzXK3XfX2QK9IJzTa+Y
 Oh66Dd2Z2MJ59hL0KA/qy3U5BUnITR8EOSYg+I63Fua8EMjvToZQm8kRAhVnPHrK+TleVovEn
 dEfP60dtpPO2gSRM

On Thursday 22 October 2015 19:54:29 Navya Sri Nizamkari wrote:
> This patch fixes the checkpatch.pl check:
> 
> CHECK: usleep_range is preferred over udelay.
> Add 1 millisecond to the delay time to get a
> reasonable upper limit which saves one wakeup call.
> Do same throughout the file.
> 
> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> ---
> Changes in v2:
>   -Use the right function definition of usleep_range.
>   -Make commit message better.

It would be good to exlain in the commit message how you picked the
ranges and how you concluded that the conversion is safe.

> @@ -86,14 +86,14 @@ static void XGINew_DDR1x_MRS_340(unsigned long P3c4,
>         xgifb_reg_set(P3c4, 0x16, 0x00);
>         xgifb_reg_set(P3c4, 0x16, 0x80);
>  
> -       udelay(60);
> +       usleep_range(60, 1060);
>         xgifb_reg_set(P3c4, 0x18, pVBInfo->SR18[pVBInfo->ram_type]); /* SR18 */
>         xgifb_reg_set(P3c4, 0x19, 0x01);
>         xgifb_reg_set(P3c4, 0x16, 0x03);
>         xgifb_reg_set(P3c4, 0x16, 0x83);
>         mdelay(1);
>         xgifb_reg_set(P3c4, 0x1B, 0x03);
> -       udelay(500);
> +       usleep_range(500, 1500);
>         xgifb_reg_set(P3c4, 0x18, pVBInfo->SR18[pVBInfo->ram_type]); /* SR18 */
>         xgifb_reg_set(P3c4, 0x19, 0x00);
>         xgifb_reg_set(P3c4, 0x16, 0x03);
> 

Here you change the udelay() but not the mdelay() which is literally
a thousand times worse.

It's better to do both in the same patch I think.

	Arnd

