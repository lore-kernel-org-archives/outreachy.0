Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB645138C
	for <outreachy@lists.linux.dev>; Wed,  7 Dec 2022 10:05:37 +0000 (UTC)
Received: by mail-lf1-f53.google.com with SMTP id p8so27873648lfu.11
        for <outreachy@lists.linux.dev>; Wed, 07 Dec 2022 02:05:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DpHjjkWBrFWRiuz7Mk0spdGCtOSkBPp4W0Exn6CPYEg=;
        b=RaL2APKN9cTXuETvRIe3OCMqPWldGnqETHkNwl0aOQGEKV4qlst4tgJdOXqe8llOOU
         K96M0wshlPdRlVvifKVtNNiUthkRjc2HdmjhwfiCyGN/mNB0oRF+rsm0DFTl4mUx0FR1
         inzhaVdi54nqS/RyzXBOl5PB/Rfq2KqgImcjYHTNE1TIxAsN+Bpmh79f92H5VT5+2zna
         zoRrNkznl/tTehMdh9B4pA99pBm6iYHwjVdhSCw04sOoLT8PA0LWcNkZWBSgIRJELF5g
         DACW+6vrR1YmCRIuJVKlKqdSHeyR1+tlBbFtq/aZBF0xvM//dX4ATS/zrRy4dOxstLLF
         +Ktg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DpHjjkWBrFWRiuz7Mk0spdGCtOSkBPp4W0Exn6CPYEg=;
        b=uS4DtF8gZ7DYpE2dWi7hiuwvlPKlzBk4V83n3xnPXJi5hZANFx4mrp3CckQr3rh0go
         X9Z6+VrMkkzD/DrtHZB0+KfvCd8zmuutb0R+gkYSdB0agL0TXBBLSDmigKO7fMLAVdif
         vdZ2Yyic1jvGzYQ2BV7a/dTyGeUN/ygTaGlVSAzqO469hbTdy2kTQ0tczaCiPORGUJlk
         TRsysXgleFS8yqvh2P1xiiXRrmWyt8DDtgzP4vlk9uj/af2q581D+dVvRCSH+SfsBWw+
         H4aUHFnHRu5I5PyIZaC1Ccp8+MyHilbBDUJ2qh8UcWN7uABStKdigjTdf/xlj9wKwK6l
         iD9w==
X-Gm-Message-State: ANoB5pl4OXla8YVabsz6UWEgNAVIrzfDKizQsVgM23vTTnfWVG8iyrS/
	Hmh9rzrHVm4Nspgtj6y/PIJqCQ==
X-Google-Smtp-Source: AA0mqf4uYDpZazDOatn5v5ERm6hu2aHyPoDOMnOzspbjmNwgh4nNhc+0dqfy6arwv/HFRl6RuYsXvw==
X-Received: by 2002:ac2:4acc:0:b0:4b4:10ca:5240 with SMTP id m12-20020ac24acc000000b004b410ca5240mr33061634lfp.482.1670407533711;
        Wed, 07 Dec 2022 02:05:33 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id u23-20020a2e2e17000000b00278e9c0d3a2sm1914034lju.33.2022.12.07.02.05.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Dec 2022 02:05:33 -0800 (PST)
Message-ID: <5d430795-f8c4-bb5c-ebe9-f3c3fdf4985d@linaro.org>
Date: Wed, 7 Dec 2022 11:05:31 +0100
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 2/5] staging: dt-bindings: mfd: adi,max77541.yaml Add
 MAX77541 bindings
Content-Language: en-US
To: Okan Sahin <okan.sahin@analog.com>, outreachy@lists.linux.dev
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Manish Narani <manish.narani@xilinx.com>,
 Marcelo Schmitt <marcelo.schmitt1@gmail.com>,
 Caleb Connolly <caleb.connolly@linaro.org>,
 Marcus Folkesson <marcus.folkesson@gmail.com>,
 ChiYuan Huang <cy_huang@richtek.com>,
 Anand Ashok Dumbre <anand.ashok.dumbre@xilinx.com>,
 Ramona Bolboaca <ramona.bolboaca@analog.com>,
 William Breathitt Gray <william.gray@linaro.org>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org
References: <20221207090906.5896-1-okan.sahin@analog.com>
 <20221207090906.5896-3-okan.sahin@analog.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221207090906.5896-3-okan.sahin@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 07/12/2022 10:08, Okan Sahin wrote:
> This patch adds document the bindings for MAX77541 MFD driver. It also

Do not use "This commit/patch".
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

> includes MAX77540 driver whose regmap is covered by MAX77541.
> 
> Signed-off-by: Okan Sahin <okan.sahin@analog.com>
> ---
>  .../devicetree/bindings/mfd/adi,max77541.yaml | 134 ++++++++++++++++++
>  MAINTAINERS                                   |   1 +
>  2 files changed, 135 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/adi,max77541.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mfd/adi,max77541.yaml b/Documentation/devicetree/bindings/mfd/adi,max77541.yaml
> new file mode 100644
> index 000000000000..205953e6dd15
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/adi,max77541.yaml
> @@ -0,0 +1,134 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/adi,max77541.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MAX77540/MAX77541 PMIC from ADI.

Drop trailing space.

> +
> +maintainers:
> +  - Okan Sahin <okan.sahin@analog.com>
> +
> +description: |
> +  MAX77540 is a Power Management IC with 2 buck regulators.
> +
> +  MAX77541 is a Power Management IC with 2 buck regulators and 1 ADC.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,max77540
> +      - adi,max77541
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  regulators:
> +    $ref: /schemas/regulator/adi,max77541.yaml#

I don't think you tested this patch. There is no such file.

> +
> +  adc:
> +    type: object
> +    additionalProperties: false
> +    properties:
> +      compatible:
> +        const: adi,max77541-adc

Why having a child without any resources? It does not look like needed
and instead your parent driver should instantiate the child device.

> +    required:
> +      -compatible
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: adi,max77540
> +    then:
> +      properties:
> +        regulator:
> +          properties:
> +            compatible:
> +              const: adi,max77540-regulator
> +    else:
> +      properties:
> +        regulator:
> +          properties:
> +            compatible:
> +              const: adi,max77541-regulator
> +        adc:
> +          properties:
> +            compatible:
> +              const: adi,max77541-adc

The adc part is not needed anyway - duplicating what's in top-level
properties.

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        pmic@69 {
> +            compatible = "adi,max77540";
> +            reg = <0x69>;
> +            interrupt-parent = <&gpio>;
> +            interrupts = <16 IRQ_TYPE_EDGE_FALLING>;
> +
> +            regulators {
> +                buck1 {
> +                    regulator-min-microvolt = <500000>;
> +                    regulator-max-microvolt = <5200000>;
> +                    regulator-boot-on;
> +                    regulator-always-on;
> +                };
> +                buck2 {
> +                    regulator-min-microvolt = <500000>;
> +                    regulator-max-microvolt = <5200000>;
> +                    regulator-boot-on;
> +                    regulator-always-on;
> +                };
> +            };
> +        };
> +    };
> +
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        pmic@69 {
> +            compatible = "adi,max77541";

Keep only one example (more complex one) - they are almost the same.

> +            reg = <0x63>;
> +            interrupt-parent = <&gpio>;
> +            interrupts = <16 IRQ_TYPE_EDGE_FALLING>;
> +
> +            regulators {
> +                buck1 {
> +                    regulator-min-microvolt = <500000>;
> +                    regulator-max-microvolt = <5200000>;
> +                    regulator-boot-on;
> +                    regulator-always-on;
> +                };
> +                buck2 {
> +                    regulator-min-microvolt = <500000>;
> +                    regulator-max-microvolt = <5200000>;
> +                    regulator-boot-on;
> +                    regulator-always-on;
> +                };
> +            };
> +
> +            adc {
> +                compatible = "adi,max77541-adc";
> +            }
> +        };
> +    };
> \ No newline at end of file

Error here.

> diff --git a/MAINTAINERS b/MAINTAINERS
> index af94d06bb9f0..22f5a9c490e3 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -12501,6 +12501,7 @@ MAXIM MAX77541 PMIC MFD DRIVER
>  M:	Okan Sahin <okan.sahin@analog.com>
>  L:	linux-kernel@vger.kernel.org
>  S:	Maintained
> +F:	Documentation/devicetree/bindings/mfd/adi,max77541.yaml
>  F:	drivers/mfd/max77541.c
>  F:	include/linux/mfd/max77541.h
>  

Best regards,
Krzysztof

