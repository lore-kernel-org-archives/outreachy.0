X-GM-THRID: 6204754090721804288
X-Received: by 10.112.150.229 with SMTP id ul5mr1316367lbb.2.1444675742429;
        Mon, 12 Oct 2015 11:49:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.107.65 with SMTP id ha1ls888057wib.18.canary; Mon, 12 Oct
 2015 11:49:01 -0700 (PDT)
X-Received: by 10.180.184.164 with SMTP id ev4mr3233623wic.3.1444675741362;
        Mon, 12 Oct 2015 11:49:01 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id i8si401514wib.1.2015.10.12.11.49.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 11:49:01 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue001) with ESMTPSA (Nemesis) id 0MQqZJ-1a9Cam049l-00U0ao; Mon, 12 Oct
 2015 20:49:01 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Shivani Bhardwaj <shivanib134@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 2/3] Staging: wilc1000: host_interface: Remove useless cast
Date: Mon, 12 Oct 2015 20:49 +0200
Message-ID: <31296892.7kyR2l26jl@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <aa140d8daabc374f3cc6bfc12625164e47b37acb.1444670615.git.shivanib134@gmail.com>
References: <cover.1444670615.git.shivanib134@gmail.com> <aa140d8daabc374f3cc6bfc12625164e47b37acb.1444670615.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:adG9LFvmVD1FJOVKRsa0tPBLHz/TLsFZIQ9m7ZOswcYgI2GUpvS
 1CmiDAdNJjeeKeMfgBgUytMxJeOe8Vk5euz6LSKKF1rUwnMr2oaJZd28bCpO20Q+ZgIm/QQ
 GKsFMINPZCZgvaHOTRUqXnMwQDD5aLIuDRbNanv9BYr8vw21MI4efUWPAzDeub2CPY2TWOt
 G3ws6r3kdG7cBlB7kdWAQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:5U+S2B/Up1o=:ZcBJE7xml9nZseXcnSOg2K
 TZnH9hySq6mF/iu/aIgcit7rnw+KdmdCwjUzxFKrM3kvMK6qa2Ol9rRpKn2aoDQDiOxikZ/0Q
 nR024HNa3hJYwTWNEIlVOA+h1KdRD9shckdoHo2w/TFLjZRi9AvCCJAKAp5ginDl42kKsLkxn
 dE7e1OUM39NpA2O/1mnRjUViZwo36rxW4GgnYMK8bWdVVW3fm4PP4Wk0wTD7Y0HN9y12g/Pzd
 IEDdUS6GxlX6I3Ms1RUF0FWQBhjIeNlkE5LMaL5QkpPRpcYECgyGsZvvu/M1r7jp90kZZVUMm
 LF1W+1+q4Xu88zyccquzTFy/u5NJu8rfARVLUFdVW799TO1Pszw71m7leXSM0cTvooUPbM16y
 UOE3uUKb6D1ojS5EIBOzMeLSD3e7NCq4kjY23Zl7czGsC/Jj2POiqNEnvRkFl4SS/PUHkFftc
 hpvT06WeAdzPibvRG90Dc1WOdi88GShN/z26u0kswTd0NVzMsExRYnf//gsDrSwIrFCP3UNrG
 o3N7DQHVix6G/WiUEp/0QqwauwUQMYS/w5AyDoxgpTTv4bhxkFCfH8VpqpfyLBJ5p2fyFU1gv
 ufRW4VPyQO0DsAr6tE50VYrd9HvonOuXjXPmAt0A+oR2xYq+ZvWW54hxvWsoElHHYuImnTeGL
 ZIuJociN3PU6AMCGlgRT+50wIQOfyLCJwCF3sg/7bScZTHyjNIN7DBIlXTwXSLEuPMyAIiMWO
 ZyihE3hVzaIHNQRf

On Monday 12 October 2015 23:02:53 Shivani Bhardwaj wrote:
> @@ -573,7 +573,6 @@ static s32 Handle_SetChannel(tstrWILC_WFIDrv *drvHandler,
>  
>         s32 s32Error = 0;
>         tstrWID strWID;
> -       tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>  
>         /*prepare configuration packet*/
>         strWID.u16WIDid = (u16)WID_CURRENT_CHANNEL;
> 

In the code I'm looking at, the variable is still used, just the cast
can be removed. I haven't checked the other variables, but I'd guess
that the same is true for them, because gcc tends to warn otherwise.

	Arnd

