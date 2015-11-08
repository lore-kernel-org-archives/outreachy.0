X-GM-THRID: 6207450266150633472
X-Received: by 10.182.143.65 with SMTP id sc1mr21257057obb.15.1447019908217;
        Sun, 08 Nov 2015 13:58:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.35 with SMTP id v35ls393578ioi.35.gmail; Sun, 08 Nov
 2015 13:58:27 -0800 (PST)
X-Received: by 10.67.22.99 with SMTP id hr3mr21466982pad.46.1447019907612;
        Sun, 08 Nov 2015 13:58:27 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qg0-x236.google.com (mail-qg0-x236.google.com. [2607:f8b0:400d:c04::236])
        by gmr-mx.google.com with ESMTPS id z62si604171ywb.4.2015.11.08.13.58.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Nov 2015 13:58:27 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::236 as permitted sender) client-ip=2607:f8b0:400d:c04::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::236 as permitted sender) smtp.mailfrom=jes.sorensen@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-x236.google.com with SMTP id d10so130046793qga.3
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Nov 2015 13:58:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:subject:to:references:cc:message-id:date:user-agent
         :mime-version:in-reply-to:content-type:content-transfer-encoding;
        bh=HIWaKvLKQZcdyS9+GUK9CngpET1yyOa4ej3XGF1R0J0=;
        b=ccQ3oB+jFBM7/T/EqU4OwvDShCeQ7ARzYDJX2qmh37wBRXAZxj3QeuwE1Ex9l00K+q
         4Nax7RtRUPb4V0ur7iG17Im52uT1bMMLCaKQAcalox1oX0/VhnZ2lsCd/Qkcq4lliBoH
         bSxTBMzCEfpd2wfW0H9G5ZuNIxoRN65Ceh9948hoUcsInOoBgh3B+LDgOkAjdLyqokaD
         V8gocobriaKxo7qE8EyK191c2SERi1ly78NJMfvNzGkTfB3L4wo961RiDDpIx1kBTFL5
         taCS1PrBJ/aqh3xjUcKG1cey91gPRIPsPMjcuYoRbNm32ZYLvTzYehk47DVoYWb/dIQI
         aUCA==
X-Received: by 10.140.89.51 with SMTP id u48mr25657154qgd.61.1447019907422;
        Sun, 08 Nov 2015 13:58:27 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [192.168.99.73] (pool-72-68-159-137.nycmny.fios.verizon.net. [72.68.159.137])
        by smtp.gmail.com with ESMTPSA id e62sm2452745qga.47.2015.11.08.13.58.26
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Nov 2015 13:58:26 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/5] staging: r8723au: break
 parameter list at separators and align to open braces
To: Greg KH <gregkh@linuxfoundation.org>,
 Alison Schofield <amsfield22@gmail.com>
References: <cover.1445402009.git.amsfield22@gmail.com>
 <d49b2db25364b18631d33f0a0e27d5396ae20f79.1445402009.git.amsfield22@gmail.com>
 <20151025024029.GA16589@kroah.com> <20151026030743.GA2104@Ubuntu-D830>
 <20151027054446.GA31187@kroah.com>
Cc: outreachy-kernel@googlegroups.com
Message-ID: <563FC582.1010302@gmail.com>
Date: Sun, 8 Nov 2015 16:58:26 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <20151027054446.GA31187@kroah.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 10/27/15 01:44, Greg KH wrote:
> On Sun, Oct 25, 2015 at 08:07:44PM -0700, Alison Schofield wrote:
>> On Sat, Oct 24, 2015 at 07:40:29PM -0700, Greg KH wrote:
>>> On Tue, Oct 20, 2015 at 11:01:58PM -0700, Alison Schofield wrote:
>>>> Improve readability by aligning the struct cmd_hdl wlancmds[] to fit
>>>> within 80 chars and cleaning up the adjacent index comments.
>>>>
>>>> Addresses checkpatch.pl WARNING: line over 80 characters
>>>>
>>>> Signed-off-by: Alison Schofield <amsfield22@gmail.com>
>>>> ---
>>>>  drivers/staging/rtl8723au/core/rtw_cmd.c | 64 +++++++++++++++++++-------------
>>>>  1 file changed, 38 insertions(+), 26 deletions(-)
>>>>
>>>> diff --git a/drivers/staging/rtl8723au/core/rtw_cmd.c b/drivers/staging/rtl8723au/core/rtw_cmd.c
>>>> index 46aea16..c3579ac 100644
>>>> --- a/drivers/staging/rtl8723au/core/rtw_cmd.c
>>>> +++ b/drivers/staging/rtl8723au/core/rtw_cmd.c
>>>> @@ -22,7 +22,7 @@
>>>>  #include <rtw_sreset.h>
>>>>  
>>>>  static struct cmd_hdl wlancmds[] = {
>>>> -	GEN_DRV_CMD_HANDLER(0, NULL) /*0*/
>>>> +	GEN_DRV_CMD_HANDLER(0, NULL)					/*0*/
>>>>  	GEN_DRV_CMD_HANDLER(0, NULL)
>>>>  	GEN_DRV_CMD_HANDLER(0, NULL)
>>>>  	GEN_DRV_CMD_HANDLER(0, NULL)
>>>> @@ -32,18 +32,26 @@ static struct cmd_hdl wlancmds[] = {
>>>>  	GEN_MLME_EXT_HANDLER(0, NULL)
>>>>  	GEN_MLME_EXT_HANDLER(0, NULL)
>>>>  	GEN_MLME_EXT_HANDLER(0, NULL)
>>>> -	GEN_MLME_EXT_HANDLER(0, NULL) /*10*/
>>>> +	GEN_MLME_EXT_HANDLER(0, NULL)					/*10*/
>>>>  	GEN_MLME_EXT_HANDLER(0, NULL)
>>>>  	GEN_MLME_EXT_HANDLER(0, NULL)
>>>>  	GEN_MLME_EXT_HANDLER(0, NULL)
>>>> -	GEN_MLME_EXT_HANDLER(sizeof(struct wlan_bssid_ex), join_cmd_hdl23a) /*14*/
>>>> -	GEN_MLME_EXT_HANDLER(sizeof(struct disconnect_parm), disconnect_hdl23a)
>>>> -	GEN_MLME_EXT_HANDLER(sizeof(struct wlan_bssid_ex), createbss_hdl23a)
>>>> -	GEN_MLME_EXT_HANDLER(sizeof(struct setopmode_parm), setopmode_hdl23a)
>>>> -	GEN_MLME_EXT_HANDLER(sizeof(struct sitesurvey_parm), sitesurvey_cmd_hdl23a) /*18*/
>>>> -	GEN_MLME_EXT_HANDLER(sizeof(struct setauth_parm), setauth_hdl23a)
>>>> -	GEN_MLME_EXT_HANDLER(sizeof(struct setkey_parm), setkey_hdl23a) /*20*/
>>>> -	GEN_MLME_EXT_HANDLER(sizeof(struct set_stakey_parm), set_stakey_hdl23a)
>>>> +	GEN_MLME_EXT_HANDLER(sizeof(struct wlan_bssid_ex),
>>>> +			     join_cmd_hdl23a)
>>>> +	GEN_MLME_EXT_HANDLER(sizeof(struct disconnect_parm),
>>>> +			     disconnect_hdl23a)
>>>> +	GEN_MLME_EXT_HANDLER(sizeof(struct wlan_bssid_ex),
>>>> +			     createbss_hdl23a)
>>>> +	GEN_MLME_EXT_HANDLER(sizeof(struct setopmode_parm),
>>>> +			     setopmode_hdl23a)
>>>> +	GEN_MLME_EXT_HANDLER(sizeof(struct sitesurvey_parm),
>>>> +			     sitesurvey_cmd_hdl23a)
>>>> +	GEN_MLME_EXT_HANDLER(sizeof(struct setauth_parm),
>>>> +			     setauth_hdl23a)
>>>> +	GEN_MLME_EXT_HANDLER(sizeof(struct setkey_parm),		/*20*/
>>>> +			     setkey_hdl23a)
>>>> +	GEN_MLME_EXT_HANDLER(sizeof(struct set_stakey_parm),
>>>> +			     set_stakey_hdl23a)
>>>
>>>
>>> This seems harder to read to me than before, how about you?
>>>
>> It does look worse in the diff, but when I'm scanning the entire 62 item
>> list, keeping the items to the left and the index comments to the right
>> seemed to make it easier to scan and find the item I want. (A maintainer
>> probably wouldn't be reading this list top to bottom.)
>>
>> Is it appropriate for me to ask reviewers (you) to apply the patch to
>> review it?  It seems there is not always enough context in the diff.
> 
> There's enough context, we can read it :)
> 
> I think one-line-per-entry here is just fine, no need to change it at
> all, sorry.

I agree, definitely no reason to do this.

In addition, please remember to CC the driver maintainer when you post
patches for a driver.

Jes



