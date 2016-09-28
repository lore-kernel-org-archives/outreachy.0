X-GM-THRID: 6335492673577680896
Date: Wed, 28 Sep 2016 14:19:24 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: gregkh@linuxfoundation.org
Message-Id: <a1722811-0eb9-4e28-af52-e234cd6e7107@googlegroups.com>
In-Reply-To: <20160928210715.GA26545@fireworks>
References: <20160928210715.GA26545@fireworks>
Subject: Re: [PATCH] staging: rtl8188eu: core: rtw_xmit: Use macros instead
 of constants
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_7367_2136836973.1475097564484"
X-Google-Token: ENznsL8Fp76DAqDq1fQ0
X-Google-IP: 84.117.92.113

------=_Part_7367_2136836973.1475097564484
Content-Type: multipart/alternative; 
	boundary="----=_Part_7368_743086801.1475097564485"

------=_Part_7368_743086801.1475097564485
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


I have some doubts about changing the constant with 
a string in the 531 line. My opinion is to let this line
unchanged.

Any help?

Also, I forgot to replace the constant from 398 line,
so I will submit the second version of the patch soon.

Georgiana   


On Thursday, 29 September 2016 00:07:17 UTC+3, Georgiana Chelu wrote:
>
> Replace the 0x888e with ETH_P_PAE and 0x0806 with ETH_P_ARP. 
> These macros can be found in drivers/staging/rtl8192e/rtllib.h 
>
> Hexadecimal numbers are not case sensitive, 
> therefore 0x888e is equal with 0x888E. 
>
> The modifications improve the readability of the code. 
>
> Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com> 
> --- 
>  drivers/staging/rtl8188eu/core/rtw_xmit.c | 12 ++++++------ 
>  drivers/staging/rtl8192e/rtllib.h         |  2 +- 
>  2 files changed, 7 insertions(+), 7 deletions(-) 
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c 
> b/drivers/staging/rtl8188eu/core/rtw_xmit.c 
> index 1392899..0f8b8e0 100644 
> --- a/drivers/staging/rtl8188eu/core/rtw_xmit.c 
> +++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c 
> @@ -402,7 +402,7 @@ static void set_qos(struct pkt_file *ppktfile, struct 
> pkt_attrib *pattrib) 
>                  _rtw_pktfile_read(ppktfile, (u8 *)&ip_hdr, 
> sizeof(ip_hdr)); 
>  /*                 user_prio = (ntohs(ip_hdr.tos) >> 5) & 0x3; */ 
>                  user_prio = ip_hdr.tos >> 5; 
> -        } else if (pattrib->ether_type == 0x888e) { 
> +        } else if (pattrib->ether_type == ETH_P_PAE) { 
>                  /*  "When priority processing of data frames is 
> supported, */ 
>                  /*  a STA's SME should send EAPOL-Key frames at the 
> highest priority." */ 
>                  user_prio = 7; 
> @@ -469,15 +469,15 @@ static s32 update_attrib(struct adapter *padapter, 
> struct sk_buff *pkt, struct p 
>                                  } 
>                          } 
>                  } 
> -        } else if (pattrib->ether_type == 0x888e) { 
> +        } else if (pattrib->ether_type == ETH_P_PAE) { 
>                  DBG_88E_LEVEL(_drv_info_, "send eapol packet\n"); 
>          } 
>   
> -        if ((pattrib->ether_type == 0x888e) || (pattrib->dhcp_pkt == 1)) 
> +        if ((pattrib->ether_type == ETH_P_PAE) || (pattrib->dhcp_pkt == 
> 1)) 
>                  rtw_set_scan_deny(padapter, 3000); 
>   
>          /*  If EAPOL , ARP , OR DHCP packet, driver must be in active 
> mode. */ 
> -        if ((pattrib->ether_type == 0x0806) || (pattrib->ether_type == 
> 0x888e) || (pattrib->dhcp_pkt == 1)) 
> +        if ((pattrib->ether_type == ETH_P_ARP) || (pattrib->ether_type == 
> ETH_P_PAE) || (pattrib->dhcp_pkt == 1)) 
>                  rtw_lps_ctrl_wk_cmd(padapter, LPS_CTRL_SPECIAL_PACKET, 
> 1); 
>   
>          bmcast = IS_MCAST(pattrib->ra); 
> @@ -531,8 +531,8 @@ static s32 update_attrib(struct adapter *padapter, 
> struct sk_buff *pkt, struct p 
>   
>                  pattrib->encrypt = 0; 
>   
> -                if ((pattrib->ether_type != 0x888e) && 
> !check_fwstate(pmlmepriv, WIFI_MP_STATE)) { 
> -                        RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, 
> ("\npsta->ieee8021x_blocked == true,  pattrib->ether_type(%.4x) != 
> 0x888e\n", pattrib->ether_type)); 
> +                if ((pattrib->ether_type != ETH_P_PAE) && 
> !check_fwstate(pmlmepriv, WIFI_MP_STATE)) { 
> +                        RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, 
> ("\npsta->ieee8021x_blocked == true,  pattrib->ether_type(%.4x) != 
> ETH_P_PAE\n", pattrib->ether_type)); 
>                          res = _FAIL; 
>                          goto exit; 
>                  } 
> diff --git a/drivers/staging/rtl8192e/rtllib.h 
> b/drivers/staging/rtl8192e/rtllib.h 
> index 38247fa..b895a53 100644 
> --- a/drivers/staging/rtl8192e/rtllib.h 
> +++ b/drivers/staging/rtl8192e/rtllib.h 
> @@ -521,7 +521,7 @@ enum wireless_mode { 
>  }; 
>   
>  #ifndef ETH_P_PAE 
> -#define ETH_P_PAE 0x888E /* Port Access Entity (IEEE 802.1X) */ 
> +#define ETH_P_PAE        0x888E                /* Port Access Entity 
> (IEEE 802.1X) */ 
>  #define ETH_P_IP        0x0800                /* Internet Protocol 
> packet        */ 
>  #define ETH_P_ARP        0x0806                /* Address Resolution 
> packet        */ 
>  #endif /* ETH_P_PAE */ 
> -- 
> 2.7.4 
>
>
------=_Part_7368_743086801.1475097564485
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>I have some doubts about changing the constant with <b=
r>a string in the 531 line. My opinion is to let this line<br>unchanged.<br=
><br>Any help?<br><br>Also, I forgot to replace the constant from 398 line,=
<br>so I will submit the second version of the patch soon.<br><br>Georgiana=
 =C2=A0 <br><br><br>On Thursday, 29 September 2016 00:07:17 UTC+3, Georgian=
a Chelu  wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-=
left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">Replace the 0x8=
88e with ETH_P_PAE and 0x0806 with ETH_P_ARP.
<br>These macros can be found in drivers/staging/rtl8192e/<wbr>rtllib.h
<br>
<br>Hexadecimal numbers are not case sensitive,
<br>therefore 0x888e is equal with 0x888E.
<br>
<br>The modifications improve the readability of the code.
<br>
<br>Signed-off-by: Georgiana Rodica Chelu &lt;<a href=3D"mailto:georgiana.c=
helu93@gmail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.hr=
ef=3D&#39;mailto:georgiana.chelu93@gmail.com&#39;;return true;" onclick=3D"=
this.href=3D&#39;mailto:georgiana.chelu93@gmail.com&#39;;return true;">geor=
giana.chelu93@gmail.com</a>&gt;
<br>---
<br>=C2=A0drivers/staging/rtl8188eu/<wbr>core/rtw_xmit.c | 12 ++++++------
<br>=C2=A0drivers/staging/rtl8192e/<wbr>rtllib.h =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 | =C2=A02 +-
<br>=C2=A02 files changed, 7 insertions(+), 7 deletions(-)
<br>
<br>diff --git a/drivers/staging/rtl8188eu/<wbr>core/rtw_xmit.c b/drivers/s=
taging/rtl8188eu/<wbr>core/rtw_xmit.c
<br>index 1392899..0f8b8e0 100644
<br>--- a/drivers/staging/rtl8188eu/<wbr>core/rtw_xmit.c
<br>+++ b/drivers/staging/rtl8188eu/<wbr>core/rtw_xmit.c
<br>@@ -402,7 +402,7 @@ static void set_qos(struct pkt_file *ppktfile, stru=
ct pkt_attrib *pattrib)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0_rtw_pktfile_<wbr>read(ppktfile, (u8 *)&am=
p;ip_hdr, sizeof(ip_hdr));
<br>=C2=A0/* =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0user_prio =3D (ntohs(ip_hdr.tos) &gt;&g=
t; 5) &amp; 0x3; */
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0user_prio =3D ip_hdr.tos &gt;&gt; 5;
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else if (pattrib-&gt=
;ether_type =3D=3D 0x888e) {
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else if (pattrib-&gt=
;ether_type =3D=3D ETH_P_PAE) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* =C2=A0&quot;When priority processing of=
 data frames is supported, */
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* =C2=A0a STA&#39;s SME should send EAPOL=
-Key frames at the highest priority.&quot; */
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0user_prio =3D 7;
<br>@@ -469,15 +469,15 @@ static s32 update_attrib(struct adapter *padapter=
, struct sk_buff *pkt, struct p
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0}
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0}
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else if (pattrib-&gt=
;ether_type =3D=3D 0x888e) {
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else if (pattrib-&gt=
;ether_type =3D=3D ETH_P_PAE) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_88E_<wbr>LEVEL(_drv_info_, &quot;send =
eapol packet\n&quot;);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>=C2=A0
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if ((pattrib-&gt;ether=
_type =3D=3D 0x888e) || (pattrib-&gt;dhcp_pkt =3D=3D 1))
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if ((pattrib-&gt;ether=
_type =3D=3D ETH_P_PAE) || (pattrib-&gt;dhcp_pkt =3D=3D 1))
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rtw_set_scan_<wbr>deny(padapter, 3000);
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* =C2=A0If EAPOL=
 , ARP , OR DHCP packet, driver must be in active mode. */
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if ((pattrib-&gt;ether=
_type =3D=3D 0x0806) || (pattrib-&gt;ether_type =3D=3D 0x888e) || (pattrib-=
&gt;dhcp_pkt =3D=3D 1))
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if ((pattrib-&gt;ether=
_type =3D=3D ETH_P_ARP) || (pattrib-&gt;ether_type =3D=3D ETH_P_PAE) || (pa=
ttrib-&gt;dhcp_pkt =3D=3D 1))
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rtw_lps_ctrl_<wbr>wk_cmd(padapter, LPS_CTR=
L_SPECIAL_PACKET, 1);
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bmcast =3D IS_MCA=
ST(pattrib-&gt;ra);
<br>@@ -531,8 +531,8 @@ static s32 update_attrib(struct adapter *padapter, =
struct sk_buff *pkt, struct p
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pattrib-&gt;<wbr>encrypt =3D 0;
<br>=C2=A0
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0if ((pattrib-&gt;ether_type !=3D 0x888e) &amp;&a=
mp; !check_fwstate(pmlmepriv, WIFI_MP_STATE)) {
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
RT_<wbr>TRACE(_module_rtl871x_xmit_c_, _drv_err_, (&quot;\npsta-&gt;ieee802=
1x_blocked =3D=3D true, =C2=A0pattrib-&gt;ether_type(%.4x) !=3D 0x888e\n&qu=
ot;, pattrib-&gt;ether_type));
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0if ((pattrib-&gt;ether_type !=3D ETH_P_PAE) &amp=
;&amp; !check_fwstate(pmlmepriv, WIFI_MP_STATE)) {
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
RT_<wbr>TRACE(_module_rtl871x_xmit_c_, _drv_err_, (&quot;\npsta-&gt;ieee802=
1x_blocked =3D=3D true, =C2=A0pattrib-&gt;ether_type(%.4x) !=3D ETH_P_PAE\n=
&quot;, pattrib-&gt;ether_type));
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0res =3D _FAIL;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0goto exit;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>diff --git a/drivers/staging/rtl8192e/<wbr>rtllib.h b/drivers/staging/r=
tl8192e/<wbr>rtllib.h
<br>index 38247fa..b895a53 100644
<br>--- a/drivers/staging/rtl8192e/<wbr>rtllib.h
<br>+++ b/drivers/staging/rtl8192e/<wbr>rtllib.h
<br>@@ -521,7 +521,7 @@ enum wireless_mode {
<br>=C2=A0};
<br>=C2=A0
<br>=C2=A0#ifndef ETH_P_PAE
<br>-#define ETH_P_PAE 0x888E /* Port Access Entity (IEEE 802.1X) */
<br>+#define ETH_P_PAE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A00x888=
E=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Port Access Entity (IEEE 802.1X) */
<br>=C2=A0#define ETH_P_IP=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A00=
x0800=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Internet Protocol packet=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0*/
<br>=C2=A0#define ETH_P_ARP=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
0x0806=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Address Resolution packet=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0*/
<br>=C2=A0#endif /* ETH_P_PAE */
<br>--=20
<br>2.7.4
<br>
<br></blockquote></div>
------=_Part_7368_743086801.1475097564485--

------=_Part_7367_2136836973.1475097564484--

