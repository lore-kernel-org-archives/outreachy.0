X-GM-THRID: 6471369058680832000
X-Received: by 10.129.103.139 with SMTP id b133mr14407329ywc.11.1506751279274;
        Fri, 29 Sep 2017 23:01:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.112.67 with SMTP id l64ls352956ywc.17.gmail; Fri, 29 Sep
 2017 23:01:18 -0700 (PDT)
X-Received: by 10.129.82.8 with SMTP id g8mr14995040ywb.126.1506751278466;
        Fri, 29 Sep 2017 23:01:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506751278; cv=none;
        d=google.com; s=arc-20160816;
        b=oYDHSA4MpImlLqjo28pIGyRQNdcYVPchFSZ/m9FsF24hEHMAOe/oNRtykhu+20xKVr
         KqmPCN2uYGzQID/SIUOxefd53u3/gt8ZjOUH2BJ7wvsK8vUUkQjLOQvVJopyyMu6DRiQ
         bunu85oAbLl2q9Xc6aOe2o99pQYiP7JQr82/WWnwJ05gz1PAwI+npXa9oWows4SazlIt
         7fsp26BMJ9+gK2yZO4vSmwU7g3K5APS4A5VlNCVe3Z5Algl68MilIGiyJFQ1LIG7yFXY
         IQcJZPqADqlZDqjWJqjCo6Fd21Nj5yr54Fh6kY/Qn3CrUxuq3931UimZB/q050tEIPJU
         0JmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=m5hyMr0BQKValdJ6pVsAbB4UYh+PhWAegOAbFmZ9dc8=;
        b=qexmbtB2eGTkOeIOEYtlQSm5xAn0slhAwaywVwFE7IZVcemk2soTPkmmiMNVnVDVaa
         1FSBKkD11P3sZVhciZsPhIrHqHbW3lHlSoD/lZyvgObpYLExROVFg2Fuz8/ZPILkiz+V
         hOr6bvGmCLf/o8EyfhTvNLlyfDgTI4LtYJFwuLyw8+hNoQtuSveUUfWlcGzIIjwFAKcA
         ejCeb3TI917RRNC7ZmvK5QHJRLD/gkw1zyV6YqVpmXdw12gYzFoHNpcbc7WMVZaL63Zh
         iVarjq1MWfOtQR4e/BQPwYsBwReJp9jwr04o4dR4a1eJSChyj7xSiF7zwsG0rzQgo20C
         WmXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TKCR+heE;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qk0-x241.google.com (mail-qk0-x241.google.com. [2607:f8b0:400d:c09::241])
        by gmr-mx.google.com with ESMTPS id y80si358280ywd.26.2017.09.29.23.01.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 23:01:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) client-ip=2607:f8b0:400d:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TKCR+heE;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x241.google.com with SMTP id z14so1033160qkg.3
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Sep 2017 23:01:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=m5hyMr0BQKValdJ6pVsAbB4UYh+PhWAegOAbFmZ9dc8=;
        b=TKCR+heEZSFkzJW1XzowI+RAOATWG47tZF0ZFwbh7KT7BwjvvWmzvaryKPrnW3il9j
         OOvQjTPTUftRtVUvBCY1006AqJ0QnVz8MSc5mqGqMmpJd1eUgL95HvJLBkFzgxqX9i3v
         8oTug1MCIRo4hiswkCXWBas/wQ5z5IeAz0kaQEx9ikN9tO+UCMSTN49Mfz3Edc0zwp9b
         +4jDNMgSzWGcOSM0kBuwYGZd0n6VYBC02+/n62Et/gc32ZRB7FIw41ydysLa9QPD15kS
         /3dkFthMFIY1FnVwZZ6WpHDIAeZTEQ+nX+YijFVBF5kQUyUgz2gDKh7YwpDauChDXg0R
         e/DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=m5hyMr0BQKValdJ6pVsAbB4UYh+PhWAegOAbFmZ9dc8=;
        b=CWtkS9IVuwlZSyCwtP5R24aVg1b1Wu7F8L7HptJTpKOIDSxxPgBHfkCXQQvll0XuQO
         6iA5pAawvi/APOaVxPSY1z5uoTi7vMmC39S4paS6ge1jp9mifsG7NI5VoM8g0k72Gmh7
         1Bafz99Qy3eopcXfjnLIplrKExCBuu72A6wluJvrfgIgPdBv3ae2UpR+FOjTeE7wdCsF
         LaUzJcR6/wjC3KnUdAjpOhEbD8KghTxycdKpedcujiX2PBUv3dpXIBg1zxLoFPt1J0Uz
         Ls37vkr5KxGhtj4We66c06xtWmixG4VZJKVBK9r079m2F8Hjw5ueEZtpmJZwW9+wZrmI
         cOfA==
X-Gm-Message-State: AMCzsaW96vCOxkxctSlUO5+wrQi5mVIIfXWwW6SfK6V6MIY7pqfYw6ec
	rncTts0iGBAkgbE5T0GoS1BdVLFT+LmxhsKbVlw=
X-Google-Smtp-Source: AOwi7QDwbOzmc00IMyY91mvSb6ZvpCApMQSbaVtPHl6iMaVIEa1mb4jgXK6qZcvpFz8cUaApf2gtCfd5YObetzVO+v0=
X-Received: by 10.55.122.130 with SMTP id v124mr6557507qkc.209.1506751278126;
 Fri, 29 Sep 2017 23:01:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.57.196 with HTTP; Fri, 29 Sep 2017 23:01:17 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709300702330.2511@hadrien>
References: <1506734581-10932-1-git-send-email-srishtishar@gmail.com> <alpine.DEB.2.20.1709300702330.2511@hadrien>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Sat, 30 Sep 2017 11:31:17 +0530
Message-ID: <CAB3L5oz0BXtxrWKXFPG0MqM7tGFrbjT376Hjz1GM2KHox_DDcQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: core: Use
 list_entry instead of container_of
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Sat, Sep 30, 2017 at 10:35 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sat, 30 Sep 2017, Srishti Sharma wrote:
>
>> For variables of the type struct list_head* use list_entry to access
>> the current list element instead of using container_of.
>> Done using the following semantic patch by coccinelle.
>>
>> @r@
>> identifier e;
>> struct list_head* l;
>> @@
>>
>> <... when != l == NULL
>> l;
>> ...>
> I don't see what is the goal of the above code.  The list_head variable is
> not going to be in a statement by itself.  There is also no need to check
> for l being NULL.  If it is NULL, the original code is incorrect too.

Since only those container_of are to replaced with list_entry which
have a variable of type list_head*  , I wanted to check if it occurs
anywhere before
container_of , which it only does in it's declaration , because it
can't be in any
statement by itself . I think it will be better to write .

@r@
identifier e;
struct list_head* l;
@@

<...
container_of(l,...);
...>

e =
-container_of
+list_entry
     (
      ....)

>> (
>> e =
>> -container_of
>> +list_entry
>>      (
>>       ...)
>> )
>
> Here you don't need the outer ( ).  This makes a disjunction with only
> one choice.  Since there is only one choice, you don't need the
> disjunction.

Thanks a lot , for pointing out the errors .

Regards,
Srishti
> julia
>
>> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>> ---
>>  drivers/staging/rtl8188eu/core/rtw_sta_mgt.c | 12 ++++++------
>>  1 file changed, 6 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
>> index 22cf362..f9df4ac 100644
>> --- a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
>> +++ b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
>> @@ -152,8 +152,8 @@ u32       _rtw_free_sta_priv(struct       sta_priv *pstapriv)
>>                       while (phead != plist) {
>>                               int i;
>>
>> -                             psta = container_of(plist, struct sta_info,
>> -                                                 hash_list);
>> +                             psta = list_entry(plist, struct sta_info,
>> +                                               hash_list);
>>                               plist = plist->next;
>>
>>                               for (i = 0; i < 16; i++) {
>> @@ -323,7 +323,7 @@ u32       rtw_free_stainfo(struct adapter *padapter, struct sta_info *psta)
>>               plist = phead->next;
>>
>>               while (!list_empty(phead)) {
>> -                     prframe = container_of(plist, struct recv_frame, list);
>> +                     prframe = list_entry(plist, struct recv_frame, list);
>>
>>                       plist = plist->next;
>>
>> @@ -399,7 +399,7 @@ void rtw_free_all_stainfo(struct adapter *padapter)
>>               plist = phead->next;
>>
>>               while (phead != plist) {
>> -                     psta = container_of(plist, struct sta_info, hash_list);
>> +                     psta = list_entry(plist, struct sta_info, hash_list);
>>
>>                       plist = plist->next;
>>
>> @@ -435,7 +435,7 @@ struct sta_info *rtw_get_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
>>       plist = phead->next;
>>
>>       while (phead != plist) {
>> -             psta = container_of(plist, struct sta_info, hash_list);
>> +             psta = list_entry(plist, struct sta_info, hash_list);
>>
>>               if ((!memcmp(psta->hwaddr, addr, ETH_ALEN)) == true) {
>>                       /*  if found the matched address */
>> @@ -493,7 +493,7 @@ u8 rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr)
>>       phead = get_list_head(pacl_node_q);
>>       plist = phead->next;
>>       while (phead != plist) {
>> -             paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
>> +             paclnode = list_entry(plist, struct rtw_wlan_acl_node, list);
>>               plist = plist->next;
>>
>>               if (!memcmp(paclnode->addr, mac_addr, ETH_ALEN)) {
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1506734581-10932-1-git-send-email-srishtishar%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

