X-GM-THRID: 75436654592
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bead06cd7830e23e
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.45.38 with SMTP id o26mr24585757yhb.32.1424163763239;
        Tue, 17 Feb 2015 01:02:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.108.134 with SMTP id j6ls255066qgf.74.gmail; Tue, 17 Feb
 2015 01:02:43 -0800 (PST)
X-Received: by 10.140.146.68 with SMTP id 65mr9891660qhs.4.1424163763061;
        Tue, 17 Feb 2015 01:02:43 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id u2si1294790igh.0.2015.02.17.01.02.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 01:02:43 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.126.187;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue002) with ESMTPSA (Nemesis) id 0LfKSP-1XmAUi2obB-00p2Qs; Tue, 17 Feb
 2015 10:02:41 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Vaishali Thakkar <vthakkar1994@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Use put_unaligned_le16
Date: Tue, 17 Feb 2015 10:02:41 +0100
Message-ID: <5088504.ztKkpVtGdP@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20150217044257.GA3424@vaishali-Ideapad-Z570>
References: <20150217044257.GA3424@vaishali-Ideapad-Z570>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:u+6HeX65Sj09uFmsuSIW8qbFdsxWXf7d0L1Pdap6QBT1Tp5L4ac
 RTGr0JXm/wNh/uwpiF86EaLSRKDIpksL9+pJyWAWGHi8Ocu+yy0RXyb4zdsjWDttvur7P/I
 EwLsCPZrMmdl8tBHmfyJG3yqYnm/sRCiWqJOkNoooDKZoKmCZdDnLh7I81ATYiioqrcVEFl
 dwQpPAElLooEy10vCRHuw==
X-UI-Out-Filterresults: notjunk:1;

On Tuesday 17 February 2015 10:12:57 Vaishali Thakkar wrote:
> diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
> index da19145..0b7b156 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
> @@ -81,8 +81,6 @@ static void update_BCNTIM(struct adapter *padapter)
>                 __le16 tim_bitmap_le;
>                 uint offset, tmp_len, tim_ielen, tim_ie_offset, remainder_ielen;
>  
> -               tim_bitmap_le = cpu_to_le16(pstapriv->tim_bitmap);
> -
>                 p = rtw_get_ie(pie + _FIXED_IE_LENGTH_, _TIM_IE_, &tim_ielen, pnetwork_mlmeext->IELength - _FIXED_IE_LENGTH_);
>                 if (p != NULL && tim_ielen > 0) {
>                         tim_ielen += 2;
> @@ -139,7 +137,7 @@ static void update_BCNTIM(struct adapter *padapter)
>                 if (tim_ielen == 4) {
>                         *dst_ie++ = *(u8 *)&tim_bitmap_le;
>                 } else if (tim_ielen == 5) {
> -                       memcpy(dst_ie, &tim_bitmap_le, 2);
> +                       put_unaligned_le16(pstapriv->tim_bitmap, dst_ie);
>                         dst_ie += 2;

I think you are introducing the use of an uninitialized variable here, when
tim_bitmap_le is accessed first.

You should always compile the code you change to check for new warnings,
and when you remove the use of a variable, check who else is using it
and if it can be removed. In this case, I'd suggest removing the 
tim_bitmap_le variable entirely and fixing the other use as well.

	Arnd

