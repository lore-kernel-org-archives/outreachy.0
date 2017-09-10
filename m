X-GM-THRID: 6463845646554103808
Date: Sun, 10 Sep 2017 05:04:58 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <78b23708-60d8-47dd-9bea-94a1eb29bbeb@googlegroups.com>
In-Reply-To: <1504981213-14584-1-git-send-email-harshasharmaiitr@gmail.com>
References: <1504981213-14584-1-git-send-email-harshasharmaiitr@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: Add spaces around '=', '|', '<<'
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_10924_2039070729.1505045098640"
X-Google-Token: EOrU1M0Fdxp0p7aveeo0
X-Google-IP: 103.37.201.122

------=_Part_10924_2039070729.1505045098640
Content-Type: multipart/alternative; 
	boundary="----=_Part_10925_574609005.1505045098641"

------=_Part_10925_574609005.1505045098641
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Saturday, September 9, 2017 at 11:52:22 PM UTC+5:30, Harsha Sharma wrote:
>
> Use one space around most binary operators 
>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com> 
> --- 
>  drivers/staging/rtl8723bs/os_dep/os_intfs.c | 26 
> +++++++++++++------------- 
>  1 file changed, 13 insertions(+), 13 deletions(-) 
>
> diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c 
> b/drivers/staging/rtl8723bs/os_dep/os_intfs.c 
> index 0215899..0129381 100644 
> --- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c 
> +++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c 
> @@ -121,7 +121,7 @@ 
>   
>  static int rtw_enusbss = 0;/* 0:disable, 1:enable */ 
>   
> -static int rtw_hwpdn_mode =2;/* 0:disable, 1:enable, 2: by EFUSE config 
> */ 
> +static int rtw_hwpdn_mode = 2;/* 0:disable, 1:enable, 2: by EFUSE config 
> */ 
>   
>  #ifdef CONFIG_HW_PWRP_DETECTION 
>  static int rtw_hwpwrp_detect = 1; 
> @@ -183,7 +183,7 @@ 
>   
>  module_param(rtw_hw_wps_pbc, int, 0644); 
>   
> -static uint rtw_max_roaming_times =2; 
> +static uint rtw_max_roaming_times = 2; 
>  module_param(rtw_max_roaming_times, uint, 0644); 
>  MODULE_PARM_DESC(rtw_max_roaming_times,"The max roaming times to try"); 
>   
> @@ -222,7 +222,7 @@ 
>  /*  BIT4 - RF,                                        0: non-support, 1: 
> support */ 
>  /*  BIT5 - RF_TXPWR_TRACK,        0: non-support, 1: support */ 
>  /*  BIT6 - RF_TXPWR_LMT,                0: non-support, 1: support */ 
> -static int rtw_load_phy_file = (BIT2|BIT6); 
> +static int rtw_load_phy_file = (BIT2 | BIT6); 
>  module_param(rtw_load_phy_file, int, 0644); 
>  MODULE_PARM_DESC(rtw_load_phy_file,"PHY File Bit Map"); 
>  static int rtw_decrypt_phy_file = 0; 
> @@ -255,8 +255,8 @@ static uint loadparam(struct adapter *padapter, 
> _nic_hdl pnetdev) 
>   
>          registry_par->vrtl_carrier_sense = (u8)rtw_vrtl_carrier_sense ; 
>          registry_par->vcs_type = (u8)rtw_vcs_type; 
> -        registry_par->rts_thresh =(u16)rtw_rts_thresh; 
> -        registry_par->frag_thresh =(u16)rtw_frag_thresh; 
> +        registry_par->rts_thresh = (u16)rtw_rts_thresh; 
> +        registry_par->frag_thresh = (u16)rtw_frag_thresh; 
>          registry_par->preamble = (u8)rtw_preamble; 
>          registry_par->scan_mode = (u8)rtw_scan_mode; 
>          registry_par->adhoc_tx_pwr = (u8)rtw_adhoc_tx_pwr; 
> @@ -440,7 +440,7 @@ u16 rtw_recv_select_queue(struct sk_buff *skb) 
>          u32 priority; 
>          u8 *pdata = skb->data; 
>   
> -        memcpy(&eth_type, pdata+(ETH_ALEN<<1), 2); 
> +        memcpy(&eth_type, pdata+(ETH_ALEN << 1), 2); 
>   
>          switch (be16_to_cpu(eth_type)) { 
>                  case ETH_P_IP: 
> @@ -652,8 +652,8 @@ static u8 rtw_init_default_value(struct adapter 
> *padapter) 
>  #ifdef CONFIG_GTK_OL 
>          psecuritypriv->binstallKCK_KEK = _FAIL; 
>  #endif /* CONFIG_GTK_OL */ 
> -        psecuritypriv->sw_encrypt =pregistrypriv->software_encrypt; 
> -        psecuritypriv->sw_decrypt =pregistrypriv->software_decrypt; 
> +        psecuritypriv->sw_encrypt = pregistrypriv->software_encrypt; 
> +        psecuritypriv->sw_decrypt = pregistrypriv->software_decrypt; 
>   
>          psecuritypriv->dot11AuthAlgrthm = dot11AuthAlgrthm_Open; /* open 
> system */ 
>          psecuritypriv->dot11PrivacyAlgrthm = _NO_PRIVACY_; 
> @@ -748,7 +748,7 @@ u8 rtw_reset_drv_sw(struct adapter *padapter) 
>          pmlmepriv->LinkDetectInfo.TrafficTransitionCount = 0; 
>          pmlmepriv->LinkDetectInfo.LowPowerTransitionCount = 0; 
>   
> -        _clr_fwstate_(pmlmepriv, _FW_UNDER_SURVEY |_FW_UNDER_LINKING); 
> +        _clr_fwstate_(pmlmepriv, _FW_UNDER_SURVEY | _FW_UNDER_LINKING); 
>   
>          pwrctrlpriv->pwr_state_check_cnts = 0; 
>   
> @@ -777,7 +777,7 @@ u8 rtw_init_drv_sw(struct adapter *padapter) 
>                  goto exit; 
>          } 
>   
> -        padapter->cmdpriv.padapter =padapter; 
> +        padapter->cmdpriv.padapter = padapter; 
>   
>          if ((rtw_init_evt_priv(&padapter->evtpriv)) == _FAIL) { 
>                  RT_TRACE(_module_os_intfs_c_, _drv_err_, ("\n Can't init 
> evt_priv\n")); 
> @@ -986,7 +986,7 @@ int _netdev_open(struct net_device *pnetdev) 
>   
>                  DBG_871X("MAC Address = "MAC_FMT"\n", 
> MAC_ARG(pnetdev->dev_addr)); 
>   
> -                status =rtw_start_drv_threads(padapter); 
> +                status = rtw_start_drv_threads(padapter); 
>                  if (status == _FAIL) { 
>                          DBG_871X("Initialize driver software resource 
> Failed!\n"); 
>                          goto netdev_open_error; 
> @@ -1641,7 +1641,7 @@ int rtw_resume_process_wow(struct adapter *padapter) 
>                  } 
>   
>                  /* Disable WOW, set H2C command */ 
> -                poidparam.subcode =WOWLAN_DISABLE; 
> +                poidparam.subcode = WOWLAN_DISABLE; 
>                  padapter->HalFunc.SetHwRegHandler(padapter, 
> HW_VAR_WOWLAN, (u8 *)&poidparam); 
>   
>                  psta = rtw_get_stainfo(&padapter->stapriv, 
> get_bssid(&padapter->mlmepriv)); 
> @@ -1705,7 +1705,7 @@ int rtw_resume_process_wow(struct adapter *padapter) 
>                  DBG_871X_LEVEL(_drv_always_, "do not reset timer\n"); 
>          } 
>   
> -        pwrpriv->wowlan_mode =false; 
> +        pwrpriv->wowlan_mode = false; 
>   
>          /* clean driver side wake up reason. */ 
>          pwrpriv->wowlan_wake_reason = 0; 
> -- 
> 1.9.1

Hi,
I am trying to send patchset for this file with 10 commits but unable to 
send it. I am following this  https://kernelnewbies.org/Outreachyfirstpatch 
and with this command "git format-patch -o /tmp/ --cover-letter -n 
--thread=shallow --cc="linux-usb@vger.kernel.org" 7b2a57c^..f46968c"
no matches found: 7b2a57c^..f46968c.
But these commit ID's exist in "git log --pretty=oneline --abbrev-commit" .
Can you please help ?
Thanks a lot.

Regards,
Harsha Sharma
 

------=_Part_10925_574609005.1505045098641
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Saturday, September 9, 2017 at 11:52:22 PM UTC+=
5:30, Harsha Sharma wrote:<blockquote class=3D"gmail_quote" style=3D"margin=
: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">Use =
one space around most binary operators
<br>
<br>Signed-off-by: Harsha Sharma &lt;<a href=3D"mailto:harshasharmaiitr@gma=
il.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;=
mailto:harshasharmaiitr@gmail.com&#39;;return true;" onclick=3D"this.href=
=3D&#39;mailto:harshasharmaiitr@gmail.com&#39;;return true;">harshasharmaii=
tr@gmail.com</a>&gt;
<br>---
<br>=C2=A0drivers/staging/rtl8723bs/os_<wbr>dep/os_intfs.c | 26 +++++++++++=
++-------------
<br>=C2=A01 file changed, 13 insertions(+), 13 deletions(-)
<br>
<br>diff --git a/drivers/staging/rtl8723bs/<wbr>os_dep/os_intfs.c b/drivers=
/staging/rtl8723bs/<wbr>os_dep/os_intfs.c
<br>index 0215899..0129381 100644
<br>--- a/drivers/staging/rtl8723bs/<wbr>os_dep/os_intfs.c
<br>+++ b/drivers/staging/rtl8723bs/<wbr>os_dep/os_intfs.c
<br>@@ -121,7 +121,7 @@
<br>=C2=A0
<br>=C2=A0static int rtw_enusbss =3D 0;/* 0:disable, 1:enable */
<br>=C2=A0
<br>-static int rtw_hwpdn_mode =3D2;/* 0:disable, 1:enable, 2: by EFUSE con=
fig */
<br>+static int rtw_hwpdn_mode =3D 2;/* 0:disable, 1:enable, 2: by EFUSE co=
nfig */
<br>=C2=A0
<br>=C2=A0#ifdef CONFIG_HW_PWRP_DETECTION
<br>=C2=A0static int rtw_hwpwrp_detect =3D 1;
<br>@@ -183,7 +183,7 @@
<br>=C2=A0
<br>=C2=A0module_param(rtw_hw_wps_pbc, int, 0644);
<br>=C2=A0
<br>-static uint rtw_max_roaming_times =3D2;
<br>+static uint rtw_max_roaming_times =3D 2;
<br>=C2=A0module_param(rtw_max_roaming_<wbr>times, uint, 0644);
<br>=C2=A0MODULE_PARM_DESC(rtw_max_<wbr>roaming_times,&quot;The max roaming=
 times to try&quot;);
<br>=C2=A0
<br>@@ -222,7 +222,7 @@
<br>=C2=A0/* =C2=A0BIT4 - RF,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A00: non-support, 1: suppo=
rt */
<br>=C2=A0/* =C2=A0BIT5 - RF_TXPWR_TRACK,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A00: non-support, 1: support */
<br>=C2=A0/* =C2=A0BIT6 - RF_TXPWR_LMT,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>0: non-sup=
port, 1: support */
<br>-static int rtw_load_phy_file =3D (BIT2|BIT6);
<br>+static int rtw_load_phy_file =3D (BIT2 | BIT6);
<br>=C2=A0module_param(rtw_load_phy_<wbr>file, int, 0644);
<br>=C2=A0MODULE_PARM_DESC(rtw_load_<wbr>phy_file,&quot;PHY File Bit Map&qu=
ot;);
<br>=C2=A0static int rtw_decrypt_phy_file =3D 0;
<br>@@ -255,8 +255,8 @@ static uint loadparam(struct adapter *padapter, _ni=
c_hdl pnetdev)
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0registry_par-&gt;=
vrtl_<wbr>carrier_sense =3D (u8)rtw_vrtl_carrier_sense ;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0registry_par-&gt;=
vcs_<wbr>type =3D (u8)rtw_vcs_type;
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0registry_par-&gt;rts_<=
wbr>thresh =3D(u16)rtw_rts_thresh;
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0registry_par-&gt;frag_=
<wbr>thresh =3D(u16)rtw_frag_thresh;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0registry_par-&gt;rts_<=
wbr>thresh =3D (u16)rtw_rts_thresh;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0registry_par-&gt;frag_=
<wbr>thresh =3D (u16)rtw_frag_thresh;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0registry_par-&gt;=
<wbr>preamble =3D (u8)rtw_preamble;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0registry_par-&gt;=
scan_<wbr>mode =3D (u8)rtw_scan_mode;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0registry_par-&gt;=
adhoc_<wbr>tx_pwr =3D (u8)rtw_adhoc_tx_pwr;
<br>@@ -440,7 +440,7 @@ u16 rtw_recv_select_queue(struct sk_buff *skb)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 priority;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 *pdata =3D skb=
-&gt;data;
<br>=C2=A0
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0memcpy(&amp;eth_type, =
pdata+(ETH_ALEN&lt;&lt;1), 2);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0memcpy(&amp;eth_type, =
pdata+(ETH_ALEN &lt;&lt; 1), 2);
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0switch (be16_to_c=
pu(eth_type)) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case ETH_P_IP:
<br>@@ -652,8 +652,8 @@ static u8 rtw_init_default_value(struct adapter *pa=
dapter)
<br>=C2=A0#ifdef CONFIG_GTK_OL
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0psecuritypriv-&gt=
;<wbr>binstallKCK_KEK =3D _FAIL;
<br>=C2=A0#endif /* CONFIG_GTK_OL */
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0psecuritypriv-&gt;sw_<=
wbr>encrypt =3Dpregistrypriv-&gt;software_<wbr>encrypt;
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0psecuritypriv-&gt;sw_<=
wbr>decrypt =3Dpregistrypriv-&gt;software_<wbr>decrypt;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0psecuritypriv-&gt;sw_<=
wbr>encrypt =3D pregistrypriv-&gt;software_<wbr>encrypt;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0psecuritypriv-&gt;sw_<=
wbr>decrypt =3D pregistrypriv-&gt;software_<wbr>decrypt;
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0psecuritypriv-&gt=
;<wbr>dot11AuthAlgrthm =3D dot11AuthAlgrthm_Open; /* open system */
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0psecuritypriv-&gt=
;<wbr>dot11PrivacyAlgrthm =3D _NO_PRIVACY_;
<br>@@ -748,7 +748,7 @@ u8 rtw_reset_drv_sw(struct adapter *padapter)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pmlmepriv-&gt;<wb=
r>LinkDetectInfo.<wbr>TrafficTransitionCount =3D 0;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pmlmepriv-&gt;<wb=
r>LinkDetectInfo.<wbr>LowPowerTransitionCount =3D 0;
<br>=C2=A0
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0_clr_fwstate_(<wbr>pml=
mepriv, _FW_UNDER_SURVEY |_FW_UNDER_LINKING);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0_clr_fwstate_(<wbr>pml=
mepriv, _FW_UNDER_SURVEY | _FW_UNDER_LINKING);
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pwrctrlpriv-&gt;p=
wr_<wbr>state_check_cnts =3D 0;
<br>=C2=A0
<br>@@ -777,7 +777,7 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0goto exit;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>=C2=A0
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0padapter-&gt;cmdpriv.<=
wbr>padapter =3Dpadapter;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0padapter-&gt;cmdpriv.<=
wbr>padapter =3D padapter;
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if ((rtw_init_evt=
_priv(&amp;padapter-<wbr>&gt;evtpriv)) =3D=3D _FAIL) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0RT_TRACE(_<wbr>module_os_intfs_c_, _drv_er=
r_, (&quot;\n Can&#39;t init evt_priv\n&quot;));
<br>@@ -986,7 +986,7 @@ int _netdev_open(struct net_device *pnetdev)
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;MAC Address =3D &quot;MAC_F=
MT&quot;\n&quot;, MAC_ARG(pnetdev-&gt;dev_addr));
<br>=C2=A0
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0status =3Drtw_start_drv_threads(<wbr>padapter);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0status =3D rtw_start_drv_threads(<wbr>padapter);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (status =3D=3D _FAIL) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0DBG_<wbr>871X(&quot;Initialize driver software resource Failed!\n&quo=
t;);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0goto netdev_open_error;
<br>@@ -1641,7 +1641,7 @@ int rtw_resume_process_wow(struct adapter *padapt=
er)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Disable WOW, set H2C command */
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0poidparam.<wbr>subcode =3DWOWLAN_DISABLE;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0poidparam.<wbr>subcode =3D WOWLAN_DISABLE;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0padapter-&gt;<wbr>HalFunc.SetHwRegHandler(=
<wbr>padapter, HW_VAR_WOWLAN, (u8 *)&amp;poidparam);
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0psta =3D rtw_get_stainfo(&amp;padapter-&gt=
;<wbr>stapriv, get_bssid(&amp;padapter-&gt;mlmepriv)<wbr>);
<br>@@ -1705,7 +1705,7 @@ int rtw_resume_process_wow(struct adapter *padapt=
er)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X_<wbr>LEVEL(_drv_always_, &quot;do=
 not reset timer\n&quot;);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>=C2=A0
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pwrpriv-&gt;wowlan_mod=
e =3Dfalse;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pwrpriv-&gt;wowlan_mod=
e =3D false;
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* clean driver s=
ide wake up reason. */
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pwrpriv-&gt;wowla=
n_wake_<wbr>reason =3D 0;
<br>--=20
<br>1.9.1</blockquote><div>Hi,</div><div>I am trying to send patchset for t=
his file with 10 commits but unable to send it. I am following this =C2=A0h=
ttps://kernelnewbies.org/Outreachyfirstpatch and with this command &quot;gi=
t format-patch -o /tmp/ --cover-letter -n --thread=3Dshallow --cc=3D&quot;l=
inux-usb@vger.kernel.org&quot; 7b2a57c^..f46968c&quot;</div><div>no matches=
 found: 7b2a57c^..f46968c.</div><div>But these commit ID&#39;s exist in &qu=
ot;<span style=3D"color: rgb(0, 0, 0); font-family: monospace; font-size: 1=
2.1875px;">git=C2=A0log=C2=A0--pretty=3Doneline=C2=A0--abbrev-commit&quot; =
.</span></div><div><span style=3D"color: rgb(0, 0, 0); font-family: monospa=
ce; font-size: 12.1875px;">Can you please help ?</span></div><div><span sty=
le=3D"color: rgb(0, 0, 0); font-family: monospace; font-size: 12.1875px;">T=
hanks a lot.</span></div><div><span style=3D"color: rgb(0, 0, 0); font-fami=
ly: monospace; font-size: 12.1875px;"><br></span></div><div><span style=3D"=
color: rgb(0, 0, 0); font-family: monospace; font-size: 12.1875px;">Regards=
,</span></div><div><span style=3D"color: rgb(0, 0, 0); font-family: monospa=
ce; font-size: 12.1875px;">Harsha Sharma</span></div><div>=C2=A0</div></div=
>
------=_Part_10925_574609005.1505045098641--

------=_Part_10924_2039070729.1505045098640--

