X-GM-THRID: 6692949458944
X-Received: by 10.152.36.132 with SMTP id q4mr1645647laj.6.1425571114783;
        Thu, 05 Mar 2015 07:58:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.5.166 with SMTP id t6ls339324lat.83.gmail; Thu, 05 Mar
 2015 07:58:31 -0800 (PST)
X-Received: by 10.112.130.70 with SMTP id oc6mr1680809lbb.13.1425571111512;
        Thu, 05 Mar 2015 07:58:31 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-lb0-x230.google.com (mail-lb0-x230.google.com. [2a00:1450:4010:c04::230])
        by gmr-mx.google.com with ESMTPS id wz2si522493lbb.0.2015.03.05.07.58.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 07:58:31 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::230 as permitted sender) client-ip=2a00:1450:4010:c04::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::230 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by lbiz12 with SMTP id z12so24406385lbi.12
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Mar 2015 07:58:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=SnKWdlqoy+UrRDIqYjUAACeHQG6F68Pof2VW8ANDEXo=;
        b=kJmL3h62pox3AEfRhO/huVD8N1bLUhoyuT6mHPTLlRJhgeNObmVNf3fc3PFQAAAZ4R
         CWW1UuWdaw4h3AStSbCRAfaUKgbp/heHfwMpC8QDMDWvN4fk8iECittjdno0FcIgXkTW
         ajIUfSRB7hMl4HnMrdbD/ykfHkS4ucz8GNZ+sTiu0oguW/cao8FnLzX3j3MjviPje9nQ
         BHlFbSp/9TYhRoTgYul62E6ja9zqa1FKpIXtuwW8g+CYPmNkaXgtaoYvzphp0rqMEJmW
         HT9Y+J5VyJgkXpMwnd6f6q10B1KSmBJZfYXW1OW+YXfqwO+4VrO3re5soUYcwWlA4NTZ
         kddQ==
MIME-Version: 1.0
X-Received: by 10.112.159.195 with SMTP id xe3mr8825812lbb.64.1425571111404;
 Thu, 05 Mar 2015 07:58:31 -0800 (PST)
Received: by 10.114.221.8 with HTTP; Thu, 5 Mar 2015 07:58:31 -0800 (PST)
In-Reply-To: <54F7B36D.2060801@gmail.com>
References: <1425511958-1021-1-git-send-email-ksenija.stanojevic@gmail.com>
	<54F7B36D.2060801@gmail.com>
Date: Thu, 5 Mar 2015 16:58:31 +0100
Message-ID: <CAL7P5j+_Hy5uR0ko8hAotJ0rCAsSyK_FrYwx3Bp+d8yO0CF7jA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Simplify if condition
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Jes Sorensen <jes.sorensen@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 5, 2015 at 2:37 AM, Jes Sorensen <jes.sorensen@gmail.com> wrote:
> On 03/04/15 18:32, Ksenija Stanojevic wrote:
>> This patch simplifies if condition using following Coccinelle script:
>> @@ bool a; symbol true; @@
>> (
>> - a != true
>> + !a
>> |
>> - a == true
>> + a
>> )
>> @@ bool a; symbol false; @@
>> (
>> - a != false
>> + a
>> |
>> - a == false
>> + !a
>> )
>>
>> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
>> ---
>>  drivers/staging/rtl8192u/r8192U_wx.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> The patch is correct, however you should write a proper commit message
> rather than just relying on the coccinelle script.
>
> It's important to try and show in a commit message that you know why you
> made the changes, and not just comply with an automated tool.
>
> Cheers,
> Jes

 Thanks for advice however it's not a message from automated tool, it was late
when I sent this patch and I was very tired. Also I previously sent
similar patches with
 better explanation.
But i will try to always include why I did ceratain change.

Ksenija

>
>> diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
>> index b5a26f3..8359705 100644
>> --- a/drivers/staging/rtl8192u/r8192U_wx.c
>> +++ b/drivers/staging/rtl8192u/r8192U_wx.c
>> @@ -335,7 +335,7 @@ static int r8192_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
>>       if (!priv->up)
>>               return -ENETDOWN;
>>
>> -     if (priv->ieee80211->LinkDetectInfo.bBusyTraffic == true)
>> +     if (priv->ieee80211->LinkDetectInfo.bBusyTraffic)
>>               return -EAGAIN;
>>       if (wrqu->data.flags & IW_SCAN_THIS_ESSID) {
>>               struct iw_scan_req *req = (struct iw_scan_req *)b;
>>
>

