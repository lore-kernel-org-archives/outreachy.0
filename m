X-GM-THRID: 6474240568402640896
X-Received: by 10.176.82.229 with SMTP id w34mr1204819uaw.23.1507405073874;
        Sat, 07 Oct 2017 12:37:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.6.199 with SMTP id 190ls298373vkg.16.gmail; Sat, 07 Oct
 2017 12:37:52 -0700 (PDT)
X-Received: by 10.176.21.178 with SMTP id i47mr1128716uae.119.1507405072979;
        Sat, 07 Oct 2017 12:37:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507405072; cv=none;
        d=google.com; s=arc-20160816;
        b=M1xibZg/EMLEHYGuU7eQul7/1w98E8kofVfKsKjNV2h+nlvZecZwlwSpeSXPvjsBt7
         M+MDGQLZsqObGCerns8Is2gcq1YhsPLiTHs1GG+GELwu/tBzClal0SFzcTm8YbsfchUd
         mpr2IB2qgqBRDIgwxxX5w8UEAaT+uGhzyVMtzxE7aa5UR11l1T2h57K89x57tai8IsSV
         moSD1TfAZ8RRIWhNsnOg8iEatkraer/ardwckj3Ulbn+YT7XD+D2bsNHsvuvOfLlf2um
         +xX4JPvDGm3Uur0kjo3ghAjakRq3ZhE42u5CR1xsXOYYZInASi8IO11M/CefikmEsffN
         jWJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=gXIrG4/T+XB3rJg6v3u0fJNIrFuHgthl+nSw+4TXMJ8=;
        b=lJvfjQk/Wh5HnmbESL0hcqpNHqC4rYcPNVt5hmsQASitiaK2zmPL4Va0jZNy4FdF7R
         OJARfb7bCpQSDw6cXy8jZKaifCoh3afRbOC8C1A73NbZZlpqay6h4dCMgxXlNvdfxpeI
         bcEV84b+leWWE9eHWu01fmpJHzMRcuzPHf5NLWehgxyX/Ldjxcwq6ASOLYUe0w+XWdSr
         1Rkhh8d3FzB9Cdhk3AJoVZrHPmWx4Iuo+tFTmOFz6JG+4fWOpEGyA40TpSguunN7jvH6
         SVbDIuhuYGB3+K5GRtWjOfgyyX8ypxN1UNUiYBphhsQebbE06/stYzdHCdxgwwHu4pWV
         rMkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KqAy4rsK;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c08::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-ua0-x244.google.com (mail-ua0-x244.google.com. [2607:f8b0:400c:c08::244])
        by gmr-mx.google.com with ESMTPS id w187si239835vkb.4.2017.10.07.12.37.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 12:37:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c08::244 as permitted sender) client-ip=2607:f8b0:400c:c08::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KqAy4rsK;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c08::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x244.google.com with SMTP id v24so3444114uav.3
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Oct 2017 12:37:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=gXIrG4/T+XB3rJg6v3u0fJNIrFuHgthl+nSw+4TXMJ8=;
        b=KqAy4rsK8V12/KPPYcZ+y869ZPgCJerVL064cV8nFTcoPxxF+2sBa5hGN+pMhLZOah
         zYge+ysy3xH7uDJ3DkWi1p6jSWeuEhI1w13295A0Gu2SPs9mErIWK06FliYrcpMZlk2K
         0ma9qJsJnCZtVTgl/4k+Sfc10RkCkR1xjd6BdpXWbGFAQCoIHU5PdXwhcSs/E7dnPH1M
         X0BCZ2Z+Xa7Z+fx3CM65hNI6HwKO6Q0g9+FMNYUFVwGXQvFqqwC9CWXTkH0Z90J+edG1
         7PjgXC5GenKOWSPmUdeRMettQzwhzacA1fzOdfvQ0KnhmaPx9hgLqok+MyKqxDTjEZRC
         8caw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=gXIrG4/T+XB3rJg6v3u0fJNIrFuHgthl+nSw+4TXMJ8=;
        b=andYoRGpC0sdnj6lAIGuMygmB8Y0tAI+s/N7zt6Af6cx32IGdDnrEA7d7ZNhA3D8QS
         lvMfedTUQP0WRTEjIaN7Bftb7CYhGIgfv9Nwwvcp3Z9VNpbBJbqYEYOjAVQOKGnwxg4r
         tfqSu9BE0t6vT9QBjFZ0XCaT6Cl2bINkUL+cFD0TZ21Ys2LNbYGCoNafIrwbpEI3eHtJ
         SRraLmoprGbNeIFd6v3bKMXQmeMzblk0vB/vOtXuHXgiVIgSlV58PRjhtOLentZFuDTN
         R1+JTUfJd0MqhShbRXMkrpzzbhyWfMpNk1S5k+/okBsmcPG95ou90LfWrTDgn7rtNrij
         bakQ==
X-Gm-Message-State: AMCzsaX9JGGb7ryVrmAHqTjnyfUbrMHGXKOHLtlTVX2l4ZS/ZCTVcWcR
	ETQ+rJK4tLfNxgmHJ5AoiFMXA7bJ2iu1xsNCnUf5oE0u
X-Google-Smtp-Source: AOwi7QA5YH6lD6AOsyQsE0kZIDNzJuUvps1jKQ7pxFlR0lZA1izanJXW+isYY8VK0iQcedU8PFoz6RTrdrq4WzBIu3I=
X-Received: by 10.159.50.130 with SMTP id l2mr3056795uab.46.1507405072617;
 Sat, 07 Oct 2017 12:37:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.63.140 with HTTP; Sat, 7 Oct 2017 12:37:52 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1710072119220.2071@hadrien>
References: <1507401578-26613-1-git-send-email-aastha.gupta4104@gmail.com> <alpine.DEB.2.20.1710072119220.2071@hadrien>
From: Aastha Gupta <aastha.gupta4104@gmail.com>
Date: Sun, 8 Oct 2017 01:07:52 +0530
Message-ID: <CAHXiS598RAKBpkEneC+3MB6XY7QHoE6s7MSaEQ4Q1V5ffkQQMA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: ieee80211: Replace
 list_for_each with list_for_each_entry
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

On Sun, Oct 8, 2017 at 12:49 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sun, 8 Oct 2017, Aastha Gupta wrote:
>
>> list_for_each is a macro that iterates over the elements of a list.
>> list_entry is a function that takes as argument a list pointer and
>> returns the structure that is pointed to.
>> list_for_each_entry is a macro that iterates over the structures in the
>> list, rather than exposing the list spine.
>>
>> Here the  list is only used for its entries,
>> and thus list_for_each_entry can be used instead of the
>> composition of list_for_each and list_entry.
>>
>> This patch is with the help of following Coccinelle script:
>>
>> @@
>> expression l, list;
>> type t1, t2;
>> identifier p, v;
>> iterator name list_for_each_entry, list_for_each;
>> @@
>>
>> - t1 *p;
>> ...
>> - list_for_each(p, l)
>> + list_for_each_entry(v, l, list)
>> {
>> ... when != p
>> - v = list_entry(p, t2, list);
>> ... when != p
>> }
>>
>> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
>> ---
>>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 4 +---
>>  1 file changed, 1 insertion(+), 3 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
>> index cbf8eb4..b8461f4 100644
>> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
>> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
>> @@ -447,13 +447,11 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
>>       switch (ieee->iw_mode) {
>>       case IW_MODE_ADHOC:
>>       {
>> -             struct list_head *p;
>>               struct ieee_ibss_seq *entry = NULL;
>>               u8 *mac = header->addr2;
>>               int index = mac[5] % IEEE_IBSS_MAC_HASH_SIZE;
>>
>> -             list_for_each(p, &ieee->ibss_mac_hash[index]) {
>> -                     entry = list_entry(p, struct ieee_ibss_seq, list);
>> +             list_for_each_entry(entry, &ieee->ibss_mac_hash[index], list) {
>>                       if (!memcmp(entry->mac, mac, ETH_ALEN))
>>                               break;
>>               }
>
> You can also drop the braces.
>
> julia

Braces after the list_for_each_entry in ieee80211_rx.c ?
>
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1507401578-26613-1-git-send-email-aastha.gupta4104%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

