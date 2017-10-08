X-GM-THRID: 6474617042668355584
X-Received: by 10.31.108.86 with SMTP id h83mr605626vkc.58.1507490893726;
        Sun, 08 Oct 2017 12:28:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.159.56.109 with SMTP id q42ls808990uad.18.gmail; Sun, 08 Oct
 2017 12:28:12 -0700 (PDT)
X-Received: by 10.176.90.133 with SMTP id w5mr1653013uae.122.1507490892865;
        Sun, 08 Oct 2017 12:28:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507490892; cv=none;
        d=google.com; s=arc-20160816;
        b=i9kZxNtmQWcfsoGeZcNeLmiUOts/ansISDNp1677RkRXvzIiye6wXToXxoDZlqS2Rk
         SuqMif51pcjUECJx0doqmu7rWHFy4s0ITZqwxdf1XDvNmqIL8ICrvo8U7EVise0QgrXE
         ZTdum9yhEGOHZJj9aQz+JYpLXnuqiKs9/Qnklq4X/WUaiMBxL4j6UxoGALKyNiMd27TM
         yJ4Ouqo5mhyPVVkma6ttbmNE1dC9pGvQO90clxqDJWFkU+X4MKDWcenQNBAc7yqCQjDR
         RFu0UjC8D1NKZVSLs5iu8z+yoDkpzNJ2vDBzmxsZC4DE2xNilwL+fZH5TjdvNLsOqeyL
         NM7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=LO7fYsDz2BynKIY6hx+BanyPghFNEKUwlaxrjWYNVow=;
        b=rzu/mmJuoiBgxaPSGSnxVbtO9YLPt2QTHZW8Ua1fYwUXxuflQMefWrndF08Ngf7Ykk
         1gqpCGA0mp2YaJAW40mmmTIihVwKZTggPhZzcuNR86wq2Mh6JuWYO+1FXSJpHvD+z9iS
         ELCJXKpBs8fiXvp63S5eFOEYwng5QDkGY3jY7sIri6WOtLKIVqCBpcfLD7fXNnG2FllR
         5UTDo1533M9YSRgrR3hv/E6IdLVCNMEembV5NFy6mv51F0NqqSNP/fc/lOpR8U7zMTI1
         gifijFo5kmwMwdvXP0I7CCxNnzyggTtm7Gxf5er2GAod2bucahUcPf1icPtWiSwSyTJe
         8/bA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eRbQq7T2;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-ua0-x242.google.com (mail-ua0-x242.google.com. [2607:f8b0:400c:c08::242])
        by gmr-mx.google.com with ESMTPS id v125si330222vkg.12.2017.10.08.12.28.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Oct 2017 12:28:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::242 as permitted sender) client-ip=2607:f8b0:400c:c08::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eRbQq7T2;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x242.google.com with SMTP id 97so7328438uai.2
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Oct 2017 12:28:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=LO7fYsDz2BynKIY6hx+BanyPghFNEKUwlaxrjWYNVow=;
        b=eRbQq7T2xQP+OqQi9DZInXS3BS1qZT803MqGxTuZZYYkXwiesqaqlssvxTXWwGFIUh
         9zzTtgKO93Yjr40AZ4V+jyl4zFCfHzu+fK8VLmlTtbP5KW7jliwstbM5tp2tbDlFJoiI
         6ZPQDZqU63lDvfGPrXkfF9jC2MJm9X5RWOPjvcPTOnygHc31Zm2enP2Mj44fZ05Dx4Gc
         Qe1VUa/WHtO0GP1qN0mfbVwaCRuvUwLR6MrSnttsZni8Rmn/qbwiMaEoX8RJU+mFHOje
         Xv3+hmuKLKkJG8OoAWe+ckl6Q7C1HjFiKy0Ofyge3QIMvM+TFjR7uUn0ZJrAy1qChDCM
         sKpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=LO7fYsDz2BynKIY6hx+BanyPghFNEKUwlaxrjWYNVow=;
        b=sL2TcFM0lsTPhmOF7NMQLHFAEH9b0yVMymp7DvECiPd70w2BKYIpetz/HbEx2wzuZB
         kQNEhNVg05CPHyB84rCMjjlKk5Lj8bhsC+ejasB6vB8JeSbC+E4S+PIEpBoXdlaptzJT
         1CuBQ8ZGDvNy3dhxVr46mPfsw9pPb09ZlNLQVHZlZb4K8lEQidEUmRPtAcJf9rQhUFtN
         kuawexqXU8UZDJTu4fM8cEYnauj1j0US3vRZzzZY/rTnqpIAgtMZGglFYzES+VulCt+j
         B5V+J+H3kVpwzqu01qxeFkkE4Qr7XZP3RR1WIseAD2shvyJh1stt7JhhJByYYZWIlOVt
         4hEg==
X-Gm-Message-State: AMCzsaXPOwg5jbmSXMPPp2m8DjO6S2bQ9oDS6d1qLNn7FLF5Ot5FeIXr
	VbgD+ZbjnvwYon7tCqAUKMlZkOZOcpi0LoChCBQ=
X-Google-Smtp-Source: AOwi7QAPkNcsW2WBVbGc2nb4yC1VG5lOGngvhVj4LjjbafbpBZKkL+MF0wiXIC7lEpdYqDqINY4uCBlv6mWVJAj3Uz8=
X-Received: by 10.176.86.70 with SMTP id z6mr4663887uaa.103.1507490892547;
 Sun, 08 Oct 2017 12:28:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.68.26 with HTTP; Sun, 8 Oct 2017 12:28:12 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1710082104010.2160@hadrien>
References: <20171008185825.21202-1-harshasharmaiitr@gmail.com> <alpine.DEB.2.20.1710082104010.2160@hadrien>
From: Harsha Sharma <harshasharmaiitr@gmail.com>
Date: Mon, 9 Oct 2017 00:58:12 +0530
Message-ID: <CANMOCy1X_FBbSEkJmqkwDZZ5KAvdhXEAH6kuzuuJ-1tdTDm5Lw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] src: buffer is not null terminated
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Pablo Neira Ayuso <pablo@netfilter.org>, netfilter-devel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, Oct 9, 2017 at 12:36 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> The subject line is not very clear.  Apparently, some buffer (which one?)
> is not null terminated (but what will you do about it?).  It would be
> better to say what is done inthe subject line, eg Use snprintf rather than
> strncpy, and then as you already do explain why the change is desirable in
> the commit log.  Then one is somehow better oriented to what is going on.
>

Hi,
Thanks for your feedback.
I have sent another version for the patch.
Thanks for your time :)

Regards,
Harsha Sharma

> julia
>
> On Mon, 9 Oct 2017, Harsha Sharma wrote:
>
>> Use snprintf() over strncpy() functions as the buffer is not null
>> terminated in strncpy().
>>
>> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
>> ---
>>  src/datatype.c | 2 +-
>>  src/iface.c    | 4 ++--
>>  src/netlink.c  | 4 ++--
>>  3 files changed, 5 insertions(+), 5 deletions(-)
>>
>> diff --git a/src/datatype.c b/src/datatype.c
>> index 94b1224..9439ea3 100644
>> --- a/src/datatype.c
>> +++ b/src/datatype.c
>> @@ -858,7 +858,7 @@ static uint32_t str2int(char *tmp, const char *c, int k)
>>       if (k == 0)
>>               return 0;
>>
>> -     strncpy(tmp, c-k, k+1);
>> +     snprintf(tmp, k+1, "%s", c-k);
>>       return atoi(tmp);
>>  }
>>
>> diff --git a/src/iface.c b/src/iface.c
>> index 9936388..d0e1834 100644
>> --- a/src/iface.c
>> +++ b/src/iface.c
>> @@ -53,7 +53,7 @@ static int data_cb(const struct nlmsghdr *nlh, void *data)
>>       iface = xmalloc(sizeof(struct iface));
>>       iface->ifindex = ifm->ifi_index;
>>       mnl_attr_parse(nlh, sizeof(*ifm), data_attr_cb, tb);
>> -     strncpy(iface->name, mnl_attr_get_str(tb[IFLA_IFNAME]), IFNAMSIZ);
>> +     snprintf(iface->name, IFNAMSIZ, "%s", mnl_attr_get_str(tb[IFLA_IFNAME]));
>>       list_add(&iface->list, &iface_list);
>>
>>       return MNL_CB_OK;
>> @@ -139,7 +139,7 @@ char *nft_if_indextoname(unsigned int ifindex, char *name)
>>
>>       list_for_each_entry(iface, &iface_list, list) {
>>               if (iface->ifindex == ifindex) {
>> -                     strncpy(name, iface->name, IFNAMSIZ);
>> +                     snprintf(name, IFNAMSIZ, "%s", iface->name);
>>                       return name;
>>               }
>>       }
>> diff --git a/src/netlink.c b/src/netlink.c
>> index d5d410a..f69a5b9 100644
>> --- a/src/netlink.c
>> +++ b/src/netlink.c
>> @@ -386,7 +386,7 @@ static void netlink_gen_verdict(const struct expr *expr,
>>       switch (expr->verdict) {
>>       case NFT_JUMP:
>>       case NFT_GOTO:
>> -             strncpy(data->chain, expr->chain, NFT_CHAIN_MAXNAMELEN);
>> +             snprintf(data->chain, NFT_CHAIN_MAXNAMELEN, "%s", expr->chain);
>>               data->chain[NFT_CHAIN_MAXNAMELEN-1] = '\0';
>>               break;
>>       }
>> @@ -2915,7 +2915,7 @@ static int netlink_events_newgen_cb(const struct nlmsghdr *nlh, int type,
>>               case NFTA_GEN_PROC_NAME:
>>                       if (mnl_attr_validate(attr, MNL_TYPE_NUL_STRING) < 0)
>>                               break;
>> -                     strncpy(name, mnl_attr_get_str(attr), sizeof(name));
>> +                     snprintf(name, sizeof(name), "%s", mnl_attr_get_str(attr));
>>                       break;
>>               case NFTA_GEN_PROC_ID:
>>                       if (mnl_attr_validate(attr, MNL_TYPE_U32) < 0)
>> --
>> 2.11.0
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171008185825.21202-1-harshasharmaiitr%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

