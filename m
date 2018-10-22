X-GM-THRID: 6615126444577128448
X-Received: by 2002:a17:906:1908:: with SMTP id a8-v6mr1203449eje.13.1540218736196;
        Mon, 22 Oct 2018 07:32:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:bc02:: with SMTP id j2-v6ls292529edh.3.gmail; Mon, 22
 Oct 2018 07:32:15 -0700 (PDT)
X-Google-Smtp-Source: AJdET5eT6MX/hr24P2TQfaag7Ph+Ub+RqKRWzdKUKCiiUyB6Sbf0uNWleori3EWTMms0CUAFbry+
X-Received: by 2002:aa7:cdc1:: with SMTP id h1-v6mr1231216edw.4.1540218735493;
        Mon, 22 Oct 2018 07:32:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540218735; cv=none;
        d=google.com; s=arc-20160816;
        b=gf7+VsCgMpzsL2HNcuUPi3xa5JvxHg7IdZwWGn3H3SkGyKHAOTed9u+ogmPKii3d88
         AxwzHXhLmfm9rIdS3RbFuxbW8J5RaaUrtcGQ5dCB8jwOilmnmipEseFB0T1sGxYzjBdD
         Xo3QxlxET5D6VK4gw16AoBmrXJlftu5dyt3el2eVbmnNJktVyjlWpMjELV1oPo+NbSBx
         GDQWq9empPQI2Fx66i2eOfX01DvR9zChlby6EsmhHKp9R0/m69JPzTXx9/HuA5WEfknM
         BpM3f56aGN02dQbb7FeufU7iDUvUvYsDqzwEUxpNHW0GC3b3DSvusj99SNO7ToLu8J2/
         E0aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=qsVMo0VtuWw95tLXzafNzgzs0KIKzClDM0EVtBKWsWY=;
        b=kPMNIlVcr9UVM6OV6Z784iqo4eOxAxPpdm0uN/JbQsamGUz8xMBM6rZGy6NUTFIG56
         4nNfFu3tZ390/iHvIM5zMl5Tm4CCK+vl8OTv4jTPemzYiOa3rdOKU6zG9gjwpQbmGzf4
         8oVU26S0INlBVD4HOt9dpoYBjgzvVezpY8eKQpRBCzmNDE+pyjCMDI9yD1NmbPvGIJ/B
         jEV+zVd04kAg5nWLxITYZFfXz3qFojBrPw1smfrQ8toXsw9gFhbyX/ip6ac/oyj3B+ml
         Vz4GMSNEXjFap649P1olN8aCvQAE29258mrEq+B8ISgAlEfU7CJK6F6doHsURbTcZY9L
         y9Lg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id g31-v6si133504edc.1.2018.10.22.07.32.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Oct 2018 07:32:15 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,412,1534802400"; 
   d="scan'208";a="352272057"
Received: from unknown (HELO hadrien) ([185.7.230.215])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Oct 2018 16:32:04 +0200
Date: Mon, 22 Oct 2018 15:32:04 +0100 (BST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Mahesh <bhanusreemahesh@gmail.com>
cc: Vaishali Thakkar <vthakkar@vaishalithakkar.in>, 
    outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel][PATCH] staging: rtlwifi: Unneeded function
 halbtc_get_wifi_rssi()
In-Reply-To: <CAB0Mk-NsLvS5fn8Hi58G1Y4ykVRquWqp1ybU=Yw6A1fvtSLZYg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1810221531490.2343@hadrien>
References: <20181022102752.GA12423@aakashd-VirtualBox> <CAK-LDbJLJNi4hxqFPE-8uuMfrpFOusXxPnMCz8q7yn17x8vACA@mail.gmail.com> <CAB0Mk-NsLvS5fn8Hi58G1Y4ykVRquWqp1ybU=Yw6A1fvtSLZYg@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-350853877-1540218725=:2343"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-350853877-1540218725=:2343
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 22 Oct 2018, Bhanusree Mahesh wrote:

> Ok, will do that.  As I was asked to be imperative I did not elaborate the
> commit log. Will change it and send. 

Remember not to top post as well :)

julia

> Bhanusree
>
>
>
> On Mon, 22 Oct 2018 19:32 Vaishali Thakkar, <vthakkar@vaishalithakkar.in>
> wrote:
>       On Mon, Oct 22, 2018 at 3:59 PM Bhanusree Pola
>       <bhanusreemahesh@gmail.com> wrote:
>       >
>       > In the function halbtc_get_wifi_rssi:
>       >
>       > if and else are functionally identical.
>       > Unneeded return variable undec_sm_pwdb.
>       > Function not needed and so assigned value
>       rtlpriv->dm.undec_sm_pwdb where
>       > the function halbtc_get_wifi_rssi() is called.
>
>       Hi Bhanusree,
>
>       The subject line is not clear here. It should be something like
>       'Remove unneeded function ... '. Always write what patch is
>       doing rather than just mentioning keywords.
>
>       Similarly for the commit log, I feel that it can improved a bit
>       with
>       have proper sentences and structure. Probably something like:
>
>       'In function x, <insert_reason_one> and <insert_reason_two>.
>       So, function is not needed. And then
>       <insert_what_patch_is_doing>.
>
>       > Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
>       > ---
>       >  drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c | 13
>       +------------
>       >  1 file changed, 1 insertion(+), 12 deletions(-)
>       >
>       > diff --git a/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c
>       b/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c
>       > index 24e19ff..b519d18 100644
>       > --- a/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c
>       > +++ b/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c
>       > @@ -476,17 +476,6 @@ static u32
>       halbtc_get_wifi_link_status(struct btc_coexist *btcoexist)
>       >         return ret_val;
>       >  }
>       >
>       > -static s32 halbtc_get_wifi_rssi(struct rtl_priv *rtlpriv)
>       > -{
>       > -       int undec_sm_pwdb = 0;
>       > -
>       > -       if (rtlpriv->mac80211.link_state >= MAC80211_LINKED)
>       > -               undec_sm_pwdb = rtlpriv->dm.undec_sm_pwdb;
>       > -       else /* associated entry pwdb */
>       > -               undec_sm_pwdb = rtlpriv->dm.undec_sm_pwdb;
>       > -       return undec_sm_pwdb;
>       > -}
>       > -
>       >  static bool halbtc_get(void *void_btcoexist, u8 get_type,
>       void *out_buf)
>       >  {
>       >         struct btc_coexist *btcoexist = (struct btc_coexist
>       *)void_btcoexist;
>       > @@ -585,7 +574,7 @@ static bool halbtc_get(void
>       *void_btcoexist, u8 get_type, void *out_buf)
>       >                 *bool_tmp = false;
>       >                 break;
>       >         case BTC_GET_S4_WIFI_RSSI:
>       > -               *s32_tmp = halbtc_get_wifi_rssi(rtlpriv);
>       > +               *s32_tmp = rtlpriv->dm.undec_sm_pwdb;
>       >                 break;
>       >         case BTC_GET_S4_HS_RSSI:
>       >                 *s32_tmp = 0;
>       > --
>       > 2.7.4
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to
>       outreachy-kernel+unsubscribe@googlegroups.com.
>       > To post to this group, send email to
>       outreachy-kernel@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20181022102752.GA12423%4
>       0aakashd-VirtualBox.
>       > For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAB0Mk-NsLvS5fn8Hi58G1Y4
> ykVRquWqp1ybU%3DYw6A1fvtSLZYg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-350853877-1540218725=:2343--

