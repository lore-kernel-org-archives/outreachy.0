X-GM-THRID: 6329444787310034944
X-Received: by 10.25.155.78 with SMTP id d75mr2824430lfe.5.1473699119586;
        Mon, 12 Sep 2016 09:51:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.85.131 with SMTP id j125ls481382lfb.45.gmail; Mon, 12 Sep
 2016 09:51:59 -0700 (PDT)
X-Received: by 10.25.42.197 with SMTP id q188mr2835343lfq.7.1473699119059;
        Mon, 12 Sep 2016 09:51:59 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id w79si742025wmw.0.2016.09.12.09.51.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 09:51:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id s64so6145393lfs.2
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 09:51:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=h6btSUPTH4UPX/vfMDdqAsQEB/ZdgQGVZ8YQgG503Fw=;
        b=L4oW17L0TGA0H7yXkX2syhQ7pNFQnN2zqr6EQrZQydZwZ1AWG9orI3PVcefp6/PFN2
         uj2W0uU1HZ5aogRYx8eLPPwNMpQZBgRACZcwy9p0kOM1SPWtceKJre85IOncHG6PPKBr
         NjdssAGQ2XAK3emY+HRgI1NRy7aMuxdkXB65J1qgi5ksaJqZM+HphKZfbupFgswALXTy
         CrOwCwgjiUDVlj7xbmDdV0H6OFNTPmIteaSiCaHjhD+P/ZJLA7y56GYYCCPr1i3JsaCr
         nfyy1es27t3c/cf/rkLOwpIV/kMk+Y/vMy3QXAa6KvrQSk6DIU2qJ5XFtOSRHl76BGPA
         cWYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=h6btSUPTH4UPX/vfMDdqAsQEB/ZdgQGVZ8YQgG503Fw=;
        b=CVrVyPjHwzXQ+i6Rhd0hHKio49if2S71+tAA4LS7rraD5dp17FfJaJAZPQAxKYOaEE
         rcEcwD4EmMLUMkK9LWpCKF0AhrUCvw5FhKmTLtgpN2tTAkF1K4HJz+ucok/RRESF36uz
         F4at99U/Ko6Wl3ds293lXn6W0uCYoHupUTtruMDpmLOmOWkj1ues+HV2Qf860P5YDE24
         0+0SfBAo0UMwsxbg+kTHrZZ59x3C2P4rg4ziCtu9jSxSNX5txtxwu0e8VGiLxYsphK10
         da1EdbLamqAiHaFjlhhmap0VdqyIaz718QL7v0+ZH9yVAKtit0Voym+3yvlROm/tmfIF
         kTjw==
X-Gm-Message-State: AE9vXwMrNT9win+NPh7bii6cOvHb35vjJpiAJmppFKfDDIp8+eNjC27WXsmtIS1XbIXmSL/aWo1diwpC3zH08g==
X-Received: by 10.25.198.199 with SMTP id w190mr2411938lff.128.1473699118408;
 Mon, 12 Sep 2016 09:51:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.78.72 with HTTP; Mon, 12 Sep 2016 09:51:57 -0700 (PDT)
In-Reply-To: <32230433-289b-b787-9a7a-9a897bf2f93c@gmail.com>
References: <1473688681-14479-1-git-send-email-bhumirks@gmail.com> <32230433-289b-b787-9a7a-9a897bf2f93c@gmail.com>
From: Bhumika Goyal <bhumirks@gmail.com>
Date: Mon, 12 Sep 2016 22:21:57 +0530
Message-ID: <CAOH+1jE3VPT4XaM2pUpFQWAwbA3hJpSTAPe4oRAeSXwsFMv0pQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Remove ternary operator
To: Jes Sorensen <jes.sorensen@gmail.com>
Cc: outreachy-kernel@googlegroups.com, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset=UTF-8

On Mon, Sep 12, 2016 at 8:14 PM, Jes Sorensen <jes.sorensen@gmail.com> wrote:
> On 09/12/16 09:58, Bhumika Goyal wrote:
>> Relational and logical operators evaluate to either true or false.
>> Explicit conversion is not needed so remove the ternary operator.
>> Done using coccinelle:
>>
>> @r@
>> expression A,B;
>> symbol true,false;
>> binary operator b = {==,!=,&&,||,>=,<=,>,<};
>> @@
>> - (A b B) ? true : false
>> + A b B
>>
>> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> ---
>>  drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 8 ++++----
>>  drivers/staging/rtl8188eu/hal/phy.c           | 2 +-
>>  drivers/staging/rtl8188eu/hal/rtl8188e_dm.c   | 3 ++-
>>  3 files changed, 7 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
>> index 9544e55..b43f57be 100644
>> --- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
>> +++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
>> @@ -705,7 +705,7 @@ static int issue_probereq_ex(struct adapter *padapter,
>>       unsigned long start = jiffies;
>>
>>       do {
>> -             ret = issue_probereq(padapter, pssid, da, wait_ms > 0 ? true : false);
>> +             ret = issue_probereq(padapter, pssid, da, wait_ms > 0);
>>
>>               i++;
>>
>> @@ -1293,7 +1293,7 @@ int issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int pow
>>               da = pnetwork->MacAddress;
>>
>>       do {
>> -             ret = _issue_nulldata(padapter, da, power_mode, wait_ms > 0 ? true : false);
>> +             ret = _issue_nulldata(padapter, da, power_mode, wait_ms > 0);
>>
>>               i++;
>>
>> @@ -1420,7 +1420,7 @@ int issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int
>>               da = pnetwork->MacAddress;
>>
>>       do {
>> -             ret = _issue_qos_nulldata(padapter, da, tid, wait_ms > 0 ? true : false);
>> +             ret = _issue_qos_nulldata(padapter, da, tid, wait_ms > 0);
>>
>>               i++;
>>
>> @@ -1527,7 +1527,7 @@ static int issue_deauth_ex(struct adapter *padapter, u8 *da,
>>       unsigned long start = jiffies;
>>
>>       do {
>> -             ret = _issue_deauth(padapter, da, reason, wait_ms > 0 ? true : false);
>> +             ret = _issue_deauth(padapter, da, reason, wait_ms > 0);
>>
>>               i++;
>
> While this part of the patch is technically correct, I would argue it
> doesn't improve the code. It would make the code more readable to pass
> in the wait_ms value and then have the decision made based on that in
> the called function.
>

Ok, I will keep the wait_ms ternary operation as it is and send a v2.
Thanks for the input.

Thanks,
Bhumika

> Cheers,
> Jes
>

