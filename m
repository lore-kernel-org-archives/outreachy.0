X-GM-THRID: 3543146692608
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3ec6524604eff670
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.86.1 with SMTP id l1mr1149977wjz.0.1424944383699;
        Thu, 26 Feb 2015 01:53:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.22.65 with SMTP id b1ls11256laf.99.gmail; Thu, 26 Feb 2015
 01:53:03 -0800 (PST)
X-Received: by 10.112.9.65 with SMTP id x1mr1171962lba.16.1424944382833;
        Thu, 26 Feb 2015 01:53:02 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wg0-x22d.google.com (mail-wg0-x22d.google.com. [2a00:1450:400c:c00::22d])
        by gmr-mx.google.com with ESMTPS id l8si1471288wia.0.2015.02.26.01.53.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 01:53:02 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) client-ip=2a00:1450:400c:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghk14 with SMTP id k14so8973513wgh.4
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 01:53:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=JsdBG4kmgnRhQBK6Uf1w75TrIk8KaNHYhxb+egZ4pcs=;
        b=L9MfGwy0U2z74Nr9WQnuoyOYBozIkcX5UVI6NJxuq5K0RmknXTCuBTDgAkLsPP0TM9
         0qptqWMh+h58oVN2d8q+87qpYppGCZVv48MAknYm59RGeerEAZSZxxKpf0d86cf0oCFw
         VIiwyHDFjKyI/gNQG8ws4XhpTRBT1WCNjC+eF/xf/SzLAU/X4Pku5ReDGOa8fxMpBxio
         Wuhcz46k6f+p3HBgYETXbrHsBlDkwUgTgZVY82Ef1K0+7UL4rew1fXs6GaVlf597IKbW
         UgnqC4L+HGtfpnTPzeUzlbqnRw3dXnyMJ+vtx++4CIKuk1Vh4i2pZxkaIitsYcDQ/44N
         El6Q==
MIME-Version: 1.0
X-Received: by 10.194.77.99 with SMTP id r3mr14859377wjw.149.1424944382692;
 Thu, 26 Feb 2015 01:53:02 -0800 (PST)
Received: by 10.194.13.168 with HTTP; Thu, 26 Feb 2015 01:53:02 -0800 (PST)
Received: by 10.194.13.168 with HTTP; Thu, 26 Feb 2015 01:53:02 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1502261006270.2414@hadrien>
References: <cover.1424930708.git.vthakkar1994@gmail.com>
	<0abbd76b80c2fb55ac1300e682f7c974dcaeba43.1424930708.git.vthakkar1994@gmail.com>
	<alpine.DEB.2.02.1502260719540.2109@localhost6.localdomain6>
	<CAK-LDb+KYhTYuF8KLddV3vUsmDgSsVrumXT54qJbDr1xp78MJg@mail.gmail.com>
	<alpine.DEB.2.10.1502261006270.2414@hadrien>
Date: Thu, 26 Feb 2015 15:23:02 +0530
Message-ID: <CAK-LDb+wgqyFrKR+DLC2x=N1wyPY-997rApXbn76a9YAwV0TCQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: rtl8188eu: Eliminate use
 of _set_timer
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=047d7bfd0918c15255050ffab7de

--047d7bfd0918c15255050ffab7de
Content-Type: text/plain; charset=UTF-8

On 26 Feb 2015 14:39, "Julia Lawall" <julia.lawall@lip6.fr> wrote:
>
> On Thu, 26 Feb 2015, Vaishali Thakkar wrote:
>
> > On Thu, Feb 26, 2015 at 11:50 AM, Julia Lawall <julia.lawall@lip6.fr>
wrote:
> > >> Here, some of cases are handled using Coccinelle and
> > >> semantic patch used for this is as follows:
> > >
> > > What was not handled in this way?
> >
> > Cases where there are numbers as a time-delay instead of identifier.
> > Like this:
> >
> >  _set_timer(&adapter->mlmepriv.dynamic_chk_timer, 2000);
> >
> > As they are very few and have different values, I handled them by hand.
> >
> > > julia
> > >
> > >> @@ expression x; identifier y;@@
>
> I don't think there is any need for y to be an identifier.  You could just
> put expression y.

Oops! Yes. You are right. I guess I missed that. I should have tried it. I
will send  v2 of this patch set with this change.

Thank You

> julia
>
> > >>
> > >> - _set_timer (&x, y);
> > >> + mod_timer (&x, jiffies + msecs_to_jiffies (y));
> > >>
> > >> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
> > >> ---
> > >> v1 : Here, this patch has some line over 80 characters as
> > >>      limiting them to 80 characters does not make code look
> > >>      good and readable.
> > >>
> > >>  drivers/staging/rtl8188eu/core/rtw_cmd.c          | 18 ++++---
> > >>  drivers/staging/rtl8188eu/core/rtw_ioctl_set.c    |  3 +-
> > >>  drivers/staging/rtl8188eu/core/rtw_led.c          | 59
+++++++++++++++--------
> > >>  drivers/staging/rtl8188eu/core/rtw_mlme.c         | 15 ++++--
> > >>  drivers/staging/rtl8188eu/core/rtw_mlme_ext.c     |  7 +--
> > >>  drivers/staging/rtl8188eu/core/rtw_recv.c         |  6 ++-
> > >>  drivers/staging/rtl8188eu/include/osdep_service.h |  5 --
> > >>  drivers/staging/rtl8188eu/include/rtw_mlme_ext.h  |  6 ++-
> > >>  drivers/staging/rtl8188eu/include/rtw_pwrctrl.h   |  3 +-
> > >>  drivers/staging/rtl8188eu/include/rtw_recv.h      |  4 +-
> > >>  drivers/staging/rtl8188eu/os_dep/os_intfs.c       |  6 ++-
> > >>  11 files changed, 82 insertions(+), 50 deletions(-)
> > >>
> > >> diff --git a/drivers/staging/rtl8188eu/core/rtw_cmd.c
b/drivers/staging/rtl8188eu/core/rtw_cmd.c
> > >> index 4b43462..89b5e48 100644
> > >> --- a/drivers/staging/rtl8188eu/core/rtw_cmd.c
> > >> +++ b/drivers/staging/rtl8188eu/core/rtw_cmd.c
> > >> @@ -325,7 +325,8 @@ u8 rtw_sitesurvey_cmd(struct adapter  *padapter,
struct ndis_802_11_ssid *ssid,
> > >>       if (res == _SUCCESS) {
> > >>               pmlmepriv->scan_start_time = jiffies;
> > >>
> > >> -             _set_timer(&pmlmepriv->scan_to_timer,
SCANNING_TIMEOUT);
> > >> +             mod_timer(&pmlmepriv->scan_to_timer,
> > >> +                       jiffies +
msecs_to_jiffies(SCANNING_TIMEOUT));
> > >>
> > >>               rtw_led_control(padapter, LED_CTL_SITE_SURVEY);
> > >>
> > >> @@ -1234,9 +1235,11 @@ void rtw_survey_cmd_callback(struct adapter
*padapter,  struct cmd_obj *pcmd)
> > >>       if (pcmd->res == H2C_DROPPED) {
> > >>               /* TODO: cancel timer and do timeout handler
directly... */
> > >>               /* need to make timeout handlerOS independent */
> > >> -             _set_timer(&pmlmepriv->scan_to_timer, 1);
> > >> +             mod_timer(&pmlmepriv->scan_to_timer,
> > >> +                       jiffies + msecs_to_jiffies(1));
> > >>       } else if (pcmd->res != H2C_SUCCESS) {
> > >> -             _set_timer(&pmlmepriv->scan_to_timer, 1);
> > >> +             mod_timer(&pmlmepriv->scan_to_timer,
> > >> +                       jiffies + msecs_to_jiffies(1));
> > >>               RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\n
********Error: MgntActrtw_set_802_11_bssid_LIST_SCAN Fail
************\n\n."));
> > >>       }
> > >>
> > >> @@ -1270,10 +1273,12 @@ void rtw_joinbss_cmd_callback(struct adapter
*padapter,  struct cmd_obj *pcmd)
> > >>       if (pcmd->res == H2C_DROPPED) {
> > >>               /* TODO: cancel timer and do timeout handler
directly... */
> > >>               /* need to make timeout handlerOS independent */
> > >> -             _set_timer(&pmlmepriv->assoc_timer, 1);
> > >> +             mod_timer(&pmlmepriv->assoc_timer,
> > >> +                       jiffies + msecs_to_jiffies(1));
> > >>       } else if (pcmd->res != H2C_SUCCESS) {
> > >>               RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_,
("********Error:rtw_select_and_join_from_scanned_queue Wait Sema  Fail
************\n"));
> > >> -             _set_timer(&pmlmepriv->assoc_timer, 1);
> > >> +             mod_timer(&pmlmepriv->assoc_timer,
> > >> +                       jiffies + msecs_to_jiffies(1));
> > >>       }
> > >>
> > >>       rtw_free_cmd_obj(pcmd);
> > >> @@ -1291,7 +1296,8 @@ void rtw_createbss_cmd_callback(struct adapter
*padapter, struct cmd_obj *pcmd)
> > >>
> > >>       if (pcmd->res != H2C_SUCCESS) {
> > >>               RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\n
********Error: rtw_createbss_cmd_callback  Fail ************\n\n."));
> > >> -             _set_timer(&pmlmepriv->assoc_timer, 1);
> > >> +             mod_timer(&pmlmepriv->assoc_timer,
> > >> +                       jiffies + msecs_to_jiffies(1));
> > >>       }
> > >>
> > >>       del_timer_sync(&pmlmepriv->assoc_timer);
> > >> diff --git a/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
b/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
> > >> index 2faf6b2..969150a 100644
> > >> --- a/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
> > >> +++ b/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
> > >> @@ -86,7 +86,8 @@ u8 rtw_do_join(struct adapter *padapter)
> > >>               select_ret =
rtw_select_and_join_from_scanned_queue(pmlmepriv);
> > >>               if (select_ret == _SUCCESS) {
> > >>                       pmlmepriv->to_join = false;
> > >> -                     _set_timer(&pmlmepriv->assoc_timer,
MAX_JOIN_TIMEOUT);
> > >> +                     mod_timer(&pmlmepriv->assoc_timer,
> > >> +                               jiffies +
msecs_to_jiffies(MAX_JOIN_TIMEOUT));
> > >>               } else {
> > >>                       if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE)
== true) {
> > >>                               /*  submit createbss_cmd to change to
a ADHOC_MASTER */
> > >> diff --git a/drivers/staging/rtl8188eu/core/rtw_led.c
b/drivers/staging/rtl8188eu/core/rtw_led.c
> > >> index 1b8264b..4e197f0 100644
> > >> --- a/drivers/staging/rtl8188eu/core/rtw_led.c
> > >> +++ b/drivers/staging/rtl8188eu/core/rtw_led.c
> > >> @@ -122,14 +122,16 @@ static void SwLedBlink1(struct LED_871x *pLed)
> > >>                       pLed->BlinkingLedState = RTW_LED_OFF;
> > >>               else
> > >>                       pLed->BlinkingLedState = RTW_LED_ON;
> > >> -             _set_timer(&(pLed->BlinkTimer),
LED_BLINK_NO_LINK_INTERVAL_ALPHA);
> > >> +             mod_timer(&pLed->BlinkTimer, jiffies +
> > >> +
 msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
> > >>               break;
> > >>       case LED_BLINK_NORMAL:
> > >>               if (pLed->bLedOn)
> > >>                       pLed->BlinkingLedState = RTW_LED_OFF;
> > >>               else
> > >>                       pLed->BlinkingLedState = RTW_LED_ON;
> > >> -             _set_timer(&(pLed->BlinkTimer),
LED_BLINK_LINK_INTERVAL_ALPHA);
> > >> +             mod_timer(&pLed->BlinkTimer, jiffies +
> > >> +
 msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));
> > >>               break;
> > >>       case LED_BLINK_SCAN:
> > >>               pLed->BlinkTimes--;
> > >> @@ -143,7 +145,8 @@ static void SwLedBlink1(struct LED_871x *pLed)
> > >>                                       pLed->BlinkingLedState =
RTW_LED_OFF;
> > >>                               else
> > >>                                       pLed->BlinkingLedState =
RTW_LED_ON;
> > >> -                             _set_timer(&(pLed->BlinkTimer),
LED_BLINK_LINK_INTERVAL_ALPHA);
> > >> +                             mod_timer(&pLed->BlinkTimer, jiffies +
> > >> +
 msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));
> > >>                               RT_TRACE(_module_rtl8712_led_c_,
_drv_info_, ("CurrLedState %d\n", pLed->CurrLedState));
> > >>                       } else if (!check_fwstate(pmlmepriv,
_FW_LINKED)) {
> > >>                               pLed->bLedNoLinkBlinkInProgress = true;
> > >> @@ -152,7 +155,8 @@ static void SwLedBlink1(struct LED_871x *pLed)
> > >>                                       pLed->BlinkingLedState =
RTW_LED_OFF;
> > >>                               else
> > >>                                       pLed->BlinkingLedState =
RTW_LED_ON;
> > >> -                             _set_timer(&(pLed->BlinkTimer),
LED_BLINK_NO_LINK_INTERVAL_ALPHA);
> > >> +                             mod_timer(&pLed->BlinkTimer, jiffies +
> > >> +
 msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
> > >>                               RT_TRACE(_module_rtl8712_led_c_,
_drv_info_, ("CurrLedState %d\n", pLed->CurrLedState));
> > >>                       }
> > >>                       pLed->bLedScanBlinkInProgress = false;
> > >> @@ -161,7 +165,8 @@ static void SwLedBlink1(struct LED_871x *pLed)
> > >>                               pLed->BlinkingLedState = RTW_LED_OFF;
> > >>                       else
> > >>                               pLed->BlinkingLedState = RTW_LED_ON;
> > >> -                     _set_timer(&(pLed->BlinkTimer),
LED_BLINK_SCAN_INTERVAL_ALPHA);
> > >> +                     mod_timer(&pLed->BlinkTimer, jiffies +
> > >> +
 msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
> > >>               }
> > >>               break;
> > >>       case LED_BLINK_TXRX:
> > >> @@ -176,7 +181,8 @@ static void SwLedBlink1(struct LED_871x *pLed)
> > >>                                       pLed->BlinkingLedState =
RTW_LED_OFF;
> > >>                               else
> > >>                                       pLed->BlinkingLedState =
RTW_LED_ON;
> > >> -                             _set_timer(&(pLed->BlinkTimer),
LED_BLINK_LINK_INTERVAL_ALPHA);
> > >> +                             mod_timer(&pLed->BlinkTimer, jiffies +
> > >> +
 msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));
> > >>                               RT_TRACE(_module_rtl8712_led_c_,
_drv_info_, ("CurrLedState %d\n", pLed->CurrLedState));
> > >>                       } else if (!check_fwstate(pmlmepriv,
_FW_LINKED)) {
> > >>                               pLed->bLedNoLinkBlinkInProgress = true;
> > >> @@ -185,7 +191,8 @@ static void SwLedBlink1(struct LED_871x *pLed)
> > >>                                       pLed->BlinkingLedState =
RTW_LED_OFF;
> > >>                               else
> > >>                                       pLed->BlinkingLedState =
RTW_LED_ON;
> > >> -                             _set_timer(&(pLed->BlinkTimer),
LED_BLINK_NO_LINK_INTERVAL_ALPHA);
> > >> +                             mod_timer(&pLed->BlinkTimer, jiffies +
> > >> +
 msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
> > >>                               RT_TRACE(_module_rtl8712_led_c_,
_drv_info_, ("CurrLedState %d\n", pLed->CurrLedState));
> > >>                       }
> > >>                       pLed->BlinkTimes = 0;
> > >> @@ -195,7 +202,8 @@ static void SwLedBlink1(struct LED_871x *pLed)
> > >>                               pLed->BlinkingLedState = RTW_LED_OFF;
> > >>                       else
> > >>                               pLed->BlinkingLedState = RTW_LED_ON;
> > >> -                     _set_timer(&(pLed->BlinkTimer),
LED_BLINK_FASTER_INTERVAL_ALPHA);
> > >> +                     mod_timer(&pLed->BlinkTimer, jiffies +
> > >> +
 msecs_to_jiffies(LED_BLINK_FASTER_INTERVAL_ALPHA));
> > >>               }
> > >>               break;
> > >>       case LED_BLINK_WPS:
> > >> @@ -203,7 +211,8 @@ static void SwLedBlink1(struct LED_871x *pLed)
> > >>                       pLed->BlinkingLedState = RTW_LED_OFF;
> > >>               else
> > >>                       pLed->BlinkingLedState = RTW_LED_ON;
> > >> -             _set_timer(&(pLed->BlinkTimer),
LED_BLINK_SCAN_INTERVAL_ALPHA);
> > >> +             mod_timer(&pLed->BlinkTimer, jiffies +
> > >> +
 msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
> > >>               break;
> > >>       case LED_BLINK_WPS_STOP:        /* WPS success */
> > >>               if (pLed->BlinkingLedState == RTW_LED_ON)
> > >> @@ -218,14 +227,15 @@ static void SwLedBlink1(struct LED_871x *pLed)
> > >>                               pLed->BlinkingLedState = RTW_LED_OFF;
> > >>                       else
> > >>                               pLed->BlinkingLedState = RTW_LED_ON;
> > >> -                     _set_timer(&(pLed->BlinkTimer),
LED_BLINK_LINK_INTERVAL_ALPHA);
> > >> +                     mod_timer(&pLed->BlinkTimer, jiffies +
> > >> +
 msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));
> > >>                       RT_TRACE(_module_rtl8712_led_c_, _drv_info_,
("CurrLedState %d\n", pLed->CurrLedState));
> > >>
> > >>                       pLed->bLedWPSBlinkInProgress = false;
> > >>               } else {
> > >>                       pLed->BlinkingLedState = RTW_LED_OFF;
> > >> -                     _set_timer(&(pLed->BlinkTimer),
> > >> -
LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA);
> > >> +                     mod_timer(&pLed->BlinkTimer, jiffies +
> > >> +
 msecs_to_jiffies(LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA));
> > >>               }
> > >>               break;
> > >>       default:
> > >> @@ -262,7 +272,8 @@ static void SwLedControlMode1(struct adapter
*padapter, enum LED_CTL_MODE LedAct
> > >>                               pLed->BlinkingLedState = RTW_LED_OFF;
> > >>                       else
> > >>                               pLed->BlinkingLedState = RTW_LED_ON;
> > >> -                     _set_timer(&(pLed->BlinkTimer),
LED_BLINK_NO_LINK_INTERVAL_ALPHA);
> > >> +                     mod_timer(&pLed->BlinkTimer, jiffies +
> > >> +
 msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
> > >>               }
> > >>               break;
> > >>       case LED_CTL_LINK:
> > >> @@ -283,7 +294,8 @@ static void SwLedControlMode1(struct adapter
*padapter, enum LED_CTL_MODE LedAct
> > >>                               pLed->BlinkingLedState = RTW_LED_OFF;
> > >>                       else
> > >>                               pLed->BlinkingLedState = RTW_LED_ON;
> > >> -                     _set_timer(&(pLed->BlinkTimer),
LED_BLINK_LINK_INTERVAL_ALPHA);
> > >> +                     mod_timer(&pLed->BlinkTimer, jiffies +
> > >> +
 msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));
> > >>               }
> > >>               break;
> > >>       case LED_CTL_SITE_SURVEY:
> > >> @@ -311,7 +323,8 @@ static void SwLedControlMode1(struct adapter
*padapter, enum LED_CTL_MODE LedAct
> > >>                               pLed->BlinkingLedState = RTW_LED_OFF;
> > >>                       else
> > >>                               pLed->BlinkingLedState = RTW_LED_ON;
> > >> -                     _set_timer(&(pLed->BlinkTimer),
LED_BLINK_SCAN_INTERVAL_ALPHA);
> > >> +                     mod_timer(&pLed->BlinkTimer, jiffies +
> > >> +
 msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
> > >>                }
> > >>               break;
> > >>       case LED_CTL_TX:
> > >> @@ -334,7 +347,8 @@ static void SwLedControlMode1(struct adapter
*padapter, enum LED_CTL_MODE LedAct
> > >>                               pLed->BlinkingLedState = RTW_LED_OFF;
> > >>                       else
> > >>                               pLed->BlinkingLedState = RTW_LED_ON;
> > >> -                     _set_timer(&(pLed->BlinkTimer),
LED_BLINK_FASTER_INTERVAL_ALPHA);
> > >> +                     mod_timer(&pLed->BlinkTimer, jiffies +
> > >> +
 msecs_to_jiffies(LED_BLINK_FASTER_INTERVAL_ALPHA));
> > >>               }
> > >>               break;
> > >>       case LED_CTL_START_WPS: /* wait until xinpin finish */
> > >> @@ -362,7 +376,8 @@ static void SwLedControlMode1(struct adapter
*padapter, enum LED_CTL_MODE LedAct
> > >>                               pLed->BlinkingLedState = RTW_LED_OFF;
> > >>                       else
> > >>                               pLed->BlinkingLedState = RTW_LED_ON;
> > >> -                     _set_timer(&(pLed->BlinkTimer),
LED_BLINK_SCAN_INTERVAL_ALPHA);
> > >> +                     mod_timer(&pLed->BlinkTimer, jiffies +
> > >> +
 msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
> > >>                }
> > >>               break;
> > >>       case LED_CTL_STOP_WPS:
> > >> @@ -389,11 +404,12 @@ static void SwLedControlMode1(struct adapter
*padapter, enum LED_CTL_MODE LedAct
> > >>               pLed->CurrLedState = LED_BLINK_WPS_STOP;
> > >>               if (pLed->bLedOn) {
> > >>                       pLed->BlinkingLedState = RTW_LED_OFF;
> > >> -                     _set_timer(&(pLed->BlinkTimer),
> > >> -
LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA);
> > >> +                     mod_timer(&pLed->BlinkTimer, jiffies +
> > >> +
 msecs_to_jiffies(LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA));
> > >>               } else {
> > >>                       pLed->BlinkingLedState = RTW_LED_ON;
> > >> -                     _set_timer(&(pLed->BlinkTimer), 0);
> > >> +                     mod_timer(&pLed->BlinkTimer, jiffies +
> > >> +                               msecs_to_jiffies(0));
> > >>               }
> > >>               break;
> > >>       case LED_CTL_STOP_WPS_FAIL:
> > >> @@ -407,7 +423,8 @@ static void SwLedControlMode1(struct adapter
*padapter, enum LED_CTL_MODE LedAct
> > >>                       pLed->BlinkingLedState = RTW_LED_OFF;
> > >>               else
> > >>                       pLed->BlinkingLedState = RTW_LED_ON;
> > >> -             _set_timer(&(pLed->BlinkTimer),
LED_BLINK_NO_LINK_INTERVAL_ALPHA);
> > >> +             mod_timer(&pLed->BlinkTimer, jiffies +
> > >> +
 msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
> > >>               break;
> > >>       case LED_CTL_POWER_OFF:
> > >>               pLed->CurrLedState = RTW_LED_OFF;
> > >> diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c
b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> > >> index d4632da..f006679 100644
> > >> --- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
> > >> +++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> > >> @@ -665,7 +665,8 @@ void rtw_surveydone_event_callback(struct
adapter *adapter, u8 *pbuf)
> > >>                               set_fwstate(pmlmepriv,
_FW_UNDER_LINKING);
> > >>
> > >>                               if
(rtw_select_and_join_from_scanned_queue(pmlmepriv) == _SUCCESS) {
> > >> -
 _set_timer(&pmlmepriv->assoc_timer, MAX_JOIN_TIMEOUT);
> > >> +
 mod_timer(&pmlmepriv->assoc_timer,
> > >> +                                               jiffies +
msecs_to_jiffies(MAX_JOIN_TIMEOUT));
> > >>                               } else {
> > >>                                       struct wlan_bssid_ex
*pdev_network = &(adapter->registrypriv.dev_network);
> > >>                                       u8 *pibss =
adapter->registrypriv.dev_network.MacAddress;
> > >> @@ -692,7 +693,8 @@ void rtw_surveydone_event_callback(struct
adapter *adapter, u8 *pbuf)
> > >>                       pmlmepriv->to_join = false;
> > >>                       s_ret =
rtw_select_and_join_from_scanned_queue(pmlmepriv);
> > >>                       if (_SUCCESS == s_ret) {
> > >> -                          _set_timer(&pmlmepriv->assoc_timer,
MAX_JOIN_TIMEOUT);
> > >> +                          mod_timer(&pmlmepriv->assoc_timer,
> > >> +                                    jiffies +
msecs_to_jiffies(MAX_JOIN_TIMEOUT));
> > >>                       } else if (s_ret == 2) { /* there is no need
to wait for join */
> > >>                               _clr_fwstate_(pmlmepriv,
_FW_UNDER_LINKING);
> > >>                               rtw_indicate_connect(adapter);
> > >> @@ -1127,14 +1129,16 @@ void rtw_joinbss_event_prehandle(struct
adapter *adapter, u8 *pbuf)
> > >>
> > >>       } else if (pnetwork->join_res == -4) {
> > >>               rtw_reset_securitypriv(adapter);
> > >> -             _set_timer(&pmlmepriv->assoc_timer, 1);
> > >> +             mod_timer(&pmlmepriv->assoc_timer,
> > >> +                       jiffies + msecs_to_jiffies(1));
> > >>
> > >>               if ((check_fwstate(pmlmepriv, _FW_UNDER_LINKING)) ==
true) {
> > >>                       RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_,
("fail! clear _FW_UNDER_LINKING ^^^fw_state=%x\n", get_fwstate(pmlmepriv)));
> > >>                       _clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);
> > >>               }
> > >>       } else { /* if join_res < 0 (join fails), then try again */
> > >> -             _set_timer(&pmlmepriv->assoc_timer, 1);
> > >> +             mod_timer(&pmlmepriv->assoc_timer,
> > >> +                       jiffies + msecs_to_jiffies(1));
> > >>               _clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);
> > >>       }
> > >>
> > >> @@ -1449,7 +1453,8 @@ void rtw_dynamic_check_timer_handlder(void
*function_context)
> > >>               rtw_auto_scan_handler(adapter);
> > >>       }
> > >>  exit:
> > >> -     _set_timer(&adapter->mlmepriv.dynamic_chk_timer, 2000);
> > >> +     mod_timer(&adapter->mlmepriv.dynamic_chk_timer,
> > >> +               jiffies + msecs_to_jiffies(2000));
> > >>  }
> > >>
> > >>  #define RTW_SCAN_RESULT_EXPIRE 2000
> > >> diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> > >> index cd12dd7..86feee8 100644
> > >> --- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> > >> +++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> > >> @@ -3972,8 +3972,8 @@ void start_clnt_join(struct adapter *padapter)
> > >>               /* and enable a timer */
> > >>               beacon_timeout =
decide_wait_for_beacon_timeout(pmlmeinfo->bcn_interval);
> > >>               set_link_timer(pmlmeext, beacon_timeout);
> > >> -             _set_timer(&padapter->mlmepriv.assoc_timer,
> > >> -                        (REAUTH_TO * REAUTH_LIMIT) +
(REASSOC_TO*REASSOC_LIMIT) + beacon_timeout);
> > >> +             mod_timer(&padapter->mlmepriv.assoc_timer, jiffies +
> > >> +                       msecs_to_jiffies(REAUTH_TO * REAUTH_LIMIT) +
(REASSOC_TO*REASSOC_LIMIT) + beacon_timeout);
> > >>
> > >>               pmlmeinfo->state = WIFI_FW_AUTH_NULL |
WIFI_FW_STATION_STATE;
> > >>       } else if (caps&cap_IBSS) { /* adhoc client */
> > >> @@ -5406,7 +5406,8 @@ u8 add_ba_hdl(struct adapter *padapter,
unsigned char *pbuf)
> > >>       if (((pmlmeinfo->state & WIFI_FW_ASSOC_SUCCESS) &&
(pmlmeinfo->HT_enable)) ||
> > >>           ((pmlmeinfo->state&0x03) == WIFI_FW_AP_STATE)) {
> > >>               issue_action_BA(padapter, pparm->addr,
RTW_WLAN_ACTION_ADDBA_REQ, (u16)pparm->tid);
> > >> -             _set_timer(&psta->addba_retry_timer, ADDBA_TO);
> > >> +             mod_timer(&psta->addba_retry_timer,
> > >> +                       jiffies + msecs_to_jiffies(ADDBA_TO));
> > >>       } else {
> > >>               psta->htpriv.candidate_tid_bitmap &= ~BIT(pparm->tid);
> > >>       }
> > >> diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c
b/drivers/staging/rtl8188eu/core/rtw_recv.c
> > >> index bd79e9e..0db421e 100644
> > >> --- a/drivers/staging/rtl8188eu/core/rtw_recv.c
> > >> +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
> > >> @@ -1927,7 +1927,8 @@ static int recv_indicatepkt_reorder(struct
adapter *padapter,
> > >>
> > >>       /* recv_indicatepkts_in_order(padapter, preorder_ctrl, true);
*/
> > >>       if (recv_indicatepkts_in_order(padapter, preorder_ctrl,
false)) {
> > >> -             _set_timer(&preorder_ctrl->reordering_ctrl_timer,
REORDER_WAIT_TIME);
> > >> +             mod_timer(&preorder_ctrl->reordering_ctrl_timer,
> > >> +                       jiffies +
msecs_to_jiffies(REORDER_WAIT_TIME));
> > >>               spin_unlock_bh(&ppending_recvframe_queue->lock);
> > >>       } else {
> > >>               spin_unlock_bh(&ppending_recvframe_queue->lock);
> > >> @@ -1957,7 +1958,8 @@ void rtw_reordering_ctrl_timeout_handler(void
*pcontext)
> > >>       spin_lock_bh(&ppending_recvframe_queue->lock);
> > >>
> > >>       if (recv_indicatepkts_in_order(padapter, preorder_ctrl, true)
== true)
> > >> -             _set_timer(&preorder_ctrl->reordering_ctrl_timer,
REORDER_WAIT_TIME);
> > >> +             mod_timer(&preorder_ctrl->reordering_ctrl_timer,
> > >> +                       jiffies +
msecs_to_jiffies(REORDER_WAIT_TIME));
> > >>
> > >>       spin_unlock_bh(&ppending_recvframe_queue->lock);
> > >>  }
> > >> diff --git a/drivers/staging/rtl8188eu/include/osdep_service.h
b/drivers/staging/rtl8188eu/include/osdep_service.h
> > >> index 3a27477..4c968ac 100644
> > >> --- a/drivers/staging/rtl8188eu/include/osdep_service.h
> > >> +++ b/drivers/staging/rtl8188eu/include/osdep_service.h
> > >> @@ -85,11 +85,6 @@ static inline void _init_timer(struct timer_list
*ptimer,
> > >>       init_timer(ptimer);
> > >>  }
> > >>
> > >> -static inline void _set_timer(struct timer_list *ptimer, u32
delay_time)
> > >> -{
> > >> -     mod_timer(ptimer , (jiffies+msecs_to_jiffies(delay_time)));
> > >> -}
> > >> -
> > >>  #define RTW_TIMER_HDL_ARGS void *FunctionContext
> > >>  #define RTW_TIMER_HDL_NAME(name) rtw_##name##_timer_hdl
> > >>  #define RTW_DECLARE_TIMER_HDL(name) \
> > >> diff --git a/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
b/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
> > >> index 4f05aee..3f9a0f7 100644
> > >> --- a/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
> > >> +++ b/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
> > >> @@ -651,12 +651,14 @@ void addba_timer_hdl(void *function_context);
> > >>
> > >>  #define set_survey_timer(mlmeext, ms) \
> > >>       do { \
> > >> -             _set_timer(&(mlmeext)->survey_timer, (ms)); \
> > >> +             mod_timer(&mlmeext->survey_timer, \
> > >> +                       jiffies + msecs_to_jiffies(ms))
> > >>       } while (0)
> > >>
> > >>  #define set_link_timer(mlmeext, ms) \
> > >>       do { \
> > >> -             _set_timer(&(mlmeext)->link_timer, (ms)); \
> > >> +             mod_timer(&mlmeext->link_timer, \
> > >> +                       jiffies + msecs_to_jiffies(ms))
> > >>       } while (0)
> > >>
> > >>  int cckrates_included(unsigned char *rate, int ratelen);
> > >> diff --git a/drivers/staging/rtl8188eu/include/rtw_pwrctrl.h
b/drivers/staging/rtl8188eu/include/rtw_pwrctrl.h
> > >> index 54dfbf0..88ed2f3 100644
> > >> --- a/drivers/staging/rtl8188eu/include/rtw_pwrctrl.h
> > >> +++ b/drivers/staging/rtl8188eu/include/rtw_pwrctrl.h
> > >> @@ -234,7 +234,8 @@ struct pwrctrl_priv {
> > >>
> > >>  #define _rtw_set_pwr_state_check_timer(pwrctrlpriv, ms) \
> > >>       do { \
> > >> -             _set_timer(&(pwrctrlpriv)->pwr_state_check_timer,
(ms)); \
> > >> +             mod_timer(&pwrctrlpriv->pwr_state_check_timer, \
> > >> +                       jiffies + msecs_to_jiffies(ms));
> > >>       } while (0)
> > >>
> > >>  #define rtw_set_pwr_state_check_timer(pwrctrl)
 \
> > >> diff --git a/drivers/staging/rtl8188eu/include/rtw_recv.h
b/drivers/staging/rtl8188eu/include/rtw_recv.h
> > >> index f0c26ef..44b69ef 100644
> > >> --- a/drivers/staging/rtl8188eu/include/rtw_recv.h
> > >> +++ b/drivers/staging/rtl8188eu/include/rtw_recv.h
> > >> @@ -216,8 +216,8 @@ struct recv_priv {
> > >>  };
> > >>
> > >>  #define rtw_set_signal_stat_timer(recvpriv)                  \
> > >> -     _set_timer(&(recvpriv)->signal_stat_timer,              \
> > >> -                (recvpriv)->signal_stat_sampling_interval)
> > >> +     mod_timer(&recvpriv->signal_stat_timer, jiffies +       \
> > >> +
 msecs_to_jiffies(recvpriv->signal_stat_sampling_interval))
> > >>
> > >>  struct sta_recv_priv {
> > >>       spinlock_t lock;
> > >> diff --git a/drivers/staging/rtl8188eu/os_dep/os_intfs.c
b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
> > >> index 88a909c..5fe3ae5 100644
> > >> --- a/drivers/staging/rtl8188eu/os_dep/os_intfs.c
> > >> +++ b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
> > >> @@ -998,7 +998,8 @@ int _netdev_open(struct net_device *pnetdev)
> > >>       }
> > >>       padapter->net_closed = false;
> > >>
> > >> -     _set_timer(&padapter->mlmepriv.dynamic_chk_timer, 2000);
> > >> +     mod_timer(&padapter->mlmepriv.dynamic_chk_timer,
> > >> +               jiffies + msecs_to_jiffies(2000));
> > >>
> > >>       padapter->pwrctrlpriv.bips_processing = false;
> > >>       rtw_set_pwr_state_check_timer(&padapter->pwrctrlpriv);
> > >> @@ -1052,7 +1053,8 @@ static int  ips_netdrv_open(struct adapter
*padapter)
> > >>               padapter->intf_start(padapter);
> > >>
> > >>       rtw_set_pwr_state_check_timer(&padapter->pwrctrlpriv);
> > >> -     _set_timer(&padapter->mlmepriv.dynamic_chk_timer, 5000);
> > >> +     mod_timer(&padapter->mlmepriv.dynamic_chk_timer,
> > >> +               jiffies + msecs_to_jiffies(5000));
> > >>
> > >>        return _SUCCESS;
> > >>
> > >> --
> > >> 1.9.1
> > >>
> > >> --
> > >> You received this message because you are subscribed to the Google
Groups "outreachy-kernel" group.
> > >> To unsubscribe from this group and stop receiving emails from it,
send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > >> To post to this group, send email to
outreachy-kernel@googlegroups.com.
> > >> To view this discussion on the web visit
https://groups.google.com/d/msgid/outreachy-kernel/0abbd76b80c2fb55ac1300e682f7c974dcaeba43.1424930708.git.vthakkar1994%40gmail.com
.
> > >> For more options, visit https://groups.google.com/d/optout.
> > >>
> >
> >
> >
> > --
> > Vaishali
> >
> > --
> > You received this message because you are subscribed to the Google
Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
https://groups.google.com/d/msgid/outreachy-kernel/CAK-LDb%2BKYhTYuF8KLddV3vUsmDgSsVrumXT54qJbDr1xp78MJg%40mail.gmail.com
.
> > For more options, visit https://groups.google.com/d/optout.
> >

--047d7bfd0918c15255050ffab7de
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On 26 Feb 2015 14:39, &quot;Julia Lawall&quot; &lt;<a href=3D"mailto:julia.=
lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br>
&gt;<br>
&gt; On Thu, 26 Feb 2015, Vaishali Thakkar wrote:<br>
&gt;<br>
&gt; &gt; On Thu, Feb 26, 2015 at 11:50 AM, Julia Lawall &lt;<a href=3D"mai=
lto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br>
&gt; &gt; &gt;&gt; Here, some of cases are handled using Coccinelle and<br>
&gt; &gt; &gt;&gt; semantic patch used for this is as follows:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; What was not handled in this way?<br>
&gt; &gt;<br>
&gt; &gt; Cases where there are numbers as a time-delay instead of identifi=
er.<br>
&gt; &gt; Like this:<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 _set_timer(&amp;adapter-&gt;mlmepriv.dynamic_chk_timer, 200=
0);<br>
&gt; &gt;<br>
&gt; &gt; As they are very few and have different values, I handled them by=
 hand.<br>
&gt; &gt;<br>
&gt; &gt; &gt; julia<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;&gt; @@ expression x; identifier y;@@<br>
&gt;<br>
&gt; I don&#39;t think there is any need for y to be an identifier.=C2=A0 Y=
ou could just<br>
&gt; put expression y.</p>
<p dir=3D"ltr">Oops! Yes. You are right. I guess I missed that. I should ha=
ve tried it. I will send=C2=A0 v2 of this patch set with this change.</p>
<p dir=3D"ltr">Thank You<br>
 <br>
&gt; julia<br>
&gt;<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; - _set_timer (&amp;x, y);<br>
&gt; &gt; &gt;&gt; + mod_timer (&amp;x, jiffies + msecs_to_jiffies (y));<br=
>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; Signed-off-by: Vaishali Thakkar &lt;<a href=3D"mailto:vt=
hakkar1994@gmail.com">vthakkar1994@gmail.com</a>&gt;<br>
&gt; &gt; &gt;&gt; ---<br>
&gt; &gt; &gt;&gt; v1 : Here, this patch has some line over 80 characters a=
s<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 limiting them to 80 characters does =
not make code look<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 good and readable.<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt;=C2=A0 drivers/staging/rtl8188eu/core/rtw_cmd.c=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 | 18 ++++---<br>
&gt; &gt; &gt;&gt;=C2=A0 drivers/staging/rtl8188eu/core/rtw_ioctl_set.c=C2=
=A0 =C2=A0 |=C2=A0 3 +-<br>
&gt; &gt; &gt;&gt;=C2=A0 drivers/staging/rtl8188eu/core/rtw_led.c=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 | 59 +++++++++++++++--------<br>
&gt; &gt; &gt;&gt;=C2=A0 drivers/staging/rtl8188eu/core/rtw_mlme.c=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0| 15 ++++--<br>
&gt; &gt; &gt;&gt;=C2=A0 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c=C2=
=A0 =C2=A0 =C2=A0|=C2=A0 7 +--<br>
&gt; &gt; &gt;&gt;=C2=A0 drivers/staging/rtl8188eu/core/rtw_recv.c=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 6 ++-<br>
&gt; &gt; &gt;&gt;=C2=A0 drivers/staging/rtl8188eu/include/osdep_service.h =
|=C2=A0 5 --<br>
&gt; &gt; &gt;&gt;=C2=A0 drivers/staging/rtl8188eu/include/rtw_mlme_ext.h=
=C2=A0 |=C2=A0 6 ++-<br>
&gt; &gt; &gt;&gt;=C2=A0 drivers/staging/rtl8188eu/include/rtw_pwrctrl.h=C2=
=A0 =C2=A0|=C2=A0 3 +-<br>
&gt; &gt; &gt;&gt;=C2=A0 drivers/staging/rtl8188eu/include/rtw_recv.h=C2=A0=
 =C2=A0 =C2=A0 |=C2=A0 4 +-<br>
&gt; &gt; &gt;&gt;=C2=A0 drivers/staging/rtl8188eu/os_dep/os_intfs.c=C2=A0 =
=C2=A0 =C2=A0 =C2=A0|=C2=A0 6 ++-<br>
&gt; &gt; &gt;&gt;=C2=A0 11 files changed, 82 insertions(+), 50 deletions(-=
)<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; diff --git a/drivers/staging/rtl8188eu/core/rtw_cmd.c b/=
drivers/staging/rtl8188eu/core/rtw_cmd.c<br>
&gt; &gt; &gt;&gt; index 4b43462..89b5e48 100644<br>
&gt; &gt; &gt;&gt; --- a/drivers/staging/rtl8188eu/core/rtw_cmd.c<br>
&gt; &gt; &gt;&gt; +++ b/drivers/staging/rtl8188eu/core/rtw_cmd.c<br>
&gt; &gt; &gt;&gt; @@ -325,7 +325,8 @@ u8 rtw_sitesurvey_cmd(struct adapter=
=C2=A0 *padapter, struct ndis_802_11_ssid *ssid,<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (res =3D=3D _SUCCESS) {<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pm=
lmepriv-&gt;scan_start_time =3D jiffies;<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_set_ti=
mer(&amp;pmlmepriv-&gt;scan_to_timer, SCANNING_TIMEOUT);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mod_tim=
er(&amp;pmlmepriv-&gt;scan_to_timer,<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0jiffies + msecs_to_jiffies(SCANNING_TIMEOUT));<=
br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rt=
w_led_control(padapter, LED_CTL_SITE_SURVEY);<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; @@ -1234,9 +1235,11 @@ void rtw_survey_cmd_callback(stru=
ct adapter *padapter,=C2=A0 struct cmd_obj *pcmd)<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (pcmd-&gt;res =3D=3D H2C_DR=
OPPED) {<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*=
 TODO: cancel timer and do timeout handler directly... */<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*=
 need to make timeout handlerOS independent */<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_set_ti=
mer(&amp;pmlmepriv-&gt;scan_to_timer, 1);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mod_tim=
er(&amp;pmlmepriv-&gt;scan_to_timer,<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0jiffies + msecs_to_jiffies(1));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (pcmd-&gt;res !=3D H=
2C_SUCCESS) {<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_set_ti=
mer(&amp;pmlmepriv-&gt;scan_to_timer, 1);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mod_tim=
er(&amp;pmlmepriv-&gt;scan_to_timer,<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0jiffies + msecs_to_jiffies(1));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0RT=
_TRACE(_module_rtl871x_cmd_c_, _drv_err_, (&quot;\n ********Error: MgntActr=
tw_set_802_11_bssid_LIST_SCAN Fail ************\n\n.&quot;));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; @@ -1270,10 +1273,12 @@ void rtw_joinbss_cmd_callback(st=
ruct adapter *padapter,=C2=A0 struct cmd_obj *pcmd)<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (pcmd-&gt;res =3D=3D H2C_DR=
OPPED) {<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*=
 TODO: cancel timer and do timeout handler directly... */<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*=
 need to make timeout handlerOS independent */<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_set_ti=
mer(&amp;pmlmepriv-&gt;assoc_timer, 1);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mod_tim=
er(&amp;pmlmepriv-&gt;assoc_timer,<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0jiffies + msecs_to_jiffies(1));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (pcmd-&gt;res !=3D H=
2C_SUCCESS) {<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0RT=
_TRACE(_module_rtl871x_cmd_c_, _drv_err_, (&quot;********Error:rtw_select_a=
nd_join_from_scanned_queue Wait Sema=C2=A0 Fail ************\n&quot;));<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_set_ti=
mer(&amp;pmlmepriv-&gt;assoc_timer, 1);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mod_tim=
er(&amp;pmlmepriv-&gt;assoc_timer,<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0jiffies + msecs_to_jiffies(1));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0rtw_free_cmd_obj(pcmd);<br>
&gt; &gt; &gt;&gt; @@ -1291,7 +1296,8 @@ void rtw_createbss_cmd_callback(st=
ruct adapter *padapter, struct cmd_obj *pcmd)<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (pcmd-&gt;res !=3D H2C_SUCC=
ESS) {<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0RT=
_TRACE(_module_rtl871x_cmd_c_, _drv_err_, (&quot;\n ********Error: rtw_crea=
tebss_cmd_callback=C2=A0 Fail ************\n\n.&quot;));<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_set_ti=
mer(&amp;pmlmepriv-&gt;assoc_timer, 1);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mod_tim=
er(&amp;pmlmepriv-&gt;assoc_timer,<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0jiffies + msecs_to_jiffies(1));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0del_timer_sync(&amp;pmlmepriv-=
&gt;assoc_timer);<br>
&gt; &gt; &gt;&gt; diff --git a/drivers/staging/rtl8188eu/core/rtw_ioctl_se=
t.c b/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c<br>
&gt; &gt; &gt;&gt; index 2faf6b2..969150a 100644<br>
&gt; &gt; &gt;&gt; --- a/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c<br>
&gt; &gt; &gt;&gt; +++ b/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c<br>
&gt; &gt; &gt;&gt; @@ -86,7 +86,8 @@ u8 rtw_do_join(struct adapter *padapte=
r)<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0se=
lect_ret =3D rtw_select_and_join_from_scanned_queue(pmlmepriv);<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if=
 (select_ret =3D=3D _SUCCESS) {<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0pmlmepriv-&gt;to_join =3D false;<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0_set_timer(&amp;pmlmepriv-&gt;assoc_timer, MAX_JOIN_TI=
MEOUT);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0mod_timer(&amp;pmlmepriv-&gt;assoc_timer,<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0jiffies + msecs_to_=
jiffies(MAX_JOIN_TIMEOUT));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0} =
else {<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) =
=3D=3D true) {<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*=C2=A0 submit crea=
tebss_cmd to change to a ADHOC_MASTER */<br>
&gt; &gt; &gt;&gt; diff --git a/drivers/staging/rtl8188eu/core/rtw_led.c b/=
drivers/staging/rtl8188eu/core/rtw_led.c<br>
&gt; &gt; &gt;&gt; index 1b8264b..4e197f0 100644<br>
&gt; &gt; &gt;&gt; --- a/drivers/staging/rtl8188eu/core/rtw_led.c<br>
&gt; &gt; &gt;&gt; +++ b/drivers/staging/rtl8188eu/core/rtw_led.c<br>
&gt; &gt; &gt;&gt; @@ -122,14 +122,16 @@ static void SwLedBlink1(struct LED=
_871x *pLed)<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;BlinkingLedState =3D RTW_LED_OFF;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0el=
se<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;BlinkingLedState =3D RTW_LED_ON;<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_set_ti=
mer(&amp;(pLed-&gt;BlinkTimer), LED_BLINK_NO_LINK_INTERVAL_ALPHA);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mod_tim=
er(&amp;pLed-&gt;BlinkTimer, jiffies +<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALP=
HA));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0br=
eak;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case LED_BLINK_NORMAL:<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if=
 (pLed-&gt;bLedOn)<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;BlinkingLedState =3D RTW_LED_OFF;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0el=
se<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;BlinkingLedState =3D RTW_LED_ON;<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_set_ti=
mer(&amp;(pLed-&gt;BlinkTimer), LED_BLINK_LINK_INTERVAL_ALPHA);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mod_tim=
er(&amp;pLed-&gt;BlinkTimer, jiffies +<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA)=
);<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0br=
eak;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case LED_BLINK_SCAN:<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pL=
ed-&gt;BlinkTimes--;<br>
&gt; &gt; &gt;&gt; @@ -143,7 +145,8 @@ static void SwLedBlink1(struct LED_8=
71x *pLed)<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0pLed-&gt;BlinkingLedState =3D RTW_LED_OFF;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0pLed-&gt;BlinkingLedState =3D RTW_LED_ON;<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_set_timer(&amp;(pLed-&gt;=
BlinkTimer), LED_BLINK_LINK_INTERVAL_ALPHA);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mod_timer(&amp;pLed-&gt;Bl=
inkTimer, jiffies +<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0RT_TRACE(_module_rtl=
8712_led_c_, _drv_info_, (&quot;CurrLedState %d\n&quot;, pLed-&gt;CurrLedSt=
ate));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (!check_fwstate(pmlmepriv, _FW_LINKED)=
) {<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;bLedNoLinkB=
linkInProgress =3D true;<br>
&gt; &gt; &gt;&gt; @@ -152,7 +155,8 @@ static void SwLedBlink1(struct LED_8=
71x *pLed)<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0pLed-&gt;BlinkingLedState =3D RTW_LED_OFF;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0pLed-&gt;BlinkingLedState =3D RTW_LED_ON;<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_set_timer(&amp;(pLed-&gt;=
BlinkTimer), LED_BLINK_NO_LINK_INTERVAL_ALPHA);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mod_timer(&amp;pLed-&gt;Bl=
inkTimer, jiffies +<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0RT_TRACE(_module_rtl=
8712_led_c_, _drv_info_, (&quot;CurrLedState %d\n&quot;, pLed-&gt;CurrLedSt=
ate));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;bLedScanBlinkInProgress =3D false;<br>
&gt; &gt; &gt;&gt; @@ -161,7 +165,8 @@ static void SwLedBlink1(struct LED_8=
71x *pLed)<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;BlinkingLed=
State =3D RTW_LED_OFF;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;BlinkingLed=
State =3D RTW_LED_ON;<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0_set_timer(&amp;(pLed-&gt;BlinkTimer), LED_BLINK_SCAN_=
INTERVAL_ALPHA);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0mod_timer(&amp;pLed-&gt;BlinkTimer, jiffies +<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0msecs_to_jiffies(LE=
D_BLINK_SCAN_INTERVAL_ALPHA));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<=
br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0br=
eak;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case LED_BLINK_TXRX:<br>
&gt; &gt; &gt;&gt; @@ -176,7 +181,8 @@ static void SwLedBlink1(struct LED_8=
71x *pLed)<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0pLed-&gt;BlinkingLedState =3D RTW_LED_OFF;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0pLed-&gt;BlinkingLedState =3D RTW_LED_ON;<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_set_timer(&amp;(pLed-&gt;=
BlinkTimer), LED_BLINK_LINK_INTERVAL_ALPHA);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mod_timer(&amp;pLed-&gt;Bl=
inkTimer, jiffies +<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0RT_TRACE(_module_rtl=
8712_led_c_, _drv_info_, (&quot;CurrLedState %d\n&quot;, pLed-&gt;CurrLedSt=
ate));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (!check_fwstate(pmlmepriv, _FW_LINKED)=
) {<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;bLedNoLinkB=
linkInProgress =3D true;<br>
&gt; &gt; &gt;&gt; @@ -185,7 +191,8 @@ static void SwLedBlink1(struct LED_8=
71x *pLed)<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0pLed-&gt;BlinkingLedState =3D RTW_LED_OFF;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0pLed-&gt;BlinkingLedState =3D RTW_LED_ON;<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_set_timer(&amp;(pLed-&gt;=
BlinkTimer), LED_BLINK_NO_LINK_INTERVAL_ALPHA);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mod_timer(&amp;pLed-&gt;Bl=
inkTimer, jiffies +<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0RT_TRACE(_module_rtl=
8712_led_c_, _drv_info_, (&quot;CurrLedState %d\n&quot;, pLed-&gt;CurrLedSt=
ate));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;BlinkTimes =3D 0;<br>
&gt; &gt; &gt;&gt; @@ -195,7 +202,8 @@ static void SwLedBlink1(struct LED_8=
71x *pLed)<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;BlinkingLed=
State =3D RTW_LED_OFF;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;BlinkingLed=
State =3D RTW_LED_ON;<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0_set_timer(&amp;(pLed-&gt;BlinkTimer), LED_BLINK_FASTE=
R_INTERVAL_ALPHA);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0mod_timer(&amp;pLed-&gt;BlinkTimer, jiffies +<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0msecs_to_jiffies(LE=
D_BLINK_FASTER_INTERVAL_ALPHA));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<=
br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0br=
eak;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case LED_BLINK_WPS:<br>
&gt; &gt; &gt;&gt; @@ -203,7 +211,8 @@ static void SwLedBlink1(struct LED_8=
71x *pLed)<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;BlinkingLedState =3D RTW_LED_OFF;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0el=
se<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;BlinkingLedState =3D RTW_LED_ON;<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_set_ti=
mer(&amp;(pLed-&gt;BlinkTimer), LED_BLINK_SCAN_INTERVAL_ALPHA);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mod_tim=
er(&amp;pLed-&gt;BlinkTimer, jiffies +<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA)=
);<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0br=
eak;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case LED_BLINK_WPS_STOP:=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 /* WPS success */<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if=
 (pLed-&gt;BlinkingLedState =3D=3D RTW_LED_ON)<br>
&gt; &gt; &gt;&gt; @@ -218,14 +227,15 @@ static void SwLedBlink1(struct LED=
_871x *pLed)<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;BlinkingLed=
State =3D RTW_LED_OFF;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;BlinkingLed=
State =3D RTW_LED_ON;<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0_set_timer(&amp;(pLed-&gt;BlinkTimer), LED_BLINK_LINK_=
INTERVAL_ALPHA);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0mod_timer(&amp;pLed-&gt;BlinkTimer, jiffies +<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0msecs_to_jiffies(LE=
D_BLINK_LINK_INTERVAL_ALPHA));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0RT_TRACE(_module_rtl8712_led_c_, _drv_info_, (&q=
uot;CurrLedState %d\n&quot;, pLed-&gt;CurrLedState));<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;bLedWPSBlinkInProgress =3D false;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0} =
else {<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;BlinkingLedState =3D RTW_LED_OFF;<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0_set_timer(&amp;(pLed-&gt;BlinkTimer),<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LED_BLINK_WPS_SUCC=
ESS_INTERVAL_ALPHA);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0mod_timer(&amp;pLed-&gt;BlinkTimer, jiffies +<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0msecs_to_jiffies(LE=
D_BLINK_WPS_SUCCESS_INTERVAL_ALPHA));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<=
br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0br=
eak;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0default:<br>
&gt; &gt; &gt;&gt; @@ -262,7 +272,8 @@ static void SwLedControlMode1(struct=
 adapter *padapter, enum LED_CTL_MODE LedAct<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;BlinkingLed=
State =3D RTW_LED_OFF;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;BlinkingLed=
State =3D RTW_LED_ON;<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0_set_timer(&amp;(pLed-&gt;BlinkTimer), LED_BLINK_NO_LI=
NK_INTERVAL_ALPHA);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0mod_timer(&amp;pLed-&gt;BlinkTimer, jiffies +<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0msecs_to_jiffies(LE=
D_BLINK_NO_LINK_INTERVAL_ALPHA));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<=
br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0br=
eak;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case LED_CTL_LINK:<br>
&gt; &gt; &gt;&gt; @@ -283,7 +294,8 @@ static void SwLedControlMode1(struct=
 adapter *padapter, enum LED_CTL_MODE LedAct<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;BlinkingLed=
State =3D RTW_LED_OFF;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;BlinkingLed=
State =3D RTW_LED_ON;<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0_set_timer(&amp;(pLed-&gt;BlinkTimer), LED_BLINK_LINK_=
INTERVAL_ALPHA);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0mod_timer(&amp;pLed-&gt;BlinkTimer, jiffies +<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0msecs_to_jiffies(LE=
D_BLINK_LINK_INTERVAL_ALPHA));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<=
br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0br=
eak;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case LED_CTL_SITE_SURVEY:<br>
&gt; &gt; &gt;&gt; @@ -311,7 +323,8 @@ static void SwLedControlMode1(struct=
 adapter *padapter, enum LED_CTL_MODE LedAct<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;BlinkingLed=
State =3D RTW_LED_OFF;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;BlinkingLed=
State =3D RTW_LED_ON;<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0_set_timer(&amp;(pLed-&gt;BlinkTimer), LED_BLINK_SCAN_=
INTERVAL_ALPHA);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0mod_timer(&amp;pLed-&gt;BlinkTimer, jiffies +<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0msecs_to_jiffies(LE=
D_BLINK_SCAN_INTERVAL_ALPHA));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }=
<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0br=
eak;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case LED_CTL_TX:<br>
&gt; &gt; &gt;&gt; @@ -334,7 +347,8 @@ static void SwLedControlMode1(struct=
 adapter *padapter, enum LED_CTL_MODE LedAct<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;BlinkingLed=
State =3D RTW_LED_OFF;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;BlinkingLed=
State =3D RTW_LED_ON;<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0_set_timer(&amp;(pLed-&gt;BlinkTimer), LED_BLINK_FASTE=
R_INTERVAL_ALPHA);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0mod_timer(&amp;pLed-&gt;BlinkTimer, jiffies +<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0msecs_to_jiffies(LE=
D_BLINK_FASTER_INTERVAL_ALPHA));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<=
br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0br=
eak;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case LED_CTL_START_WPS: /* wai=
t until xinpin finish */<br>
&gt; &gt; &gt;&gt; @@ -362,7 +376,8 @@ static void SwLedControlMode1(struct=
 adapter *padapter, enum LED_CTL_MODE LedAct<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;BlinkingLed=
State =3D RTW_LED_OFF;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;BlinkingLed=
State =3D RTW_LED_ON;<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0_set_timer(&amp;(pLed-&gt;BlinkTimer), LED_BLINK_SCAN_=
INTERVAL_ALPHA);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0mod_timer(&amp;pLed-&gt;BlinkTimer, jiffies +<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0msecs_to_jiffies(LE=
D_BLINK_SCAN_INTERVAL_ALPHA));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }=
<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0br=
eak;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case LED_CTL_STOP_WPS:<br>
&gt; &gt; &gt;&gt; @@ -389,11 +404,12 @@ static void SwLedControlMode1(stru=
ct adapter *padapter, enum LED_CTL_MODE LedAct<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pL=
ed-&gt;CurrLedState =3D LED_BLINK_WPS_STOP;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if=
 (pLed-&gt;bLedOn) {<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;BlinkingLedState =3D RTW_LED_OFF;<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0_set_timer(&amp;(pLed-&gt;BlinkTimer),<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LED_BLINK_WPS_SUCC=
ESS_INTERVAL_ALPHA);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0mod_timer(&amp;pLed-&gt;BlinkTimer, jiffies +<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0msecs_to_jiffies(LE=
D_BLINK_WPS_SUCCESS_INTERVAL_ALPHA));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0} =
else {<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;BlinkingLedState =3D RTW_LED_ON;<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0_set_timer(&amp;(pLed-&gt;BlinkTimer), 0);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0mod_timer(&amp;pLed-&gt;BlinkTimer, jiffies +<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0msecs_to_jiffies(0)=
);<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<=
br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0br=
eak;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case LED_CTL_STOP_WPS_FAIL:<br=
>
&gt; &gt; &gt;&gt; @@ -407,7 +423,8 @@ static void SwLedControlMode1(struct=
 adapter *padapter, enum LED_CTL_MODE LedAct<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;BlinkingLedState =3D RTW_LED_OFF;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0el=
se<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0pLed-&gt;BlinkingLedState =3D RTW_LED_ON;<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_set_ti=
mer(&amp;(pLed-&gt;BlinkTimer), LED_BLINK_NO_LINK_INTERVAL_ALPHA);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mod_tim=
er(&amp;pLed-&gt;BlinkTimer, jiffies +<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALP=
HA));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0br=
eak;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case LED_CTL_POWER_OFF:<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pL=
ed-&gt;CurrLedState =3D RTW_LED_OFF;<br>
&gt; &gt; &gt;&gt; diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b=
/drivers/staging/rtl8188eu/core/rtw_mlme.c<br>
&gt; &gt; &gt;&gt; index d4632da..f006679 100644<br>
&gt; &gt; &gt;&gt; --- a/drivers/staging/rtl8188eu/core/rtw_mlme.c<br>
&gt; &gt; &gt;&gt; +++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c<br>
&gt; &gt; &gt;&gt; @@ -665,7 +665,8 @@ void rtw_surveydone_event_callback(s=
truct adapter *adapter, u8 *pbuf)<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0set_fwstate(pmlmepri=
v, _FW_UNDER_LINKING);<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (rtw_select_and_j=
oin_from_scanned_queue(pmlmepriv) =3D=3D _SUCCESS) {<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0_set_timer(&amp;pmlmepriv-&gt;assoc_timer, MAX_JOIN_TIMEOUT);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0mod_timer(&amp;pmlmepriv-&gt;assoc_timer,<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0jiffies + msecs_to_jiffies(MAX_JOIN_T=
IMEOUT));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0} else {<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0struct wlan_bssid_ex=C2=A0 =C2=A0 *pdev_network =3D &amp;(adapter=
-&gt;registrypriv.dev_network);<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0u8 *pibss =3D adapter-&gt;registrypriv.dev_network.MacAddress;<br=
>
&gt; &gt; &gt;&gt; @@ -692,7 +693,8 @@ void rtw_surveydone_event_callback(s=
truct adapter *adapter, u8 *pbuf)<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0pmlmepriv-&gt;to_join =3D false;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0s_ret =3D rtw_select_and_join_from_scanned_queue=
(pmlmepriv);<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0if (_SUCCESS =3D=3D s_ret) {<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 _set_timer(&amp;pmlmepriv-&gt;assoc_tim=
er, MAX_JOIN_TIMEOUT);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mod_timer(&amp;pmlmepriv-&gt;assoc_time=
r,<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 jiff=
ies + msecs_to_jiffies(MAX_JOIN_TIMEOUT));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (s_ret =3D=3D 2) { /* there is no need=
 to wait for join */<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_clr_fwstate_(pmlmep=
riv, _FW_UNDER_LINKING);<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rtw_indicate_connect=
(adapter);<br>
&gt; &gt; &gt;&gt; @@ -1127,14 +1129,16 @@ void rtw_joinbss_event_prehandle=
(struct adapter *adapter, u8 *pbuf)<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (pnetwork-&gt;join_r=
es =3D=3D -4) {<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rt=
w_reset_securitypriv(adapter);<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_set_ti=
mer(&amp;pmlmepriv-&gt;assoc_timer, 1);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mod_tim=
er(&amp;pmlmepriv-&gt;assoc_timer,<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0jiffies + msecs_to_jiffies(1));<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if=
 ((check_fwstate(pmlmepriv, _FW_UNDER_LINKING)) =3D=3D true) {<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, (&q=
uot;fail! clear _FW_UNDER_LINKING ^^^fw_state=3D%x\n&quot;, get_fwstate(pml=
mepriv)));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0_clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<=
br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} else { /* if join_res &lt; 0=
 (join fails), then try again */<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_set_ti=
mer(&amp;pmlmepriv-&gt;assoc_timer, 1);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mod_tim=
er(&amp;pmlmepriv-&gt;assoc_timer,<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0jiffies + msecs_to_jiffies(1));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_c=
lr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; @@ -1449,7 +1453,8 @@ void rtw_dynamic_check_timer_handl=
der(void *function_context)<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rt=
w_auto_scan_handler(adapter);<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt;&gt;=C2=A0 exit:<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0_set_timer(&amp;adapter-&gt;mlmepri=
v.dynamic_chk_timer, 2000);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0mod_timer(&amp;adapter-&gt;mlmepriv=
.dynamic_chk_timer,<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
jiffies + msecs_to_jiffies(2000));<br>
&gt; &gt; &gt;&gt;=C2=A0 }<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt;=C2=A0 #define RTW_SCAN_RESULT_EXPIRE 2000<br>
&gt; &gt; &gt;&gt; diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext=
.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c<br>
&gt; &gt; &gt;&gt; index cd12dd7..86feee8 100644<br>
&gt; &gt; &gt;&gt; --- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c<br>
&gt; &gt; &gt;&gt; +++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c<br>
&gt; &gt; &gt;&gt; @@ -3972,8 +3972,8 @@ void start_clnt_join(struct adapte=
r *padapter)<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*=
 and enable a timer */<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0be=
acon_timeout =3D decide_wait_for_beacon_timeout(pmlmeinfo-&gt;bcn_interval)=
;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0se=
t_link_timer(pmlmeext, beacon_timeout);<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_set_ti=
mer(&amp;padapter-&gt;mlmepriv.assoc_timer,<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (REAUTH_TO * REAUTH_LIMIT) + (REASSOC_TO*REASS=
OC_LIMIT) + beacon_timeout);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mod_tim=
er(&amp;padapter-&gt;mlmepriv.assoc_timer, jiffies +<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0msecs_to_jiffies(REAUTH_TO * REAUTH_LIMIT) + (R=
EASSOC_TO*REASSOC_LIMIT) + beacon_timeout);<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pm=
lmeinfo-&gt;state =3D WIFI_FW_AUTH_NULL | WIFI_FW_STATION_STATE;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (caps&amp;cap_IBSS) =
{ /* adhoc client */<br>
&gt; &gt; &gt;&gt; @@ -5406,7 +5406,8 @@ u8 add_ba_hdl(struct adapter *pada=
pter, unsigned char *pbuf)<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (((pmlmeinfo-&gt;state &amp=
; WIFI_FW_ASSOC_SUCCESS) &amp;&amp; (pmlmeinfo-&gt;HT_enable)) ||<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((pmlmeinfo-&gt;=
state&amp;0x03) =3D=3D WIFI_FW_AP_STATE)) {<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0is=
sue_action_BA(padapter, pparm-&gt;addr, RTW_WLAN_ACTION_ADDBA_REQ, (u16)ppa=
rm-&gt;tid);<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_set_ti=
mer(&amp;psta-&gt;addba_retry_timer, ADDBA_TO);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mod_tim=
er(&amp;psta-&gt;addba_retry_timer,<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0jiffies + msecs_to_jiffies(ADDBA_TO));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} else {<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ps=
ta-&gt;htpriv.candidate_tid_bitmap &amp;=3D ~BIT(pparm-&gt;tid);<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt;&gt; diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b=
/drivers/staging/rtl8188eu/core/rtw_recv.c<br>
&gt; &gt; &gt;&gt; index bd79e9e..0db421e 100644<br>
&gt; &gt; &gt;&gt; --- a/drivers/staging/rtl8188eu/core/rtw_recv.c<br>
&gt; &gt; &gt;&gt; +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c<br>
&gt; &gt; &gt;&gt; @@ -1927,7 +1927,8 @@ static int recv_indicatepkt_reorde=
r(struct adapter *padapter,<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* recv_indicatepkts_in_order(=
padapter, preorder_ctrl, true); */<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (recv_indicatepkts_in_order=
(padapter, preorder_ctrl, false)) {<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_set_ti=
mer(&amp;preorder_ctrl-&gt;reordering_ctrl_timer, REORDER_WAIT_TIME);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mod_tim=
er(&amp;preorder_ctrl-&gt;reordering_ctrl_timer,<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0jiffies + msecs_to_jiffies(REORDER_WAIT_TIME));=
<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sp=
in_unlock_bh(&amp;ppending_recvframe_queue-&gt;lock);<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} else {<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sp=
in_unlock_bh(&amp;ppending_recvframe_queue-&gt;lock);<br>
&gt; &gt; &gt;&gt; @@ -1957,7 +1958,8 @@ void rtw_reordering_ctrl_timeout_h=
andler(void *pcontext)<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0spin_lock_bh(&amp;ppending_rec=
vframe_queue-&gt;lock);<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (recv_indicatepkts_in_order=
(padapter, preorder_ctrl, true) =3D=3D true)<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_set_ti=
mer(&amp;preorder_ctrl-&gt;reordering_ctrl_timer, REORDER_WAIT_TIME);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mod_tim=
er(&amp;preorder_ctrl-&gt;reordering_ctrl_timer,<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0jiffies + msecs_to_jiffies(REORDER_WAIT_TIME));=
<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0spin_unlock_bh(&amp;ppending_r=
ecvframe_queue-&gt;lock);<br>
&gt; &gt; &gt;&gt;=C2=A0 }<br>
&gt; &gt; &gt;&gt; diff --git a/drivers/staging/rtl8188eu/include/osdep_ser=
vice.h b/drivers/staging/rtl8188eu/include/osdep_service.h<br>
&gt; &gt; &gt;&gt; index 3a27477..4c968ac 100644<br>
&gt; &gt; &gt;&gt; --- a/drivers/staging/rtl8188eu/include/osdep_service.h<=
br>
&gt; &gt; &gt;&gt; +++ b/drivers/staging/rtl8188eu/include/osdep_service.h<=
br>
&gt; &gt; &gt;&gt; @@ -85,11 +85,6 @@ static inline void _init_timer(struct=
 timer_list *ptimer,<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0init_timer(ptimer);<br>
&gt; &gt; &gt;&gt;=C2=A0 }<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; -static inline void _set_timer(struct timer_list *ptimer=
, u32 delay_time)<br>
&gt; &gt; &gt;&gt; -{<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0mod_timer(ptimer , (jiffies+msecs_t=
o_jiffies(delay_time)));<br>
&gt; &gt; &gt;&gt; -}<br>
&gt; &gt; &gt;&gt; -<br>
&gt; &gt; &gt;&gt;=C2=A0 #define RTW_TIMER_HDL_ARGS void *FunctionContext<b=
r>
&gt; &gt; &gt;&gt;=C2=A0 #define RTW_TIMER_HDL_NAME(name) rtw_##name##_time=
r_hdl<br>
&gt; &gt; &gt;&gt;=C2=A0 #define RTW_DECLARE_TIMER_HDL(name) \<br>
&gt; &gt; &gt;&gt; diff --git a/drivers/staging/rtl8188eu/include/rtw_mlme_=
ext.h b/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h<br>
&gt; &gt; &gt;&gt; index 4f05aee..3f9a0f7 100644<br>
&gt; &gt; &gt;&gt; --- a/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h<b=
r>
&gt; &gt; &gt;&gt; +++ b/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h<b=
r>
&gt; &gt; &gt;&gt; @@ -651,12 +651,14 @@ void addba_timer_hdl(void *functio=
n_context);<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt;=C2=A0 #define set_survey_timer(mlmeext, ms) \<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0do { \<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_set_ti=
mer(&amp;(mlmeext)-&gt;survey_timer, (ms)); \<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mod_tim=
er(&amp;mlmeext-&gt;survey_timer, \<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0jiffies + msecs_to_jiffies(ms))<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} while (0)<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt;=C2=A0 #define set_link_timer(mlmeext, ms) \<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0do { \<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_set_ti=
mer(&amp;(mlmeext)-&gt;link_timer, (ms)); \<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mod_tim=
er(&amp;mlmeext-&gt;link_timer, \<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0jiffies + msecs_to_jiffies(ms))<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} while (0)<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt;=C2=A0 int cckrates_included(unsigned char *rate, int rat=
elen);<br>
&gt; &gt; &gt;&gt; diff --git a/drivers/staging/rtl8188eu/include/rtw_pwrct=
rl.h b/drivers/staging/rtl8188eu/include/rtw_pwrctrl.h<br>
&gt; &gt; &gt;&gt; index 54dfbf0..88ed2f3 100644<br>
&gt; &gt; &gt;&gt; --- a/drivers/staging/rtl8188eu/include/rtw_pwrctrl.h<br=
>
&gt; &gt; &gt;&gt; +++ b/drivers/staging/rtl8188eu/include/rtw_pwrctrl.h<br=
>
&gt; &gt; &gt;&gt; @@ -234,7 +234,8 @@ struct pwrctrl_priv {<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt;=C2=A0 #define _rtw_set_pwr_state_check_timer(pwrctrlpriv=
, ms) \<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0do { \<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_set_ti=
mer(&amp;(pwrctrlpriv)-&gt;pwr_state_check_timer, (ms)); \<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mod_tim=
er(&amp;pwrctrlpriv-&gt;pwr_state_check_timer, \<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0jiffies + msecs_to_jiffies(ms));<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} while (0)<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt;=C2=A0 #define rtw_set_pwr_state_check_timer(pwrctrl)=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0\<br>
&gt; &gt; &gt;&gt; diff --git a/drivers/staging/rtl8188eu/include/rtw_recv.=
h b/drivers/staging/rtl8188eu/include/rtw_recv.h<br>
&gt; &gt; &gt;&gt; index f0c26ef..44b69ef 100644<br>
&gt; &gt; &gt;&gt; --- a/drivers/staging/rtl8188eu/include/rtw_recv.h<br>
&gt; &gt; &gt;&gt; +++ b/drivers/staging/rtl8188eu/include/rtw_recv.h<br>
&gt; &gt; &gt;&gt; @@ -216,8 +216,8 @@ struct recv_priv {<br>
&gt; &gt; &gt;&gt;=C2=A0 };<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt;=C2=A0 #define rtw_set_signal_stat_timer(recvpriv)=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0_set_timer(&amp;(recvpriv)-&gt;sign=
al_stat_timer,=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 (recvpriv)-&gt;signal_stat_sampling_interval)<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0mod_timer(&amp;recvpriv-&gt;signal_=
stat_timer, jiffies +=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
msecs_to_jiffies(recvpriv-&gt;signal_stat_sampling_interval))<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt;=C2=A0 struct sta_recv_priv {<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0spinlock_t lock;<br>
&gt; &gt; &gt;&gt; diff --git a/drivers/staging/rtl8188eu/os_dep/os_intfs.c=
 b/drivers/staging/rtl8188eu/os_dep/os_intfs.c<br>
&gt; &gt; &gt;&gt; index 88a909c..5fe3ae5 100644<br>
&gt; &gt; &gt;&gt; --- a/drivers/staging/rtl8188eu/os_dep/os_intfs.c<br>
&gt; &gt; &gt;&gt; +++ b/drivers/staging/rtl8188eu/os_dep/os_intfs.c<br>
&gt; &gt; &gt;&gt; @@ -998,7 +998,8 @@ int _netdev_open(struct net_device *=
pnetdev)<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0padapter-&gt;net_closed =3D fa=
lse;<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0_set_timer(&amp;padapter-&gt;mlmepr=
iv.dynamic_chk_timer, 2000);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0mod_timer(&amp;padapter-&gt;mlmepri=
v.dynamic_chk_timer,<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
jiffies + msecs_to_jiffies(2000));<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0padapter-&gt;pwrctrlpriv.bips_=
processing =3D false;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0rtw_set_pwr_state_check_timer(=
&amp;padapter-&gt;pwrctrlpriv);<br>
&gt; &gt; &gt;&gt; @@ -1052,7 +1053,8 @@ static int=C2=A0 ips_netdrv_open(s=
truct adapter *padapter)<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pa=
dapter-&gt;intf_start(padapter);<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0rtw_set_pwr_state_check_timer(=
&amp;padapter-&gt;pwrctrlpriv);<br>
&gt; &gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0_set_timer(&amp;padapter-&gt;mlmepr=
iv.dynamic_chk_timer, 5000);<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0mod_timer(&amp;padapter-&gt;mlmepri=
v.dynamic_chk_timer,<br>
&gt; &gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
jiffies + msecs_to_jiffies(5000));<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 return _SUCCESS;<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; --<br>
&gt; &gt; &gt;&gt; 1.9.1<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; --<br>
&gt; &gt; &gt;&gt; You received this message because you are subscribed to =
the Google Groups &quot;outreachy-kernel&quot; group.<br>
&gt; &gt; &gt;&gt; To unsubscribe from this group and stop receiving emails=
 from it, send an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe=
@googlegroups.com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; &gt; &gt;&gt; To post to this group, send email to <a href=3D"mailto:o=
utreachy-kernel@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br=
>
&gt; &gt; &gt;&gt; To view this discussion on the web visit <a href=3D"http=
s://groups.google.com/d/msgid/outreachy-kernel/0abbd76b80c2fb55ac1300e682f7=
c974dcaeba43.1424930708.git.vthakkar1994%40gmail.com">https://groups.google=
.com/d/msgid/outreachy-kernel/0abbd76b80c2fb55ac1300e682f7c974dcaeba43.1424=
930708.git.vthakkar1994%40gmail.com</a>.<br>
&gt; &gt; &gt;&gt; For more options, visit <a href=3D"https://groups.google=
.com/d/optout">https://groups.google.com/d/optout</a>.<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; Vaishali<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; You received this message because you are subscribed to the Googl=
e Groups &quot;outreachy-kernel&quot; group.<br>
&gt; &gt; To unsubscribe from this group and stop receiving emails from it,=
 send an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegr=
oups.com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; &gt; To post to this group, send email to <a href=3D"mailto:outreachy-=
kernel@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; &gt; To view this discussion on the web visit <a href=3D"https://group=
s.google.com/d/msgid/outreachy-kernel/CAK-LDb%2BKYhTYuF8KLddV3vUsmDgSsVrumX=
T54qJbDr1xp78MJg%40mail.gmail.com">https://groups.google.com/d/msgid/outrea=
chy-kernel/CAK-LDb%2BKYhTYuF8KLddV3vUsmDgSsVrumXT54qJbDr1xp78MJg%40mail.gma=
il.com</a>.<br>
&gt; &gt; For more options, visit <a href=3D"https://groups.google.com/d/op=
tout">https://groups.google.com/d/optout</a>.<br>
&gt; &gt;<br>
</p>

--047d7bfd0918c15255050ffab7de--

