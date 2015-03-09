X-GM-THRID: 7280184524800
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,ed889752b903c73f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.52.62.68 with SMTP id w4mr28661693vdr.1.1425931810202;
        Mon, 09 Mar 2015 13:10:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.135.221 with SMTP id r90ls304633ioi.73.gmail; Mon, 09 Mar
 2015 13:10:09 -0700 (PDT)
X-Received: by 10.50.26.40 with SMTP id i8mr31073186igg.8.1425931809979;
        Mon, 09 Mar 2015 13:10:09 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id gb13si2849408pac.2.2015.03.09.13.10.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 13:10:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padfa1 with SMTP id fa1so75092608pad.9
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2015 13:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=ALYowieASQGsJKFCcNJADTQ9QeHE+MrwIMR2aqc5/i4=;
        b=ECG2YzSeRCjkUxOxpxRKQSQA06hFuRTbhqf6NTbNQ6Vd67QYPWqfhWixq6atTVpz3h
         GqquKndBvhBqn6DORTplwm5lPNDY9SCn1eXi76lISY/q8rpM7taCjiIiRziwqvUQzi7S
         AAvKzgV1DPZhofri/osZnP62TKo8UJbICAuwZFo0ARthRt/c9WqHbyL5LCTSJ8mzfGXD
         jJZclpGAZ95nNBp6CO7MoKp9guYuxNOJDdb7jJSt1Rbvnp+Wi/8FdZuW5UXzkUKN0RI3
         +VtEUQ1ImYMOZfzzyI9yBQ7+l8afkPrj/hQwvy7xyZAeUT8QCaExeng6m1Y939t6s8p+
         5MXQ==
MIME-Version: 1.0
X-Received: by 10.66.164.200 with SMTP id ys8mr57547726pab.130.1425931809717;
 Mon, 09 Mar 2015 13:10:09 -0700 (PDT)
Received: by 10.70.140.13 with HTTP; Mon, 9 Mar 2015 13:10:09 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1503091636360.3136@hadrien>
References: <1425908752-7321-1-git-send-email-ciorneiioana@gmail.com>
	<alpine.DEB.2.10.1503091636360.3136@hadrien>
Date: Mon, 9 Mar 2015 22:10:09 +0200
Message-ID: <CAHWJYFnAs8OJDv36Gm=muWHm-kWKcP7PQiL7WZ9F7y_p26=83Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] drivers: staging: rtl8188eu: core:
 rtw_xmt: Delete spaces before tabs
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

Thank you for the advice, Julia.
And sorry for my clumsiness.

Ioana

On Mon, Mar 9, 2015 at 5:37 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> For the subject, you should be able to put just staging: rtl8188eu:.  You
> can do git log --oneline drivers/staging/rtl8188eu/core/rtw_xmit.cto see
> what subjects others have used for this file.
>
> Also, you can just send the patch to the outreachy mailing list.  Greg is
> subscribed.
>
> julia
>
> On Mon, 9 Mar 2015, Ioana Ciornei wrote:
>
>> This patch fixes the checkpatch.pl warning:
>>
>> WARNING: please, no space before tabs
>>
>> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
>> ---
>>  drivers/staging/rtl8188eu/core/rtw_xmit.c | 12 ++++++------
>>  1 file changed, 6 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
>> index 7a71df1..7a35c47 100644
>> --- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
>> +++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
>> @@ -94,7 +94,7 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
>>       }
>>       pxmitpriv->pxmit_frame_buf = (u8 *)N_BYTE_ALIGMENT((size_t)(pxmitpriv->pallocated_frame_buf), 4);
>>       /* pxmitpriv->pxmit_frame_buf = pxmitpriv->pallocated_frame_buf + 4 - */
>> -     /*                                              ((size_t) (pxmitpriv->pallocated_frame_buf) &3); */
>> +     /*                                              ((size_t) (pxmitpriv->pallocated_frame_buf) &3); */
>>
>>       pxframe = (struct xmit_frame *)pxmitpriv->pxmit_frame_buf;
>>
>> @@ -132,7 +132,7 @@ s32       _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
>>
>>       pxmitpriv->pxmitbuf = (u8 *)N_BYTE_ALIGMENT((size_t)(pxmitpriv->pallocated_xmitbuf), 4);
>>       /* pxmitpriv->pxmitbuf = pxmitpriv->pallocated_xmitbuf + 4 - */
>> -     /*                                              ((size_t) (pxmitpriv->pallocated_xmitbuf) &3); */
>> +     /*                                              ((size_t) (pxmitpriv->pallocated_xmitbuf) &3); */
>>
>>       pxmitbuf = (struct xmit_buf *)pxmitpriv->pxmitbuf;
>>
>> @@ -283,8 +283,8 @@ static void update_attrib_vcs_info(struct adapter *padapter, struct xmit_frame *
>>
>>       /*  (1) RTS_Threshold is compared to the MPDU, not MSDU. */
>>       /*  (2) If there are more than one frag in  this MSDU, only the first frag uses protection frame. */
>> -     /*              Other fragments are protected by previous fragment. */
>> -     /*              So we only need to check the length of first fragment. */
>> +     /*              Other fragments are protected by previous fragment. */
>> +     /*              So we only need to check the length of first fragment. */
>>       if (pmlmeext->cur_wireless_mode < WIRELESS_11_24N  || padapter->registrypriv.wifi_spec) {
>>               if (sz > padapter->registrypriv.rts_thresh) {
>>                       pattrib->vcs_mode = RTS_CTS;
>> @@ -413,7 +413,7 @@ static void set_qos(struct pkt_file *ppktfile, struct pkt_attrib *pattrib)
>>       /*  get user_prio from IP hdr */
>>       if (pattrib->ether_type == 0x0800) {
>>               _rtw_pktfile_read(ppktfile, (u8 *)&ip_hdr, sizeof(ip_hdr));
>> -/*           user_prio = (ntohs(ip_hdr.tos) >> 5) & 0x3; */
>> +/*           user_prio = (ntohs(ip_hdr.tos) >> 5) & 0x3; */
>>               user_prio = ip_hdr.tos >> 5;
>>       } else if (pattrib->ether_type == 0x888e) {
>>               /*  "When priority processing of data frames is supported, */
>> @@ -1469,7 +1469,7 @@ s32 rtw_xmitframe_enqueue(struct adapter *padapter, struct xmit_frame *pxmitfram
>>       if (rtw_xmit_classifier(padapter, pxmitframe) == _FAIL) {
>>               RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
>>                        ("rtw_xmitframe_enqueue: drop xmit pkt for classifier fail\n"));
>> -/*           pxmitframe->pkt = NULL; */
>> +/*           pxmitframe->pkt = NULL; */
>>               return _FAIL;
>>       }
>>
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425908752-7321-1-git-send-email-ciorneiioana%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

