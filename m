X-GM-THRID: 9152848986112
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,56524335c2ab2304
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.44.167 with SMTP id f7mr12345348lbm.9.1427019407829;
        Sun, 22 Mar 2015 03:16:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.86.170 with SMTP id q10ls25466wiz.4.canary; Sun, 22 Mar
 2015 03:16:47 -0700 (PDT)
X-Received: by 10.181.29.66 with SMTP id ju2mr1089668wid.1.1427019407458;
        Sun, 22 Mar 2015 03:16:47 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wg0-x232.google.com (mail-wg0-x232.google.com. [2a00:1450:400c:c00::232])
        by gmr-mx.google.com with ESMTPS id bz6si263104wib.3.2015.03.22.03.16.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2015 03:16:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) client-ip=2a00:1450:400c:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x232.google.com with SMTP id 2so16734277wgs.1
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2015 03:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=arqHHo8uPmf1c80QWNGpwssv8Ik4Jl4oDHlsYb2nFCY=;
        b=jw/wK0WV3VLP0UlacI2TMPu01bqC8fgFc3L3/h3O6NPEjiDGBT8cohoaBgp8nfQALP
         a9hMWysLQnXVP4XObkVeO0Ej/j1F1eTF9xuCfPNDzjFO0MHDXGSyoN9qYYZv9nQ76P4a
         6cwh3KjhoxPnUoLz1DdjKPu5vvoGL/fqjuLc1tSwGrQ+zuPimbiSArHbSY06rlL8AIo3
         rX7gV8ecr6DbWcdsxpOfkUtniKuSAKuYaFrAIROu2WW3GGfyUmR6Gzd8ASldb53tyP8r
         QaPqcHaJ09UF0DtHEy+yOrq3SorEhNE/gQRODF5AVd6Kexrfp3nid9yTgPeU4i+Yt7do
         8T5A==
MIME-Version: 1.0
X-Received: by 10.180.103.136 with SMTP id fw8mr10479071wib.46.1427019407400;
 Sun, 22 Mar 2015 03:16:47 -0700 (PDT)
Received: by 10.28.139.211 with HTTP; Sun, 22 Mar 2015 03:16:47 -0700 (PDT)
In-Reply-To: <CAEnQRZDkMngLNm61qLdEA8_4reJ+VzQKhxaJxXu4r5drUPaP6w@mail.gmail.com>
References: <cover.1426981797.git.cristina.opriceana@gmail.com>
	<ac0d5b2399b00fe9763c7844c726ffad0a65df99.1426981797.git.cristina.opriceana@gmail.com>
	<CAEnQRZDkMngLNm61qLdEA8_4reJ+VzQKhxaJxXu4r5drUPaP6w@mail.gmail.com>
Date: Sun, 22 Mar 2015 12:16:47 +0200
Message-ID: <CAEnQRZA3wQ1v4AvUZn=iJ=-pyx_ZO5osuaWJ5uf2xoV2aqTFHQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] Staging: iio: Place driver in
 sleep mode on error
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Cristina Opriceana <cristina.opriceana@gmail.com>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 22, 2015 at 12:16 PM, Daniel Baluta <daniel.baluta@gmail.com> wrote:
> On Sun, Mar 22, 2015 at 2:26 AM, Cristina Opriceana
> <cristina.opriceana@gmail.com> wrote:
>> Put device in sleep mode if an error is encountered after
>> initialization in order to avoid wasting power.
>>
>> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
>> ---
>>  drivers/staging/iio/magnetometer/hmc5843_core.c | 6 +++++-
>>  1 file changed, 5 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/iio/magnetometer/hmc5843_core.c b/drivers/staging/iio/magnetometer/hmc5843_core.c
>> index 0074af2..7de19c2 100644
>> --- a/drivers/staging/iio/magnetometer/hmc5843_core.c
>> +++ b/drivers/staging/iio/magnetometer/hmc5843_core.c
>> @@ -611,7 +611,7 @@ int hmc5843_common_probe(struct device *dev, struct regmap *regmap,
>>         ret = iio_triggered_buffer_setup(indio_dev, NULL,
>>                                          hmc5843_trigger_handler, NULL);
>>         if (ret < 0)
>> -               return ret;
>> +               goto buffer_setup_err;
>>
>>         ret = iio_device_register(indio_dev);
>>         if (ret < 0)
>> @@ -619,8 +619,12 @@ int hmc5843_common_probe(struct device *dev, struct regmap *regmap,
>>
>>         return 0;
>>
>> +buffer_setup_err:
>> +       hmc5843_set_mode(iio_priv(indio_dev), HMC5843_MODE_SLEEP);
>> +       return ret;
>>  buffer_cleanup:
>>         iio_triggered_buffer_cleanup(indio_dev);
>> +       hmc5843_set_mode(iio_priv(indio_dev), HMC5843_MODE_SLEEP);
>>         return ret;
>>  }
>>  EXPORT_SYMBOL(hmc5843_common_probe);
>
> What about:
>
>  buffer_cleanup:
>          iio_triggered_buffer_cleanup(indio_dev);
> buffer_setup_err:
>        hmc5843_set_mode(iio_priv(indio_dev), HMC5843_MODE_SLEEP);
>        return ret;
>
> In this way you avoid duplicating code.
>
> Daniel.

