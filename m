X-GM-THRID: 6474151874881650688
X-Received: by 10.28.107.65 with SMTP id g62mr497644wmc.32.1507406803453;
        Sat, 07 Oct 2017 13:06:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.157.214 with SMTP id g205ls395527wme.1.gmail; Sat, 07 Oct
 2017 13:06:42 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAQd7FdhnSFsUARf5jmWMsa4Ht+zWia6KVqEVOOCbghrYcxlRK/BQgpHceaqBvdP3mX3CpV
X-Received: by 10.28.8.12 with SMTP id 12mr264860wmi.31.1507406802713;
        Sat, 07 Oct 2017 13:06:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507406802; cv=none;
        d=google.com; s=arc-20160816;
        b=U0g4jPzEO+VOGKyiH0lnG+HMArowDzML56aZiSugkzo6W0c9RFt2yOmYRmY02BDf5W
         6PEfkVRIPvLs8o695V2joHU/84IJLkIaC1W9FtmAl2Lxba8FTxsrJRCkG5LJVFe3o1Mx
         jjEa9zPhWZxYvv33Wp3/ba267j12y0dBgB1A1B59b0dHi1jpqFdgWWAmmDBS35k1c+7L
         QnB2X/uqw+iOfVsUG8tQ5cSaNk7ZYMzrJivBR3Ij5MrNHMhr1hPuWO/EiDpu3yootj+M
         NAPe4H7Ih6sRMr7JwKpmSoGU+2AyQSrVJ6w3zTo9B3ZcQ+/K6/hR9N0GbgLegEZf0DNZ
         FrvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=izzL4SkGDhWFxZaPgwffSDBk+/zhLLK24U9XclbhY+w=;
        b=IAX2iwgfBQKDeCr48Key+aPsnDB33eiELRK4Zv9OiDVYFKbZvL2amrhav6tCf6q6MT
         +VqnPpKFdvdpbVZk3svM7aw8SS56Kt7RdRfD8J2Hs5LUXOyseywiMWO/WSJPmqdGkKHG
         MX6RLY8/D6drxMGQ1s2HqAJakjWOiKJLkgTI7zGSb4LOhYHrq1ISVFjbInbTGzzUYbg3
         B7kQQgO31sg6znGsmy4dAsrQsF34NjggkuKXJW5GHDNeU5ve7ZLxQRF8hhvAiWAhA9FC
         Wydytj6CszMjBVJRUfdtI7sV1vMkG1DtqyxvLIj/EqOizZ9FvR/USKhrIotn6wjtlUds
         fpQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d82si513821wmd.1.2017.10.07.13.06.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 13:06:42 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,490,1500933600"; 
   d="scan'208";a="240118741"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Oct 2017 22:06:41 +0200
Date: Sat, 7 Oct 2017 22:06:41 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: Julia Lawall <julia.lawall@lip6.fr>, Greg KH <gregkh@linuxfoundation.org>, 
    devel@driverdev.osuosl.org, 
    Linux kernel mailing list <linux-kernel@vger.kernel.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: core: rtw_cmd:
 Remove cast to pointer types in kfree
In-Reply-To: <CAB3L5oxHV_buBHqmX3-Tw0UMj7ivBP3btEaRUmUa064Di+HUTg@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1710072205510.2071@hadrien>
References: <1507380884-10906-1-git-send-email-srishtishar@gmail.com> <alpine.DEB.2.20.1710072011190.2134@hadrien> <CAB3L5oxHV_buBHqmX3-Tw0UMj7ivBP3btEaRUmUa064Di+HUTg@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 8 Oct 2017, Srishti Sharma wrote:

> On Sat, Oct 7, 2017 at 11:42 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Sat, 7 Oct 2017, Srishti Sharma wrote:
> >
> >> The cast to pointer types in kfree is not needed and can be dropped.
> >> Done using the following semantic by coccinelle.
> >>
> >> @r@
> >> type T,P;
> >> T* x;
> >> @@
> >>
> >> kfree(
> >> -(P *)
> >> x )
> >>
> >> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> >> ---
> >>  drivers/staging/rtl8723bs/core/rtw_cmd.c | 58 ++++++++++++++++----------------
> >>  1 file changed, 29 insertions(+), 29 deletions(-)
> >>
> >> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> >> index 1843c44..e71e3ab 100644
> >> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> >> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> >> @@ -408,7 +408,7 @@ void rtw_free_cmd_obj(struct cmd_obj *pcmd)
> >>       }
> >>
> >>       /* free cmd_obj */
> >> -     kfree((unsigned char *)pcmd);
> >> +     kfree(pcmd);
> >>  }
> >>
> >>
> >> @@ -619,7 +619,7 @@ u8 rtw_sitesurvey_cmd(struct adapter  *padapter, struct ndis_802_11_ssid *ssid,
> >>
> >>       psurveyPara = rtw_zmalloc(sizeof(struct sitesurvey_parm));
> >>       if (psurveyPara == NULL) {
> >> -             kfree((unsigned char *) ph2c);
> >> +             kfree(ph2c);
> >>               return _FAIL;
> >>       }
> >>
> >> @@ -689,7 +689,7 @@ u8 rtw_setdatarate_cmd(struct adapter *padapter, u8 *rateset)
> >>
> >>       pbsetdataratepara = rtw_zmalloc(sizeof(struct setdatarate_parm));
> >>       if (pbsetdataratepara == NULL) {
> >> -             kfree((u8 *) ph2c);
> >> +             kfree(ph2c);
> >>               res = _FAIL;
> >>               goto exit;
> >>       }
> >> @@ -707,7 +707,7 @@ void rtw_getbbrfreg_cmdrsp_callback(struct adapter *padapter,  struct cmd_obj *p
> >>  {
> >>       /* rtw_free_cmd_obj(pcmd); */
> >>       kfree((unsigned char *) pcmd->parmbuf);
> >
> > This case didn't get updated, probably because Coccinelle didn't have
> > access to enough type information.  Try rerunning with --all-includes or
> > --recursive-includes.  You may also need to give some include path
> > information (-I argument).
> I tried doing this but it is still not detecting this particular case,
> for the include path I gave the path of the directory which contains
> the header file in which struct cmd_obj is defined.

OK, just check the field type manually, and then put a note in your commit
log saying that you have done that case by hand, due to Coccinelle's not
having sufficient type information.

julia

>
> Regards,
> Srishti
> >
> > julia
> >
> >> -     kfree((unsigned char *) pcmd);
> >> +     kfree(pcmd);
> >>  }
> >>
> >>  u8 rtw_createbss_cmd(struct adapter  *padapter)
> >> @@ -847,7 +847,7 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
> >>       psecnetwork = (struct wlan_bssid_ex *)&psecuritypriv->sec_bss;
> >>       if (psecnetwork == NULL) {
> >>               if (pcmd != NULL)
> >> -                     kfree((unsigned char *)pcmd);
> >> +                     kfree(pcmd);
> >>
> >>               res = _FAIL;
> >>
> >> @@ -955,7 +955,7 @@ u8 rtw_disassoc_cmd(struct adapter *padapter, u32 deauth_timeout_ms, bool enqueu
> >>               cmdobj = rtw_zmalloc(sizeof(*cmdobj));
> >>               if (cmdobj == NULL) {
> >>                       res = _FAIL;
> >> -                     kfree((u8 *)param);
> >> +                     kfree(param);
> >>                       goto exit;
> >>               }
> >>               init_h2fwcmd_w_parm_no_rsp(cmdobj, param, _DisConnect_CMD_);
> >> @@ -964,7 +964,7 @@ u8 rtw_disassoc_cmd(struct adapter *padapter, u32 deauth_timeout_ms, bool enqueu
> >>               /* no need to enqueue, do the cmd hdl directly and free cmd parameter */
> >>               if (H2C_SUCCESS != disconnect_hdl(padapter, (u8 *)param))
> >>                       res = _FAIL;
> >> -             kfree((u8 *)param);
> >> +             kfree(param);
> >>       }
> >>
> >>  exit:
> >> @@ -990,7 +990,7 @@ u8 rtw_setopmode_cmd(struct adapter  *padapter, enum NDIS_802_11_NETWORK_INFRAST
> >>       if (enqueue) {
> >>               ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
> >>               if (ph2c == NULL) {
> >> -                     kfree((u8 *)psetop);
> >> +                     kfree(psetop);
> >>                       res = _FAIL;
> >>                       goto exit;
> >>               }
> >> @@ -999,7 +999,7 @@ u8 rtw_setopmode_cmd(struct adapter  *padapter, enum NDIS_802_11_NETWORK_INFRAST
> >>               res = rtw_enqueue_cmd(pcmdpriv, ph2c);
> >>       } else{
> >>               setopmode_hdl(padapter, (u8 *)psetop);
> >> -             kfree((u8 *)psetop);
> >> +             kfree(psetop);
> >>       }
> >>  exit:
> >>       return res;
> >> @@ -1042,15 +1042,15 @@ u8 rtw_setstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 unicast_
> >>       if (enqueue) {
> >>               ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
> >>               if (ph2c == NULL) {
> >> -                     kfree((u8 *) psetstakey_para);
> >> +                     kfree(psetstakey_para);
> >>                       res = _FAIL;
> >>                       goto exit;
> >>               }
> >>
> >>               psetstakey_rsp = rtw_zmalloc(sizeof(struct set_stakey_rsp));
> >>               if (psetstakey_rsp == NULL) {
> >> -                     kfree((u8 *) ph2c);
> >> -                     kfree((u8 *) psetstakey_para);
> >> +                     kfree(ph2c);
> >> +                     kfree(psetstakey_para);
> >>                       res = _FAIL;
> >>                       goto exit;
> >>               }
> >> @@ -1061,7 +1061,7 @@ u8 rtw_setstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 unicast_
> >>               res = rtw_enqueue_cmd(pcmdpriv, ph2c);
> >>       } else{
> >>               set_stakey_hdl(padapter, (u8 *)psetstakey_para);
> >> -             kfree((u8 *) psetstakey_para);
> >> +             kfree(psetstakey_para);
> >>       }
> >>  exit:
> >>       return res;
> >> @@ -1091,15 +1091,15 @@ u8 rtw_clearstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 enqueu
> >>
> >>               psetstakey_para = rtw_zmalloc(sizeof(struct set_stakey_parm));
> >>               if (psetstakey_para == NULL) {
> >> -                     kfree((u8 *) ph2c);
> >> +                     kfree(ph2c);
> >>                       res = _FAIL;
> >>                       goto exit;
> >>               }
> >>
> >>               psetstakey_rsp = rtw_zmalloc(sizeof(struct set_stakey_rsp));
> >>               if (psetstakey_rsp == NULL) {
> >> -                     kfree((u8 *) ph2c);
> >> -                     kfree((u8 *) psetstakey_para);
> >> +                     kfree(ph2c);
> >> +                     kfree(psetstakey_para);
> >>                       res = _FAIL;
> >>                       goto exit;
> >>               }
> >> @@ -1136,7 +1136,7 @@ u8 rtw_addbareq_cmd(struct adapter *padapter, u8 tid, u8 *addr)
> >>
> >>       paddbareq_parm = rtw_zmalloc(sizeof(struct addBaReq_parm));
> >>       if (paddbareq_parm == NULL) {
> >> -             kfree((unsigned char *)ph2c);
> >> +             kfree(ph2c);
> >>               res = _FAIL;
> >>               goto exit;
> >>       }
> >> @@ -1170,7 +1170,7 @@ u8 rtw_reset_securitypriv_cmd(struct adapter *padapter)
> >>
> >>       pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
> >>       if (pdrvextra_cmd_parm == NULL) {
> >> -             kfree((unsigned char *)ph2c);
> >> +             kfree(ph2c);
> >>               res = _FAIL;
> >>               goto exit;
> >>       }
> >> @@ -1205,7 +1205,7 @@ u8 rtw_free_assoc_resources_cmd(struct adapter *padapter)
> >>
> >>       pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
> >>       if (pdrvextra_cmd_parm == NULL) {
> >> -             kfree((unsigned char *)ph2c);
> >> +             kfree(ph2c);
> >>               res = _FAIL;
> >>               goto exit;
> >>       }
> >> @@ -1241,7 +1241,7 @@ u8 rtw_dynamic_chk_wk_cmd(struct adapter *padapter)
> >>
> >>       pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
> >>       if (pdrvextra_cmd_parm == NULL) {
> >> -             kfree((unsigned char *)ph2c);
> >> +             kfree(ph2c);
> >>               res = _FAIL;
> >>               goto exit;
> >>       }
> >> @@ -1294,7 +1294,7 @@ u8 rtw_set_chplan_cmd(struct adapter *padapter, u8 chplan, u8 enqueue, u8 swconf
> >>               /* need enqueue, prepare cmd_obj and enqueue */
> >>               pcmdobj = rtw_zmalloc(sizeof(struct cmd_obj));
> >>               if (pcmdobj == NULL) {
> >> -                     kfree((u8 *)setChannelPlan_param);
> >> +                     kfree(setChannelPlan_param);
> >>                       res = _FAIL;
> >>                       goto exit;
> >>               }
> >> @@ -1306,7 +1306,7 @@ u8 rtw_set_chplan_cmd(struct adapter *padapter, u8 chplan, u8 enqueue, u8 swconf
> >>               if (H2C_SUCCESS != set_chplan_hdl(padapter, (unsigned char *)setChannelPlan_param))
> >>                       res = _FAIL;
> >>
> >> -             kfree((u8 *)setChannelPlan_param);
> >> +             kfree(setChannelPlan_param);
> >>       }
> >>
> >>       /* do something based on res... */
> >> @@ -1561,7 +1561,7 @@ u8 rtw_lps_ctrl_wk_cmd(struct adapter *padapter, u8 lps_ctrl_type, u8 enqueue)
> >>
> >>               pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
> >>               if (pdrvextra_cmd_parm == NULL) {
> >> -                     kfree((unsigned char *)ph2c);
> >> +                     kfree(ph2c);
> >>                       res = _FAIL;
> >>                       goto exit;
> >>               }
> >> @@ -1603,7 +1603,7 @@ u8 rtw_dm_in_lps_wk_cmd(struct adapter *padapter)
> >>
> >>       pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
> >>       if (pdrvextra_cmd_parm == NULL) {
> >> -             kfree((unsigned char *)ph2c);
> >> +             kfree(ph2c);
> >>               res = _FAIL;
> >>               goto exit;
> >>       }
> >> @@ -1676,7 +1676,7 @@ u8 rtw_dm_ra_mask_wk_cmd(struct adapter *padapter, u8 *psta)
> >>
> >>       pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
> >>       if (pdrvextra_cmd_parm == NULL) {
> >> -             kfree((unsigned char *)ph2c);
> >> +             kfree(ph2c);
> >>               res = _FAIL;
> >>               goto exit;
> >>       }
> >> @@ -1727,7 +1727,7 @@ u8 rtw_ps_cmd(struct adapter *padapter)
> >>
> >>       pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
> >>       if (pdrvextra_cmd_parm == NULL) {
> >> -             kfree((unsigned char *)ppscmd);
> >> +             kfree(ppscmd);
> >>               res = _FAIL;
> >>               goto exit;
> >>       }
> >> @@ -1799,7 +1799,7 @@ u8 rtw_chk_hi_queue_cmd(struct adapter *padapter)
> >>
> >>       pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
> >>       if (pdrvextra_cmd_parm == NULL) {
> >> -             kfree((unsigned char *)ph2c);
> >> +             kfree(ph2c);
> >>               res = _FAIL;
> >>               goto exit;
> >>       }
> >> @@ -1898,7 +1898,7 @@ u8 rtw_c2h_packet_wk_cmd(struct adapter *padapter, u8 *pbuf, u16 length)
> >>
> >>       pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
> >>       if (pdrvextra_cmd_parm == NULL) {
> >> -             kfree((u8 *)ph2c);
> >> +             kfree(ph2c);
> >>               res = _FAIL;
> >>               goto exit;
> >>       }
> >> @@ -1933,7 +1933,7 @@ u8 rtw_c2h_wk_cmd(struct adapter *padapter, u8 *c2h_evt)
> >>
> >>       pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
> >>       if (pdrvextra_cmd_parm == NULL) {
> >> -             kfree((u8 *)ph2c);
> >> +             kfree(ph2c);
> >>               res = _FAIL;
> >>               goto exit;
> >>       }
> >> --
> >> 2.7.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1507380884-10906-1-git-send-email-srishtishar%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAB3L5oxHV_buBHqmX3-Tw0UMj7ivBP3btEaRUmUa064Di%2BHUTg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

