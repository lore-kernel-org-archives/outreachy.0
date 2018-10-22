X-GM-THRID: 6615126444577128448
X-Received: by 2002:a25:74cf:: with SMTP id p198-v6mr4553160ybc.89.1540216967781;
        Mon, 22 Oct 2018 07:02:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:824b:: with SMTP id d11-v6ls199578ybn.17.gmail; Mon, 22
 Oct 2018 07:02:46 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61ctQnY7h1HS+4CTd95J9LgbUn6gUP+VUVM3LV+bu4piolmhcXt95qHu5WZ5BAaZO2QZcpe
X-Received: by 2002:a25:ab70:: with SMTP id u103-v6mr26382810ybi.22.1540216966781;
        Mon, 22 Oct 2018 07:02:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540216966; cv=none;
        d=google.com; s=arc-20160816;
        b=XrRhvufUPUmklnFjm4MFYfk+07IzEftFb2n138kRkf/L9LFjLuYfQasyOY1esdLECC
         nAC+0ilVGbUtMTftIcaT3Ui5PFzzWt2WxfMnJdme51VwqHh3dpO19j6xBlncNF5MsOPM
         mr5hEiddsHNdYldCQjb9mj9Lm1YUtqgKzIJQcCQmtsNGd++Kzqn+cFKPjg0foPAr0jwI
         ESApqQusRO+uF11ZGe8MBpq/pGGCBbDTYa6DLmR8ngLZev4vQhyLC6ufkJou4vBrCVpj
         Ll7fe5xmDTnfutCzzVU9o5IGuDsy4u5yaK51oroLKKfaE4B9Dxrdrsc8qcAxlZRTLW7K
         FYfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=uvyDMrmxouBch8QU4tKzxXCMCZDZppxCMy93J1InZ98=;
        b=RB0w4UDqoMZjv4RrgNzQbID0E3ak7XCAJv9fhCrbT2U278XrAwO57XrwgVjYvDMBvl
         iToZnU3KOAwQSUbGoRePfWsRZZd9iHfJUMbTGnRSGK5V2ly0/unC34E/8oiQHXpxokbi
         d5LOBXbBI8loIFOYXogqYZmBP7VuG5LIACKOkfaLyqNwrOyo/sbHLz41ZPNTwwl1UqqS
         5HwE7Ksu5I1UESHI+zHbhsMNxzkRqIHOEvsjUTG4BDuhaI97nN6Lm/EeLBY9zCojoH5V
         ov4VzUSJoDUKJ9zytmfyPs2jTeHj7tTUm5ObyluuP9RBIW6DBCGqvs1YfQrfhyLeF5QM
         Na1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.237 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa09-08.prod.phx3.secureserver.net (p3plsmtpa09-08.prod.phx3.secureserver.net. [173.201.193.237])
        by gmr-mx.google.com with ESMTPS id i63-v6si364155ywb.4.2018.10.22.07.02.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Oct 2018 07:02:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.237 as permitted sender) client-ip=173.201.193.237;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.237 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-wm1-f47.google.com ([209.85.128.47])
	by :SMTPAUTH: with ESMTPSA
	id Ean6g6SVyOiBvEan7g8H4u; Mon, 22 Oct 2018 07:02:45 -0700
Received: by mail-wm1-f47.google.com with SMTP id a8-v6so10465650wmf.1
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Oct 2018 07:02:45 -0700 (PDT)
X-Gm-Message-State: ABuFfohdFyILk6EIzvYOIoUXfXwVcB2tPXeeAoe20cYz9hAzWPo4qx5D
	tGXCI4RAWx642fhFVRB9LU+RO4KA3CcKSpNUfYs=
X-Received: by 2002:a1c:88c8:: with SMTP id k191-v6mr15521890wmd.84.1540216964596;
 Mon, 22 Oct 2018 07:02:44 -0700 (PDT)
MIME-Version: 1.0
References: <20181022102752.GA12423@aakashd-VirtualBox>
In-Reply-To: <20181022102752.GA12423@aakashd-VirtualBox>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Mon, 22 Oct 2018 19:32:31 +0530
X-Gmail-Original-Message-ID: <CAK-LDbJLJNi4hxqFPE-8uuMfrpFOusXxPnMCz8q7yn17x8vACA@mail.gmail.com>
Message-ID: <CAK-LDbJLJNi4hxqFPE-8uuMfrpFOusXxPnMCz8q7yn17x8vACA@mail.gmail.com>
Subject: Re: [Outreachy kernel][PATCH] staging: rtlwifi: Unneeded function halbtc_get_wifi_rssi()
To: bhanusreemahesh@gmail.com
Cc: outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfFP9XQbHptvomV8Rj0RTcuEuGNhnHPZRkXlwjKlQlnphmXSZ4A7ipsUeY439cMGco4ypVc6+UWJENyuyucDHll24cfnYu+NXRlIl3A2KlYMQvxECZwpL
 QjXh1LvedRF4HqNavo2MWNMMy4TWgB/UhI1F0SujXdaIPtlZgYhHgScHttcA2kAej0uyJdi29JP8+tQSPIIQcSWf5ODc2YIuZvQ=

On Mon, Oct 22, 2018 at 3:59 PM Bhanusree Pola
<bhanusreemahesh@gmail.com> wrote:
>
> In the function halbtc_get_wifi_rssi:
>
> if and else are functionally identical.
> Unneeded return variable undec_sm_pwdb.
> Function not needed and so assigned value rtlpriv->dm.undec_sm_pwdb where
> the function halbtc_get_wifi_rssi() is called.

Hi Bhanusree,

The subject line is not clear here. It should be something like
'Remove unneeded function ... '. Always write what patch is
doing rather than just mentioning keywords.

Similarly for the commit log, I feel that it can improved a bit with
have proper sentences and structure. Probably something like:

'In function x, <insert_reason_one> and <insert_reason_two>.
So, function is not needed. And then <insert_what_patch_is_doing>.

> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c | 13 +------------
>  1 file changed, 1 insertion(+), 12 deletions(-)
>
> diff --git a/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c b/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c
> index 24e19ff..b519d18 100644
> --- a/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c
> +++ b/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c
> @@ -476,17 +476,6 @@ static u32 halbtc_get_wifi_link_status(struct btc_coexist *btcoexist)
>         return ret_val;
>  }
>
> -static s32 halbtc_get_wifi_rssi(struct rtl_priv *rtlpriv)
> -{
> -       int undec_sm_pwdb = 0;
> -
> -       if (rtlpriv->mac80211.link_state >= MAC80211_LINKED)
> -               undec_sm_pwdb = rtlpriv->dm.undec_sm_pwdb;
> -       else /* associated entry pwdb */
> -               undec_sm_pwdb = rtlpriv->dm.undec_sm_pwdb;
> -       return undec_sm_pwdb;
> -}
> -
>  static bool halbtc_get(void *void_btcoexist, u8 get_type, void *out_buf)
>  {
>         struct btc_coexist *btcoexist = (struct btc_coexist *)void_btcoexist;
> @@ -585,7 +574,7 @@ static bool halbtc_get(void *void_btcoexist, u8 get_type, void *out_buf)
>                 *bool_tmp = false;
>                 break;
>         case BTC_GET_S4_WIFI_RSSI:
> -               *s32_tmp = halbtc_get_wifi_rssi(rtlpriv);
> +               *s32_tmp = rtlpriv->dm.undec_sm_pwdb;
>                 break;
>         case BTC_GET_S4_HS_RSSI:
>                 *s32_tmp = 0;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181022102752.GA12423%40aakashd-VirtualBox.
> For more options, visit https://groups.google.com/d/optout.

