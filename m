X-GM-THRID: 6802944332146933760
X-Received: by 2002:a81:98c7:: with SMTP id p190mr5510098ywg.200.1583965741493;
        Wed, 11 Mar 2020 15:29:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:aae8:: with SMTP id t95ls916999ybi.8.gmail; Wed, 11 Mar
 2020 15:29:00 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvIJ0SHSWSZXI7+M2v91L6ihrmMKAn8jffECQMuNvloHGMmJ0Mss4ic32MMAXn9bzRM4r4X
X-Received: by 2002:a25:cd46:: with SMTP id d67mr1057385ybf.352.1583965740130;
        Wed, 11 Mar 2020 15:29:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583965740; cv=none;
        d=google.com; s=arc-20160816;
        b=JpmLC78oO9XEoXrusgEH/xDlrJWgoVEaLaRESW8IraXkJt+w0knKmuAm7fwtwPjy8W
         8Dr6F69kwDEHKMRYOhje14v7iGdmPDw5BS3bRhj1JXjE/80H3gXG0bbniimEZB284kpK
         S12761jf7oGBq2Fl2ymITRbXxdE/6CdMhDdrKGoKaxcfIygi8Iiz7iloGfs5FqoFfaHc
         i0alnS1NzjR8uPnX84xYCvKr/Iww4ZRoft8Tqvv9E922EuciRXWmCt7xCsPJWg0P9voe
         4Os3tS+z44dF8b1ZEvx7ujfw4GokHFsCuxJNV6qRfnQiSg7qw6M58gdLWA8extbc1csU
         6hmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:from:to:subject:content-transfer-encoding:mime-version
         :references:in-reply-to:user-agent:date:dkim-signature;
        bh=OK2jvg8iIbxudu6ND4J8JJtzzocg+9lZtyCUh0iqcfs=;
        b=SE6iww1dBNi0NNmEnLLb3tUKBX6MTsY99b1b6Tilqgx5jB9K02UxzCzQO37iW7Z1Lb
         X3CMLMel7siJlUD3TVAx6iW2Em5h1Litr9Hr2FC3bWdENG9KqLYQG2oK/oE/oS2jvaS5
         +VvrzTDtXNT63cfD2jLH33ik6kxikDBDBQp/lalaIkkVf0sbsSRV9lPqMgZFpqnS079T
         gEZjfwX8TuVfVou9/a78v6coN+Z4RVAHJXJTokgrlvEVi9/FlYC5cpPE27AAQU3NG0iK
         GjieDBwYeSfSFuqpaBro5BzGwHoqpSnB4hULreDTd/vcBP195d16kfcCiN4rGtrsTYEy
         xzrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cNjnMmC5;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id x13si347856ybs.4.2020.03.11.15.29.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 15:29:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cNjnMmC5;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id a32so1120788pga.4
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 15:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:user-agent:in-reply-to:references:mime-version
         :content-transfer-encoding:subject:to:from:message-id;
        bh=OK2jvg8iIbxudu6ND4J8JJtzzocg+9lZtyCUh0iqcfs=;
        b=cNjnMmC5+csrT7n7xkH0NSj4vC7lV5+mQsK86AkZsmXEL8Ddsi1g9QpZqX0U58NqwU
         l1FldLSUdDzYy4r/dsZw502g/jEVxZDXMGCGyOSz6Ynye0NVU6V9bUM5D0nGDY5nx89t
         IU7PTinO4JYfVw9DBNKRCkXzJpoqHKN1XImHX0JH294EkDNNpXFY6lxCJ9r3QvyhyP7m
         skJzw12CpiJEcqgJDNIqP2j3gJbtuBCL6oxOj7j+y8g1FqYtb8rbp/Ebk+yRcq+Vfnsa
         COCA92W6WcakTBHakyj02K5Mflnv/qSf6FffeFsJ1gcEhDOf2r9zSRGCdtxSey/g6XCY
         nXwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:user-agent:in-reply-to:references
         :mime-version:content-transfer-encoding:subject:to:from:message-id;
        bh=OK2jvg8iIbxudu6ND4J8JJtzzocg+9lZtyCUh0iqcfs=;
        b=KX+upSVBzac2m7dgI8bdS2gCOc86U6UL8wOuMgESFy2EyssR+e2ShcZpeaLyFvUyPU
         PwTAlP6G7UgD9W3Xr6AMoFJ0kg4jwMa/O9He2l9ImEqM34IgoLqmkWIE/Oz5aycapV1s
         6EI4qxQtpmZDNPBQqrtXw81RmEl0OYEN/qX9Dz4hkfVixKtu3e2Plgjv2Rx9wWogSqCI
         FGBt7Uq7YQADhhCykchfDocckWkKX/Y4nWiBOtaOo7rVloGCxjqF76+5XsaY+UaTMEEm
         bG1MKBz6M8CFZ9ZXdng1jJ6NGhdEWs2eK6LwanSlkoQLJMnmzWG5E4Une6wmE5Zc9MWY
         sl8g==
X-Gm-Message-State: ANhLgQ3G8Ic32Xc2Ob/N29C5ohkEpkKsuEYEBLFTp6/u1QvzkmDqPwh7
	LtnHGo/baWgoWzAUymsUVoC5D5KB8y8=
X-Received: by 2002:a62:e20e:: with SMTP id a14mr4963341pfi.138.1583965739153;
        Wed, 11 Mar 2020 15:28:59 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from [192.168.0.100] ([113.193.33.106])
        by smtp.gmail.com with ESMTPSA id z1sm641860pfa.16.2020.03.11.15.28.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 15:28:58 -0700 (PDT)
Date: Thu, 12 Mar 2020 03:58:55 +0530
User-Agent: K-9 Mail for Android
In-Reply-To: <0fed25f914c6f39b024dd3bbc4f11892c40f4a60.camel@perches.com>
References: <20200311133811.2246-1-shreeya.patel23498@gmail.com> <0fed25f914c6f39b024dd3bbc4f11892c40f4a60.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: sdio_halinit: Remove unnecessary conditions
To: Joe Perches <joe@perches.com>,gregkh@linuxfoundation.org,devel@driverdev.osuosl.org,linux-kernel@vger.kernel.org,outreachy-kernel@googlegroups.com,sbrivio@redhat.com,daniel.baluta@gmail.com,nramas@linux.microsoft.com,hverkuil@xs4all.nl,Larry.Finger@lwfinger.net
From: Shreeya Patel <shreeya.patel23498@gmail.com>
Message-ID: <1CF27D55-EEB4-4A75-B767-A30845BD5E1B@gmail.com>

Hey Joe,

On March 11, 2020 10:56:29 PM GMT+05:30, Joe Perches <joe@perches=2Ecom> w=
rote:
>On Wed, 2020-03-11 at 19:08 +0530, Shreeya Patel wrote:
>> Remove if and else conditions since both are leading to the
>> initialization of "valueDMATimeout" and "valueDMAPageCount" with
>> the same value=2E
>
>You might consider removing the
>	/* Timeout value is calculated by 34 / (2^n) */
>comment entirely as it doesn't make much sense=2E
>

You want me to remove the other comments as well?
Since Julia suggested in another email that the comments are not useful if=
 we are removing the condition since they were applied to only one branch (=
 i=2Ee=2E "if" branch )


Thanks

>For what N is "(34 / (2 ^ N))" =3D 6 ?
>
>> diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit=2Ec
>b/drivers/staging/rtl8723bs/hal/sdio_halinit=2Ec
>[]
>> @@ -551,18 +551,11 @@ static void HalRxAggr8723BSdio(struct adapter
>*padapter)
>> =20
>>  	pregistrypriv =3D &padapter->registrypriv;
>> =20
>> -	if (pregistrypriv->wifi_spec) {
>> -		/*  2010=2E04=2E27 hpfan */
>> -		/*  Adjust RxAggrTimeout to close to zero disable RxAggr,
>suggested by designer */
>> -		/*  Timeout value is calculated by 34 / (2^n) */
>> -		valueDMATimeout =3D 0x06;
>> -		valueDMAPageCount =3D 0x06;
>> -	} else {
>> -		/*  20130530, Isaac@SD1 suggest 3 kinds of parameter */
>> -		/*  TX/RX Balance */
>> -		valueDMATimeout =3D 0x06;
>> -		valueDMAPageCount =3D 0x06;
>> -	}
>> +	/*  2010=2E04=2E27 hpfan */
>> +	/*  Adjust RxAggrTimeout to close to zero disable RxAggr, suggested
>by designer */
>> +	/*  Timeout value is calculated by 34 / (2^n) */
>> +	valueDMATimeout =3D 0x06;
>> +	valueDMAPageCount =3D 0x06;

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E

