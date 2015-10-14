X-GM-THRID: 6205438272605257728
X-Received: by 10.194.94.66 with SMTP id da2mr537984wjb.7.1444816871460;
        Wed, 14 Oct 2015 03:01:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.96.163 with SMTP id dt3ls1275971wib.42.canary; Wed, 14 Oct
 2015 03:01:10 -0700 (PDT)
X-Received: by 10.180.189.49 with SMTP id gf17mr5306873wic.6.1444816870931;
        Wed, 14 Oct 2015 03:01:10 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id hs5si904026wib.1.2015.10.14.03.01.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 03:01:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id q8so72739184wij.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 03:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=lrjQm7jEKVxOissRdObUMYp5AWIf/Iti9mhrWzDeQ0k=;
        b=doBvESlzF2Q88jq8oBqiVUm4A+B/R4jvwlHVOQ1sg1U3YJxzjnrHI/oVA5tml2p0xy
         4m+SWqiQsYk1JkwJTfGByW62TQ3Or5Ei80yMMWA079fOYOMq7XRRmhboKbEXsbxUfE1g
         hr24zCZ+9pE3v5nkV9RhjnxhL+wq1TgIW+oHmyX2oxgMt0bmS708mtB6U8YW4sF6nydo
         nbJPw6P58d4lkA3Qkgd+yJUj30XgbXI4AUio5XA9QnTpMH1MMvZfF1cdVeiER7Yh7qD3
         iyYpBpFL+16Pa0R2be6OkL51yku1BpUgX3nnWYio4laNi7ssv+c+xhBWPnxaDfaaoDUC
         Rffg==
MIME-Version: 1.0
X-Received: by 10.194.116.197 with SMTP id jy5mr2964472wjb.86.1444816870827;
 Wed, 14 Oct 2015 03:01:10 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Wed, 14 Oct 2015 03:01:10 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510141157410.2421@hadrien>
References: <20151014094929.GA3545@ubuntu>
	<alpine.DEB.2.10.1510141157410.2421@hadrien>
Date: Wed, 14 Oct 2015 15:31:10 +0530
Message-ID: <CAKHNQQFEsiyH4kprV40QD2GLKXf-xX_=8b8wUbv=33JSYeSF2w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8723au: rtw_mlme_ext:
 Remove irrelevant test expression
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 14, 2015 at 3:28 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Wed, 14 Oct 2015, Shivani Bhardwaj wrote:
>
>> Logical and-ing of a struct and its member should be replaced by the
>> member only as the struct has already been tested before for true value.
>
> I think it woud be better to say "non-null".  Even though it is true that
> && is a boolean operator, that should take true and false as arguments,
> that's not really what is being tested for here.
>
> julia
>
All right.
Thank you.

>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>> Changes in v2:
>>       -Fix mistakes in commit message.
>>
>>  drivers/staging/rtl8723au/core/rtw_mlme_ext.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/rtl8723au/core/rtw_mlme_ext.c b/drivers/staging/rtl8723au/core/rtw_mlme_ext.c
>> index fca22ba..d28f29a 100644
>> --- a/drivers/staging/rtl8723au/core/rtw_mlme_ext.c
>> +++ b/drivers/staging/rtl8723au/core/rtw_mlme_ext.c
>> @@ -1715,7 +1715,7 @@ OnAssocReq23a(struct rtw_adapter *padapter, struct recv_frame *precv_frame)
>>       spin_unlock_bh(&pstapriv->asoc_list_lock);
>>
>>       /*  now the station is qualified to join our BSS... */
>> -     if (pstat && pstat->state & WIFI_FW_ASSOC_SUCCESS &&
>> +     if (pstat->state & WIFI_FW_ASSOC_SUCCESS &&
>>           status == WLAN_STATUS_SUCCESS) {
>>               /* 1 bss_cap_update & sta_info_update23a */
>>               bss_cap_update_on_sta_join23a(padapter, pstat);
>> --
>> 2.1.0
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151014094929.GA3545%40ubuntu.
>> For more options, visit https://groups.google.com/d/optout.
>>

