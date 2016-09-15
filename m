X-GM-THRID: 6330628880333799424
X-Received: by 10.66.165.71 with SMTP id yw7mr8052963pab.3.1473969877345;
        Thu, 15 Sep 2016 13:04:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.44.182 with SMTP id p51ls4201385otb.29.gmail; Thu, 15 Sep
 2016 13:04:36 -0700 (PDT)
X-Received: by 10.129.27.2 with SMTP id b2mr7712351ywb.36.1473969876961;
        Thu, 15 Sep 2016 13:04:36 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x242.google.com (mail-yw0-x242.google.com. [2607:f8b0:4002:c05::242])
        by gmr-mx.google.com with ESMTPS id y77si486997ywd.7.2016.09.15.13.04.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 13:04:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::242 as permitted sender) client-ip=2607:f8b0:4002:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x242.google.com with SMTP id g192so3442318ywh.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 13:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=xnBFS3umHgrCBKOIyeVNTahseglLLqXkMEv3HIiLME8=;
        b=eOhrJ/yaVQVXwsXka6IeBR8OuQVB2sAJSxroXPORJV9Kctm7csq/S6glmqTZF3hTmj
         5NgRKCxfqlLk2IcH54P/pKrdbl7K/pHiyYHGKBy7DcRwVgeGI0NV/8P6aso6nKoqa04T
         Lb5vrn8cJx1kVnAszNU7PB+zPdHPAjsZtHEIEmaR1jC23eIFGxYxlO/GO769mBX3g4y4
         ULIzDVhCNtQyxAr48fT2KBsSOfebnqr7w+gda7DLbLl5tVAzxtzKm9M7UNHfh1hgOFWf
         lI2LwGXl5e62UJ9fUdy4yHNFfKrwnEnjh5tK3MloBMG6AezZ73WR6SSPG9j+C1g6midP
         wyYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=xnBFS3umHgrCBKOIyeVNTahseglLLqXkMEv3HIiLME8=;
        b=GqUkyR8XOH/f90cNVhbwU+EbLXI7oRHTRdMB8E1ndRqxmSYZq6RR/xsOql1A0IqFfV
         qUH6Giyd1Jk67HwRNQY4OZtvCovDSVZ9p7hCWjl8iebTreszDX86Ngt2MG7hXee8oi/L
         HnKHHRuBuayUYBddU7I75dDghUKa38YFeEDs2+e4R6K14saiGPySsjqBzefX8XCunmNo
         RW2JD/LN8bf2LcctVhQ+Lyk3PxA5RI+kJNEH5LW2X94vi2TGdT/3B3IV1CfynkFbAT8n
         jnTZyd6eJP077Z3xFujfnBsMpn+cpxs+mu1MJZC803jeUDTeFRaNj8eRQq37quojFXRL
         Vbdg==
X-Gm-Message-State: AE9vXwMjOudMBMDv6jinHu5UpVd9Dol3WeuWKispC0t+9hwVHZ/cHS+osgBIkJYtL1LlRPyhkVJb8gPtL2WfQw==
X-Received: by 10.129.71.9 with SMTP id u9mr11823383ywa.115.1473969876702;
 Thu, 15 Sep 2016 13:04:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.41.132 with HTTP; Thu, 15 Sep 2016 13:03:56 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609152121250.3364@hadrien>
References: <20160915183258.GA13583@sayli-HP-15-Notebook-PC> <alpine.DEB.2.10.1609152121250.3364@hadrien>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Fri, 16 Sep 2016 01:33:56 +0530
Message-ID: <CAKG5xWjYNmRRR80YcMGA9OHeFxQ92UfZ4rz=xifKR27PmHL7Lg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Remove unnecessary
 'else' after a 'return' statement
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, William Hubbs <w.d.hubbs@gmail.com>, 
	Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>, 
	Samuel Thibault <samuel.thibault@ens-lyon.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Fri, Sep 16, 2016 at 12:52 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Fri, 16 Sep 2016, sayli karnik wrote:
>
>> This patch resolves the following issue detected by checkpatch.pl:
>> WARNING: else is not generally useful after a break or return.
>>
>> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
>> ---
>>  drivers/staging/speakup/keyhelp.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
>> index ce94cb1..ab56d89 100644
>> --- a/drivers/staging/speakup/keyhelp.c
>> +++ b/drivers/staging/speakup/keyhelp.c
>> @@ -178,7 +178,7 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
>>               synth_printf("%s\n", spk_msg_get(MSG_HELP_INFO));
>>               build_key_data(); /* rebuild each time in case new mapping */
>>               return 1;
>> -     } else {
>> +     }
>>               name = NULL;
>
> This looks suspicious.  If you drop the else, then the code afterwards
> should be less indented.
>
>>               if ((type != KT_SPKUP) && (key > 0) && (key <= num_key_names)) {
>>                       synth_printf("%s\n",
>> @@ -201,7 +201,7 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
>>               synth_printf(spk_msg_get(MSG_KEYDESC), name);
>>               synth_printf("\n");
>>               return 1;
>> -     }
>> +
>
> Now you will end up with a return followed by an assignment.  So that
> would be dead code.  You need to check carefully that the transformation
> makes sense with regards to the code that is actually in the else branch.
>
> julia
>
Yes, this will lead to dead code. My bad!

Thanks!
>>       name = spk_msg_get(MSG_FUNCNAMES_START + cur_item);
>>       func = funcvals[cur_item];
>>       synth_printf("%s", name);
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160915183258.GA13583%40sayli-HP-15-Notebook-PC.
>> For more options, visit https://groups.google.com/d/optout.
>>

