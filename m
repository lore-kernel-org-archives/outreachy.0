X-GM-THRID: 6205554058197991424
X-Received: by 10.112.209.73 with SMTP id mk9mr1706926lbc.14.1444891956525;
        Wed, 14 Oct 2015 23:52:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.148.143 with SMTP id w137ls105010lfd.105.gmail; Wed, 14 Oct
 2015 23:52:35 -0700 (PDT)
X-Received: by 10.112.209.73 with SMTP id mk9mr1706913lbc.14.1444891955938;
        Wed, 14 Oct 2015 23:52:35 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id c7si1027546wiy.3.2015.10.14.23.52.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 23:52:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id gb1so13883433wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 23:52:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=VghefSXsTfd4eJjb9V4RGt36prps/6664ddcyr3mNFY=;
        b=xP7ozjbbn3UvWolMAYMrVe+LMEpC4MAnVvIYWmUDZWSv30KPyOo9p3UE1J+CQqvx3K
         YKzNh8ZR5krCwLLwzK5iDrfQdV8vtSf83Bt5yaDvNniYtgOOKSTqR+0v5lBSSnQoJHZf
         bzkVV+UoMVjtD3+Q8qwgOcwUaB5t8a09xyZVuyxBm9djE1o7+3EQBcFK6oDfUZqqXtgu
         WdVxxkbDcaP4/Eaen9Qeexjcq9ql1cfYlGuzk8KeC0sWa5NJJqPkj3YUk6HsW++lCAqa
         KpvkqalptSxlUhKg+8V3fgYsaGagno+ldOlMi7xhc0OIzIPcyk3U7PppuXOg+Xo8QJcS
         UPhw==
MIME-Version: 1.0
X-Received: by 10.194.52.6 with SMTP id p6mr9559389wjo.119.1444891955825; Wed,
 14 Oct 2015 23:52:35 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Wed, 14 Oct 2015 23:52:35 -0700 (PDT)
In-Reply-To: <20151015065035.GC3134@sudip-pc>
References: <20151014171850.GA19220@ubuntu>
	<20151015065035.GC3134@sudip-pc>
Date: Thu, 15 Oct 2015 12:22:35 +0530
Message-ID: <CAKHNQQHwsnzcxqvkTS-TVwZXOp5OLOADndP0V6wLJJnFTaY9EQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieee80211_rx:
 Remove unnecessary code
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 15, 2015 at 12:20 PM, Sudip Mukherjee
<sudipm.mukherjee@gmail.com> wrote:
> On Wed, Oct 14, 2015 at 10:48:50PM +0530, Shivani Bhardwaj wrote:
>> The variable frame_authorized is declared and mentioned in the code but
>> is not used anywhere so, it should be removed. Also, two case statements
>> are merged by removing an extra break.
> <snip>
>> @@ -1106,10 +1105,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>>               switch (hostap_handle_sta_rx(ieee, dev, skb, rx_stats,
>>                                            wds != NULL)) {
>>               case AP_RX_CONTINUE_NOT_AUTHORIZED:
>> -                     frame_authorized = 0;
>> -                     break;
>>               case AP_RX_CONTINUE:
>> -                     frame_authorized = 1;
>>                       break;
>
> Just a doubt, it now becomes:
>         case AP_RX_CONTINUE_NOT_AUTHORIZED:
>         case AP_RX_CONTINUE:
>                 break;
>
> If these two cases are not doing anything then what is the use of having
> them here in the switch-case?
>
> regards
> sudip

Because we don't have a default case here and the variable in switch
might still get these values based on some other code.

