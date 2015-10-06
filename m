X-GM-THRID: 6202235040430030848
X-Received: by 10.112.55.69 with SMTP id q5mr6016985lbp.24.1444118028069;
        Tue, 06 Oct 2015 00:53:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.25.67 with SMTP id 64ls586294lfz.41.gmail; Tue, 06 Oct 2015
 00:53:47 -0700 (PDT)
X-Received: by 10.112.132.6 with SMTP id oq6mr6005718lbb.1.1444118027506;
        Tue, 06 Oct 2015 00:53:47 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id bn1si529149wib.0.2015.10.06.00.53.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 00:53:47 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue101) with ESMTPSA (Nemesis) id 0MarfO-1a2XZp0sA6-00KPr6; Tue, 06 Oct
 2015 09:53:47 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Alison Schofield <amsfield22@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: fix comparison test warnings
Date: Tue, 06 Oct 2015 09:53:46 +0200
Message-ID: <5250385.UVr7jy50Xn@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151005183935.GA3350@Ubuntu-D830>
References: <20151005183935.GA3350@Ubuntu-D830>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:35EXAKRoCFnTagGJX9tCsoCu88GbzzSx6M9H/SsdAV0rZz/Og1s
 Ux857bzhlMcXaiX0Kt6E90E5F7//ZiYQPyty8vn9cmAbO9jzKx1ICdUv5Mf+DifOGe8u2FR
 qGAVGKXRkl+hgiVoKparelfnJfh/uKzCCdUHwJyjbR1H7HlffDqAKmeXVwcqiQDeVkQgxMp
 oFEueGUBdAKYEIw4v4LJA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:IYLeBE2ORmc=:XUERLW2EGnjQnlDYFFfxkp
 01fHImZDR/GyD0smobizKU44auxTczIJ0jO+jngneJNO6kyg0cQRcu2VVhPqjUlUXnZxDSRDl
 F8UNVkXfeYsCCQ2whzYpiO3l4PlPbT5wXIduWp+BuV1+opcEIb6zzEZf9Xn5NftvLdjBfioWK
 C12MCqgDjb9H64pJPvGt2mY/kvW2Z3RoAFH3dxZrLKSM7oCb3G2ZtSy3Ugh7VCJ0PZtj6LZwq
 yWWFviGGfWToOqxwyXbfJsIMkFKtLKzijCoAjKsDmIomZr9mN4faN77x5IIhLg8gmQo4vwwgt
 Q+uNWmEbVFs0cQ4pJPBKPlrvMVY76Fm080lTgBDPtuXHtNPHyR4TgCIDmYvogJOU1kEiaGg22
 cnfKOvE3oZryC7e0pqD/fAPTEVCDeMbIW52CTxyVW4lOUMmDcZZZo1MucJcyEoRjHysVDMJpx
 1uFptR6QYsSqE7gioj4eeqE11RHrdnt59H9uFnBqWA3u0uQ24y9qtUTvu1KSo04hSCj7k7huf
 eB5Q8t8Q4XVJOOKpBM3W+mxPLy9q6L8o6w9JsL8VZUurTpWvlhfHheRJYR33NTpiXECHk4h+j
 i+Q36Uhg16MaacgzfL611vU1TQiNx9Hp+Ku+YiccKWvIcxGmbp+PKp6g6Z//Dc7nLHKlKSx1X
 DOuzok4NqPjKY4rTYflhD6vxDMCsQSWdkIvVUAzWcXTM9vINGGi0y8cPzpUWvl6sOqfIYKpz1
 ltL3SAsQThSg8FGH

On Monday 05 October 2015 11:39:35 Alison Schofield wrote:
> --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> @@ -140,7 +140,7 @@ static inline void handle_pairwise_key(struct sta_info *psta,
>  static inline void handle_group_key(struct ieee_param *param,
>                                     struct _adapter *padapter)
>  {
> -       if (0 < param->u.crypt.idx &&
> +       if (param->u.crypt.idx > 0 &&
>             param->u.crypt.idx < 3) {
>                 /* group key idx is 1 or 2 */
>                 memcpy(padapter->securitypriv.XGrpKey[param->u.crypt.

this part is good.


> @@ -957,7 +957,7 @@ static int r871x_wx_set_priv(struct net_device *dev,
>         if (IS_ERR(ext))
>                 return PTR_ERR(ext);
>  
> -       if (0 == strcasecmp(ext, "RSSI")) {
> +       if (strcasecmp(ext, "RSSI") == 0) {
>                 /*Return received signal strength indicator in -db for */
>                 /* current AP */
>                 /*<ssid> Rssi xx */

while this and most of the other comparisons below can be further
improved by removing the "== 0" part. You can write this as

	if (!strcasecmp(ext, "RSSI")) {


	Arnd

