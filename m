X-GM-THRID: 6668944264527872000
X-Received: by 2002:a1c:ef02:: with SMTP id n2mr462981wmh.15.1552739720060;
        Sat, 16 Mar 2019 05:35:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:40c3:: with SMTP id b3ls2305162wrq.8.gmail; Sat, 16 Mar
 2019 05:35:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxd5eQ4HA2qE43eNGXvt3WvORuxnnUIGVgFybh5XzzzzZ9WrYxWi+LXJf6cVNwtODmn+GbO
X-Received: by 2002:adf:fb0c:: with SMTP id c12mr379008wrr.28.1552739719218;
        Sat, 16 Mar 2019 05:35:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552739719; cv=none;
        d=google.com; s=arc-20160816;
        b=sWPWGmSqIxPsNa7A4nh7/DakhY1TyYgn6cfsv7LDyFmrWh3nVHf+5Y/bQgU5d4SAaG
         tc3T8a6MAp082UROaN8uExctFmsmX/YMoadj3TRx0bRG+F+9AtOVCdGEUDbm+Niy9++I
         oJI8nl7tKK0cd5vFANjLL7bm04j79qtpAfqVvyGmwLt9UMXt4YE7pSaSGL7BJ+r57Nbu
         3FN3zXi8YZC2K/RLywXaAC6e47oWGk2DRJEwrQR/N+NpBZcPBG1HGvnptnHYJ3uJ4hUw
         ZolrKHPiA9SXyhk4+KuRkEnHu4DPOMUngPtqaNWelHW6R/Mj+ID7wWm3BXugq7guhZkF
         tl0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=yCyNKRJ8RMda2ImsmbrPqgkL/e/x6k6DZHEoVa9gWWg=;
        b=Bb/XamWSQUwycN3pJ56EqzABOruuT8VhbGzlhuqnGrb8PZjcU7bGZ0AfVp0JzNWTOV
         Z7cxH/Un0Vd3kHsekUHr8d2qKt5UVSFRchpTZxG1SfVeKXuuIXu1VjP6bGnQk/fBE8eG
         e5L5Y5CpK8cVG3pMPe5s8je4023G5kURF1QstaPrOgMDLyLSM0tE7c+mD3L1RZt8tgO7
         vyLXKCU3B6qz7/sL4mstA5eZ3r0eRFSVuCCFzST4pnD+EsptWvAqkPgfm5sLVuO2QBRt
         GnZ27orFsJZpw/ku9pt8dnWgNw7bFG9VYSGrb8ZtDsHcfMF69v0Oh7SyEifBdcpHnCT3
         npSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n2si170164wrp.5.2019.03.16.05.35.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 05:35:19 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,485,1544482800"; 
   d="scan'208";a="373996458"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2019 13:35:18 +0100
Date: Sat, 16 Mar 2019 13:35:18 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himadri Pandya <himadri18.07@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: rtl8723bs: hal: Remove
 comparision to NULL
In-Reply-To: <CAPnhUpYy8H7h-0UqK6fu+Kjd9mSMCkXJ87W7kJJYqhX4AZSrZg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1903161334160.2487@hadrien>
References: <20190316102759.20272-1-himadri18.07@gmail.com> <20190316102759.20272-4-himadri18.07@gmail.com> <alpine.DEB.2.21.1903161317440.2487@hadrien> <CAPnhUpYy8H7h-0UqK6fu+Kjd9mSMCkXJ87W7kJJYqhX4AZSrZg@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-924567467-1552739719=:2487"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-924567467-1552739719=:2487
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 16 Mar 2019, Himadri Pandya wrote:

>
>
> On Sat, 16 Mar, 2019, 5:48 PM Julia Lawall, <julia.lawall@lip6.fr> wrote:
>
>
>       On Sat, 16 Mar 2019, Himadri Pandya wrote:
>
>       > Remove comparision to NULL. Suggested by Coccinelle.
>       >
>       > Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
>       > ---
>       >  drivers/staging/rtl8723bs/hal/hal_btcoex.c | 8 ++++----
>       >  drivers/staging/rtl8723bs/hal/hal_com.c    | 8 ++++----
>       >  2 files changed, 8 insertions(+), 8 deletions(-)
>       >
>       > diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
>       > index 2b43f6d3c762..8eb28f97ebcc 100644
>       > --- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
>       > +++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
>       > @@ -75,7 +75,7 @@ static BTCDBGINFO GLBtcDbgInfo;
>       >
>       >  static void DBG_BT_INFO_INIT(PBTCDBGINFO pinfo, u8 *pbuf, u32 size)
>       >  {
>       > -     if (NULL == pinfo)
>       > +     if (!pinfo)
>       >               return;
>       >
>       >       memset(pinfo, 0, sizeof(BTCDBGINFO));
>       > @@ -95,7 +95,7 @@ void DBG_BT_INFO(u8 *dbgmsg)
>       >
>       >       pinfo = &GLBtcDbgInfo;
>       >
>       > -     if (NULL == pinfo->info)
>       > +     if (!pinfo->info)
>       >               return;
>       >
>       >       msglen = strlen(dbgmsg);
>       > @@ -1571,7 +1571,7 @@ void hal_btcoex_SetDBG(struct adapter *padapter, u32 *pDbgModule)
>       >       u32 i;
>       >
>       >
>       > -     if (NULL == pDbgModule)
>       > +     if (!pDbgModule)
>       >               return;
>       >
>       >       for (i = 0; i < BTC_MSG_MAX; i++)
>       > @@ -1585,7 +1585,7 @@ u32 hal_btcoex_GetDBG(struct adapter *padapter, u8 *pStrBuf, u32 bufSize)
>       >       u32 leftSize;
>       >
>       >
>       > -     if ((NULL == pStrBuf) || (0 == bufSize))
>       > +     if (!pStrBuf || (0 == bufSize))
>
>       It's another issue, so not for this patch, but the kernel prefers
>       constants on the right.
>
>       julia
>
>
> I couldn't understand. Should I resend this patch as well? Or it should not be part of this patchset? 
>
> Constants on the right means "pStrBuf == NULL" instead of "NULL == pStrBuf", right? In that case, if I'm removing the comparison itself, I guess it is okay. Please correct me if I'm mistaken.

I was referring to the 0, actually, which is on the left. If you want to
make that change too, then it would be another patch in this series.  But
it's not obligatory, it was just an observation.

julia

>
> Thank you.
>
> - Himadri
>
>
>       >               return 0;
>       >
>       >       pstr = pStrBuf;
>       > diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
>       > index 7f8ec55b08f1..b97b53c34449 100644
>       > --- a/drivers/staging/rtl8723bs/hal/hal_com.c
>       > +++ b/drivers/staging/rtl8723bs/hal/hal_com.c
>       > @@ -18,7 +18,7 @@ u8 rtw_hal_data_init(struct adapter *padapter)
>       >       if (is_primary_adapter(padapter)) {     /* if (padapter->isprimary) */
>       >               padapter->hal_data_sz = sizeof(struct hal_com_data);
>       >               padapter->HalData = vzalloc(padapter->hal_data_sz);
>       > -             if (padapter->HalData == NULL) {
>       > +             if (!padapter->HalData) {
>       >                       DBG_8192C("cannot alloc memory for HAL DATA\n");
>       >                       return _FAIL;
>       >               }
>       > @@ -909,7 +909,7 @@ s32 c2h_evt_read_88xx(struct adapter *adapter, u8 *buf)
>       >       int i;
>       >       u8 trigger;
>       >
>       > -     if (buf == NULL)
>       > +     if (!buf)
>       >               goto exit;
>       >
>       >       trigger = rtw_read8(adapter, REG_C2HEVT_CLEAR);
>       > @@ -982,7 +982,7 @@ void rtw_hal_update_sta_rate_mask(struct adapter *padapter, struct sta_info *pst
>       >       u8 i, rf_type, limit;
>       >       u32 tx_ra_bitmap;
>       >
>       > -     if (psta == NULL)
>       > +     if (!psta)
>       >               return;
>       >
>       >       tx_ra_bitmap = 0;
>       > @@ -1407,7 +1407,7 @@ bool GetHexValueFromString(char *szStr, u32 *pu4bVal, u32 *pu4bMove)
>       >       char *szScan = szStr;
>       >
>       >       /*  Check input parameter. */
>       > -     if (szStr == NULL || pu4bVal == NULL || pu4bMove == NULL) {
>       > +     if (!szStr || !pu4bVal || !pu4bMove) {
>       >               DBG_871X("GetHexValueFromString(): Invalid input arguments! szStr: %p, pu4bVal: %p, pu4bMove: %p\n",
>       >                        szStr, pu4bVal, pu4bMove);
>       >               return false;
>       > --
>       > 2.17.1
>       >
>       > --
>       > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>       > To post to this group, send email to outreachy-kernel@googlegroups.com.
>       > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190316102759.20272-4-himadri18.07%40gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
>       --
>       You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>       To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>       To post to this group, send email to outreachy-kernel@googlegroups.com.
>       To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903161317440.2487%40hadrien.
>       For more options, visit https://groups.google.com/d/optout.
>
>
>
--8323329-924567467-1552739719=:2487--

