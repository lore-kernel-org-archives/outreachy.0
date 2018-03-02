X-GM-THRID: 6528466201738215424
X-Received: by 10.101.97.131 with SMTP id c3mr1395720pgv.148.1520027357269;
        Fri, 02 Mar 2018 13:49:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:68cb:: with SMTP id x11-v6ls4256605plm.5.gmail; Fri,
 02 Mar 2018 13:49:15 -0800 (PST)
X-Google-Smtp-Source: AG47ELtQxXUamaONfbzHUPZ+7Lu+VlvtuoBt3xV5KSBTUiBi1t8ilkmMPjX9/dJP8bcQeikXMUtP
X-Received: by 2002:a17:902:234b:: with SMTP id n11-v6mr1422894plg.52.1520027355922;
        Fri, 02 Mar 2018 13:49:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520027355; cv=none;
        d=google.com; s=arc-20160816;
        b=TdZbY8g5da4hk0Xtu5eF08hUkQM6tHCTCXb1CoPQSklL6C80AG7JKHzOwToF/IJyyk
         hd/023Ylj6+siGOb2wqB0WjZgWxQLQcldy2saiGwh1LLgsGlvH5rFNJAjeTd8TidQVW6
         m1YZApbyhyhSP/1Es5R7RcQazV9IMZRDsHsoWrIwi2cPVUfsqR9l72ynhbcNcj69+2/a
         +hDQw3NSDqqHpc3gM2K6/11YpnUAHUquOIA1/bZhmgvURmiIb7EJlZA0iVXINh89XzEn
         hYYNg51CYzowjyUo0iGHgoXMq0MMMNGoTa76kUOJB7gJkELlq9lpSF75hIMaaxDR5pUU
         a20Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=nO+s0ez5eLjSQrnvScq9zisVG32akede7zQGgiDKsQg=;
        b=vz40lQ4oOUmLfbPdyNG93AsF6iKKgSmZGK6N1v4Tib75Wo9LEocbRhStElbv8QeaLV
         NXMkiBY6eHWcr1iHPc6U7SS3UKU3lx0UDlIuDO243dgkCyY2OidLgMymauiRRuTghJft
         QBRbj2i4dV+9OEp36oYrZoiaFyJ5pF75Ed6cyvMLtOr5MGrF+nXKqTfM9i6TTi9sfr9I
         Etr/5ch0wwe0mw0JjQvt63jZJVtxab6/eba0yxf3P7fmazcU6D2nj5GThwkWbdVw99sL
         qsJNFrKcQ3NHsoRBNrulJDJqR7uJDej9LsEWpphBodUGRpInjn4/UHpriY2yC6X3nv1y
         6THQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ICAtL3Ty;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400d:c09::231 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-qk0-x231.google.com (mail-qk0-x231.google.com. [2607:f8b0:400d:c09::231])
        by gmr-mx.google.com with ESMTPS id n18si444484pfg.3.2018.03.02.13.49.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 13:49:15 -0800 (PST)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400d:c09::231 as permitted sender) client-ip=2607:f8b0:400d:c09::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ICAtL3Ty;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400d:c09::231 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x231.google.com with SMTP id 130so13755099qkd.13
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Mar 2018 13:49:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=nO+s0ez5eLjSQrnvScq9zisVG32akede7zQGgiDKsQg=;
        b=ICAtL3TyUWF/Qy+gFbOCEj6NWj/tAzjELg4bOLJVhZw2cdUqa2C6p9c2Lx7nsrhxZk
         sp6Yhwfs1U7r3yR54JPqoeGNIW5+MTE+unD6uu3s1XP/5AwoX3rTXL8p+zR9ONsHCWtQ
         RR6omqGWuVJ7mHMM9ddMEaRffb+G1mJY2e3a02Ec31Uay+K2xla0hyGUFU7rIMIUqlHD
         Nc3pL/XatdTb3LfTOH9tE1SYv0dM+LoFunsiMr9j5+vg9MPHzH5hceZ4FAVm/q7BFywQ
         0NOyZkIksZMkgyR2F7cgQYnyQobb7rPlJJrY/UTl+aD1HVFX2CsuWTk2l//yeuInl5SQ
         W+dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=nO+s0ez5eLjSQrnvScq9zisVG32akede7zQGgiDKsQg=;
        b=aScQyz0sWqkRqQUqYbTIsVvg8dc1TQ2IIKi5d/jA29QDVtG6AlW4BlFbhLh7qRrHS+
         Ocr/s6Q7Y84clDr775vyh80yqjF0J8wAjS/52liWbROFPzWRvwP+PApqU13L3RHPIPgZ
         WAZWIYnHy+JULfiLxLLMRdsfUGOA5CFR/WzPcMI5B/50P+0ZbzB7mpE7VKY9cOU8+H+S
         R2oA45Y6mehfibP+VtpKFiuAtEiCXKGRJZbludF2ymseBVRTu3KAwzriHqpl8V0i2uho
         +f25i+F/tHjRrgnU5OIMI+uqqrZELqVF+xOojhmRi9PcfGNZ4NFYrIztvCj7koKrKTpZ
         STvw==
X-Gm-Message-State: AElRT7FXwwbq9Sn/F1hsf39Z3O19lP66ht2XOUZuK7NdNMRvuYz2zCxL
	BO7sk6huYqwkLL1/F+RohZw8BG14/ENKZmRTdYo=
X-Received: by 10.55.72.4 with SMTP id v4mr10728324qka.170.1520027355110; Fri,
 02 Mar 2018 13:49:15 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.176.45 with HTTP; Fri, 2 Mar 2018 13:49:14 -0800 (PST)
In-Reply-To: <1520026941-16548-2-git-send-email-arushisinghal19971997@gmail.com>
References: <1520026941-16548-1-git-send-email-arushisinghal19971997@gmail.com>
 <1520026941-16548-2-git-send-email-arushisinghal19971997@gmail.com>
From: Shraddha Barke <shraddha.6596@gmail.com>
Date: Fri, 2 Mar 2018 22:49:14 +0100
Message-ID: <CAO393AD6M9K6GYrM35z2-xu+hwZs4BANThtAbVYzN543VS_TnQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/4] staging: rtl8712: Remove multiple
 blank line(s)
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="001a114a7d6a8ce0ab056674f256"

--001a114a7d6a8ce0ab056674f256
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 2, 2018 at 10:42 PM, Arushi Singhal <
arushisinghal19971997@gmail.com> wrote:

> From: Arushi Singhal <arushisinghal@gmail.com>
>
> Remove extra blank line(s) that were causing checkpatch issues.
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
>

Your From and Signed-off emails are still different (maybe check your git
config) Regarding the commit message, you should write why you removed
the extra lines say "to adhere to Linux coding style", not because they
were checkpatch errors. Give credit to the tool.
The change looks fine to me.


> ---
>  drivers/staging/rtl8712/os_intfs.c                 | 1 -
>  drivers/staging/rtl8712/rtl8712_bitdef.h           | 1 -
>  drivers/staging/rtl8712/rtl8712_cmdctrl_regdef.h   | 2 --
>  drivers/staging/rtl8712/rtl8712_debugctrl_bitdef.h | 1 -
>  drivers/staging/rtl8712/rtl8712_debugctrl_regdef.h | 2 --
>  drivers/staging/rtl8712/rtl8712_fifoctrl_bitdef.h  | 1 -
>  drivers/staging/rtl8712/rtl8712_fifoctrl_regdef.h  | 2 --
>  drivers/staging/rtl8712/rtl8712_gp_regdef.h        | 1 -
>  drivers/staging/rtl8712/rtl8712_interrupt_bitdef.h | 1 -
>  9 files changed, 12 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/os_intfs.c
> b/drivers/staging/rtl8712/os_intfs.c
> index d6d27da..ff4e451 100644
> --- a/drivers/staging/rtl8712/os_intfs.c
> +++ b/drivers/staging/rtl8712/os_intfs.c
> @@ -347,7 +347,6 @@ u8 r8712_free_drv_sw(struct _adapter *padapter)
>         return _SUCCESS;
>  }
>
> -
>  static void enable_video_mode(struct _adapter *padapter, int cbw40_value)
>  {
>         /*   bit 8:
> diff --git a/drivers/staging/rtl8712/rtl8712_bitdef.h
> b/drivers/staging/rtl8712/rtl8712_bitdef.h
> index bff57a8..dee35fe 100644
> --- a/drivers/staging/rtl8712/rtl8712_bitdef.h
> +++ b/drivers/staging/rtl8712/rtl8712_bitdef.h
> @@ -18,7 +18,6 @@
>   *
>   ************************************************************
> ******************/
>
> -
>  #ifndef __RTL8712_BITDEF_H__
>  #define __RTL8712_BITDEF_H__
>
> diff --git a/drivers/staging/rtl8712/rtl8712_cmdctrl_regdef.h
> b/drivers/staging/rtl8712/rtl8712_cmdctrl_regdef.h
> index 9374f1c..8df42a7 100644
> --- a/drivers/staging/rtl8712/rtl8712_cmdctrl_regdef.h
> +++ b/drivers/staging/rtl8712/rtl8712_cmdctrl_regdef.h
> @@ -20,7 +20,6 @@
>  #ifndef __RTL8712_CMDCTRL_REGDEF_H__
>  #define __RTL8712_CMDCTRL_REGDEF_H__
>
> -
>  #define CR                     (RTL8712_CMDCTRL_ + 0x0000)
>  #define TXPAUSE                        (RTL8712_CMDCTRL_ + 0x0002)
>  #define TCR                    (RTL8712_CMDCTRL_ + 0x0004)
> @@ -29,6 +28,5 @@
>  #define SYSF_CFG               (RTL8712_CMDCTRL_ + 0x000D)
>  #define MBIDCTRL               (RTL8712_CMDCTRL_ + 0x000E)
>
> -
>  #endif /* __RTL8712_CMDCTRL_REGDEF_H__ */
>
> diff --git a/drivers/staging/rtl8712/rtl8712_debugctrl_bitdef.h
> b/drivers/staging/rtl8712/rtl8712_debugctrl_bitdef.h
> index 8bd4837..4b34367 100644
> --- a/drivers/staging/rtl8712/rtl8712_debugctrl_bitdef.h
> +++ b/drivers/staging/rtl8712/rtl8712_debugctrl_bitdef.h
> @@ -51,5 +51,4 @@
>  /*FDLOCKFLAG1*/
>  #define        _LOCKFLAG1_MSK          0x03
>
> -
>  #endif /* __RTL8712_DEBUGCTRL_BITDEF_H__ */
> diff --git a/drivers/staging/rtl8712/rtl8712_debugctrl_regdef.h
> b/drivers/staging/rtl8712/rtl8712_debugctrl_regdef.h
> index 43630bb..d7c964d 100644
> --- a/drivers/staging/rtl8712/rtl8712_debugctrl_regdef.h
> +++ b/drivers/staging/rtl8712/rtl8712_debugctrl_regdef.h
> @@ -41,7 +41,5 @@
>  #define TRXPKTBUF_DBG_CTRL     (RTL8712_DEBUGCTRL_ + 0x38)
>  #define DPLL_MON               (RTL8712_DEBUGCTRL_ + 0x3A)
>
> -
> -
>  #endif /* __RTL8712_DEBUGCTRL_REGDEF_H__ */
>
> diff --git a/drivers/staging/rtl8712/rtl8712_fifoctrl_bitdef.h
> b/drivers/staging/rtl8712/rtl8712_fifoctrl_bitdef.h
> index c564dc8..bd82404 100644
> --- a/drivers/staging/rtl8712/rtl8712_fifoctrl_bitdef.h
> +++ b/drivers/staging/rtl8712/rtl8712_fifoctrl_bitdef.h
> @@ -140,6 +140,5 @@
>  /*TXFF_PG_NUM*/
>  #define        _TXFF_PG_NUM_MSK        0x0FFF
>
> -
>  #endif /*      __RTL8712_FIFOCTRL_BITDEF_H__ */
>
> diff --git a/drivers/staging/rtl8712/rtl8712_fifoctrl_regdef.h
> b/drivers/staging/rtl8712/rtl8712_fifoctrl_regdef.h
> index 29b89c4..6d52738 100644
> --- a/drivers/staging/rtl8712/rtl8712_fifoctrl_regdef.h
> +++ b/drivers/staging/rtl8712/rtl8712_fifoctrl_regdef.h
> @@ -71,6 +71,4 @@
>  #define TXQ_PGADD              (RTL8712_FIFOCTRL_ + 0xB3)
>  #define TXFF_PG_NUM            (RTL8712_FIFOCTRL_ + 0xB4)
>
> -
> -
>  #endif /* __RTL8712_FIFOCTRL_REGDEF_H__ */
> diff --git a/drivers/staging/rtl8712/rtl8712_gp_regdef.h
> b/drivers/staging/rtl8712/rtl8712_gp_regdef.h
> index 8fc68f6..a037936 100644
> --- a/drivers/staging/rtl8712/rtl8712_gp_regdef.h
> +++ b/drivers/staging/rtl8712/rtl8712_gp_regdef.h
> @@ -37,6 +37,5 @@
>  #define PHY_REG_RPT            (RTL8712_GP_ + 0x13)
>  #define PHY_REG_DATA           (RTL8712_GP_ + 0x14)
>
> -
>  #endif /*__RTL8712_GP_REGDEF_H__ */
>
> diff --git a/drivers/staging/rtl8712/rtl8712_interrupt_bitdef.h
> b/drivers/staging/rtl8712/rtl8712_interrupt_bitdef.h
> index 49598c3..2a561d2 100644
> --- a/drivers/staging/rtl8712/rtl8712_interrupt_bitdef.h
> +++ b/drivers/staging/rtl8712/rtl8712_interrupt_bitdef.h
> @@ -53,6 +53,5 @@
>  #define        _VODOK                                  BIT(1)
>  #define        _RXOK                                   BIT(0)
>
> -
>  #endif /*__RTL8712_INTERRUPT_BITDEF_H__*/
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/ms
> gid/outreachy-kernel/1520026941-16548-2-git-send-email-
> arushisinghal19971997%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>



-- 
Shraddha

--001a114a7d6a8ce0ab056674f256
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Fri, Mar 2, 2018 at 10:42 PM, Arushi Singhal <span dir=3D"ltr">&lt;<=
a href=3D"mailto:arushisinghal19971997@gmail.com" target=3D"_blank">arushis=
inghal19971997@gmail.<wbr>com</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">From: Arushi Singhal &lt;<a href=3D"mailto:arushisinghal@gmail.c=
om" target=3D"_blank">arushisinghal@gmail.com</a>&gt;<br>
<br>
Remove extra blank line(s) that were causing checkpatch issues.<br>
<br>
Signed-off-by: Arushi Singhal &lt;<a href=3D"mailto:arushisinghal19971997@g=
mail.com" target=3D"_blank">arushisinghal19971997@gmail.c<wbr>om</a>&gt;<br=
></blockquote><div><br></div><div>Your From and Signed-off emails are still=
 different (maybe check your git config) Regarding the commit message, you =
should write why you removed</div><div>the extra lines say &quot;to adhere =
to Linux coding style&quot;, not because they were checkpatch errors. Give =
credit to the tool.</div><div>The change looks fine to me.</div><div>=C2=A0=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">
---<br>
=C2=A0drivers/staging/rtl8712/os_in<wbr>tfs.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 1 -<br>
=C2=A0drivers/staging/rtl8712/rtl87<wbr>12_bitdef.h=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0| 1 -<br>
=C2=A0drivers/staging/rtl8712/rtl87<wbr>12_cmdctrl_regdef.h=C2=A0 =C2=A0| 2=
 --<br>
=C2=A0drivers/staging/rtl8712/rtl87<wbr>12_debugctrl_bitdef.h | 1 -<br>
=C2=A0drivers/staging/rtl8712/rtl87<wbr>12_debugctrl_regdef.h | 2 --<br>
=C2=A0drivers/staging/rtl8712/rtl87<wbr>12_fifoctrl_bitdef.h=C2=A0 | 1 -<br=
>
=C2=A0drivers/staging/rtl8712/rtl87<wbr>12_fifoctrl_regdef.h=C2=A0 | 2 --<b=
r>
=C2=A0drivers/staging/rtl8712/rtl87<wbr>12_gp_regdef.h=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 | 1 -<br>
=C2=A0drivers/staging/rtl8712/rtl87<wbr>12_interrupt_bitdef.h | 1 -<br>
=C2=A09 files changed, 12 deletions(-)<br>
<br>
diff --git a/drivers/staging/rtl8712/os_i<wbr>ntfs.c b/drivers/staging/rtl8=
712/os_i<wbr>ntfs.c<br>
index d6d27da..ff4e451 100644<br>
--- a/drivers/staging/rtl8712/os_i<wbr>ntfs.c<br>
+++ b/drivers/staging/rtl8712/os_i<wbr>ntfs.c<br>
@@ -347,7 +347,6 @@ u8 r8712_free_drv_sw(struct _adapter *padapter)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return _SUCCESS;<br>
=C2=A0}<br>
<br>
-<br>
=C2=A0static void enable_video_mode(struct _adapter *padapter, int cbw40_va=
lue)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /*=C2=A0 =C2=A0bit 8:<br>
diff --git a/drivers/staging/rtl8712/rtl8<wbr>712_bitdef.h b/drivers/stagin=
g/rtl8712/rtl8<wbr>712_bitdef.h<br>
index bff57a8..dee35fe 100644<br>
--- a/drivers/staging/rtl8712/rtl8<wbr>712_bitdef.h<br>
+++ b/drivers/staging/rtl8712/rtl8<wbr>712_bitdef.h<br>
@@ -18,7 +18,6 @@<br>
=C2=A0 *<br>
=C2=A0 ******************************<wbr>******************************<wb=
r>******************/<br>
<br>
-<br>
=C2=A0#ifndef __RTL8712_BITDEF_H__<br>
=C2=A0#define __RTL8712_BITDEF_H__<br>
<br>
diff --git a/drivers/staging/rtl8712/rtl8<wbr>712_cmdctrl_regdef.h b/driver=
s/staging/rtl8712/rtl8<wbr>712_cmdctrl_regdef.h<br>
index 9374f1c..8df42a7 100644<br>
--- a/drivers/staging/rtl8712/rtl8<wbr>712_cmdctrl_regdef.h<br>
+++ b/drivers/staging/rtl8712/rtl8<wbr>712_cmdctrl_regdef.h<br>
@@ -20,7 +20,6 @@<br>
=C2=A0#ifndef __RTL8712_CMDCTRL_REGDEF_H__<br>
=C2=A0#define __RTL8712_CMDCTRL_REGDEF_H__<br>
<br>
-<br>
=C2=A0#define CR=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0(RTL8712_CMDCTRL_ + 0x0000)<br>
=C2=A0#define TXPAUSE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (RTL8712_CMDCTRL_ + 0x0002)<br>
=C2=A0#define TCR=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 (RTL8712_CMDCTRL_ + 0x0004)<br>
@@ -29,6 +28,5 @@<br>
=C2=A0#define SYSF_CFG=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0(RTL8712_CMDCTRL_ + 0x000D)<br>
=C2=A0#define MBIDCTRL=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0(RTL8712_CMDCTRL_ + 0x000E)<br>
<br>
-<br>
=C2=A0#endif /* __RTL8712_CMDCTRL_REGDEF_H__ */<br>
<br>
diff --git a/drivers/staging/rtl8712/rtl8<wbr>712_debugctrl_bitdef.h b/driv=
ers/staging/rtl8712/rtl8<wbr>712_debugctrl_bitdef.h<br>
index 8bd4837..4b34367 100644<br>
--- a/drivers/staging/rtl8712/rtl8<wbr>712_debugctrl_bitdef.h<br>
+++ b/drivers/staging/rtl8712/rtl8<wbr>712_debugctrl_bitdef.h<br>
@@ -51,5 +51,4 @@<br>
=C2=A0/*FDLOCKFLAG1*/<br>
=C2=A0#define=C2=A0 =C2=A0 =C2=A0 =C2=A0 _LOCKFLAG1_MSK=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 0x03<br>
<br>
-<br>
=C2=A0#endif /* __RTL8712_DEBUGCTRL_BITDEF_H__ */<br>
diff --git a/drivers/staging/rtl8712/rtl8<wbr>712_debugctrl_regdef.h b/driv=
ers/staging/rtl8712/rtl8<wbr>712_debugctrl_regdef.h<br>
index 43630bb..d7c964d 100644<br>
--- a/drivers/staging/rtl8712/rtl8<wbr>712_debugctrl_regdef.h<br>
+++ b/drivers/staging/rtl8712/rtl8<wbr>712_debugctrl_regdef.h<br>
@@ -41,7 +41,5 @@<br>
=C2=A0#define TRXPKTBUF_DBG_CTRL=C2=A0 =C2=A0 =C2=A0(RTL8712_DEBUGCTRL_ + 0=
x38)<br>
=C2=A0#define DPLL_MON=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0(RTL8712_DEBUGCTRL_ + 0x3A)<br>
<br>
-<br>
-<br>
=C2=A0#endif /* __RTL8712_DEBUGCTRL_REGDEF_H__ */<br>
<br>
diff --git a/drivers/staging/rtl8712/rtl8<wbr>712_fifoctrl_bitdef.h b/drive=
rs/staging/rtl8712/rtl8<wbr>712_fifoctrl_bitdef.h<br>
index c564dc8..bd82404 100644<br>
--- a/drivers/staging/rtl8712/rtl8<wbr>712_fifoctrl_bitdef.h<br>
+++ b/drivers/staging/rtl8712/rtl8<wbr>712_fifoctrl_bitdef.h<br>
@@ -140,6 +140,5 @@<br>
=C2=A0/*TXFF_PG_NUM*/<br>
=C2=A0#define=C2=A0 =C2=A0 =C2=A0 =C2=A0 _TXFF_PG_NUM_MSK=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 0x0FFF<br>
<br>
-<br>
=C2=A0#endif /*=C2=A0 =C2=A0 =C2=A0 __RTL8712_FIFOCTRL_BITDEF_H__ */<br>
<br>
diff --git a/drivers/staging/rtl8712/rtl8<wbr>712_fifoctrl_regdef.h b/drive=
rs/staging/rtl8712/rtl8<wbr>712_fifoctrl_regdef.h<br>
index 29b89c4..6d52738 100644<br>
--- a/drivers/staging/rtl8712/rtl8<wbr>712_fifoctrl_regdef.h<br>
+++ b/drivers/staging/rtl8712/rtl8<wbr>712_fifoctrl_regdef.h<br>
@@ -71,6 +71,4 @@<br>
=C2=A0#define TXQ_PGADD=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (RT=
L8712_FIFOCTRL_ + 0xB3)<br>
=C2=A0#define TXFF_PG_NUM=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (RTL8712=
_FIFOCTRL_ + 0xB4)<br>
<br>
-<br>
-<br>
=C2=A0#endif /* __RTL8712_FIFOCTRL_REGDEF_H__ */<br>
diff --git a/drivers/staging/rtl8712/rtl8<wbr>712_gp_regdef.h b/drivers/sta=
ging/rtl8712/rtl8<wbr>712_gp_regdef.h<br>
index 8fc68f6..a037936 100644<br>
--- a/drivers/staging/rtl8712/rtl8<wbr>712_gp_regdef.h<br>
+++ b/drivers/staging/rtl8712/rtl8<wbr>712_gp_regdef.h<br>
@@ -37,6 +37,5 @@<br>
=C2=A0#define PHY_REG_RPT=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (RTL8712=
_GP_ + 0x13)<br>
=C2=A0#define PHY_REG_DATA=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(RTL8712=
_GP_ + 0x14)<br>
<br>
-<br>
=C2=A0#endif /*__RTL8712_GP_REGDEF_H__ */<br>
<br>
diff --git a/drivers/staging/rtl8712/rtl8<wbr>712_interrupt_bitdef.h b/driv=
ers/staging/rtl8712/rtl8<wbr>712_interrupt_bitdef.h<br>
index 49598c3..2a561d2 100644<br>
--- a/drivers/staging/rtl8712/rtl8<wbr>712_interrupt_bitdef.h<br>
+++ b/drivers/staging/rtl8712/rtl8<wbr>712_interrupt_bitdef.h<br>
@@ -53,6 +53,5 @@<br>
=C2=A0#define=C2=A0 =C2=A0 =C2=A0 =C2=A0 _VODOK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 BIT(1)<br>
=C2=A0#define=C2=A0 =C2=A0 =C2=A0 =C2=A0 _RXOK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0BIT(0)<br>
<br>
-<br>
=C2=A0#endif /*__RTL8712_INTERRUPT_BITDEF_H<wbr>__*/<br>
<span class=3D"m_-1426131017729868600HOEnZb"><font color=3D"#888888"><br>
--<br>
2.7.4<br>
<br>
--<br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank">outreachy-kernel+unsubscribe@g<wbr>ooglegroups.com</a>.<b=
r>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.<wbr>com</a>=
.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/1520026941-16548-2-git-send-email-arushisinghal=
19971997%40gmail.com" rel=3D"noreferrer" target=3D"_blank">https://groups.g=
oogle.com/d/ms<wbr>gid/outreachy-kernel/152002694<wbr>1-16548-2-git-send-em=
ail-<wbr>arushisinghal19971997%40gmail.<wbr>com</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/op<wbr>tout</=
a>.<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"m_-1426131017729868600gmail_signature" data-smartmail=3D"gm=
ail_signature"><div dir=3D"ltr">Shraddha<br></div></div>
</div></div>

--001a114a7d6a8ce0ab056674f256--

