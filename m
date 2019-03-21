X-GM-THRID: 6670775927443554304
X-Received: by 2002:a0c:9e2d:: with SMTP id p45mr2828696qve.28.1553171220716;
        Thu, 21 Mar 2019 05:27:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4889:: with SMTP id v131ls2398028qka.6.gmail; Thu, 21
 Mar 2019 05:27:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxk6yh2MupORGYOZ7jWu5uwjLDIRnMbw8tq92ttb2R6KjEWlXNgWS20eNME93Q3zxBEkGOr
X-Received: by 2002:a37:4e87:: with SMTP id c129mr2368066qkb.250.1553171220227;
        Thu, 21 Mar 2019 05:27:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553171220; cv=none;
        d=google.com; s=arc-20160816;
        b=GGTtnBxYXwe/+D/qa5YrhJuoqBkSdV3bCMgCXgdNrSDj56ZkGBDV4bv5ya/h5W5qim
         6VxGFRO4GmDaSJAcftesDwN1qIS7TtlsKjLeAXjn9PQpS3zU6fdpM63Bfer5QEDd9mmR
         B/NhaLu26eO0JPouKtEs0L8AfCWanS/tL4qY6EAIHnTHS7kXaYX9QwMt3j1Q2hXwN7yb
         3XHgOPblh1E0hbi1btjxv3kdul6mTC84MkQ+ws5v30eLLRvNTcjBSxYrX3/3ZKopx3Tl
         9C+WhBDOzNfUIv21IaJdFaNTSEsdL5CNN6usRQh4sZpBp5kQp4qn+nY3DOuidHNSjlvE
         rK2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:dkim-signature;
        bh=wGI7GG3YBq/VZ1o50xTTvErVcKHZAxuldWCp+NFAXTs=;
        b=RSAQfBSFquw/fZ8waIZQDMuSg4EtP+13Rf4pI5bTeATrLn6+et0StAXhAN4evlxBjg
         e+yuxwdtmWNQvw/LzQTAAsFcP1UVLKXLdxUxe1azf/Q5KtEIJK2BqiIyr4tFbXwtznhz
         Gff77xPIfwLLcPEhr1hBjceXNtz55cqaF265FPaLbwQz/SB2ZE38lyxsGlELs4DbhUaQ
         f/bd2wLtPpAXoP19MTya1JeIVi3QPM/kPy25ou3iyb9NHOR+k1GW2tFUj40YUix8XtlH
         f1+LaaAh5xdbbW3xvBkEUYkOttkWNM6jErTeRYMU5/Ko7LDWilEkqidJErtUCvpMUm0b
         o1eg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KMR5SiQC;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id v2si281520qka.0.2019.03.21.05.27.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 05:27:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KMR5SiQC;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id c207so4191591pfc.7
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 05:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=wGI7GG3YBq/VZ1o50xTTvErVcKHZAxuldWCp+NFAXTs=;
        b=KMR5SiQCCjLaYhznwfxjpm8WGpMzac1/SDiLAL4L48vo3c1Cn37yLafUIQY/092aJ2
         BFX7rYSFrQ9GzUcEIbhOZRVZR74yeH6u38q1wk0HJR7zx0IsgXCM7Yrs80X/ZdbmTKrk
         Ru98wy5kiKOJzIBhTxzq2S1c6MywSlM87DqzBPTknvrHitfdQNaNbhy2/1CGW8DLaWiD
         kRmpsAZann64hqiZvTjlOAMLLYi3yTINj8kzHijK0A7dvjbYDVco027ZYUG/gFAlHi4N
         BCAKaeQzuNeRObqP5HEe99g/3sMV9ka9VcS/KGjIljLP19s4nqpFyL0tp7F2vuKZKGVW
         Rkxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=wGI7GG3YBq/VZ1o50xTTvErVcKHZAxuldWCp+NFAXTs=;
        b=AVz//VpV6bcWgYnZ+uGWjyPkQFw0TQ0awSGMKsWSESS1ZjL9Xl/Lu71l3u5gMKiRqk
         wSiR7FB98z0nkDFpuhLGbRb3hQgAW6FQwbEOFwDeux8i3p8T5VvJey4uahMsM2d2jTiy
         l533CqbXDGLrN4NVkjV9KdCBpV7n3edy5Qn8z4+wagog7DJCdwoeVD0m1VDNGeyoHmPr
         tD/Gxl6M7M5l4KZ5LePTOJ6vOG492hjZ4mkgtEdz+jMF6wjbvfZfYTiGEX4CEMkqBF1T
         RINuHPSgB9y/0DYpJGc0yx9ewJqBC9jM6gX8jciZBd+ljsAeOBwDdKnic27p+G1JG7RO
         awCQ==
X-Gm-Message-State: APjAAAV3xntO0algGGOGIZRtaGyi+rOjpctDsS8SfRDZs1jwREr+Ch1O
	dsbgcRSPXCBh4IZgYhwl1us=
X-Received: by 2002:a17:902:5c5:: with SMTP id f63mr452034plf.64.1553171218965;
        Thu, 21 Mar 2019 05:26:58 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from [192.168.1.4] ([183.83.84.116])
        by smtp.gmail.com with ESMTPSA id b15sm14277541pfj.167.2019.03.21.05.26.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 05:26:58 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (1.0)
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: erofs: Use !x in place of NULL comparision
From: Bhanusree Mahesh <bhanusreemahesh@gmail.com>
X-Mailer: iPhone Mail (16D57)
In-Reply-To: <0a20b616-b2b9-9e38-3c0c-c8860cc41a0c@huawei.com>
Date: Thu, 21 Mar 2019 17:56:55 +0530
Cc: outreachy-kernel@googlegroups.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chao Yu <yuchao0@huawei.com>,
 "linux-erofs@lists.ozlabs.org" <linux-erofs@lists.ozlabs.org>,
 Miao Xie <miaoxie@huawei.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <87F3F71C-D738-4051-A9FF-A9C60520660B@gmail.com>
References: <20190321093716.8236-1-bhanusreemahesh@gmail.com> <0a20b616-b2b9-9e38-3c0c-c8860cc41a0c@huawei.com>
To: Gao Xiang <gaoxiang25@huawei.com>



> On Mar 21, 2019, at 15:42, Gao Xiang <gaoxiang25@huawei.com> wrote:
>=20
> Hi Bhanusree,
>=20
>> On 2019/3/21 17:37, Bhanusree Pola wrote:
>> Test for NULL as !x instead of NULL comparisions for
>> functions that return NULL on failure are used.
>> Issue found using coccinelle
>> Semantic patch used to solve the problem is as follows
>>=20
>=20
> My personal idea...There are still several other places which use
> NULL comparisions introduced by the erofs original code, eg,
> super.c
> 53:     if (vi =3D=3D NULL)
> 90:     if (bh =3D=3D NULL) {
> ...
>=20
> internal.h
> 480:                    if (unlikely(bio =3D=3D NULL)) {
> 488:    } while (unlikely(bio =3D=3D NULL));
> ...
>=20
> Could you have time fix them as much as possible in a patch?
>=20
> It will simplify erofs commit log since there are similar
> patches address the same reason but with few fixes...:
>=20
> staging: erofs: unzip_vle.c: Replace comparison to NULL.
> staging: erofs: Modify conditional checks
> staging: erofs: formatting fix to NULL comparison
>=20
> ... Thanks in advance...

Sure!! I=E2=80=99ll do that and resend.

Bhanusree
>=20
> Thanks,
> Gao Xiang
>=20
>> // <smpl>
>> @@
>> expression x;
>> statement S;
>> @@
>>=20
>> x =3D (\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|
>> usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\)(...));
>>=20
>> -if(x=3D=3DNULL)
>> +if(!x)
>> // </smpl>
>>=20
>> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
>> ---
>> drivers/staging/erofs/xattr.c | 2 +-
>> 1 file changed, 1 insertion(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/staging/erofs/xattr.c b/drivers/staging/erofs/xattr.=
c
>> index f716ab0446e5..515b4b446491 100644
>> --- a/drivers/staging/erofs/xattr.c
>> +++ b/drivers/staging/erofs/xattr.c
>> @@ -107,7 +107,7 @@ static int init_inode_xattrs(struct inode *inode)
>>    vi->xattr_shared_count =3D ih->h_shared_count;
>>    vi->xattr_shared_xattrs =3D kmalloc_array(vi->xattr_shared_count,
>>                        sizeof(uint), GFP_KERNEL);
>> -    if (vi->xattr_shared_xattrs =3D=3D NULL) {
>> +    if (!vi->xattr_shared_xattrs) {
>>        xattr_iter_end(&it, atomic_map);
>>        ret =3D -ENOMEM;
>>        goto out_unlock;
>>=20
>=20
> --=20
> You received this message because you are subscribed to the Google Groups "=
outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an e=
mail to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid=
/outreachy-kernel/0a20b616-b2b9-9e38-3c0c-c8860cc41a0c%40huawei.com.
> For more options, visit https://groups.google.com/d/optout.

