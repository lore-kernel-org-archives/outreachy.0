X-GM-THRID: 6948397950015897600
X-Received: by 2002:a05:6512:2214:: with SMTP id h20mr2505985lfu.130.1617799967292;
        Wed, 07 Apr 2021 05:52:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:e86:: with SMTP id 128ls1904328lfo.0.gmail; Wed, 07 Apr
 2021 05:52:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyvZhq4EN838200AD+vLdoWzvi8Zphn29pl4py0avkWCukG7FxKTNbUISWkgFY92d0oM2rL
X-Received: by 2002:a05:6512:1324:: with SMTP id x36mr318991lfu.189.1617799965586;
        Wed, 07 Apr 2021 05:52:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617799965; cv=none;
        d=google.com; s=arc-20160816;
        b=EckldFB+n5uWo9WKIKXRUvwRXcIE3xaO99i+F6iEhRZmGe1b8WtD9cAoHjbL5fgMlg
         0u+/Zbb3IY/m1E77Ru2RDcs579A3ZquysXWclyl4KKu76l0a+WUn/TA19SCgkOW3hey5
         SnYGvI+VH9mDS0VupuFjULVkgIalgfJTdxZy6oLc9+ezMfIJawbbP1zdPLZHhh6Z8h1h
         9DE6s53PXWkdZmNiBMn8+RhOgbN65eVslS+PWzmDaspoPs038SuW5nfPzeV7SC5cx9+Y
         EHyGivYhuXArDqwmmX6PLvFzY2BeXjw7sJW4NXGL0dep426MhKyTb98xm7lyIjel4ml+
         j3/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:mime-version:user-agent
         :date:message-id:subject:from:to:dkim-signature;
        bh=M/yJIRS5pcg1OAEqwjm9pWF36BpUOIWf3oePfwJfbw8=;
        b=enxjtxPx+IpfPxeOUttGaviKEjkZ3XYvyUy3RcPvzaypNDcRGFWeSdJqTYKGE0kLHt
         shUSmvYwfdsGn9hlrRbDPJWtFMlYeuYxVoQKw5u5WdvZKUkJitU73ujLyQHnNDDK7uZ1
         YAd8WcHPQsebHDnGELxLr1cfCQMxe9RIeLw6zuAUYp0kj0uEm8qtzVCBUxZd1ARxBvEO
         OUe0gA/uWQQQYLFVk+mGaQB8To5hsNPxvcsOBdqxTOAPWOmCvLyE/6c0cfeSmJLx2ovW
         /nQ6ur6YtOlw2urC6dqxSa1EL3LhnARC73zH6moodT3ZV7SYmpznfvNx05dQFNYepkh6
         jLiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pu7JXdFA;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com. [2a00:1450:4864:20::434])
        by gmr-mx.google.com with ESMTPS id a10si1842374lfs.11.2021.04.07.05.52.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 05:52:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) client-ip=2a00:1450:4864:20::434;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pu7JXdFA;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x434.google.com with SMTP id a4so923773wrr.2
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Apr 2021 05:52:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language;
        bh=M/yJIRS5pcg1OAEqwjm9pWF36BpUOIWf3oePfwJfbw8=;
        b=pu7JXdFArA9lc2GJx9SHasCxQbR5fBwbb+PqSM/UnFOjCWypYdL8HAE+fpLUcbP4Wn
         5LzzeqGQlFoewQhVWOttRrE/RpS1Usx9xK6H+7Pt9jwv6g93VWdqfSse3Ou0rL91lGWh
         WTUg/tlJ816XXDOwEoVxkkIptGn1dS68fy2j0yQxPVHAivOAMsP6x2BDHlaUFgtxDkWa
         SJDhiTJmaAKaICE2jDqdtswvZEWtdejt4cPwaA1kDOARaw+QzrL9xqe/OW2MvlaUAGJ3
         WAqNBqtaytPw8oilpoB7la3pUY6RGfPMfk81C8v3yMAKLcsAJkVVIfMKGiqrUSZ6HW+Z
         QPlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding:content-language;
        bh=M/yJIRS5pcg1OAEqwjm9pWF36BpUOIWf3oePfwJfbw8=;
        b=uN4b9uoM2rIJpheCddzHXYYeax1+/YlodE+jkHhsF6TKdR/okj79YCxapNsrAZmCqA
         ZkTEWMRVLfCRuckLp6uNqdPHZoUWGTYKGmImeo3JW7vd7LjfDlVs0Q0VENOpreFTAD74
         oFJMclaW2WM3zFJasRxj3mRVSgAtXMcqjkJxjzSd9wXy0vGFphk79eDGR35LaIvwL53s
         CUSQqnngHZfC7cEO4ZJpjDwCqvQVhGmDlwps9T7/gw5/7z1rz4ahdagiQeA4VtaTg/n4
         gVp4DzbA+wyTiU4KUd/V3iQVJlNkjjeTAH5NOcEFJ49K0VdY8k2daS8wigaUp4rX2/IF
         vmsw==
X-Gm-Message-State: AOAM531q4iKCswkbOUAw6qkCT60+bYPgEgXniiBoM3TpWc65MmwswPGy
	GT/wquLfFn5M4WUILbZrRDhTBkVaGF5jDw==
X-Received: by 2002:adf:ba87:: with SMTP id p7mr4342498wrg.298.1617799964914;
        Wed, 07 Apr 2021 05:52:44 -0700 (PDT)
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from ?IPv6:2001:818:de85:7e00:ef5c:3f2a:a646:d6ec? ([2001:818:de85:7e00:ef5c:3f2a:a646:d6ec])
        by smtp.gmail.com with ESMTPSA id l5sm8026703wmh.0.2021.04.07.05.52.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 05:52:44 -0700 (PDT)
To: outreachy-kernel@googlegroups.com
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Subject: Help with record contributions
Message-ID: <ecc237fa-f349-4d5a-9894-e81a525f0257@gmail.com>
Date: Wed, 7 Apr 2021 13:52:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hello!
How I record a patchset? I use the link to cover letter and describe 
each patch or I use the link to each patch?

Thanks in advance,

Beatriz Martins de Carvalho


