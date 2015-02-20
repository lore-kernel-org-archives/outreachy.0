X-GM-THRID: 1123382460416
X-Received: by 10.112.131.106 with SMTP id ol10mr1069882lbb.20.1424419146641;
        Thu, 19 Feb 2015 23:59:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.234.165 with SMTP id uf5ls250432lac.60.gmail; Thu, 19 Feb
 2015 23:59:06 -0800 (PST)
X-Received: by 10.112.138.202 with SMTP id qs10mr1041204lbb.24.1424419146227;
        Thu, 19 Feb 2015 23:59:06 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id r6si54740wix.0.2015.02.19.23.59.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 23:59:06 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x235.google.com with SMTP id r20so1099177wiv.2
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 23:59:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=JoIer61gDFhoiRgZhm286sMGlsP4Dk0rIubQeVsafOE=;
        b=IN31DV+hp+hAaC5ssL+zsUSQ5HivLUca+qOB3PpWXO0seIAgGdk2RcDdOeMG5DuW1i
         6vmB31L4ZpAkRPhJIx1SnZLo9UpN3ILZs2DunPqu1roGlrlNk26bhSPTDJhFoLiIH7Cw
         Am0h7BDWpoumvaeNCNqaWTjnRwv/xNJHInp5isE9vVcKbS2zW8Zp2haCpMxdygDYdxD8
         JjO0qv8eV6MDAvcnpJJDsD0kkFad4/MMIZmd7jPmF0hTan16woIMJnjD8+TIgveRNtKR
         dMX9Oj3DrWzlj7AoXIP+ehiru2Bl4kQCNyXzKMHetaJJoMqvSGske92Pjbw+t/Q+iP+g
         5Y1w==
MIME-Version: 1.0
X-Received: by 10.194.134.68 with SMTP id pi4mr16404541wjb.101.1424419144815;
 Thu, 19 Feb 2015 23:59:04 -0800 (PST)
Received: by 10.194.13.168 with HTTP; Thu, 19 Feb 2015 23:59:04 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1502200851350.2045@localhost6.localdomain6>
References: <20150220072850.GA8648@vaishali-Ideapad-Z570>
	<alpine.DEB.2.02.1502200851350.2045@localhost6.localdomain6>
Date: Fri, 20 Feb 2015 13:29:04 +0530
Message-ID: <CAK-LDbLHqULUx--_fs8oxkTkH1xcFnsApzKVyWiUkD794w5-aQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Remove unused
 struct ndis_802_11_key
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 20, 2015 at 1:21 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Fri, 20 Feb 2015, Vaishali Thakkar wrote:
>
>> This patch removes struct ndis_802_11_key as it is defined
>> in a header file but never used.
>
> How did you find it?

While looking at struct definitions in file wlan_bssdef.h, I accidentally
came across this structure and when I used git grep to see the use of
it, I didn't find any files using it. That's why I just sent the patch.

> julia
>
>> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
>> ---
>>  drivers/staging/rtl8188eu/include/wlan_bssdef.h | 10 ----------
>>  1 file changed, 10 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8188eu/include/wlan_bssdef.h b/drivers/staging/rtl8188eu/include/wlan_bssdef.h
>> index 53b1bd8..85b99da 100644
>> --- a/drivers/staging/rtl8188eu/include/wlan_bssdef.h
>> +++ b/drivers/staging/rtl8188eu/include/wlan_bssdef.h
>> @@ -156,16 +156,6 @@ enum ndis_802_11_reload_def {
>>       Ndis802_11ReloadWEPKeys
>>  };
>>
>> -/*  Key mapping keys require a BSSID */
>> -struct ndis_802_11_key {
>> -     u32           Length;             /*  Length of this structure */
>> -     u32           KeyIndex;
>> -     u32           KeyLength;          /*  length of key in bytes */
>> -     unsigned char BSSID[ETH_ALEN];
>> -     unsigned long long KeyRSC;
>> -     u8           KeyMaterial[32];  /* var len depending on above field */
>> -};
>> -
>>  struct ndis_802_11_remove_key {
>>       u32                   Length;        /*  Length */
>>       u32                   KeyIndex;
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150220072850.GA8648%40vaishali-Ideapad-Z570.
>> For more options, visit https://groups.google.com/d/optout.
>>



-- 
Vaishali

