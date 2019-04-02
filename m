X-GM-THRID: 6675208982241476608
X-Received: by 2002:a50:928a:: with SMTP id k10mr4911462eda.10.1554199240869;
        Tue, 02 Apr 2019 03:00:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:4f85:: with SMTP id o5ls1664740eju.3.gmail; Tue, 02
 Apr 2019 03:00:39 -0700 (PDT)
X-Google-Smtp-Source: APXvYqybmeNFqoXk0cprsBFJPzcQbURlAaOSS5WgNKQbSkAem3x/OjITRcX28hw10mHOrCUlc5M6
X-Received: by 2002:a17:906:80cb:: with SMTP id a11mr647576ejx.18.1554199239537;
        Tue, 02 Apr 2019 03:00:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554199239; cv=none;
        d=google.com; s=arc-20160816;
        b=mjUily9YTgW9ryyDLJysSPVuhh1/6uiKNZdMKqaQ6qrblcg9/nruAXn4jBCn2KhhrP
         gl5LYU46V7IaSxDC/dU3PKR3RMGCnucs1JQySXEcDRWtfy4/jztOubyPgcydG33fy4qZ
         DxotAsLFsmZKlahX47HKC6A3Lmfbl0Ou3VXwXdYXdk6emFqhqrh/y5U1+EQ7uus846+F
         NvbRqsC2v0azihxlM4DIaizrQ7csQiCquzwU+IsJlP+x9WgKiyEMViJ8Jw6fSkE8qokY
         2STtJGi/hgMxkMVjlD5tk6RnPxiDVKJVRmk7WeCsIfXTILtYHZQYVHyZGI36xkGilTJk
         0Vng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=JWI+SsuHMvReX+8RobtRVi3TsfQguS9kKUi1mqbj1Ew=;
        b=JbaAdNNnObwoCr8xInhVMUqTUGX4FghulvBnHrckyLehuMcWv7wc9RzgH6sYuS08Ro
         vYkKwP3Z1+M6ULLsBT5jwXTcCkCAENPQ9chZ6eDsx3mU/bt2hfM+aUjSt4TwLZ/LfGiE
         w7yMVbb2/jkj690cHNwmN9J+6XCGs5AfM5IgP88P2s+yNoc/amz8j8SDnX6XynqFVuHp
         f2VlXvEYnzrenObCoN540yChl9A5rMnNk6q9jXeJiJ/2Eg7j4CB8qo25awV6L+cz2Bad
         TTHGx4+eTthpQBJOQaj7mX/olhxDaJtL4QamVU/wiyV4YH55ubIxbiv30QQIybh2NzdI
         B9Rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ck11si511664ejb.0.2019.04.02.03.00.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 03:00:39 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,300,1549926000"; 
   d="scan'208";a="376798466"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Apr 2019 12:00:39 +0200
Date: Tue, 2 Apr 2019 12:00:35 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>, 
    Greg KH <gregkh@linuxfoundation.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtlwifi: rtl8822be: hw.c:
 Remove parentheses
In-Reply-To: <CAC4++KDCUWt832f+4R_Y-UDxe9HXeUf3m_N8QSCqLTr5Gd7Rvw@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1904021159350.3297@hadrien>
References: <20190402081946.22590-1-nishka.dasgupta@yahoo.com> <alpine.DEB.2.20.1904021151040.3297@hadrien> <CAC4++KDCUWt832f+4R_Y-UDxe9HXeUf3m_N8QSCqLTr5Gd7Rvw@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 2 Apr 2019, Nishka Dasgupta wrote:

> On Tue, Apr 2, 2019 at 3:21 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> >
> > On Tue, 2 Apr 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:
> >
> > > Remove unnecessary parentheses around right hand side of expression.
> > > Issue found with Coccinelle script:
> > > @@expression e1, e2, e3;@@
> > > (if(e1)
> > > e2;
> > > else
> > > e3;
> > > |
> >
> > What is the purpose of the above code?
>
> Without that if block, my cocci file was also flagging if-else blocks.
> This block does nothing if an if-else sequence is matched. After
> adding this, my .cocci file has only documented assignment statements
> as required.

Do you have a specific example?  I don't see how the pattern below can
have an impact on an entire if statement.It only matches an assignment.

julia



> - Nishka
>
> > julia
> >
> > > e1 =
> > > -(
> > > e2
> > > -)
> > > ;
> > > )
> > >
> > > Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> > > ---
> > >  drivers/staging/rtlwifi/rtl8822be/hw.c | 10 +++++-----
> > >  1 file changed, 5 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtlwifi/rtl8822be/hw.c b/drivers/staging/rtlwifi/rtl8822be/hw.c
> > > index 88ba5b2fea6a..847bd3bcd1d6 100644
> > > --- a/drivers/staging/rtlwifi/rtl8822be/hw.c
> > > +++ b/drivers/staging/rtlwifi/rtl8822be/hw.c
> > > @@ -243,7 +243,7 @@ static void _rtl8822be_fwlps_leave(struct ieee80211_hw *hw)
> > >       u8 rpwm_val = 0, fw_pwrmode = FW_PS_ACTIVE_MODE;
> > >
> > >       if (ppsc->low_power_enable) {
> > > -             rpwm_val = (FW_PS_STATE_ALL_ON_8822B | FW_PS_ACK); /* RF on */
> > > +             rpwm_val = FW_PS_STATE_ALL_ON_8822B | FW_PS_ACK; /* RF on */
> > >               _rtl8822be_set_fw_clock_on(hw, rpwm_val, false);
> > >               rtlhal->allow_sw_to_change_hwclc = false;
> > >               rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_H2C_FW_PWRMODE,
> > > @@ -474,7 +474,7 @@ void rtl8822be_set_hw_reg(struct ieee80211_hw *hw, u8 variable, u8 *val)
> > >               rtl_write_byte(rtlpriv, REG_SECCFG_8822B, *((u8 *)val));
> > >               break;
> > >       case HW_VAR_AMPDU_FACTOR: {
> > > -             u32 ampdu_len = (*((u8 *)val));
> > > +             u32 ampdu_len = *((u8 *)val);
> > >
> > >               ampdu_len = (0x2000 << ampdu_len) - 1;
> > >               rtl_write_dword(rtlpriv, REG_AMPDU_MAX_LENGTH_8822B, ampdu_len);
> > > @@ -583,7 +583,7 @@ void rtl8822be_set_hw_reg(struct ieee80211_hw *hw, u8 variable, u8 *val)
> > >                       _rtl8822be_fwlps_leave(hw);
> > >       } break;
> > >       case HW_VAR_H2C_FW_JOINBSSRPT: {
> > > -             u8 mstatus = (*(u8 *)val);
> > > +             u8 mstatus = *(u8 *)val;
> > >
> > >               if (mstatus == RT_MEDIA_CONNECT) {
> > >                       rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_AID, NULL);
> > > @@ -1912,7 +1912,7 @@ static void _rtl8822be_read_adapter_info(struct ieee80211_hw *hw)
> > >
> > >       /*board type*/
> > >       rtlefuse->board_type =
> > > -             (((*(u8 *)&hwinfo[EEPROM_RF_BOARD_OPTION_8822B]) & 0xE0) >> 5);
> > > +             ((*(u8 *)&hwinfo[EEPROM_RF_BOARD_OPTION_8822B]) & 0xE0) >> 5;
> > >       if ((*(u8 *)&hwinfo[EEPROM_RF_BOARD_OPTION_8822B]) == 0xFF)
> > >               rtlefuse->board_type = 0;
> > >
> > > @@ -2406,7 +2406,7 @@ void rtl8822be_read_bt_coexist_info_from_hwpg(struct ieee80211_hw *hw,
> > >
> > >               rtlpriv->btcoexist.btc_info.bt_type = BT_RTL8822B;
> > >               rtlpriv->btcoexist.btc_info.ant_num =
> > > -                     (value & BIT(0) ? ANT_TOTAL_X1 : ANT_TOTAL_X2);
> > > +                     value & BIT(0) ? ANT_TOTAL_X1 : ANT_TOTAL_X2;
> > >       } else {
> > >               rtlpriv->btcoexist.btc_info.bt_type = BT_RTL8822B;
> > >               rtlpriv->btcoexist.btc_info.ant_num = ANT_TOTAL_X2;
> > > --
> > > 2.19.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190402081946.22590-1-nishka.dasgupta%40yahoo.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1904021151040.3297%40hadrien.
> > For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAC4%2B%2BKDCUWt832f%2B4R_Y-UDxe9HXeUf3m_N8QSCqLTr5Gd7Rvw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

