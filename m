X-GM-THRID: 6675208982241476608
X-Received: by 2002:a2e:8345:: with SMTP id l5mr380986ljh.29.1554234345510;
        Tue, 02 Apr 2019 12:45:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:4116:: with SMTP id b22ls1268206lfi.11.gmail; Tue, 02
 Apr 2019 12:45:44 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwfdujmdMPUJ0mKzCn3nVRQuVMw+9mA3r8BKw/taEzUSEq9mjmN4vq+5kJii8VuXNcQJYTc
X-Received: by 2002:ac2:4856:: with SMTP id 22mr2300049lfy.12.1554234344625;
        Tue, 02 Apr 2019 12:45:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554234344; cv=none;
        d=google.com; s=arc-20160816;
        b=oU9wCmFiXErJnt6Fwvr5D+9L2Tfw31Wi+d+MK71tC6thQT+7N6uQwtJGwegZS0p+Y0
         3eIawcVz/N7Tyy5aeSEdomZXfIcyaPQg7vXEevie3orHYSXTDcz8YsiLRwBsN9NrUm95
         FmlxmNpwhwkfuxjGLPpb65K/cj0WSYL/VF0bneVJop2EAzOA5wd5/LomGRoxf5TDBRoN
         II89xoGtBv4HB99NnCLa8OJBaDtiIiwvG2duTl5f1H+Zz9NCx2n6ntjXInL3u4ncd+Y7
         dv9kPpJjWQcAuHH+eqUg9pIpiLQhW+ZnA0er3CdJPbJ9c/Ll7l6oX7Pb4Zp8JkAmjg4t
         uMJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=65GtE80I19OFRYsmyM1AsbV8uKOsIGK+HBRA/eAKSkk=;
        b=wvzpUYxonVo9KZ+LBEGWQSj9+pyVE+RJkVd+8TWeqcpO59Jqbq+WwJdM3g/Ir7ly7j
         L7CdK9RipT1kAIU5Q9HGaPyjsLYrD6NH17M+fEBkuGg20rR7gnutfUrjWXIHpWgtTvTY
         2L+jNqNDMfQ22zX31ga6LkVyyCxuWT86pYjGK7S+Xq0Hi00tpAehVxW7HEPtVeGqO1JD
         2dRn1E9paw6Cbu63UpIVOaVgk2Y/Tykow235k5zXy65GESHTWh7dOMBQzxtziWrAqzF2
         uT63slPIlYFbJi9rS/kPvfLcpqbOi+HfziirrFFHaC1VVyTgEIAMNIZsQKoCR6mm/Xv3
         Untw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id t82si655538lje.3.2019.04.02.12.45.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 12:45:44 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,301,1549926000"; 
   d="scan'208";a="301576840"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Apr 2019 21:45:43 +0200
Date: Tue, 2 Apr 2019 21:45:43 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: NIshka Dasgupta <nishka.dasgupta@yahoo.com>
cc: Greg KH <gregkh@linuxfoundation.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtlwifi: rtl8822be: hw.c:
 Remove parentheses
In-Reply-To: <2df6ffc7-d084-c254-e20a-a219e6eb05c0@yahoo.com>
Message-ID: <alpine.DEB.2.21.1904022144030.3803@hadrien>
References: <20190402081946.22590-1-nishka.dasgupta@yahoo.com> <alpine.DEB.2.20.1904021151040.3297@hadrien> <CAC4++KDCUWt832f+4R_Y-UDxe9HXeUf3m_N8QSCqLTr5Gd7Rvw@mail.gmail.com> <alpine.DEB.2.20.1904021159350.3297@hadrien>
 <2df6ffc7-d084-c254-e20a-a219e6eb05c0@yahoo.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 3 Apr 2019, NIshka Dasgupta wrote:

>
>
> On 02/04/19 3:30 PM, Julia Lawall wrote:
> >
> >
> > On Tue, 2 Apr 2019, Nishka Dasgupta wrote:
> >
> > > On Tue, Apr 2, 2019 at 3:21 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
> > > >
> > > >
> > > >
> > > > On Tue, 2 Apr 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:
> > > >
> > > > > Remove unnecessary parentheses around right hand side of expression.
> > > > > Issue found with Coccinelle script:
> > > > > @@expression e1, e2, e3;@@
> > > > > (if(e1)
> > > > > e2;
> > > > > else
> > > > > e3;
> > > > > |
> > > >
> > > > What is the purpose of the above code?
> > >
> > > Without that if block, my cocci file was also flagging if-else blocks.
> > > This block does nothing if an if-else sequence is matched. After
> > > adding this, my .cocci file has only documented assignment statements
> > > as required.
> >
> > Do you have a specific example?  I don't see how the pattern below can
> > have an impact on an entire if statement.It only matches an assignment.
> >
> My mistake; a previous version of paren.cocci looked something like this:
> @@expression e1, e2;@@
> e1 =
> - (e2);
> + e2;
>
> This was highlighting if-else blocks in mt7621-spi; it does not appear to be
> doing so any more, so perhaps whatever was triggering that has been fixed?
> This previous version of paren.cocci also picks up on expressions that have
> been split across multiple lines, for some reason.
> What was I doing wrong with this patch?

Often you don't care about the details of parentheses, so if they are
uniformly removed, Coccinelle also accepts the case where they simply
aren't there.  By putting the -( and -) on separate lines, with the
unremoved code in the middle, you got around this issue, and it only
changes the things that are desirable.

On the other hand, your original rule probably did a good job of solving
80 character problems :)

julia

>
> - Nishka
> > julia
> >
> >
> >
> > > - Nishka
> > >
> > > > julia
> > > >
> > > > > e1 =
> > > > > -(
> > > > > e2
> > > > > -)
> > > > > ;
> > > > > )
> > > > >
> > > > > Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> > > > > ---
> > > > >   drivers/staging/rtlwifi/rtl8822be/hw.c | 10 +++++-----
> > > > >   1 file changed, 5 insertions(+), 5 deletions(-)
> > > > >
> > > > > diff --git a/drivers/staging/rtlwifi/rtl8822be/hw.c
> > > > > b/drivers/staging/rtlwifi/rtl8822be/hw.c
> > > > > index 88ba5b2fea6a..847bd3bcd1d6 100644
> > > > > --- a/drivers/staging/rtlwifi/rtl8822be/hw.c
> > > > > +++ b/drivers/staging/rtlwifi/rtl8822be/hw.c
> > > > > @@ -243,7 +243,7 @@ static void _rtl8822be_fwlps_leave(struct
> > > > > ieee80211_hw *hw)
> > > > >        u8 rpwm_val = 0, fw_pwrmode = FW_PS_ACTIVE_MODE;
> > > > >
> > > > >        if (ppsc->low_power_enable) {
> > > > > -             rpwm_val = (FW_PS_STATE_ALL_ON_8822B | FW_PS_ACK); /* RF
> > > > > on */
> > > > > +             rpwm_val = FW_PS_STATE_ALL_ON_8822B | FW_PS_ACK; /* RF
> > > > > on */
> > > > >                _rtl8822be_set_fw_clock_on(hw, rpwm_val, false);
> > > > >                rtlhal->allow_sw_to_change_hwclc = false;
> > > > >                rtlpriv->cfg->ops->set_hw_reg(hw,
> > > > > HW_VAR_H2C_FW_PWRMODE,
> > > > > @@ -474,7 +474,7 @@ void rtl8822be_set_hw_reg(struct ieee80211_hw *hw,
> > > > > u8 variable, u8 *val)
> > > > >                rtl_write_byte(rtlpriv, REG_SECCFG_8822B, *((u8
> > > > > *)val));
> > > > >                break;
> > > > >        case HW_VAR_AMPDU_FACTOR: {
> > > > > -             u32 ampdu_len = (*((u8 *)val));
> > > > > +             u32 ampdu_len = *((u8 *)val);
> > > > >
> > > > >                ampdu_len = (0x2000 << ampdu_len) - 1;
> > > > >                rtl_write_dword(rtlpriv, REG_AMPDU_MAX_LENGTH_8822B,
> > > > > ampdu_len);
> > > > > @@ -583,7 +583,7 @@ void rtl8822be_set_hw_reg(struct ieee80211_hw *hw,
> > > > > u8 variable, u8 *val)
> > > > >                        _rtl8822be_fwlps_leave(hw);
> > > > >        } break;
> > > > >        case HW_VAR_H2C_FW_JOINBSSRPT: {
> > > > > -             u8 mstatus = (*(u8 *)val);
> > > > > +             u8 mstatus = *(u8 *)val;
> > > > >
> > > > >                if (mstatus == RT_MEDIA_CONNECT) {
> > > > >                        rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_AID,
> > > > > NULL);
> > > > > @@ -1912,7 +1912,7 @@ static void _rtl8822be_read_adapter_info(struct
> > > > > ieee80211_hw *hw)
> > > > >
> > > > >        /*board type*/
> > > > >        rtlefuse->board_type =
> > > > > -             (((*(u8 *)&hwinfo[EEPROM_RF_BOARD_OPTION_8822B]) & 0xE0)
> > > > > >> 5);
> > > > > +             ((*(u8 *)&hwinfo[EEPROM_RF_BOARD_OPTION_8822B]) & 0xE0)
> > > > > >> 5;
> > > > >        if ((*(u8 *)&hwinfo[EEPROM_RF_BOARD_OPTION_8822B]) == 0xFF)
> > > > >                rtlefuse->board_type = 0;
> > > > >
> > > > > @@ -2406,7 +2406,7 @@ void
> > > > > rtl8822be_read_bt_coexist_info_from_hwpg(struct ieee80211_hw *hw,
> > > > >
> > > > >                rtlpriv->btcoexist.btc_info.bt_type = BT_RTL8822B;
> > > > >                rtlpriv->btcoexist.btc_info.ant_num =
> > > > > -                     (value & BIT(0) ? ANT_TOTAL_X1 : ANT_TOTAL_X2);
> > > > > +                     value & BIT(0) ? ANT_TOTAL_X1 : ANT_TOTAL_X2;
> > > > >        } else {
> > > > >                rtlpriv->btcoexist.btc_info.bt_type = BT_RTL8822B;
> > > > >                rtlpriv->btcoexist.btc_info.ant_num = ANT_TOTAL_X2;
> > > > > --
> > > > > 2.19.1
> > > > >
> > > > > --
> > > > > You received this message because you are subscribed to the Google
> > > > > Groups "outreachy-kernel" group.
> > > > > To unsubscribe from this group and stop receiving emails from it, send
> > > > > an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > > To post to this group, send email to
> > > > > outreachy-kernel@googlegroups.com.
> > > > > To view this discussion on the web visit
> > > > > https://groups.google.com/d/msgid/outreachy-kernel/20190402081946.22590-1-nishka.dasgupta%40yahoo.com.
> > > > > For more options, visit https://groups.google.com/d/optout.
> > > > >
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google
> > > > Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send
> > > > an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > > To view this discussion on the web visit
> > > > https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1904021151040.3297%40hadrien.
> > > > For more options, visit https://groups.google.com/d/optout.
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups
> > > "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an
> > > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit
> > > https://groups.google.com/d/msgid/outreachy-kernel/CAC4%2B%2BKDCUWt832f%2B4R_Y-UDxe9HXeUf3m_N8QSCqLTr5Gd7Rvw%40mail.gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>

