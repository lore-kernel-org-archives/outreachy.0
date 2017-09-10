X-GM-THRID: 6463845646554103808
Date: Sun, 10 Sep 2017 05:16:32 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <9109a945-6df7-4267-8526-9e7110bd292e@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1709101409290.6842@hadrien>
References: <1504981213-14584-1-git-send-email-harshasharmaiitr@gmail.com> <78b23708-60d8-47dd-9bea-94a1eb29bbeb@googlegroups.com>
 <alpine.DEB.2.20.1709101409290.6842@hadrien>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: rtl8723bs: Add spaces
 around '=', '|', '<<'
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2226_1015319679.1505045792953"
X-Google-Token: EKDa1M0FG49aPd0bflw0
X-Google-IP: 103.37.201.122

------=_Part_2226_1015319679.1505045792953
Content-Type: multipart/alternative; 
	boundary="----=_Part_2227_1941813391.1505045792954"

------=_Part_2227_1941813391.1505045792954
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Sunday, September 10, 2017 at 5:40:41 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Sun, 10 Sep 2017, Harsha Sharma wrote: 
>
> > 
> > 
> > On Saturday, September 9, 2017 at 11:52:22 PM UTC+5:30, Harsha Sharma 
> wrote: 
> >       Use one space around most binary operators 
> > 
> >       Signed-off-by: Harsha Sharma <harshash...@gmail.com <javascript:>> 
>
> >       --- 
> >        drivers/staging/rtl8723bs/os_dep/os_intfs.c | 26 
> >       +++++++++++++------------- 
> >        1 file changed, 13 insertions(+), 13 deletions(-) 
> > 
> >       diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c 
> >       b/drivers/staging/rtl8723bs/os_dep/os_intfs.c 
> >       index 0215899..0129381 100644 
> >       --- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c 
> >       +++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c 
> >       @@ -121,7 +121,7 @@ 
> >         
> >        static int rtw_enusbss = 0;/* 0:disable, 1:enable */ 
> >         
> >       -static int rtw_hwpdn_mode =2;/* 0:disable, 1:enable, 2: by 
> >       EFUSE config */ 
> >       +static int rtw_hwpdn_mode = 2;/* 0:disable, 1:enable, 2: by 
> >       EFUSE config */ 
> >         
> >        #ifdef CONFIG_HW_PWRP_DETECTION 
> >        static int rtw_hwpwrp_detect = 1; 
> >       @@ -183,7 +183,7 @@ 
> >         
> >        module_param(rtw_hw_wps_pbc, int, 0644); 
> >         
> >       -static uint rtw_max_roaming_times =2; 
> >       +static uint rtw_max_roaming_times = 2; 
> >        module_param(rtw_max_roaming_times, uint, 0644); 
> >        MODULE_PARM_DESC(rtw_max_roaming_times,"The max roaming times 
> >       to try"); 
> >         
> >       @@ -222,7 +222,7 @@ 
> >        /*  BIT4 - RF,                                        0: 
> >       non-support, 1: support */ 
> >        /*  BIT5 - RF_TXPWR_TRACK,        0: non-support, 1: support */ 
> >        /*  BIT6 - RF_TXPWR_LMT,                0: non-support, 1: 
> >       support */ 
> >       -static int rtw_load_phy_file = (BIT2|BIT6); 
> >       +static int rtw_load_phy_file = (BIT2 | BIT6); 
> >        module_param(rtw_load_phy_file, int, 0644); 
> >        MODULE_PARM_DESC(rtw_load_phy_file,"PHY File Bit Map"); 
> >        static int rtw_decrypt_phy_file = 0; 
> >       @@ -255,8 +255,8 @@ static uint loadparam(struct adapter 
> >       *padapter, _nic_hdl pnetdev) 
> >         
> >                registry_par->vrtl_carrier_sense = 
> >       (u8)rtw_vrtl_carrier_sense ; 
> >                registry_par->vcs_type = (u8)rtw_vcs_type; 
> >       -        registry_par->rts_thresh =(u16)rtw_rts_thresh; 
> >       -        registry_par->frag_thresh =(u16)rtw_frag_thresh; 
> >       +        registry_par->rts_thresh = (u16)rtw_rts_thresh; 
> >       +        registry_par->frag_thresh = (u16)rtw_frag_thresh; 
> >                registry_par->preamble = (u8)rtw_preamble; 
> >                registry_par->scan_mode = (u8)rtw_scan_mode; 
> >                registry_par->adhoc_tx_pwr = (u8)rtw_adhoc_tx_pwr; 
> >       @@ -440,7 +440,7 @@ u16 rtw_recv_select_queue(struct sk_buff 
> >       *skb) 
> >                u32 priority; 
> >                u8 *pdata = skb->data; 
> >         
> >       -        memcpy(&eth_type, pdata+(ETH_ALEN<<1), 2); 
> >       +        memcpy(&eth_type, pdata+(ETH_ALEN << 1), 2); 
> >         
> >                switch (be16_to_cpu(eth_type)) { 
> >                        case ETH_P_IP: 
> >       @@ -652,8 +652,8 @@ static u8 rtw_init_default_value(struct 
> >       adapter *padapter) 
> >        #ifdef CONFIG_GTK_OL 
> >                psecuritypriv->binstallKCK_KEK = _FAIL; 
> >        #endif /* CONFIG_GTK_OL */ 
> >       -        psecuritypriv->sw_encrypt 
> >       =pregistrypriv->software_encrypt; 
> >       -        psecuritypriv->sw_decrypt 
> >       =pregistrypriv->software_decrypt; 
> >       +        psecuritypriv->sw_encrypt = 
> >       pregistrypriv->software_encrypt; 
> >       +        psecuritypriv->sw_decrypt = 
> >       pregistrypriv->software_decrypt; 
> >         
> >                psecuritypriv->dot11AuthAlgrthm = 
> >       dot11AuthAlgrthm_Open; /* open system */ 
> >                psecuritypriv->dot11PrivacyAlgrthm = _NO_PRIVACY_; 
> >       @@ -748,7 +748,7 @@ u8 rtw_reset_drv_sw(struct adapter 
> >       *padapter) 
> >                pmlmepriv->LinkDetectInfo.TrafficTransitionCount = 0; 
> >                pmlmepriv->LinkDetectInfo.LowPowerTransitionCount = 0; 
> >         
> >       -        _clr_fwstate_(pmlmepriv, _FW_UNDER_SURVEY 
> >       |_FW_UNDER_LINKING); 
> >       +        _clr_fwstate_(pmlmepriv, _FW_UNDER_SURVEY | 
> >       _FW_UNDER_LINKING); 
> >         
> >                pwrctrlpriv->pwr_state_check_cnts = 0; 
> >         
> >       @@ -777,7 +777,7 @@ u8 rtw_init_drv_sw(struct adapter *padapter) 
> >                        goto exit; 
> >                } 
> >         
> >       -        padapter->cmdpriv.padapter =padapter; 
> >       +        padapter->cmdpriv.padapter = padapter; 
> >         
> >                if ((rtw_init_evt_priv(&padapter->evtpriv)) == _FAIL) { 
> >                        RT_TRACE(_module_os_intfs_c_, _drv_err_, ("\n 
> >       Can't init evt_priv\n")); 
> >       @@ -986,7 +986,7 @@ int _netdev_open(struct net_device *pnetdev) 
> >         
> >                        DBG_871X("MAC Address = "MAC_FMT"\n", 
> >       MAC_ARG(pnetdev->dev_addr)); 
> >         
> >       -                status =rtw_start_drv_threads(padapter); 
> >       +                status = rtw_start_drv_threads(padapter); 
> >                        if (status == _FAIL) { 
> >                                DBG_871X("Initialize driver software 
> >       resource Failed!\n"); 
> >                                goto netdev_open_error; 
> >       @@ -1641,7 +1641,7 @@ int rtw_resume_process_wow(struct adapter 
> >       *padapter) 
> >                        } 
> >         
> >                        /* Disable WOW, set H2C command */ 
> >       -                poidparam.subcode =WOWLAN_DISABLE; 
> >       +                poidparam.subcode = WOWLAN_DISABLE; 
> >                        padapter->HalFunc.SetHwRegHandler(padapter, 
> >       HW_VAR_WOWLAN, (u8 *)&poidparam); 
> >         
> >                        psta = rtw_get_stainfo(&padapter->stapriv, 
> >       get_bssid(&padapter->mlmepriv)); 
> >       @@ -1705,7 +1705,7 @@ int rtw_resume_process_wow(struct adapter 
> >       *padapter) 
> >                        DBG_871X_LEVEL(_drv_always_, "do not reset 
> >       timer\n"); 
> >                } 
> >         
> >       -        pwrpriv->wowlan_mode =false; 
> >       +        pwrpriv->wowlan_mode = false; 
> >         
> >                /* clean driver side wake up reason. */ 
> >                pwrpriv->wowlan_wake_reason = 0; 
> >       -- 
> >       1.9.1 
> > 
> > Hi, 
> > I am trying to send patchset for this file with 10 commits but unable to 
> > send it. I am following this  
> https://kernelnewbies.org/Outreachyfirstpatch 
> > and with this command "git format-patch -o /tmp/ --cover-letter -n 
> > --thread=shallow --cc="linu...@vger.kernel.org <javascript:>" 
> 7b2a57c^..f46968c" 
> > no matches found: 7b2a57c^..f46968c. 
> > But these commit ID's exist in 
> "git log --pretty=oneline --abbrev-commit" . 
> > Can you please help ? 
>
> A similar command line works for me.  Are you sure that 
>
> git log --pretty=oneline --abbrev-commit 7b2a57c^..f46968c 
>
> works?  Just copy-paste it from the mail, don't retype anything. 
>
> julia 
>

No, this command "git log --pretty=oneline --abbrev-commit 
7b2a57c^..f46968c" also gives no matches found but 
"git log --pretty=oneline --abbrev-commit " shows these commit ID's.

Thanks. 

>
> > Thanks a lot. 
> > 
> > Regards, 
> > Harsha Sharma 
> >   
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups 
> > "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an 
> > email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/78b23708-60d8-47dd-9bea- 
> > 94a1eb29bbeb%40googlegroups.com. 
> > For more options, visit https://groups.google.com/d/optout. 
> > 
> >


------=_Part_2227_1941813391.1505045792954
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Sunday, September 10, 2017 at 5:40:41 PM UTC+5:=
30, Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0=
;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Sun, 10 Sep 2017, Harsha Sharma wrote:
<br>
<br>&gt;
<br>&gt;
<br>&gt; On Saturday, September 9, 2017 at 11:52:22 PM UTC+5:30, Harsha Sha=
rma wrote:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Use one space around most binary operators
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Signed-off-by: Harsha Sharma &lt;<a href=3D"j=
avascript:" target=3D"_blank" gdf-obfuscated-mailto=3D"nSGbUqRfAwAJ" rel=3D=
"nofollow" onmousedown=3D"this.href=3D&#39;javascript:&#39;;return true;" o=
nclick=3D"this.href=3D&#39;javascript:&#39;;return true;">harshash...@gmail=
.com</a>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 ---
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0drivers/staging/rtl8723bs/os_<wbr>dep/o=
s_intfs.c | 26
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +++++++++++++-------------
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A01 file changed, 13 insertions(+), 13 de=
letions(-)
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 diff --git a/drivers/staging/rtl8723bs/<wbr>o=
s_dep/os_intfs.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/rtl8723bs/<wbr>os_dep/os_in=
tfs.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 index 0215899..0129381 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 --- a/drivers/staging/rtl8723bs/<wbr>os_dep/o=
s_intfs.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +++ b/drivers/staging/rtl8723bs/<wbr>os_dep/o=
s_intfs.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 @@ -121,7 +121,7 @@
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0static int rtw_enusbss =3D 0;/* 0:disab=
le, 1:enable */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -static int rtw_hwpdn_mode =3D2;/* 0:disable,=
 1:enable, 2: by
<br>&gt; =C2=A0 =C2=A0 =C2=A0 EFUSE config */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +static int rtw_hwpdn_mode =3D 2;/* 0:disable=
, 1:enable, 2: by
<br>&gt; =C2=A0 =C2=A0 =C2=A0 EFUSE config */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0#ifdef CONFIG_HW_PWRP_DETECTION
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0static int rtw_hwpwrp_detect =3D 1;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 @@ -183,7 +183,7 @@
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0module_param(rtw_hw_wps_pbc, int, 0644)=
;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -static uint rtw_max_roaming_times =3D2;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +static uint rtw_max_roaming_times =3D 2;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0module_param(rtw_max_roaming_<wbr>times=
, uint, 0644);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0MODULE_PARM_DESC(rtw_max_<wbr>roaming_t=
imes,&quot;The max roaming times
<br>&gt; =C2=A0 =C2=A0 =C2=A0 to try&quot;);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 @@ -222,7 +222,7 @@
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0/* =C2=A0BIT4 - RF,=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A00:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 non-support, 1: support */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0/* =C2=A0BIT5 - RF_TXPWR_TRACK,=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A00: non-support, 1: support */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0/* =C2=A0BIT6 - RF_TXPWR_LMT,=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0<wbr>0: non-support, 1:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 support */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -static int rtw_load_phy_file =3D (BIT2|BIT6)=
;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +static int rtw_load_phy_file =3D (BIT2 | BIT=
6);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0module_param(rtw_load_phy_<wbr>file, in=
t, 0644);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0MODULE_PARM_DESC(rtw_load_<wbr>phy_file=
,&quot;PHY File Bit Map&quot;);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0static int rtw_decrypt_phy_file =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 @@ -255,8 +255,8 @@ static uint loadparam(str=
uct adapter
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *padapter, _nic_hdl pnetdev)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0registry_par-&gt;vrtl_<wbr>carrier_sense =3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 (u8)rtw_vrtl_carrier_sense ;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0registry_par-&gt;vcs_<wbr>type =3D (u8)rtw_vcs_type;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0registry_par-&gt;rts_<wbr>thresh =3D(u16)rtw_rts_thresh;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0registry_par-&gt;frag_<wbr>thresh =3D(u16)rtw_frag_thresh;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0registry_par-&gt;rts_<wbr>thresh =3D (u16)rtw_rts_thresh;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0registry_par-&gt;frag_<wbr>thresh =3D (u16)rtw_frag_thresh;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0registry_par-&gt;<wbr>preamble =3D (u8)rtw_preamble;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0registry_par-&gt;scan_<wbr>mode =3D (u8)rtw_scan_mode;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0registry_par-&gt;adhoc_<wbr>tx_pwr =3D (u8)rtw_adhoc_tx_pwr;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 @@ -440,7 +440,7 @@ u16 rtw_recv_select_queue=
(struct sk_buff
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *skb)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0u32 priority;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0u8 *pdata =3D skb-&gt;data;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0memcpy(&amp;eth_type, pdata+(ETH_ALEN&lt;&lt;1), 2);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0memcpy(&amp;eth_type, pdata+(ETH_ALEN &lt;&lt; 1), 2);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0switch (be16_to_cpu(eth_type)) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case ETH_P_IP:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 @@ -652,8 +652,8 @@ static u8 rtw_init_defaul=
t_value(struct
<br>&gt; =C2=A0 =C2=A0 =C2=A0 adapter *padapter)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0#ifdef CONFIG_GTK_OL
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0psecuritypriv-&gt;<wbr>binstallKCK_KEK =3D _FAIL;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0#endif /* CONFIG_GTK_OL */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0psecuritypriv-&gt;sw_<wbr>encrypt
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =3Dpregistrypriv-&gt;software_<wbr>encrypt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0psecuritypriv-&gt;sw_<wbr>decrypt
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =3Dpregistrypriv-&gt;software_<wbr>decrypt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0psecuritypriv-&gt;sw_<wbr>encrypt =3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 pregistrypriv-&gt;software_<wbr>encrypt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0psecuritypriv-&gt;sw_<wbr>decrypt =3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 pregistrypriv-&gt;software_<wbr>decrypt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0psecuritypriv-&gt;<wbr>dot11AuthAlgrthm =3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 dot11AuthAlgrthm_Open; /* open system */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0psecuritypriv-&gt;<wbr>dot11PrivacyAlgrthm =3D _NO_PRIVACY_;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 @@ -748,7 +748,7 @@ u8 rtw_reset_drv_sw(struc=
t adapter
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *padapter)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0pmlmepriv-&gt;<wbr>LinkDetectInfo.<wbr>TrafficTransitionCount =3D =
0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0pmlmepriv-&gt;<wbr>LinkDetectInfo.<wbr>LowPowerTransitionCount =3D=
 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0_clr_fwstate_(<wbr>pmlmepriv, _FW_UNDER_SURVEY
<br>&gt; =C2=A0 =C2=A0 =C2=A0 |_FW_UNDER_LINKING);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0_clr_fwstate_(<wbr>pmlmepriv, _FW_UNDER_SURVEY |
<br>&gt; =C2=A0 =C2=A0 =C2=A0 _FW_UNDER_LINKING);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0pwrctrlpriv-&gt;pwr_<wbr>state_check_cnts =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 @@ -777,7 +777,7 @@ u8 rtw_init_drv_sw(struct=
 adapter *padapter)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0goto exit;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0}
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0padapter-&gt;cmdpriv.<wbr>padapter =3Dpadapter;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0padapter-&gt;cmdpriv.<wbr>padapter =3D padapter;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0if ((rtw_init_evt_priv(&amp;padapter-<wbr>&gt;evtpriv)) =3D=3D _FA=
IL) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0RT_TRACE(_<wbr>mod=
ule_os_intfs_c_, _drv_err_, (&quot;\n
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Can&#39;t init evt_priv\n&quot;));
<br>&gt; =C2=A0 =C2=A0 =C2=A0 @@ -986,7 +986,7 @@ int _netdev_open(struct n=
et_device *pnetdev)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(&quot;MAC=
 Address =3D &quot;MAC_FMT&quot;\n&quot;,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 MAC_ARG(pnetdev-&gt;dev_addr));
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0status =3Drtw_start_d=
rv_threads(<wbr>padapter);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0status =3D rtw_start_=
drv_threads(<wbr>padapter);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (status =3D=3D =
_FAIL) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_<wbr>871X(&quot;Initialize driver softwar=
e
<br>&gt; =C2=A0 =C2=A0 =C2=A0 resource Failed!\n&quot;);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0goto netdev_open_error;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 @@ -1641,7 +1641,7 @@ int rtw_resume_process_=
wow(struct adapter
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *padapter)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Disable WOW, se=
t H2C command */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0poidparam.<wbr>subcod=
e =3DWOWLAN_DISABLE;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0poidparam.<wbr>subcod=
e =3D WOWLAN_DISABLE;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0padapter-&gt;<wbr>=
HalFunc.SetHwRegHandler(<wbr>padapter,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 HW_VAR_WOWLAN, (u8 *)&amp;poidparam);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0psta =3D rtw_get_s=
tainfo(&amp;padapter-&gt;<wbr>stapriv,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 get_bssid(&amp;padapter-&gt;mlmepriv)<wbr>);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 @@ -1705,7 +1705,7 @@ int rtw_resume_process_=
wow(struct adapter
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *padapter)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X_<wbr>LEVE=
L(_drv_always_, &quot;do not reset
<br>&gt; =C2=A0 =C2=A0 =C2=A0 timer\n&quot;);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0}
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0pwrpriv-&gt;wowlan_mode =3Dfalse;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0pwrpriv-&gt;wowlan_mode =3D false;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0/* clean driver side wake up reason. */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0pwrpriv-&gt;wowlan_wake_<wbr>reason =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 --
<br>&gt; =C2=A0 =C2=A0 =C2=A0 1.9.1
<br>&gt;
<br>&gt; Hi,
<br>&gt; I am trying to send patchset for this file with 10 commits but una=
ble to
<br>&gt; send it. I am following this =C2=A0<a href=3D"https://kernelnewbie=
s.org/Outreachyfirstpatch" target=3D"_blank" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;https://www.google.com/url?q\x3dhttps%3A%2F%2Fkernelne=
wbies.org%2FOutreachyfirstpatch\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEAR=
R3yHMZoXvOaBsXxPWzyoOSw9Q&#39;;return true;" onclick=3D"this.href=3D&#39;ht=
tps://www.google.com/url?q\x3dhttps%3A%2F%2Fkernelnewbies.org%2FOutreachyfi=
rstpatch\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEARR3yHMZoXvOaBsXxPWzyoOSw=
9Q&#39;;return true;">https://kernelnewbies.org/<wbr>Outreachyfirstpatch</a=
>
<br>&gt; and with this command &quot;git format-patch -o /tmp/ --cover-lett=
er -n
<br>&gt; --thread=3Dshallow --cc=3D&quot;<a href=3D"javascript:" target=3D"=
_blank" gdf-obfuscated-mailto=3D"nSGbUqRfAwAJ" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D=
&#39;javascript:&#39;;return true;">linu...@vger.kernel.<wbr>org</a>&quot; =
7b2a57c^..f46968c&quot;
<br>&gt; no matches found: 7b2a57c^..f46968c.
<br>&gt; But these commit ID&#39;s exist in &quot;git=C2=A0log=C2=A0--prett=
y=3Doneline=C2=A0--<wbr>abbrev-commit&quot; .
<br>&gt; Can you please help ?
<br>
<br>A similar command line works for me. =C2=A0Are you sure that
<br>
<br>git=C2=A0log=C2=A0--pretty=3Doneline=C2=A0--<wbr>abbrev-commit 7b2a57c^=
..f46968c
<br>
<br>works? =C2=A0Just copy-paste it from the mail, don&#39;t retype anythin=
g.
<br>
<br>julia
<br></blockquote><div><br></div><div>No, this command &quot;git=C2=A0log=C2=
=A0--pretty=3Doneline=C2=A0--<wbr>abbrev-commit 7b2a57c^..f46968c&quot; als=
o gives no matches found but &quot;git=C2=A0log=C2=A0--pretty=3Doneline=C2=
=A0--<wbr>abbrev-commit &quot; shows these commit ID&#39;s.</div><div><br><=
/div><div>Thanks.=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"mar=
gin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>&gt; Thanks a lot.
<br>&gt;
<br>&gt; Regards,
<br>&gt; Harsha Sharma
<br>&gt; =C2=A0
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups
<br>&gt; &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an
<br>&gt; email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-=
mailto=3D"nSGbUqRfAwAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;ja=
vascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;r=
eturn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"nSGbUqRfAwAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visithttps://<a href=3D"http://=
groups.google.com/d/msgid/outreachy-kernel/78b23708-60d8-47dd-9bea-" target=
=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://groups.=
google.com/d/msgid/outreachy-kernel/78b23708-60d8-47dd-9bea-&#39;;return tr=
ue;" onclick=3D"this.href=3D&#39;http://groups.google.com/d/msgid/outreachy=
-kernel/78b23708-60d8-47dd-9bea-&#39;;return true;">groups.google.<wbr>com/=
d/msgid/outreachy-kernel/<wbr>78b23708-60d8-47dd-9bea-</a>
<br>&gt; 94a1eb29bbeb%<a href=3D"http://40googlegroups.com" target=3D"_blan=
k" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/u=
rl?q\x3dhttp%3A%2F%2F40googlegroups.com\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dA=
FQjCNEjt8k9OhR10y0jYLX0ZgJix1hnBQ&#39;;return true;" onclick=3D"this.href=
=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F40googlegroups.com\x26s=
a\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEjt8k9OhR10y0jYLX0ZgJix1hnBQ&#39;;retur=
n true;">40googlegroups.<wbr>com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br>&gt;</blockquote></div>
------=_Part_2227_1941813391.1505045792954--

------=_Part_2226_1015319679.1505045792953--

