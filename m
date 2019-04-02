X-GM-THRID: 6675208982241476608
X-Received: by 2002:a24:cb41:: with SMTP id u62mr365258itg.1.1554199072386;
        Tue, 02 Apr 2019 02:57:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:b:: with SMTP id 11ls768437ita.0.gmail; Tue, 02 Apr 2019
 02:57:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwemeuDhXxFtu6NlfPYVv4hsAW+JscaeeRYYBtyWmuAsL8/HSEC0lhX4leRcISy0reX+g/q
X-Received: by 2002:a24:4e86:: with SMTP id r128mr7901944ita.27.1554199071321;
        Tue, 02 Apr 2019 02:57:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554199071; cv=none;
        d=google.com; s=arc-20160816;
        b=LKWNJgYrPNrqm+jLcz8iwBLj6eTHb8sPpisYxEInjlRp54C9fsIrxWiNb8bPxaT1vK
         2Z1uxdwE3fw0F+NwVyHf62vGpR1xUoQRfrcbtFZ+YJqfUHjDdtveXjnEenpIor/Y6ihU
         Tif6yOhAv/A27bpRN5Bgv8UxcQIQ1w6e6DJhL2O3q010fuy3NIHKzimoHhLlKtcXJ5us
         M0FkZfm4xPBPeuTODSI4/WMYuIKsKGmQn5dCQja3GaRUwuLM4EhVeu6IKzrTNwfMH/T9
         RRLSvTXkF6/tunQ/ehXCTBEK0qg1TqTRR0UXS3wbujedcdV+sG7tYuZXDl1rVDsMtpbw
         YYlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8mR2vbG2DB4FLl9HqoG/FgstJfZDLO7xDH8g5gFvUcU=;
        b=yu1h9rysS1unihmLtXSeZbxBHHnCELw8tsU4DgoQWZk6e8OQC6ngmC6Q5Qd2sc98+k
         6KHBkz46z1AyAFeAdy8DJAHSvU/t+A3WbA4u19+2K5XzUsTKjSycIUGY99s8XL5OYta/
         EzsfEzsCNtLfY2yUvA53V2195Z5TDNHCFcDIs0/2ThUEwsC3SpkELAEYMZE1dyEoQ+5K
         GCuUkx0gtqimFwjIZT6s0LE8fUoegoydHdRneXKg2HrRvCOc/+nHgarwLVbhyVWzztLW
         iPiY2pC2INTQkr0xSNCJSPZ+5vy/QrggK2fdw23OG3exuXwwkLzV/YlKqr+gCWOPipzC
         fzcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=ZxU2aN7E;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4864:20::831 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com. [2607:f8b0:4864:20::831])
        by gmr-mx.google.com with ESMTPS id g127si1384747ita.3.2019.04.02.02.57.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 02:57:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4864:20::831 as permitted sender) client-ip=2607:f8b0:4864:20::831;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=ZxU2aN7E;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4864:20::831 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-qt1-x831.google.com with SMTP id d13so14453100qth.5
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 02:57:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8mR2vbG2DB4FLl9HqoG/FgstJfZDLO7xDH8g5gFvUcU=;
        b=ZxU2aN7ETCuEO6YeHkptyGlnv4vOiChgswi+VfvgcSmuQQs38GS+R0nG3rcXApEgK0
         8om+Ks+hWGFIhJldIQm8V/NjtXyiFJbvqCJX0X/zhPQn++owPAMu2UNTNpSBHVIAoon+
         4SkU0yR36/TVCpSppKXdifhSowZlSW/lB0bFk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8mR2vbG2DB4FLl9HqoG/FgstJfZDLO7xDH8g5gFvUcU=;
        b=pliabOkf9KJmgkS6aV13f7HnFj7jxw/YIpXZNueyHmIwTiGlT1hnkho58xW4kh/pxe
         K9F63kU+woslX8Jg3b2IDCNpEjkS5P43I3s5wmPAoZYUyJpuEIwDk5cyQMuT7auofQQk
         d6LQNRqTw/NRTBUGfNW+nLyk+dQjQtilYQNy6a0C/JfX/LgnYAhpefFg4p6DzVUlkNbu
         Lo7AK1sBousKpirec8Er5YAr60P1Go4s7VgpoQgsCQKSCO+AmucVVkCJVWO2CII3q1IY
         e8jnESP0pvKS1Yxo/sHU2B3uIFuE0b8XYIy9keA2SuH8bPqv/X66f6iaarwrq6Q/PeMw
         IGAw==
X-Gm-Message-State: APjAAAU3pMaBfGSBX7/FT+QuiDc32jth+VvUcBIowQsOpAX9uwT1dkMQ
	s4nJOIOvfsKM6KanDRA+0/qih7s774uFFGk11XjoMia8300=
X-Received: by 2002:ac8:fc8:: with SMTP id f8mr57772325qtk.214.1554199070476;
 Tue, 02 Apr 2019 02:57:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190402081946.22590-1-nishka.dasgupta@yahoo.com> <alpine.DEB.2.20.1904021151040.3297@hadrien>
In-Reply-To: <alpine.DEB.2.20.1904021151040.3297@hadrien>
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Tue, 2 Apr 2019 15:27:38 +0530
Message-ID: <CAC4++KDCUWt832f+4R_Y-UDxe9HXeUf3m_N8QSCqLTr5Gd7Rvw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtlwifi: rtl8822be: hw.c:
 Remove parentheses
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>, Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, Apr 2, 2019 at 3:21 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Tue, 2 Apr 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:
>
> > Remove unnecessary parentheses around right hand side of expression.
> > Issue found with Coccinelle script:
> > @@expression e1, e2, e3;@@
> > (if(e1)
> > e2;
> > else
> > e3;
> > |
>
> What is the purpose of the above code?

Without that if block, my cocci file was also flagging if-else blocks.
This block does nothing if an if-else sequence is matched. After
adding this, my .cocci file has only documented assignment statements
as required.
- Nishka

> julia
>
> > e1 =
> > -(
> > e2
> > -)
> > ;
> > )
> >
> > Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> > ---
> >  drivers/staging/rtlwifi/rtl8822be/hw.c | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/staging/rtlwifi/rtl8822be/hw.c b/drivers/staging/rtlwifi/rtl8822be/hw.c
> > index 88ba5b2fea6a..847bd3bcd1d6 100644
> > --- a/drivers/staging/rtlwifi/rtl8822be/hw.c
> > +++ b/drivers/staging/rtlwifi/rtl8822be/hw.c
> > @@ -243,7 +243,7 @@ static void _rtl8822be_fwlps_leave(struct ieee80211_hw *hw)
> >       u8 rpwm_val = 0, fw_pwrmode = FW_PS_ACTIVE_MODE;
> >
> >       if (ppsc->low_power_enable) {
> > -             rpwm_val = (FW_PS_STATE_ALL_ON_8822B | FW_PS_ACK); /* RF on */
> > +             rpwm_val = FW_PS_STATE_ALL_ON_8822B | FW_PS_ACK; /* RF on */
> >               _rtl8822be_set_fw_clock_on(hw, rpwm_val, false);
> >               rtlhal->allow_sw_to_change_hwclc = false;
> >               rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_H2C_FW_PWRMODE,
> > @@ -474,7 +474,7 @@ void rtl8822be_set_hw_reg(struct ieee80211_hw *hw, u8 variable, u8 *val)
> >               rtl_write_byte(rtlpriv, REG_SECCFG_8822B, *((u8 *)val));
> >               break;
> >       case HW_VAR_AMPDU_FACTOR: {
> > -             u32 ampdu_len = (*((u8 *)val));
> > +             u32 ampdu_len = *((u8 *)val);
> >
> >               ampdu_len = (0x2000 << ampdu_len) - 1;
> >               rtl_write_dword(rtlpriv, REG_AMPDU_MAX_LENGTH_8822B, ampdu_len);
> > @@ -583,7 +583,7 @@ void rtl8822be_set_hw_reg(struct ieee80211_hw *hw, u8 variable, u8 *val)
> >                       _rtl8822be_fwlps_leave(hw);
> >       } break;
> >       case HW_VAR_H2C_FW_JOINBSSRPT: {
> > -             u8 mstatus = (*(u8 *)val);
> > +             u8 mstatus = *(u8 *)val;
> >
> >               if (mstatus == RT_MEDIA_CONNECT) {
> >                       rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_AID, NULL);
> > @@ -1912,7 +1912,7 @@ static void _rtl8822be_read_adapter_info(struct ieee80211_hw *hw)
> >
> >       /*board type*/
> >       rtlefuse->board_type =
> > -             (((*(u8 *)&hwinfo[EEPROM_RF_BOARD_OPTION_8822B]) & 0xE0) >> 5);
> > +             ((*(u8 *)&hwinfo[EEPROM_RF_BOARD_OPTION_8822B]) & 0xE0) >> 5;
> >       if ((*(u8 *)&hwinfo[EEPROM_RF_BOARD_OPTION_8822B]) == 0xFF)
> >               rtlefuse->board_type = 0;
> >
> > @@ -2406,7 +2406,7 @@ void rtl8822be_read_bt_coexist_info_from_hwpg(struct ieee80211_hw *hw,
> >
> >               rtlpriv->btcoexist.btc_info.bt_type = BT_RTL8822B;
> >               rtlpriv->btcoexist.btc_info.ant_num =
> > -                     (value & BIT(0) ? ANT_TOTAL_X1 : ANT_TOTAL_X2);
> > +                     value & BIT(0) ? ANT_TOTAL_X1 : ANT_TOTAL_X2;
> >       } else {
> >               rtlpriv->btcoexist.btc_info.bt_type = BT_RTL8822B;
> >               rtlpriv->btcoexist.btc_info.ant_num = ANT_TOTAL_X2;
> > --
> > 2.19.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190402081946.22590-1-nishka.dasgupta%40yahoo.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1904021151040.3297%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

