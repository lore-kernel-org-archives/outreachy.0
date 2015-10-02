X-GM-THRID: 6201108859850850304
X-Received: by 10.112.138.170 with SMTP id qr10mr3061137lbb.4.1443818734148;
        Fri, 02 Oct 2015 13:45:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.43.133 with SMTP id r127ls253151lfr.74.gmail; Fri, 02 Oct
 2015 13:45:33 -0700 (PDT)
X-Received: by 10.112.181.10 with SMTP id ds10mr1917373lbc.3.1443818733627;
        Fri, 02 Oct 2015 13:45:33 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id o5si23053wib.0.2015.10.02.13.45.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 13:45:33 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue004) with ESMTPSA (Nemesis) id 0MFOim-1ZuC1R1InM-00ER2l; Fri, 02 Oct
 2015 22:45:33 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Shraddha Barke <shraddha.6596@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 4/5] Staging: lustre: obdclass: genops: Declare as static
Date: Fri, 02 Oct 2015 22:45:32 +0200
Message-ID: <43620742.ee97XO87iK@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1443808154-13944-5-git-send-email-shraddha.6596@gmail.com>
References: <1443808154-13944-1-git-send-email-shraddha.6596@gmail.com> <1443808154-13944-5-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:h1zlTaZjSOdt0JF2TTWNQTXnX29E5TdyX3UzOlWCVoUoRPvPq5A
 jeYwR5STAqvg7+AZxMX7x1BhFA2thOe8D2rT1BdrBQVPHBjrj0IHZOjJXFchZl/I3V/tM0D
 NxOg4wnSccxBvr8zWjJ53N25QvL7fGKAyMGnexgrRjECiy6i/qZrPL6oAQbn4GvBCTbgSKh
 U1b6xIb4qdCLwDHWZ4RSg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:jsbuvsg2lT0=:ZwUqUeT/vuukgG5D4H4w4J
 9btsAaAIriAJNiZu8i2LpIsVXQ9/b8WvsDL7r/40ivir0U2keZ80OddacYqqLIV5IpE8CNk8L
 dSA+jXDpNgabwNTrucxoatTnRUI6OUSu/AD7nnGMCtYv850AGDy+FBNWEmd5wDJYqA879znzT
 7CpoZtctsks3aZ+q1IRq2DUuyR+JgzOQ0Ld78YEkikIpjf5uCGHD28jPj6dt4agfq4QGfyiCk
 mRJIcXv003ERTKa9ZxQkByEZPWZHqWcbgmG8jT6t5WS6w6AD096EkdmZA+iguhYvkCqC7Dl7Z
 pLmUikChjNcwlkRxoGasgS5WW3PcF4beyoAL2Hqcj9BeETWorJwm6r0oUZekVc3ud0t64q3Yu
 /TZrR6/nv9FOwLXajliE2U6djTwGWmoVWb6Ie8RqIoGbbU4dogFWhLezUiGQrhkRN0NR1dZ78
 eMyua2hmnPhsnNKYNgTeWgtOLXVt19uR4QTMFrhkXLs//RDf1tl7y/DM7HaXi8O+sb5M+SvWU
 3LuQ2MIkreXWWI5nT7mkYsAHz/sN2Swdjmc6bPO8ZHz2Snda9A8R7nlq0C59VkAJJ3aRsip/K
 akjkJciZnqzxWY1A9rMlSuHqOJj696u7tX6jI38YGPutQxY92nSqSheMTEekYj4y6LNgx9rWm
 6CliePV7OBxz7wjDda23OAvvREh+Oug7wsaFCKY+Qh9/wkwOHa/8Nx+zXttIgrikQ7Ws0x4XY
 WJE58PHCsGPTE4Wn

On Friday 02 October 2015 23:19:13 Shraddha Barke wrote:
> --- a/drivers/staging/lustre/lustre/include/obd_class.h
> +++ b/drivers/staging/lustre/lustre/include/obd_class.h
> @@ -256,8 +256,6 @@ void class_import_put(struct obd_import *);
>  struct obd_import *class_new_import(struct obd_device *obd);
>  void class_destroy_import(struct obd_import *exp);
>  
> -struct obd_type *class_search_type(const char *name);
> -struct obd_type *class_get_type(const char *name);
>  void class_put_type(struct obd_type *type);
>  int class_connect(struct lustre_handle *conn, struct obd_device *obd,
>                   struct obd_uuid *cluuid);

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

I've dug a little deeper and found that class_put_type() falls into the
same category once you realize that 'ldt_obd_type' is always NULL.

It would make sense to do another patch to remove that member (also look
at surrounding members of the same struct to see if more may be unused)
and the caller of class_put_type().

	Arnd

