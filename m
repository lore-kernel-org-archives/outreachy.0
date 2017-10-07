X-GM-THRID: 6474151874881650688
X-Received: by 10.129.83.195 with SMTP id h186mr7289597ywb.183.1507406636862;
        Sat, 07 Oct 2017 13:03:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.248.66 with SMTP id i63ls102973ywf.37.gmail; Sat, 07 Oct
 2017 13:03:56 -0700 (PDT)
X-Received: by 10.129.164.148 with SMTP id b142mr7496474ywh.112.1507406636094;
        Sat, 07 Oct 2017 13:03:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507406636; cv=none;
        d=google.com; s=arc-20160816;
        b=0R/mJdvv0z85byydOupoKgPeDUNqiT3OJjG43cap/H5iGnJE7gj1Hpy9anMIpEkOv2
         pMtSU0eDHINYJcDQVNJPRgWWz2hz/VJUKZv+kLkXkA93AWGUXBa10f+bY/6f/urK6Jim
         4C3UVSxubUz7PyoK4L8dSKyC1qQYqw22OYcNeMQygxilcvxi0RMQ5uxgaKVkD52fbX/S
         POy4IR/FlwM0AFYaGgzQQoYVaACVyLxFqRzcKe32lgq7hIIvoojepBHRL1FhL9dl1p+g
         sCql009Qgn4Hm3tlHtXA1uNPCBX3op9HkEsrpgixbgdR3JD1FLVyqwbhm1H5wm0Yiqqp
         lvfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=B37pXAEUizMHy8WOyoH6sHoZvpuEIThPo16YyBMjYQs=;
        b=v26V23o0tMOqVwf5AvhE8rOfey+lxvpVZ135fe1v03tPm3m4KhJK2SWIdDyhE8gpFQ
         jv7qSC9CQG5P8+Y69QolgW8QkR6HlzGBrcMf9CAJs9aO3I+9c/PUjlz/Pr8iU98eqPLh
         OMwXDVOECOnCNV/0ji2cCWPwSRdD3NW5aS5sdS3Gk+TkNbCK1CdzTn+6Q777eUJFG+TK
         8QBaU++eUMEgSQM02uKO/ppSrbYvg+BxgjLLxeXtDVCpM7wcxwYaJDWUjnbnIEVDZ+IE
         F+tzWfvoZLHPNcdLZOgsK/SIN2keW1krw0o856mVAm9lhqnzHbmFkYlvCMSj1JBdXH4x
         HZIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YgS3sMKR;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id i66si229963ywe.28.2017.10.07.13.03.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 13:03:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YgS3sMKR;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id z12so10797399qkb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Oct 2017 13:03:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=B37pXAEUizMHy8WOyoH6sHoZvpuEIThPo16YyBMjYQs=;
        b=YgS3sMKR8HE7R5kZi51Gg0mWRbYtGy2qNELbEUey6g3khql9cpOny6qSaYeW+6DCgP
         8PRMbX27nXS5TSRKKa46Ss5hibcQmHqMx5TWmCFW9MNToRL8Mg6msmwZm9J7ro/ohFaF
         xqEGIaq0JCHxbvGujFzCtJjzLmObwfN0HLuHdwCC5owaNL1MR+PaQD96iV46z4Yo2j7p
         HzdHvHA5rYiCNwSYbQOBiwcp7jyZ+tBvwuP/MKC/W58ZXUd/WUIQkJy/tDqQBWOtAjTK
         pu3+l6iU9M09fTThXBRLhGpWGYOudCoGSaAxnO5l/5kIzYVsJAE6RX5uaHxKX1XOSK4p
         uAgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=B37pXAEUizMHy8WOyoH6sHoZvpuEIThPo16YyBMjYQs=;
        b=rP00Q/1zbS7tOaLvVgIcpN2sLhHTtRTZzJn3nOjdrv9UaOYA0apcf+c5/Vi1MAt/LU
         5yCA9blAwcQglrGVF/Fiy3a4ZUipLcEcOQ3xj4zxk+ftTo2673mD7m/YCSOEP/8k7ZVr
         e3vk8H1uAygOy6DgDwZjzNco++vqD18iL5uq8p7ApaZcDBzxsSsTFbVnGNFg4dW3ErV0
         oZS31opliB8uGNuDpVlfe3le8y5js+eoUm7ByfpUOGMsLgY6f5vlV1cZnv9/JqG6wEzR
         gpPbKhYC9pYvKLBXS7FxP40zof6Jkqs6kblJg/uOoJnnxtS+o9AnkvdwmK2lhCL/S/g/
         YT9A==
X-Gm-Message-State: AMCzsaXZCAmb7uF3EhgKrd5V/OJR5cuGH6OTzoWIfEuunXZGAkR2UmIO
	FyofQr1yioVA1Lmdc42SXXg8CcBSxzENZwKVlWk=
X-Google-Smtp-Source: AOwi7QBWPSBkZxY9GT1cW37zTb3p7pmy8ROthpcRN4s6t3baNfqM2Zqf79WHnXCqX2UahY4AtlKD0a4Bx3l0AB3CyIc=
X-Received: by 10.55.158.5 with SMTP id h5mr1956135qke.209.1507406635592; Sat,
 07 Oct 2017 13:03:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.62.216 with HTTP; Sat, 7 Oct 2017 13:03:55 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1710072011190.2134@hadrien>
References: <1507380884-10906-1-git-send-email-srishtishar@gmail.com> <alpine.DEB.2.20.1710072011190.2134@hadrien>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Sun, 8 Oct 2017 01:33:55 +0530
Message-ID: <CAB3L5oxHV_buBHqmX3-Tw0UMj7ivBP3btEaRUmUa064Di+HUTg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: core: rtw_cmd:
 Remove cast to pointer types in kfree
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Sat, Oct 7, 2017 at 11:42 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sat, 7 Oct 2017, Srishti Sharma wrote:
>
>> The cast to pointer types in kfree is not needed and can be dropped.
>> Done using the following semantic by coccinelle.
>>
>> @r@
>> type T,P;
>> T* x;
>> @@
>>
>> kfree(
>> -(P *)
>> x )
>>
>> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>> ---
>>  drivers/staging/rtl8723bs/core/rtw_cmd.c | 58 ++++++++++++++++----------------
>>  1 file changed, 29 insertions(+), 29 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
>> index 1843c44..e71e3ab 100644
>> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
>> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
>> @@ -408,7 +408,7 @@ void rtw_free_cmd_obj(struct cmd_obj *pcmd)
>>       }
>>
>>       /* free cmd_obj */
>> -     kfree((unsigned char *)pcmd);
>> +     kfree(pcmd);
>>  }
>>
>>
>> @@ -619,7 +619,7 @@ u8 rtw_sitesurvey_cmd(struct adapter  *padapter, struct ndis_802_11_ssid *ssid,
>>
>>       psurveyPara = rtw_zmalloc(sizeof(struct sitesurvey_parm));
>>       if (psurveyPara == NULL) {
>> -             kfree((unsigned char *) ph2c);
>> +             kfree(ph2c);
>>               return _FAIL;
>>       }
>>
>> @@ -689,7 +689,7 @@ u8 rtw_setdatarate_cmd(struct adapter *padapter, u8 *rateset)
>>
>>       pbsetdataratepara = rtw_zmalloc(sizeof(struct setdatarate_parm));
>>       if (pbsetdataratepara == NULL) {
>> -             kfree((u8 *) ph2c);
>> +             kfree(ph2c);
>>               res = _FAIL;
>>               goto exit;
>>       }
>> @@ -707,7 +707,7 @@ void rtw_getbbrfreg_cmdrsp_callback(struct adapter *padapter,  struct cmd_obj *p
>>  {
>>       /* rtw_free_cmd_obj(pcmd); */
>>       kfree((unsigned char *) pcmd->parmbuf);
>
> This case didn't get updated, probably because Coccinelle didn't have
> access to enough type information.  Try rerunning with --all-includes or
> --recursive-includes.  You may also need to give some include path
> information (-I argument).
I tried doing this but it is still not detecting this particular case,
for the include path I gave the path of the directory which contains
the header file in which struct cmd_obj is defined.

Regards,
Srishti
>
> julia
>
>> -     kfree((unsigned char *) pcmd);
>> +     kfree(pcmd);
>>  }
>>
>>  u8 rtw_createbss_cmd(struct adapter  *padapter)
>> @@ -847,7 +847,7 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
>>       psecnetwork = (struct wlan_bssid_ex *)&psecuritypriv->sec_bss;
>>       if (psecnetwork == NULL) {
>>               if (pcmd != NULL)
>> -                     kfree((unsigned char *)pcmd);
>> +                     kfree(pcmd);
>>
>>               res = _FAIL;
>>
>> @@ -955,7 +955,7 @@ u8 rtw_disassoc_cmd(struct adapter *padapter, u32 deauth_timeout_ms, bool enqueu
>>               cmdobj = rtw_zmalloc(sizeof(*cmdobj));
>>               if (cmdobj == NULL) {
>>                       res = _FAIL;
>> -                     kfree((u8 *)param);
>> +                     kfree(param);
>>                       goto exit;
>>               }
>>               init_h2fwcmd_w_parm_no_rsp(cmdobj, param, _DisConnect_CMD_);
>> @@ -964,7 +964,7 @@ u8 rtw_disassoc_cmd(struct adapter *padapter, u32 deauth_timeout_ms, bool enqueu
>>               /* no need to enqueue, do the cmd hdl directly and free cmd parameter */
>>               if (H2C_SUCCESS != disconnect_hdl(padapter, (u8 *)param))
>>                       res = _FAIL;
>> -             kfree((u8 *)param);
>> +             kfree(param);
>>       }
>>
>>  exit:
>> @@ -990,7 +990,7 @@ u8 rtw_setopmode_cmd(struct adapter  *padapter, enum NDIS_802_11_NETWORK_INFRAST
>>       if (enqueue) {
>>               ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
>>               if (ph2c == NULL) {
>> -                     kfree((u8 *)psetop);
>> +                     kfree(psetop);
>>                       res = _FAIL;
>>                       goto exit;
>>               }
>> @@ -999,7 +999,7 @@ u8 rtw_setopmode_cmd(struct adapter  *padapter, enum NDIS_802_11_NETWORK_INFRAST
>>               res = rtw_enqueue_cmd(pcmdpriv, ph2c);
>>       } else{
>>               setopmode_hdl(padapter, (u8 *)psetop);
>> -             kfree((u8 *)psetop);
>> +             kfree(psetop);
>>       }
>>  exit:
>>       return res;
>> @@ -1042,15 +1042,15 @@ u8 rtw_setstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 unicast_
>>       if (enqueue) {
>>               ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
>>               if (ph2c == NULL) {
>> -                     kfree((u8 *) psetstakey_para);
>> +                     kfree(psetstakey_para);
>>                       res = _FAIL;
>>                       goto exit;
>>               }
>>
>>               psetstakey_rsp = rtw_zmalloc(sizeof(struct set_stakey_rsp));
>>               if (psetstakey_rsp == NULL) {
>> -                     kfree((u8 *) ph2c);
>> -                     kfree((u8 *) psetstakey_para);
>> +                     kfree(ph2c);
>> +                     kfree(psetstakey_para);
>>                       res = _FAIL;
>>                       goto exit;
>>               }
>> @@ -1061,7 +1061,7 @@ u8 rtw_setstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 unicast_
>>               res = rtw_enqueue_cmd(pcmdpriv, ph2c);
>>       } else{
>>               set_stakey_hdl(padapter, (u8 *)psetstakey_para);
>> -             kfree((u8 *) psetstakey_para);
>> +             kfree(psetstakey_para);
>>       }
>>  exit:
>>       return res;
>> @@ -1091,15 +1091,15 @@ u8 rtw_clearstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 enqueu
>>
>>               psetstakey_para = rtw_zmalloc(sizeof(struct set_stakey_parm));
>>               if (psetstakey_para == NULL) {
>> -                     kfree((u8 *) ph2c);
>> +                     kfree(ph2c);
>>                       res = _FAIL;
>>                       goto exit;
>>               }
>>
>>               psetstakey_rsp = rtw_zmalloc(sizeof(struct set_stakey_rsp));
>>               if (psetstakey_rsp == NULL) {
>> -                     kfree((u8 *) ph2c);
>> -                     kfree((u8 *) psetstakey_para);
>> +                     kfree(ph2c);
>> +                     kfree(psetstakey_para);
>>                       res = _FAIL;
>>                       goto exit;
>>               }
>> @@ -1136,7 +1136,7 @@ u8 rtw_addbareq_cmd(struct adapter *padapter, u8 tid, u8 *addr)
>>
>>       paddbareq_parm = rtw_zmalloc(sizeof(struct addBaReq_parm));
>>       if (paddbareq_parm == NULL) {
>> -             kfree((unsigned char *)ph2c);
>> +             kfree(ph2c);
>>               res = _FAIL;
>>               goto exit;
>>       }
>> @@ -1170,7 +1170,7 @@ u8 rtw_reset_securitypriv_cmd(struct adapter *padapter)
>>
>>       pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
>>       if (pdrvextra_cmd_parm == NULL) {
>> -             kfree((unsigned char *)ph2c);
>> +             kfree(ph2c);
>>               res = _FAIL;
>>               goto exit;
>>       }
>> @@ -1205,7 +1205,7 @@ u8 rtw_free_assoc_resources_cmd(struct adapter *padapter)
>>
>>       pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
>>       if (pdrvextra_cmd_parm == NULL) {
>> -             kfree((unsigned char *)ph2c);
>> +             kfree(ph2c);
>>               res = _FAIL;
>>               goto exit;
>>       }
>> @@ -1241,7 +1241,7 @@ u8 rtw_dynamic_chk_wk_cmd(struct adapter *padapter)
>>
>>       pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
>>       if (pdrvextra_cmd_parm == NULL) {
>> -             kfree((unsigned char *)ph2c);
>> +             kfree(ph2c);
>>               res = _FAIL;
>>               goto exit;
>>       }
>> @@ -1294,7 +1294,7 @@ u8 rtw_set_chplan_cmd(struct adapter *padapter, u8 chplan, u8 enqueue, u8 swconf
>>               /* need enqueue, prepare cmd_obj and enqueue */
>>               pcmdobj = rtw_zmalloc(sizeof(struct cmd_obj));
>>               if (pcmdobj == NULL) {
>> -                     kfree((u8 *)setChannelPlan_param);
>> +                     kfree(setChannelPlan_param);
>>                       res = _FAIL;
>>                       goto exit;
>>               }
>> @@ -1306,7 +1306,7 @@ u8 rtw_set_chplan_cmd(struct adapter *padapter, u8 chplan, u8 enqueue, u8 swconf
>>               if (H2C_SUCCESS != set_chplan_hdl(padapter, (unsigned char *)setChannelPlan_param))
>>                       res = _FAIL;
>>
>> -             kfree((u8 *)setChannelPlan_param);
>> +             kfree(setChannelPlan_param);
>>       }
>>
>>       /* do something based on res... */
>> @@ -1561,7 +1561,7 @@ u8 rtw_lps_ctrl_wk_cmd(struct adapter *padapter, u8 lps_ctrl_type, u8 enqueue)
>>
>>               pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
>>               if (pdrvextra_cmd_parm == NULL) {
>> -                     kfree((unsigned char *)ph2c);
>> +                     kfree(ph2c);
>>                       res = _FAIL;
>>                       goto exit;
>>               }
>> @@ -1603,7 +1603,7 @@ u8 rtw_dm_in_lps_wk_cmd(struct adapter *padapter)
>>
>>       pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
>>       if (pdrvextra_cmd_parm == NULL) {
>> -             kfree((unsigned char *)ph2c);
>> +             kfree(ph2c);
>>               res = _FAIL;
>>               goto exit;
>>       }
>> @@ -1676,7 +1676,7 @@ u8 rtw_dm_ra_mask_wk_cmd(struct adapter *padapter, u8 *psta)
>>
>>       pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
>>       if (pdrvextra_cmd_parm == NULL) {
>> -             kfree((unsigned char *)ph2c);
>> +             kfree(ph2c);
>>               res = _FAIL;
>>               goto exit;
>>       }
>> @@ -1727,7 +1727,7 @@ u8 rtw_ps_cmd(struct adapter *padapter)
>>
>>       pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
>>       if (pdrvextra_cmd_parm == NULL) {
>> -             kfree((unsigned char *)ppscmd);
>> +             kfree(ppscmd);
>>               res = _FAIL;
>>               goto exit;
>>       }
>> @@ -1799,7 +1799,7 @@ u8 rtw_chk_hi_queue_cmd(struct adapter *padapter)
>>
>>       pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
>>       if (pdrvextra_cmd_parm == NULL) {
>> -             kfree((unsigned char *)ph2c);
>> +             kfree(ph2c);
>>               res = _FAIL;
>>               goto exit;
>>       }
>> @@ -1898,7 +1898,7 @@ u8 rtw_c2h_packet_wk_cmd(struct adapter *padapter, u8 *pbuf, u16 length)
>>
>>       pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
>>       if (pdrvextra_cmd_parm == NULL) {
>> -             kfree((u8 *)ph2c);
>> +             kfree(ph2c);
>>               res = _FAIL;
>>               goto exit;
>>       }
>> @@ -1933,7 +1933,7 @@ u8 rtw_c2h_wk_cmd(struct adapter *padapter, u8 *c2h_evt)
>>
>>       pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
>>       if (pdrvextra_cmd_parm == NULL) {
>> -             kfree((u8 *)ph2c);
>> +             kfree(ph2c);
>>               res = _FAIL;
>>               goto exit;
>>       }
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1507380884-10906-1-git-send-email-srishtishar%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

