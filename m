X-GM-THRID: 6949621312143753216
X-Received: by 2002:a0c:f78e:: with SMTP id s14mr8688663qvn.46.1618255072247;
        Mon, 12 Apr 2021 12:17:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:622a:1447:: with SMTP id v7ls7371365qtx.4.gmail; Mon, 12
 Apr 2021 12:17:51 -0700 (PDT)
X-Received: by 2002:ac8:6f46:: with SMTP id n6mr4779153qtv.40.1618255071401;
        Mon, 12 Apr 2021 12:17:51 -0700 (PDT)
Received: by 2002:ae9:e88c:0:b029:2e0:3a6d:aeb7 with SMTP id a134-20020ae9e88c0000b02902e03a6daeb7msqkg;
        Mon, 12 Apr 2021 05:48:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzkft3cOSbmX80gBIxasTr/68c4P/0ji1WoKE2mgrCo0HBBc5zBmLo8ph4z7cbmFmxyY3HL
X-Received: by 2002:adf:e34f:: with SMTP id n15mr31508801wrj.224.1618231707668;
        Mon, 12 Apr 2021 05:48:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618231707; cv=none;
        d=google.com; s=arc-20160816;
        b=Bg1jFQkgZn69PT+b5BbKpK3YyQYXAmKnY4/vkBiCyS9soRpEYL/v04hO9aW1vbu19H
         uZjsO7AAWFbp0w/42aDGPyLYfmuKbLU79V5GWeMJ32MmhywBrZKxc06VhtKswYPdFbiF
         sNSQuOQuYMyaEem61ytPpcoPx4YiDy5QezqiswPOyqvsCddk3sSlylF279hDY+C6TBq2
         cAA/ufwqKOIkRRlNCBXqlSK5pPxTcb+jU+z1AlGeiGRXn9ZgQ6wGC8HEVvZn5YPij3bp
         PBcuR4JkXKo1Y4vu71ClsPtnHBFIXkrw801caEIR7toT09Cuhiyz36UCAtCLYiWb2jM/
         oRfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:dkim-signature;
        bh=Zzn8PLES8svA7U4ivqAg78EhvER0rJvp6i6dRwiQrRU=;
        b=T8F40WelkaXxcwKI/TXetQw56URZEWb46KNQdTaaNNtje/MuKsnt6f78t8ZFqRbhK4
         kNmS6v0M/jxAAstESUDZ+FPEaBBkt3JcBJYnRMDtW1gpbXnBaVZb6b+eirtnuJG4W4YJ
         gCGCn7aEVaEcEwGBAxTLUUKTHwqB8WZ0sKvtyaxq9BI054sMhqNYYy/DorrMdwWhBy+N
         3DiZPekwmfuy1r9f6spoheis2sH1RANlQgM2TW1h4bZGE3w8GeMzz8GredbL/nk0dpxM
         Mkn6y/wObsm8BXfT9vyY8jY+0UIp24hpNJX0QbW5+RLoSk9Gd/o+fdTQMENEglixScEN
         rLYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623 header.b=0vF+qUbU;
       spf=pass (google.com: domain of narmstrong@baylibre.com designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=narmstrong@baylibre.com
Return-Path: <narmstrong@baylibre.com>
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com. [2a00:1450:4864:20::435])
        by gmr-mx.google.com with ESMTPS id o12si1065712wrw.1.2021.04.12.05.48.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 05:48:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of narmstrong@baylibre.com designates 2a00:1450:4864:20::435 as permitted sender) client-ip=2a00:1450:4864:20::435;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623 header.b=0vF+qUbU;
       spf=pass (google.com: domain of narmstrong@baylibre.com designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=narmstrong@baylibre.com
Received: by mail-wr1-x435.google.com with SMTP id c15so3851530wro.13
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 05:48:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Zzn8PLES8svA7U4ivqAg78EhvER0rJvp6i6dRwiQrRU=;
        b=0vF+qUbUyHuLYS0tOOZ2JC0sSS5+/Pg6RfJqDnCalNLMowGquE9SnNrWV3F9oMZPnx
         22l7O36faYtp0YsQI9AWg1Flud4AeAPR3J0guqRfUWqNCd6ReTkvp+qOUM+AuA+E2Lde
         +cWmxL+4hXGMApCJwp4EXBuNMaApciVcycVoG6qoBVB/NgWg6ln0klUfqTUaOHRpub3u
         Bg2JFXQYQYJ9NQJDce+Pq0OZgzgZoHnPjZLxf22VxnOnipYc99owUVbti+UkDOdEGxbX
         BdxGAPd2LKgh4T3n9BRQkKdM6/N2vV9F2lKWG4GIbN+D9wTdveLptyHcIv2kLceV3XKO
         HJZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=Zzn8PLES8svA7U4ivqAg78EhvER0rJvp6i6dRwiQrRU=;
        b=XkzOg2dD4cEzW0Jdx5+DxmiZaNblJmZfr7/lTocWsX6wiKaFp7vr1a4NdEV/ejPSPG
         nuEKC6ZIGDMAR9vf5nT1cJx0Mx2xGtFhPxaE/tE0mPW+9jzl95NrfEeeYXJwoZzsBLAQ
         vOl0Lb9v1OQO8DTV4b2N5tjKm/oExUUyAYQ0YKGCepixObQd/JDH+VGzLUueur5KOmwA
         cND4gTPYH1iquM2xwr07nydJk+inHpLHSW0G9MQJxko3ZOeCUbgMj5gFoZUMZu7kwfbC
         yyJwPgsjqglorKF68LrzHM9SRH5uCd1xTM3E8RZvbI/3gLIAcR7vlGvehCUBxqvyAI5c
         61Yg==
X-Gm-Message-State: AOAM533muFix7Wytl6JwlCV5fgCtqOWr2nV0EbqfUxrQtacgGnj+fVMJ
	+S94MkkQqc0I+ImtnujJHCRR8g==
X-Received: by 2002:adf:f504:: with SMTP id q4mr15535673wro.304.1618231707158;
        Mon, 12 Apr 2021 05:48:27 -0700 (PDT)
Return-Path: <narmstrong@baylibre.com>
Received: from ?IPv6:2a01:e0a:90c:e290:4c21:b00e:ff79:bf20? ([2a01:e0a:90c:e290:4c21:b00e:ff79:bf20])
        by smtp.gmail.com with ESMTPSA id j30sm17868537wrj.62.2021.04.12.05.48.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 05:48:26 -0700 (PDT)
Subject: Re: [PATCH v2] staging: media: meson: vdec: declare u32 as const and
 static const
To: Mitali Borkar <mitaliborkar810@gmail.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, mchehab@kernel.org,
 gregkh@linuxfoundation.org, khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 mitali_s@me.iitr.ac.in, linux-amlogic@lists.infradead.org
References: <YHIDufKhTEeuxyl5@kali>
 <88d04746-717d-5a7a-7ea7-67cf6c95aba9@xs4all.nl> <YHRA9i+BjveJOUvn@kali>
From: Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <6107204d-f1a3-0888-ef3b-88520d786fa1@baylibre.com>
Date: Mon, 12 Apr 2021 14:48:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <YHRA9i+BjveJOUvn@kali>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/04/2021 14:45, Mitali Borkar wrote:
> On Mon, Apr 12, 2021 at 11:17:22AM +0200, Hans Verkuil wrote:
>> On 10/04/2021 21:59, Mitali Borkar wrote:
>>> Declared 32 bit unsigned int as static constant inside a function and
>>> replaced u32[] {x,y} as canvas1, canvas2 in codec_mpeg12.c
>>> This indicates the value of canvas indexes will remain constant throughout execution.
>>> Replaced u32 reg_base and u32 reg_name with const u32 reg_base and const
>>> u32 reg_name as it will contain data/registry bases to write static
>>> const indexes declared above and will keep track of of contiguos
>>> registers after each reg_base.
>>> This makes code look better, neater. It improves readability.
>>>
>>> Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
>>> ---
>>>  drivers/staging/media/meson/vdec/codec_mpeg12.c | 5 +++--
>>
>> Also change drivers/staging/media/meson/vdec/codec_h264.c.
>>
>> It's a nice improvement, so let's do this for both callers of amvdec_set_canvases().
>>
> I have done chnages in codec_h264.c Now, should I send that as new
> patch?

Yes please,

Neil

> 
>> Regards,
>>
>> 	Hans
>>
>>>  drivers/staging/media/meson/vdec/vdec_helpers.c | 2 +-
>>>  drivers/staging/media/meson/vdec/vdec_helpers.h | 2 +-
>>>  3 files changed, 5 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/staging/media/meson/vdec/codec_mpeg12.c b/drivers/staging/media/meson/vdec/codec_mpeg12.c
>>> index 21e93a13356c..861d8584f22f 100644
>>> --- a/drivers/staging/media/meson/vdec/codec_mpeg12.c
>>> +++ b/drivers/staging/media/meson/vdec/codec_mpeg12.c
>>> @@ -65,6 +65,8 @@ static int codec_mpeg12_start(struct amvdec_session *sess)
>>>  	struct amvdec_core *core = sess->core;
>>>  	struct codec_mpeg12 *mpeg12;
>>>  	int ret;
>>> +	static const u32 canvas1[] = { AV_SCRATCH_0, 0 };
>>> +	static const u32 canvas2[] = { 8, 0 }
>>>  
>>>  	mpeg12 = kzalloc(sizeof(*mpeg12), GFP_KERNEL);
>>>  	if (!mpeg12)
>>> @@ -80,8 +82,7 @@ static int codec_mpeg12_start(struct amvdec_session *sess)
>>>  		goto free_mpeg12;
>>>  	}
>>>  
>>> -	ret = amvdec_set_canvases(sess, (u32[]){ AV_SCRATCH_0, 0 },
>>> -				  (u32[]){ 8, 0 });
>>> +	ret = amvdec_set_canvases(sess, canvas1, canvas2);
>>>  	if (ret)
>>>  		goto free_workspace;
>>>  
>>> diff --git a/drivers/staging/media/meson/vdec/vdec_helpers.c b/drivers/staging/media/meson/vdec/vdec_helpers.c
>>> index 7f07a9175815..df5c27266c44 100644
>>> --- a/drivers/staging/media/meson/vdec/vdec_helpers.c
>>> +++ b/drivers/staging/media/meson/vdec/vdec_helpers.c
>>> @@ -177,7 +177,7 @@ static int set_canvas_nv12m(struct amvdec_session *sess,
>>>  }
>>>  
>>>  int amvdec_set_canvases(struct amvdec_session *sess,
>>> -			u32 reg_base[], u32 reg_num[])
>>> +			const u32 reg_base[], const u32 reg_num[])
>>>  {
>>>  	struct v4l2_m2m_buffer *buf;
>>>  	u32 pixfmt = sess->pixfmt_cap;
>>> diff --git a/drivers/staging/media/meson/vdec/vdec_helpers.h b/drivers/staging/media/meson/vdec/vdec_helpers.h
>>> index cfaed52ab526..ace8897c34fe 100644
>>> --- a/drivers/staging/media/meson/vdec/vdec_helpers.h
>>> +++ b/drivers/staging/media/meson/vdec/vdec_helpers.h
>>> @@ -17,7 +17,7 @@
>>>   * @reg_num: number of contiguous registers after each reg_base (including it)
>>>   */
>>>  int amvdec_set_canvases(struct amvdec_session *sess,
>>> -			u32 reg_base[], u32 reg_num[]);
>>> +			const u32 reg_base[], const u32 reg_num[]);
>>>  
>>>  /* Helpers to read/write to the various IPs (DOS, PARSER) */
>>>  u32 amvdec_read_dos(struct amvdec_core *core, u32 reg);
>>>
>>


