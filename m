X-GM-THRID: 6474151874881650688
X-Received: by 10.129.110.7 with SMTP id j7mr7441764ywc.216.1507406873214;
        Sat, 07 Oct 2017 13:07:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.203.70 with SMTP id n67ls102300ywd.40.gmail; Sat, 07 Oct
 2017 13:07:52 -0700 (PDT)
X-Received: by 10.129.154.202 with SMTP id r193mr7466943ywg.199.1507406872477;
        Sat, 07 Oct 2017 13:07:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507406872; cv=none;
        d=google.com; s=arc-20160816;
        b=snjH80ume13wk0k2axlrQhBZDybeoaxYYlPKYgQvQ8B/KGfqhIG/3dw+pOfS7x7A2s
         JNbjs2NYTsAakYyObMY8mgTK2yH0HtLdQbl4vqh4UQk0lYLbDx+fO2BPjBhW5TLDCmid
         jFA4r+EXRA5qVadBr0hE4waU8vA0S2ENUj/XsWGSnuMG7sfRKj8PfF/bzBohlzzfSwoK
         ViHsr7hp5OPX3ayPGwnSKkYLOWRHTobfKKLkbA2W47HeQdcunx8rwMdt34++JIpjiSk7
         zG9GO79ZQh9oEMNcnAKeq2Vk/k8NKfRJroVX6sKepboSXngrNydXazRW3+V0Aw8Lwpke
         nxZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=bTz+fYWMUHv5PnvXb8tGsV6BpzRW+05RhpjzB9AAKS0=;
        b=o5zqv9zTmJrwlqw7qSqFXjNwZjZGTrSif8RnwcG+YA4bJb26QV4TPiZmw/O0gYGMBM
         +4jvyq1yblAiQg5PCBDv/NKNr9CYg1Xg3PbtPaTDjxjGbfmiebYldY7G8uEoppbeJa8m
         LoK3p5mDFpRfm8S4svlPjEWwXwwM1Nmpyv/70sqwi/NDeIPQxcpLK2oKkeCBi3geH9yB
         2lyU/fdSaN/E0tncwtfdX+zTVo8uMno+80tSTt/ZvwavtoUHQCF42xR1xEBkWpuRpSOz
         EMEnpfWsu+u6AwZ6qViVJ9EtS6etgqjL0SFIxIRH/Bsn1mQ1ESP4Q8p2Sd/z5qFphfjD
         cR+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cQ4Iw8jV;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qk0-x242.google.com (mail-qk0-x242.google.com. [2607:f8b0:400d:c09::242])
        by gmr-mx.google.com with ESMTPS id e3si225963ywd.14.2017.10.07.13.07.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 13:07:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) client-ip=2607:f8b0:400d:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cQ4Iw8jV;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x242.google.com with SMTP id w63so12402898qkd.2
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Oct 2017 13:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=bTz+fYWMUHv5PnvXb8tGsV6BpzRW+05RhpjzB9AAKS0=;
        b=cQ4Iw8jVbJU1eYd2WhI++lQlHgdBLflAtuHVznpKdcOP+IPu945Re8wXUKaq1Zw7jw
         cN4Q+TnEWu6bF9xb8PMPt7WED+5cRcHJgTNYojKJMs3gj7sP+QxekoGAzhSiYSDP0xFk
         gzaYGOfcXQ8KCGXYmrOQmsi8t10KnqrqUrMMKYj/Fscb2lKPb3ZtIn0WezHz1tEdcV3r
         C1qbo5Sdu7vyUTqohfKX0hpD6YkcubSmwLTQLIo7QMBDvz3vsqBYJMAP+TtSj9Vb48+H
         3IHcEU9AWsryzIiBnlpgBMMVQYNgh8ByofLxyu+byJkjF8h07Au40+6kaeBWDkldRCHz
         BjHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=bTz+fYWMUHv5PnvXb8tGsV6BpzRW+05RhpjzB9AAKS0=;
        b=W38pBiosq+/hajsakd09iAH3qxDZneW1AaloZFGwmFOBIXuuFcswPMtS+Ri0ssf1GQ
         0opulyTy+gpxziyA9Kv3ppU52Q1Ug3K6L1/yncXTeFtWafLXKL+caCs+Z9D4Ls6o2//a
         jsOc2A527odYFvrzQCKBSxBG4shxQJmoGRGpbtpVn49UEIDAXOYBrqJYCT3u2zVfycn5
         ulHuy9qoyb7axL8Ur4z+XndNy91NrrXxQIDwjXqMkPza086K3xQ1G6NnpmLWn52T1GX9
         dT1HOUfIK9OB43zZHqXbpT12Jhs7mX901irf6D3owRTDILdExvjzgfxfTgbOZup1xau2
         FM3Q==
X-Gm-Message-State: AMCzsaX8gJBn7BWevG22gwElHDwzHnlJXneTEnDSj8g46Wdk9vbncytG
	JvnukEzFrpC43N1/8vd8tAOQDwGPHUgcmkA2h9A=
X-Google-Smtp-Source: AOwi7QDmanhIguKHwJ6SW8VUD3ulHWpsYDhvHuQp7dlvN344Gn9PYuoe7M/sbzNN4glzzBmJFt0Bp6VE76h06VfCJns=
X-Received: by 10.55.74.194 with SMTP id x185mr3763995qka.32.1507406871993;
 Sat, 07 Oct 2017 13:07:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.62.216 with HTTP; Sat, 7 Oct 2017 13:07:51 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1710072205510.2071@hadrien>
References: <1507380884-10906-1-git-send-email-srishtishar@gmail.com>
 <alpine.DEB.2.20.1710072011190.2134@hadrien> <CAB3L5oxHV_buBHqmX3-Tw0UMj7ivBP3btEaRUmUa064Di+HUTg@mail.gmail.com>
 <alpine.DEB.2.20.1710072205510.2071@hadrien>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Sun, 8 Oct 2017 01:37:51 +0530
Message-ID: <CAB3L5oz595XPty9kRXvv6Ru2==vCjBHavHCxm8yY_-3=39iGdQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: core: rtw_cmd:
 Remove cast to pointer types in kfree
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Sun, Oct 8, 2017 at 1:36 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sun, 8 Oct 2017, Srishti Sharma wrote:
>
>> On Sat, Oct 7, 2017 at 11:42 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >
>> >
>> > On Sat, 7 Oct 2017, Srishti Sharma wrote:
>> >
>> >> The cast to pointer types in kfree is not needed and can be dropped.
>> >> Done using the following semantic by coccinelle.
>> >>
>> >> @r@
>> >> type T,P;
>> >> T* x;
>> >> @@
>> >>
>> >> kfree(
>> >> -(P *)
>> >> x )
>> >>
>> >> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>> >> ---
>> >>  drivers/staging/rtl8723bs/core/rtw_cmd.c | 58 ++++++++++++++++----------------
>> >>  1 file changed, 29 insertions(+), 29 deletions(-)
>> >>
>> >> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
>> >> index 1843c44..e71e3ab 100644
>> >> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
>> >> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
>> >> @@ -408,7 +408,7 @@ void rtw_free_cmd_obj(struct cmd_obj *pcmd)
>> >>       }
>> >>
>> >>       /* free cmd_obj */
>> >> -     kfree((unsigned char *)pcmd);
>> >> +     kfree(pcmd);
>> >>  }
>> >>
>> >>
>> >> @@ -619,7 +619,7 @@ u8 rtw_sitesurvey_cmd(struct adapter  *padapter, struct ndis_802_11_ssid *ssid,
>> >>
>> >>       psurveyPara = rtw_zmalloc(sizeof(struct sitesurvey_parm));
>> >>       if (psurveyPara == NULL) {
>> >> -             kfree((unsigned char *) ph2c);
>> >> +             kfree(ph2c);
>> >>               return _FAIL;
>> >>       }
>> >>
>> >> @@ -689,7 +689,7 @@ u8 rtw_setdatarate_cmd(struct adapter *padapter, u8 *rateset)
>> >>
>> >>       pbsetdataratepara = rtw_zmalloc(sizeof(struct setdatarate_parm));
>> >>       if (pbsetdataratepara == NULL) {
>> >> -             kfree((u8 *) ph2c);
>> >> +             kfree(ph2c);
>> >>               res = _FAIL;
>> >>               goto exit;
>> >>       }
>> >> @@ -707,7 +707,7 @@ void rtw_getbbrfreg_cmdrsp_callback(struct adapter *padapter,  struct cmd_obj *p
>> >>  {
>> >>       /* rtw_free_cmd_obj(pcmd); */
>> >>       kfree((unsigned char *) pcmd->parmbuf);
>> >
>> > This case didn't get updated, probably because Coccinelle didn't have
>> > access to enough type information.  Try rerunning with --all-includes or
>> > --recursive-includes.  You may also need to give some include path
>> > information (-I argument).
>> I tried doing this but it is still not detecting this particular case,
>> for the include path I gave the path of the directory which contains
>> the header file in which struct cmd_obj is defined.
>
> OK, just check the field type manually, and then put a note in your commit
> log saying that you have done that case by hand, due to Coccinelle's not
> having sufficient type information.
Yes, I have checked it , it is a pointer.

Thanks,
Srishti
>
> julia
>
>>
>> Regards,
>> Srishti
>> >
>> > julia
>> >
>> >> -     kfree((unsigned char *) pcmd);
>> >> +     kfree(pcmd);
>> >>  }
>> >>
>> >>  u8 rtw_createbss_cmd(struct adapter  *padapter)
>> >> @@ -847,7 +847,7 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
>> >>       psecnetwork = (struct wlan_bssid_ex *)&psecuritypriv->sec_bss;
>> >>       if (psecnetwork == NULL) {
>> >>               if (pcmd != NULL)
>> >> -                     kfree((unsigned char *)pcmd);
>> >> +                     kfree(pcmd);
>> >>
>> >>               res = _FAIL;
>> >>
>> >> @@ -955,7 +955,7 @@ u8 rtw_disassoc_cmd(struct adapter *padapter, u32 deauth_timeout_ms, bool enqueu
>> >>               cmdobj = rtw_zmalloc(sizeof(*cmdobj));
>> >>               if (cmdobj == NULL) {
>> >>                       res = _FAIL;
>> >> -                     kfree((u8 *)param);
>> >> +                     kfree(param);
>> >>                       goto exit;
>> >>               }
>> >>               init_h2fwcmd_w_parm_no_rsp(cmdobj, param, _DisConnect_CMD_);
>> >> @@ -964,7 +964,7 @@ u8 rtw_disassoc_cmd(struct adapter *padapter, u32 deauth_timeout_ms, bool enqueu
>> >>               /* no need to enqueue, do the cmd hdl directly and free cmd parameter */
>> >>               if (H2C_SUCCESS != disconnect_hdl(padapter, (u8 *)param))
>> >>                       res = _FAIL;
>> >> -             kfree((u8 *)param);
>> >> +             kfree(param);
>> >>       }
>> >>
>> >>  exit:
>> >> @@ -990,7 +990,7 @@ u8 rtw_setopmode_cmd(struct adapter  *padapter, enum NDIS_802_11_NETWORK_INFRAST
>> >>       if (enqueue) {
>> >>               ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
>> >>               if (ph2c == NULL) {
>> >> -                     kfree((u8 *)psetop);
>> >> +                     kfree(psetop);
>> >>                       res = _FAIL;
>> >>                       goto exit;
>> >>               }
>> >> @@ -999,7 +999,7 @@ u8 rtw_setopmode_cmd(struct adapter  *padapter, enum NDIS_802_11_NETWORK_INFRAST
>> >>               res = rtw_enqueue_cmd(pcmdpriv, ph2c);
>> >>       } else{
>> >>               setopmode_hdl(padapter, (u8 *)psetop);
>> >> -             kfree((u8 *)psetop);
>> >> +             kfree(psetop);
>> >>       }
>> >>  exit:
>> >>       return res;
>> >> @@ -1042,15 +1042,15 @@ u8 rtw_setstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 unicast_
>> >>       if (enqueue) {
>> >>               ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
>> >>               if (ph2c == NULL) {
>> >> -                     kfree((u8 *) psetstakey_para);
>> >> +                     kfree(psetstakey_para);
>> >>                       res = _FAIL;
>> >>                       goto exit;
>> >>               }
>> >>
>> >>               psetstakey_rsp = rtw_zmalloc(sizeof(struct set_stakey_rsp));
>> >>               if (psetstakey_rsp == NULL) {
>> >> -                     kfree((u8 *) ph2c);
>> >> -                     kfree((u8 *) psetstakey_para);
>> >> +                     kfree(ph2c);
>> >> +                     kfree(psetstakey_para);
>> >>                       res = _FAIL;
>> >>                       goto exit;
>> >>               }
>> >> @@ -1061,7 +1061,7 @@ u8 rtw_setstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 unicast_
>> >>               res = rtw_enqueue_cmd(pcmdpriv, ph2c);
>> >>       } else{
>> >>               set_stakey_hdl(padapter, (u8 *)psetstakey_para);
>> >> -             kfree((u8 *) psetstakey_para);
>> >> +             kfree(psetstakey_para);
>> >>       }
>> >>  exit:
>> >>       return res;
>> >> @@ -1091,15 +1091,15 @@ u8 rtw_clearstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 enqueu
>> >>
>> >>               psetstakey_para = rtw_zmalloc(sizeof(struct set_stakey_parm));
>> >>               if (psetstakey_para == NULL) {
>> >> -                     kfree((u8 *) ph2c);
>> >> +                     kfree(ph2c);
>> >>                       res = _FAIL;
>> >>                       goto exit;
>> >>               }
>> >>
>> >>               psetstakey_rsp = rtw_zmalloc(sizeof(struct set_stakey_rsp));
>> >>               if (psetstakey_rsp == NULL) {
>> >> -                     kfree((u8 *) ph2c);
>> >> -                     kfree((u8 *) psetstakey_para);
>> >> +                     kfree(ph2c);
>> >> +                     kfree(psetstakey_para);
>> >>                       res = _FAIL;
>> >>                       goto exit;
>> >>               }
>> >> @@ -1136,7 +1136,7 @@ u8 rtw_addbareq_cmd(struct adapter *padapter, u8 tid, u8 *addr)
>> >>
>> >>       paddbareq_parm = rtw_zmalloc(sizeof(struct addBaReq_parm));
>> >>       if (paddbareq_parm == NULL) {
>> >> -             kfree((unsigned char *)ph2c);
>> >> +             kfree(ph2c);
>> >>               res = _FAIL;
>> >>               goto exit;
>> >>       }
>> >> @@ -1170,7 +1170,7 @@ u8 rtw_reset_securitypriv_cmd(struct adapter *padapter)
>> >>
>> >>       pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
>> >>       if (pdrvextra_cmd_parm == NULL) {
>> >> -             kfree((unsigned char *)ph2c);
>> >> +             kfree(ph2c);
>> >>               res = _FAIL;
>> >>               goto exit;
>> >>       }
>> >> @@ -1205,7 +1205,7 @@ u8 rtw_free_assoc_resources_cmd(struct adapter *padapter)
>> >>
>> >>       pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
>> >>       if (pdrvextra_cmd_parm == NULL) {
>> >> -             kfree((unsigned char *)ph2c);
>> >> +             kfree(ph2c);
>> >>               res = _FAIL;
>> >>               goto exit;
>> >>       }
>> >> @@ -1241,7 +1241,7 @@ u8 rtw_dynamic_chk_wk_cmd(struct adapter *padapter)
>> >>
>> >>       pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
>> >>       if (pdrvextra_cmd_parm == NULL) {
>> >> -             kfree((unsigned char *)ph2c);
>> >> +             kfree(ph2c);
>> >>               res = _FAIL;
>> >>               goto exit;
>> >>       }
>> >> @@ -1294,7 +1294,7 @@ u8 rtw_set_chplan_cmd(struct adapter *padapter, u8 chplan, u8 enqueue, u8 swconf
>> >>               /* need enqueue, prepare cmd_obj and enqueue */
>> >>               pcmdobj = rtw_zmalloc(sizeof(struct cmd_obj));
>> >>               if (pcmdobj == NULL) {
>> >> -                     kfree((u8 *)setChannelPlan_param);
>> >> +                     kfree(setChannelPlan_param);
>> >>                       res = _FAIL;
>> >>                       goto exit;
>> >>               }
>> >> @@ -1306,7 +1306,7 @@ u8 rtw_set_chplan_cmd(struct adapter *padapter, u8 chplan, u8 enqueue, u8 swconf
>> >>               if (H2C_SUCCESS != set_chplan_hdl(padapter, (unsigned char *)setChannelPlan_param))
>> >>                       res = _FAIL;
>> >>
>> >> -             kfree((u8 *)setChannelPlan_param);
>> >> +             kfree(setChannelPlan_param);
>> >>       }
>> >>
>> >>       /* do something based on res... */
>> >> @@ -1561,7 +1561,7 @@ u8 rtw_lps_ctrl_wk_cmd(struct adapter *padapter, u8 lps_ctrl_type, u8 enqueue)
>> >>
>> >>               pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
>> >>               if (pdrvextra_cmd_parm == NULL) {
>> >> -                     kfree((unsigned char *)ph2c);
>> >> +                     kfree(ph2c);
>> >>                       res = _FAIL;
>> >>                       goto exit;
>> >>               }
>> >> @@ -1603,7 +1603,7 @@ u8 rtw_dm_in_lps_wk_cmd(struct adapter *padapter)
>> >>
>> >>       pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
>> >>       if (pdrvextra_cmd_parm == NULL) {
>> >> -             kfree((unsigned char *)ph2c);
>> >> +             kfree(ph2c);
>> >>               res = _FAIL;
>> >>               goto exit;
>> >>       }
>> >> @@ -1676,7 +1676,7 @@ u8 rtw_dm_ra_mask_wk_cmd(struct adapter *padapter, u8 *psta)
>> >>
>> >>       pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
>> >>       if (pdrvextra_cmd_parm == NULL) {
>> >> -             kfree((unsigned char *)ph2c);
>> >> +             kfree(ph2c);
>> >>               res = _FAIL;
>> >>               goto exit;
>> >>       }
>> >> @@ -1727,7 +1727,7 @@ u8 rtw_ps_cmd(struct adapter *padapter)
>> >>
>> >>       pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
>> >>       if (pdrvextra_cmd_parm == NULL) {
>> >> -             kfree((unsigned char *)ppscmd);
>> >> +             kfree(ppscmd);
>> >>               res = _FAIL;
>> >>               goto exit;
>> >>       }
>> >> @@ -1799,7 +1799,7 @@ u8 rtw_chk_hi_queue_cmd(struct adapter *padapter)
>> >>
>> >>       pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
>> >>       if (pdrvextra_cmd_parm == NULL) {
>> >> -             kfree((unsigned char *)ph2c);
>> >> +             kfree(ph2c);
>> >>               res = _FAIL;
>> >>               goto exit;
>> >>       }
>> >> @@ -1898,7 +1898,7 @@ u8 rtw_c2h_packet_wk_cmd(struct adapter *padapter, u8 *pbuf, u16 length)
>> >>
>> >>       pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
>> >>       if (pdrvextra_cmd_parm == NULL) {
>> >> -             kfree((u8 *)ph2c);
>> >> +             kfree(ph2c);
>> >>               res = _FAIL;
>> >>               goto exit;
>> >>       }
>> >> @@ -1933,7 +1933,7 @@ u8 rtw_c2h_wk_cmd(struct adapter *padapter, u8 *c2h_evt)
>> >>
>> >>       pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
>> >>       if (pdrvextra_cmd_parm == NULL) {
>> >> -             kfree((u8 *)ph2c);
>> >> +             kfree(ph2c);
>> >>               res = _FAIL;
>> >>               goto exit;
>> >>       }
>> >> --
>> >> 2.7.4
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1507380884-10906-1-git-send-email-srishtishar%40gmail.com.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >>
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAB3L5oxHV_buBHqmX3-Tw0UMj7ivBP3btEaRUmUa064Di%2BHUTg%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

