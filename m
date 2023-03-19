Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C32101846
	for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 14:49:43 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id w9so37680678edc.3
        for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 07:49:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679237382;
        h=subject:cc:from:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=x7Ullj2jneQE6yCdANSA6gHIiBeOSTC9RnKDy+w7B3U=;
        b=jjU1wQS8t6PbCdJmksmwPb502XJMG2iC0WYgr808NldSHz3TaVfNnJr30DMAds9TAo
         KsqhfYuOs0C6h5QVKwqkpG5+Cdohc92QUnZf92rVkgLSCYBKtHKTagN9w0zJgfqGdoDG
         oBAodc4jjRoGmnqnh5yz4rijvNHUQJxvWM9iFlr2VMBzFhlajJF70wkZoJ9G5RT+FhoQ
         gC/1tlM4xLliRIa6lXhsOTC1wmDpraJ6hShHPoo6BD0NOskiukTz1CwjLW4jn6rjzabm
         mOmB/cRNBwW5W0gtbOGY3TLYaTGScuBUyr3xNwfu2t0WjCySxSyITl59XIeUebuolWwQ
         cbBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679237382;
        h=subject:cc:from:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x7Ullj2jneQE6yCdANSA6gHIiBeOSTC9RnKDy+w7B3U=;
        b=vR5f9V/OEmRjf2XWdvRNtKQ5HMF408GihqX3liiG1VrVoj5920rU0ipefQmyOugfqh
         SXAp2DB54hPJIkJUbk5DKZnWKH8nMdOd7w36re7V0Npdm9mMjKefz+S4bVn5lDrwjBWH
         1oMvyaBhha9whgjhgnh90HkuFfbmvKdmlNxhX2o2+JH1YX2PwswVeMEXVzbz77WQlPQC
         TFqm49d4UjYoHj1vZ2ZkPFzBzr5nHxObBJ8PRbhHXh972o5ykqGKBhZ8Yj/dzVVl4TO5
         yd9L6DBxzeAirxl4AhlbZAA3wUuxK1GybB/qsDlnJbjtRMI5TT0NW4+XLR5ZO0FukpF1
         CZ1A==
X-Gm-Message-State: AO0yUKVycnSe2rjbE6FwGcpRHOXLL6dbqECpHNL/VDGkCAwQBMSA0NYK
	f0ESFg2O83cvZ7hyYrKE33FRPh+BKMo=
X-Google-Smtp-Source: AK7set93sTNBRn/A4bp1Ccy6qayQWpEg19kPgF7JAfclQifVTgRmqTM23LqpcKLkRF4WZvZk9KX2DQ==
X-Received: by 2002:aa7:cc09:0:b0:4fb:59bb:ce6f with SMTP id q9-20020aa7cc09000000b004fb59bbce6fmr10231158edt.35.1679237381948;
        Sun, 19 Mar 2023 07:49:41 -0700 (PDT)
Received: from [192.168.1.16] ([41.42.177.251])
        by smtp.gmail.com with ESMTPSA id s15-20020a1709060c0f00b00928e0ea53e5sm3290216ejf.84.2023.03.19.07.49.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 07:49:41 -0700 (PDT)
Content-Type: multipart/mixed; boundary="------------0Hd6Bh40EZeEOMy0fVPB014m"
Message-ID: <16c61a62-c149-bf0e-0dd7-21e4ba9c6d1d@gmail.com>
Date: Sun, 19 Mar 2023 16:49:40 +0200
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Julia Lawall <julia.lawall@inria.fr>
From: Menna Mahmoud <eng.mennamahmoud.mm@gmail.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: warning when converting `to_gbphy_dev` into inline function

This is a multi-part message in MIME format.
--------------0Hd6Bh40EZeEOMy0fVPB014m
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Julia,

I tried to convert to_gbphy_dev to inline function but got these 
warnings while building:


```

drivers/staging/greybus/gbphy.c: In function ‘gbphy_dev_uevent’:
drivers/staging/greybus/gbphy.c:76:61: warning: passing argument 1 of 
‘to_gbphy_dev’ discards ‘const’ qualifier from pointer target type 
[-Wdiscarded-qualifiers]
    76 |         const struct gbphy_device *gbphy_dev = to_gbphy_dev(dev);
|                                                             ^~~
In file included from drivers/staging/greybus/gbphy.c:18:
drivers/staging/greybus/gbphy.h:22:64: note: expected ‘struct device *’ 
but argument is of type ‘const struct device *’
    22 | static inline struct gbphy_device *to_gbphy_dev(struct device *dev)
       | ~~~~~~~~~~~~~~~^~~
```

I tried to figure out the issue but don't know how to solve it, I 
attached the patch. Could you please check it?


Thanks in advance,

Menna

--------------0Hd6Bh40EZeEOMy0fVPB014m
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-staging-greybus-use-inline-function-for-to_gbphy_dev.patch"
Content-Disposition: attachment;
 filename*0="0001-staging-greybus-use-inline-function-for-to_gbphy_dev.pa";
 filename*1="tch"
Content-Transfer-Encoding: base64

RnJvbSBkMzEyNWEyN2ZhNjA5ODdkNDk2MTBlZGRhZTRkZDFhY2UwZWM0MjRiIE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBNZW5uYSBNYWhtb3VkIDxlbmcubWVubmFtYWhtb3Vk
Lm1tQGdtYWlsLmNvbT4KRGF0ZTogU3VuLCAxOSBNYXIgMjAyMyAxNjozODozMSArMDIwMApT
dWJqZWN0OiBbUEFUQ0hdIHN0YWdpbmc6IGdyZXlidXM6IHVzZSBpbmxpbmUgZnVuY3Rpb24g
Zm9yIHRvX2dicGh5X2RldgoKQ29udmVydCB0b19nYnBoeV9kZXYgbWFjcm8gaW50byBpbmxp
bmUgZnVuY3Rpb24KClN1Z2dlc3RlZC1ieTogSnVsaWEgTGF3YWxsIDxqdWxpYS5sYXdhbGxA
aW5yaWEuZnI+ClNpZ25lZC1vZmYtYnk6IE1lbm5hIE1haG1vdWQgPGVuZy5tZW5uYW1haG1v
dWQubW1AZ21haWwuY29tPgotLS0KIGRyaXZlcnMvc3RhZ2luZy9ncmV5YnVzL2dicGh5Lmgg
fCA5ICsrKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvZ3JleWJ1cy9nYnBoeS5o
IGIvZHJpdmVycy9zdGFnaW5nL2dyZXlidXMvZ2JwaHkuaAppbmRleCAxZGU1MTA0OTk0ODAu
LjBhNzcyYjkwY2RlMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL2dyZXlidXMvZ2Jw
aHkuaAorKysgYi9kcml2ZXJzL3N0YWdpbmcvZ3JleWJ1cy9nYnBoeS5oCkBAIC0xNSw4ICsx
NSwxNCBAQCBzdHJ1Y3QgZ2JwaHlfZGV2aWNlIHsKIAlzdHJ1Y3QgbGlzdF9oZWFkIGxpc3Q7
CiAJc3RydWN0IGRldmljZSBkZXY7CiB9OwotCisvKgogI2RlZmluZSB0b19nYnBoeV9kZXYo
ZCkgY29udGFpbmVyX29mKGQsIHN0cnVjdCBnYnBoeV9kZXZpY2UsIGRldikKKyovCisKK3N0
YXRpYyBpbmxpbmUgc3RydWN0IGdicGh5X2RldmljZSAqdG9fZ2JwaHlfZGV2KHN0cnVjdCBk
ZXZpY2UgKmRldikKK3sKKwlyZXR1cm4gY29udGFpbmVyX29mKGRldiwgc3RydWN0IGdicGh5
X2RldmljZSwgZGV2KTsKK30KIAogc3RhdGljIGlubGluZSB2b2lkICpnYl9nYnBoeV9nZXRf
ZGF0YShzdHJ1Y3QgZ2JwaHlfZGV2aWNlICpnZGV2KQogewpAQCAtNDQsNyArNTAsNiBAQCBz
dHJ1Y3QgZ2JwaHlfZHJpdmVyIHsKIAogCXN0cnVjdCBkZXZpY2VfZHJpdmVyIGRyaXZlcjsK
IH07Ci0KICNkZWZpbmUgdG9fZ2JwaHlfZHJpdmVyKGQpIGNvbnRhaW5lcl9vZihkLCBzdHJ1
Y3QgZ2JwaHlfZHJpdmVyLCBkcml2ZXIpCiAKIGludCBnYl9nYnBoeV9yZWdpc3Rlcl9kcml2
ZXIoc3RydWN0IGdicGh5X2RyaXZlciAqZHJpdmVyLAotLSAKMi4zNC4xCgo=

--------------0Hd6Bh40EZeEOMy0fVPB014m--
