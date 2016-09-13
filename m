X-GM-THRID: 6329524753040146432
X-Received: by 10.25.206.200 with SMTP id e191mr3453799lfg.3.1473760577053;
        Tue, 13 Sep 2016 02:56:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.14.207 with SMTP id 198ls707436wmo.3.canary; Tue, 13 Sep
 2016 02:56:16 -0700 (PDT)
X-Received: by 10.28.43.129 with SMTP id r123mr2551742wmr.6.1473760576506;
        Tue, 13 Sep 2016 02:56:16 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-lf0-x244.google.com (mail-lf0-x244.google.com. [2a00:1450:4010:c07::244])
        by gmr-mx.google.com with ESMTPS id a126si1033908wmd.1.2016.09.13.02.56.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 02:56:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) client-ip=2a00:1450:4010:c07::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x244.google.com with SMTP id s64so6993976lfs.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 02:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=6/QGcIjsMBDnCQBi8vvHUJLIRuWIQhGhC9UHCJBCwiA=;
        b=SWywTacysgzgSeNbpiH5zSBFV+zj2KfZEOFcoIX13PUf/rPLOk8QzRRPwAcgs4pFT7
         VFBaAlRQ7ZdkMPAjX5WA0zGA/ddfeh8/BuoBa2DguRh11F3PEexnZvmZH1iPWftIYtj7
         Nd+Q2aR6QF8dDFagB7v/jtPAdKdQNI/dXCH4w2BKpOJgSLJ3lTentiFlE+tUCeXW7vjS
         Rbl1Frc76TbA4DWWEYYQae16rJ4EEd6deZb2JlqWWEg16SjmiwDHHhXxzLXXJf6ErMGf
         n6qfMfRolMxD1cvcJcDgYgB0fk8KX68uaigawSc/RZVTxKSMb3VJY6kz5hte+tOnvmsG
         GKsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=6/QGcIjsMBDnCQBi8vvHUJLIRuWIQhGhC9UHCJBCwiA=;
        b=e+qJAKsaxz5ISGUlbhztdApMfFS5gB5DEwZMl0hG5pEe82T1HAEDHTRphQxhLJ2FoL
         VoodeqaRdmalESgN0PJvR0c7iGjqg5pGDDiWSu1EEy1ydAbZQ89B4sHmNVDlPA4kv8dn
         glgfpbaw4IyarzwICjJ3emKSTsw/Z+glVmvYp/HjZjDTpG97mD4ks2C0lTvJDUZA17ne
         0OZiZrN9o0SALcNnfem08B0fQW0OuG1tNZ7936JHeTxhF6nHhOk+wuBd8G2ZGqLuGZxo
         3N5PbAo15mt0J4q0QBSvR3J8h7uj4xvgslDZBJ9S+Tj4qDCRBy5EviyVk++ws2QGDXR0
         +xVw==
X-Gm-Message-State: AE9vXwMeqYFWc7xDt/qmpFb6Ha9z6mw8vSKhMapIJ8smmW1y9U6OnRM/RI0h5sitvvXUG6N6ViMg0uTiV8PP9w==
X-Received: by 10.25.208.213 with SMTP id h204mr7746981lfg.147.1473760575889;
 Tue, 13 Sep 2016 02:56:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.78.72 with HTTP; Tue, 13 Sep 2016 02:56:15 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609122318060.3549@hadrien>
References: <1473707299-29700-1-git-send-email-bhumirks@gmail.com> <alpine.DEB.2.10.1609122318060.3549@hadrien>
From: Bhumika Goyal <bhumirks@gmail.com>
Date: Tue, 13 Sep 2016 15:26:15 +0530
Message-ID: <CAOH+1jEzPD5tGuKsFFqGBiVTWJ=Qt+Vtf=_zm2SBnH5A4w4Ucw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: Remove unused
 function vnt_key_init_table
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Tue, Sep 13, 2016 at 2:48 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Tue, 13 Sep 2016, Bhumika Goyal wrote:
>
>> The function vnt_key_init_table is not used anywhere in the kernel.
>> Therefore, remove the function definition and prototype.
>> Grepped to find occurences.
>>
>> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> ---
>>  drivers/staging/vt6655/key.c | 10 ----------
>>  drivers/staging/vt6655/key.h |  2 --
>>  2 files changed, 12 deletions(-)
>>
>> diff --git a/drivers/staging/vt6655/key.c b/drivers/staging/vt6655/key.c
>> index ffcaf25..e161d5d 100644
>> --- a/drivers/staging/vt6655/key.c
>> +++ b/drivers/staging/vt6655/key.c
>> @@ -31,16 +31,6 @@
>>  #include "key.h"
>>  #include "mac.h"
>>
>> -int vnt_key_init_table(struct vnt_private *priv)
>> -{
>> -     u32 i;
>> -
>> -     for (i = 0; i < MAX_KEY_TABLE; i++)
>> -             MACvDisableKeyEntry(priv, i);
>
> Nice to see things go.  Did you check whether there are other uses of
> MAX_KEY_TABLE and MACvDisableKeyEntry?
>

Yes, both are getting used a couple of times. I will look for other unused ones.

Thanks,
Bhumika

> julia
>
>> -
>> -     return 0;
>> -}
>> -
>>  static int vnt_set_keymode(struct ieee80211_hw *hw, u8 *mac_addr,
>>       struct ieee80211_key_conf *key, u32 key_type, u32 mode,
>>       bool onfly_latch)
>> diff --git a/drivers/staging/vt6655/key.h b/drivers/staging/vt6655/key.h
>> index 261f818..d7271974 100644
>> --- a/drivers/staging/vt6655/key.h
>> +++ b/drivers/staging/vt6655/key.h
>> @@ -61,8 +61,6 @@
>>
>>  struct vnt_private;
>>
>> -int vnt_key_init_table(struct vnt_private *);
>> -
>>  int vnt_set_keys(struct ieee80211_hw *hw, struct ieee80211_sta *sta,
>>                struct ieee80211_vif *vif, struct ieee80211_key_conf *key);
>>
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1473707299-29700-1-git-send-email-bhumirks%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

