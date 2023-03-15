Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE442F25
	for <outreachy@lists.linux.dev>; Wed, 15 Mar 2023 09:18:37 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id x3so72671481edb.10
        for <outreachy@lists.linux.dev>; Wed, 15 Mar 2023 02:18:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678871916;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+syW3uyMZAOsuuduKBpQYM0BrtuUyl6H8gO1RpOorUM=;
        b=fbSgVbZ7yKmfT8jYv0ynCeigym7beeAUT5J64EXInAM9q9Cp7bgUd3I6M90AMjWufo
         AhLUsgY9wKg4NrHtslv3HE6Z4yuHBzDgVpEOuHu69+j4GNdT9z7qLRVFSIfsBZvKCGzg
         6PHz3dxKAW5Xpl1ExXuZmf4YFqnIqIRtsMgwYX3jwj+USdCDBQrzUbJ2QZ16I2kxLUVv
         LSsMGjD9AaRgOUPoOW4EyHjiRyHkaXMGFK3kFLxMP5PS27VHxq67yafGDZMmvojEG3YJ
         v1qfFbDbIyS5h0YfVX5pJL1elF9mjkFManwjM29qAgbCrQMB7QYl77CUNDzAO1fqTJfs
         XBRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678871916;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+syW3uyMZAOsuuduKBpQYM0BrtuUyl6H8gO1RpOorUM=;
        b=Dw3juGeillhgupT2xYy9qfj4iU+JMOZLI0M2gK+eBAsSd2I4dP0MkLvxsoDPofrSm6
         V6D+mOTsqMKqBPTigoseXieiFcKka5Cmmu3+HAU24QhMRavXn6ZItdKh4IugqtV/GiKJ
         tCEfa4nlYdf4xbwscviPN9D614fWr/FRkIlx1aFO6o99yz9tpvaCjhclW2jgP4DBlPNP
         yGMfPzSSaRqNbxCKZEZQ0ZQONfkZYVsFhdhG+k/P3spTmoLuAsZ3pRehUmQjv2Wx2gi6
         SVAlyguCj00TShX9fvTFsLg+1GA77JgKbMLu4NkhWhfMVZztHRkQU6S125T4VcjN3bZc
         XWng==
X-Gm-Message-State: AO0yUKUGm9OVUKt7xwcLAYVtOgdVton0LJhNm9BZwDZZmh6/AWCSWFO4
	F8lZ81e6cOChB+QRl9jzmIEFZUWFR10=
X-Google-Smtp-Source: AK7set+rubyrasPuik/Kdl7fNemuzu/jYNyXpWJffr7TFu6hVUrF+VzbsTeP6Y76mhEv7H/OYw9x8A==
X-Received: by 2002:a17:906:951:b0:925:a734:a012 with SMTP id j17-20020a170906095100b00925a734a012mr5024002ejd.12.1678871915920;
        Wed, 15 Mar 2023 02:18:35 -0700 (PDT)
Received: from [192.168.1.16] ([41.42.177.251])
        by smtp.gmail.com with ESMTPSA id op1-20020a170906bce100b009222a7192b4sm2225715ejb.30.2023.03.15.02.18.35
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 02:18:35 -0700 (PDT)
Message-ID: <1cf83508-9fea-05c2-f197-16fdf3edf030@gmail.com>
Date: Wed, 15 Mar 2023 11:18:34 +0200
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
From: Menna Mahmoud <eng.mennamahmoud.mm@gmail.com>
Subject: new patch
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Mentors,


Is it okay to work on this error reported by checkpatch script:


```

drivers/staging/iio/frequency/ad9832.c
--------------------------------------
ERROR: Use 4 digit octal (0777) not decimal permissions
#256: FILE: drivers/staging/iio/frequency/ad9832.c:256:
+static IIO_DEV_ATTR_FREQ(0, 1, 0200, NULL, ad9832_write, AD9832_FREQ1HM);
ERROR: Use 4 digit octal (0777) not decimal permissions
#257: FILE: drivers/staging/iio/frequency/ad9832.c:257:
+static IIO_DEV_ATTR_FREQSYMBOL(0, 0200, NULL, ad9832_write, 
AD9832_FREQ_SYM);
ERROR: Use 4 digit octal (0777) not decimal permissions
#260: FILE: drivers/staging/iio/frequency/ad9832.c:260:
+static IIO_DEV_ATTR_PHASE(0, 0, 0200, NULL, ad9832_write, AD9832_PHASE0H);
ERROR: Use 4 digit octal (0777) not decimal permissions
#261: FILE: drivers/staging/iio/frequency/ad9832.c:261:
+static IIO_DEV_ATTR_PHASE(0, 1, 0200, NULL, ad9832_write, AD9832_PHASE1H);
ERROR: Use 4 digit octal (0777) not decimal permissions
#262: FILE: drivers/staging/iio/frequency/ad9832.c:262:
+static IIO_DEV_ATTR_PHASE(0, 2, 0200, NULL, ad9832_write, AD9832_PHASE2H);
ERROR: Use 4 digit octal (0777) not decimal permissions
#263: FILE: drivers/staging/iio/frequency/ad9832.c:263:
+static IIO_DEV_ATTR_PHASE(0, 3, 0200, NULL, ad9832_write, AD9832_PHASE3H);
ERROR: Use 4 digit octal (0777) not decimal permissions
#264: FILE: drivers/staging/iio/frequency/ad9832.c:264:
+static IIO_DEV_ATTR_PHASESYMBOL(0, 0200, NULL,
+                ad9832_write, AD9832_PHASE_SYM);
ERROR: Use 4 digit octal (0777) not decimal permissions
#268: FILE: drivers/staging/iio/frequency/ad9832.c:268:
+static IIO_DEV_ATTR_PINCONTROL_EN(0, 0200, NULL,
+                ad9832_write, AD9832_PINCTRL_EN);
ERROR: Use 4 digit octal (0777) not decimal permissions
#270: FILE: drivers/staging/iio/frequency/ad9832.c:270:
+static IIO_DEV_ATTR_OUT_ENABLE(0, 0200, NULL,
+                ad9832_write, AD9832_OUTPUT_EN);
total: 9 errors, 0 warnings, 0 checks, 462 lines checked

NOTE: For some of the reported defects, checkpatch may be able to
       mechanically convert to the typical style using --fix or 
--fix-inplace.

```


Thanks and regards,

Menna

