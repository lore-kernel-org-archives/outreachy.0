X-GM-THRID: 6210234849248149504
X-Received: by 10.66.110.111 with SMTP id hz15mr20229766pab.16.1445933888847;
        Tue, 27 Oct 2015 01:18:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.85.130 with SMTP id h2ls1956716obz.65.gmail; Tue, 27 Oct
 2015 01:18:07 -0700 (PDT)
X-Received: by 10.182.107.162 with SMTP id hd2mr35171679obb.29.1445933887474;
        Tue, 27 Oct 2015 01:18:07 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22a.google.com (mail-qg0-x22a.google.com. [2607:f8b0:400d:c04::22a])
        by gmr-mx.google.com with ESMTPS id q68si2549273ywf.0.2015.10.27.01.18.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 01:18:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) client-ip=2607:f8b0:400d:c04::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by qgem9 with SMTP id m9so140043728qge.1
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 01:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=i1JeSVkjYsZRYULdt873/hYKzs1gfHlMWyvejZaXH2E=;
        b=kgS3A4bR+jMGpu+56gjxalG1zmx9DsswqxMP2xY8k7DQm7n7oXjtq4+B1/f2/puP3E
         xoNUM/Qwblm804myyOb5GwG5Rln1T/cHmCTCVvpfuVHmsdGgWT1yvoRW9jmIgCjYqkFs
         SQ74tY8hixteHhoF7ktTTQ+r8N2Y5O/46phBbVqVS8k0yp4Nxud2m06ClNNTS8M2QaXQ
         FWyzjqd3Ak0juX6JCCmPFuqi3unSRme5+Smd9TOS67/Z/qwB3vRA4c4/Om2UH0uRWvvD
         I2GEACr9OJ1W8WQ5F3+uCnWQWooPkxRFpr5Z5l6S1kBZBDYZfUrkeLc9zTioGrcbA5nG
         XavQ==
MIME-Version: 1.0
X-Received: by 10.140.98.183 with SMTP id o52mr47423849qge.70.1445933887245;
 Tue, 27 Oct 2015 01:18:07 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Tue, 27 Oct 2015 01:18:07 -0700 (PDT)
In-Reply-To: <20151027081328.GB17198@kroah.com>
References: <20151027080252.GA27211@amitoj-Inspiron-3542>
	<20151027081328.GB17198@kroah.com>
Date: Tue, 27 Oct 2015 13:48:07 +0530
Message-ID: <CA+5yK5GfQXBihN6WsS65oJrXZJZSgWGDcHh3=op+3uDMxJu4SQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723au: core: Remove
 unnecessary functions
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 27, 2015 at 1:43 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Tue, Oct 27, 2015 at 01:32:52PM +0530, Amitoj Kaur Chawla wrote:
>> Remove functions that can be replaced by a single line of code and are
>> unnecessary.
>>
>> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>> ---
>>  drivers/staging/rtl8723au/core/rtw_ap.c | 28 ++++------------------------
>>  1 file changed, 4 insertions(+), 24 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8723au/core/rtw_ap.c b/drivers/staging/rtl8723au/core/rtw_ap.c
>> index a7c8b73..0637020 100644
>> --- a/drivers/staging/rtl8723au/core/rtw_ap.c
>> +++ b/drivers/staging/rtl8723au/core/rtw_ap.c
>> @@ -1135,11 +1135,6 @@ int rtw_acl_remove_sta23a(struct rtw_adapter *padapter, u8 *addr)
>>       return 0;
>>  }
>>
>> -static void update_bcn_fixed_ie(struct rtw_adapter *padapter)
>> -{
>> -     DBG_8723A("%s\n", __func__);
>> -}
>> -
>>  static void update_bcn_erpinfo_ie(struct rtw_adapter *padapter)
>>  {
>>       struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
>> @@ -1173,21 +1168,6 @@ static void update_bcn_erpinfo_ie(struct rtw_adapter *padapter)
>>       }
>>  }
>>
>> -static void update_bcn_htcap_ie(struct rtw_adapter *padapter)
>> -{
>> -     DBG_8723A("%s\n", __func__);
>> -}
>> -
>> -static void update_bcn_htinfo_ie(struct rtw_adapter *padapter)
>> -{
>> -     DBG_8723A("%s\n", __func__);
>> -}
>> -
>> -static void update_bcn_rsn_ie(struct rtw_adapter *padapter)
>> -{
>> -     DBG_8723A("%s\n", __func__);
>> -}
>
> These look like functions that someone hasn't implemented yet, just
> delete them, and the callers as well, don't move the debug message into
> the caller site, that doesn't make much sense.
>
> thanks,
>
> greg k-h

Okay! Working on sending a v2.

Thanks,
-- 
Amitoj

